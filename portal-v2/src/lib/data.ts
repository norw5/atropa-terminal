import { readFileSync } from 'node:fs';
import { resolve } from 'node:path';

const repoRoot = resolve(process.cwd(), '..');

const cache = new Map<string, any>();

function readJson(rel: string): any {
  if (!cache.has(rel)) {
    cache.set(rel, JSON.parse(readFileSync(resolve(repoRoot, rel), 'utf8')));
  }
  return cache.get(rel);
}

export function loadTaxonomy(): { _meta: any; tokens: any[] } {
  return readJson('portal-v2-data/taxonomy.compact.json');
}

export function loadRegistry(): any[] {
  return readJson('portal-v2-data/registry.compact.json').registry;
}

export function loadClaims(): any[] {
  return readJson('portal-v2-data/claims.compact.json').claims;
}

export function loadClaimsByEntity(): Record<string, string[]> {
  return readJson('portal-v2-data/claims.compact.json').by_entity ?? {};
}

export function loadSharedInfra(): any {
  return readJson('portal-data/shared_infra.compact.json');
}

export function loadExtractable(): any {
  return readJson('data/w3c_extractable.json');
}

export function loadAdminSurface(): any {
  return readJson('data/kb_admin_surface.json');
}

export function loadV1Sink(): any {
  return readJson('data/v1_tbill_sink.json');
}

export function readTshareAudit(): any[] {
  return readJson('data/tshare_audit_verification.json');
}

export function loadArtifactsIndex(): any {
  return readJson('portal-v2/public/artifacts/index.json');
}

export function loadTokensFull(): any[] {
  return readJson('data/tokens.json').tokens;
}

export function loadTokensMeta(): any {
  return readJson('data/tokens.json')._meta;
}

export function loadActivity(): any {
  return readJson('data/activity_metrics.json');
}

export function loadActivityPerToken(): Record<string, any> {
  return readJson('data/activity_metrics.json').per_token ?? {};
}

export function loadLiquidity(): Record<string, any> {
  const doc = readJson('portal-data/liquidity_per_token.compact.json');
  const out: Record<string, any> = {};
  for (const [k, v] of Object.entries<any>(doc.tokens ?? {})) out[k.toLowerCase()] = v;
  return out;
}

export function loadNames(): Record<string, any> {
  const doc = readJson('portal-data/names.compact.json').names ?? {};
  const out: Record<string, any> = {};
  for (const [k, v] of Object.entries<any>(doc)) out[k.toLowerCase()] = v;
  return out;
}

export function loadSpinesBundle(): any {
  return readJson('portal-data/spines.compact.json');
}

export function loadTokensBundle(): { _meta: any; tokens: any[] } {
  return readJson('portal-v2-data/tokens_unified.compact.json');
}

export function loadTimeline(): any {
  return readJson('portal-v2-data/timeline.compact.json');
}

export function loadSpineMemberships(): Record<string, { slug: string; name: string; kind: string }[]> {
  const by = readJson('portal-data/spines.compact.json').by_address ?? {};
  const out: Record<string, { slug: string; name: string; kind: string }[]> = {};
  for (const [k, v] of Object.entries<any>(by)) out[k.toLowerCase()] = v;
  return out;
}

export function loadLineageRootNames(): Record<string, { name: string | null; symbol: string | null }> {
  const doc = readJson('portal-v2-data/lineage_root_names.json');
  const out: Record<string, { name: string | null; symbol: string | null }> = {};
  for (const [k, v] of Object.entries<any>(doc.roots ?? {})) out[k.toLowerCase()] = v;
  return out;
}

export function loadEntityLabels(): Record<string, string> {
  const out: Record<string, string> = {};
  for (const [k, v] of Object.entries<any>(readJson('portal-data/names.compact.json').names ?? {})) {
    if (v?.n) out[k.toLowerCase()] = v.n;
  }
  for (const r of loadRegistry()) {
    if (r.label && !r.label.startsWith('0x')) out[r.address.toLowerCase()] = r.label;
  }
  return out;
}

export function buildChildrenMap(tokens: any[]): Map<string, any[]> {
  const m = new Map<string, any[]>();
  for (const t of tokens) {
    const p = (t.parent || '').toLowerCase() || null;
    if (!p) continue;
    if (!m.has(p)) m.set(p, []);
    m.get(p)!.push(t);
  }
  for (const v of m.values()) v.sort((a, b) => (a.block ?? 0) - (b.block ?? 0));
  return m;
}

export function ancestorChain(t: any, byAddress: Map<string, any>, cap = 12): any[] {
  const chain: any[] = [];
  const seen = new Set<string>([t.address.toLowerCase()]);
  let cur = byAddress.get((t.parent || '').toLowerCase());
  while (cur && chain.length < cap) {
    chain.push(cur);
    if (seen.has(cur.address.toLowerCase())) break;
    seen.add(cur.address.toLowerCase());
    cur = byAddress.get((cur.parent || '').toLowerCase());
  }
  return chain;
}

export function subtreeSize(addr: string, children: Map<string, any[]>): { n: number; depth: number } {
  const a = addr.toLowerCase();
  let n = 0;
  let maxDepth = 0;
  const stack: [string, number][] = [[a, 0]];
  const seen = new Set<string>([a]);
  while (stack.length) {
    const [cur, d] = stack.pop()!;
    for (const c of children.get(cur) ?? []) {
      const ca = c.address.toLowerCase();
      if (seen.has(ca)) continue;
      seen.add(ca);
      n += 1;
      if (d + 1 > maxDepth) maxDepth = d + 1;
      stack.push([ca, d + 1]);
    }
  }
  return { n, depth: maxDepth };
}

export function lineageRoots(tokens: any[], children: Map<string, any[]>): { root: string; size: number; depth: number; rootIsCensus: boolean }[] {
  const census = new Set(tokens.map((t) => t.address.toLowerCase()));
  const roots = new Map<string, number>();
  for (const t of tokens) {
    const r = (t.spine_root || '').toLowerCase();
    if (r && r !== t.address.toLowerCase()) {
      roots.set(r, (roots.get(r) ?? 0) + 1);
    } else if (!t.parent && (t.minter_version === 'V1')) {
      roots.set(t.address.toLowerCase(), (roots.get(t.address.toLowerCase()) ?? 0) + 0);
    }
  }
  const out: { root: string; size: number; depth: number; rootIsCensus: boolean }[] = [];
  for (const [r, direct] of roots) {
    if (direct === 0 && !(children.get(r)?.length)) continue;
    const s = subtreeSize(r, children);
    out.push({ root: r, size: s.n, depth: s.depth, rootIsCensus: census.has(r) });
  }
  out.sort((a, b) => b.size - a.size || a.root.localeCompare(b.root));
  return out;
}
