import { tokenMeta } from './web3';

export type ResRow = {
  a: string;
  n?: string | null;
  s?: string | null;
  v?: string;
  cls?: string;
  d?: number | null;
  [k: string]: unknown;
};

export type Resolved = {
  addr: string;
  row: ResRow | null;
  name: string;
  symbol: string;
  decimals: number;
  onchain: boolean;
  source: 'url' | 'pick' | 'paste';
};

export type ResolverApi = {
  resolve(addr: string, source: Resolved['source']): Promise<Resolved | null>;
  current(): Resolved | null;
  clear(): void;
  input: HTMLInputElement;
};

const ADDR_RE = /^0x[0-9a-fA-F]{40}$/;

function displayLabel(r: { name?: string; symbol?: string }, addr: string): string {
  const n = (r.name ?? '').toString();
  const s = (r.symbol ?? '').toString();
  if (n && s) return `${n} (${s})`;
  if (n) return n;
  if (s) return s;
  return addr;
}

export function attachResolver(o: {
  input: HTMLInputElement;
  list: HTMLElement;
  rows: () => ResRow[];
  byAddr: () => Map<string, ResRow>;
  extras?: { name: string; a: string; sub?: string }[];
  filter?: (r: ResRow) => boolean;
  max?: number;
  onResolve: (r: Resolved | null) => void;
}): ResolverApi {
  const { input, list } = o;
  const max = o.max ?? 40;
  let cur: Resolved | null = null;
  let debounce: ReturnType<typeof setTimeout> | null = null;
  let resolving = 0;

  const stat = document.createElement('div');
  stat.className = 'rstat mono xs';
  input.insertAdjacentElement('afterend', stat);

  function setStat(html: string) {
    stat.innerHTML = html;
  }

  function showResolved(r: Resolved) {
    input.value = displayLabel(r, r.addr);
    const known = r.row || r.onchain;
    const page = r.row ? `<a href="/tokens/${r.addr}">entity page</a>` : null;
    const ex = `https://ipfs.scan.pulsechain.com/token/${r.addr}`;
    setStat(
      known
        ? `<span style="color:var(--accent)">✓ resolved</span> <span class="dim">${r.addr}</span>${page ? ' · ' + page : ''} · <a href="${ex}" target="_blank" rel="noopener noreferrer">explorer↗</a>`
        : `<span style="color:var(--red)">no ERC-20 answers at ${r.addr}</span> — not a token contract?`,
    );
  }

  async function resolve(addr: string, source: Resolved['source']): Promise<Resolved | null> {
    const a = addr.trim().toLowerCase();
    if (!ADDR_RE.test(a)) {
      cur = null;
      onClear();
      return null;
    }
    const row = o.byAddr().get(a) ?? null;
    if (row) {
      cur = { addr: a, row, name: (row.n ?? '').toString(), symbol: (row.s ?? '').toString(), decimals: (row.d as number) ?? 18, onchain: true, source };
      showResolved(cur);
      o.onResolve(cur);
      return cur;
    }
    const token = ++resolving;
    setStat('<span class="dim">resolving onchain…</span>');
    let meta: { name: string; symbol: string; decimals: number } | null = null;
    try {
      const m = await tokenMeta(a);
      if (m.name || m.symbol) meta = m;
    } catch {}
    if (token !== resolving) return null;
    if (meta) {
      cur = { addr: a, row: null, name: meta.name, symbol: meta.symbol, decimals: meta.decimals, onchain: true, source };
    } else {
      cur = { addr: a, row: null, name: '', symbol: '', decimals: 18, onchain: false, source };
    }
    showResolved(cur);
    o.onResolve(cur);
    return cur;
  }

  function onClear() {
    setStat('<span class="dim">type to search · paste 0x… to resolve any address</span>');
    list.style.display = 'none';
  }

  function rebuild() {
    const v = input.value.trim().toLowerCase();
    if (cur && (v === displayLabel(cur, cur.addr).toLowerCase() || v === cur.addr)) {
      list.style.display = 'none';
      return;
    }
    if (cur) {
      cur = null;
      setStat('<span class="dim">type to search · paste 0x… to resolve any address</span>');
      o.onResolve(null);
    }
    if (!v) {
      list.style.display = 'none';
      return;
    }
    const pool: { label: string; sub: string; a: string }[] = [];
    for (const e of o.extras ?? []) {
      pool.push({ label: e.name, sub: e.sub ?? 'fixed', a: e.a.toLowerCase() });
    }
    for (const t of o.rows()) {
      if (o.filter && !o.filter(t)) continue;
      pool.push({
        label: `${(t.n || '(unnamed)').slice(0, 44)}${(t.n || '').length > 44 ? '…' : ''} (${(t.s || '·').slice(0, 16)}${(t.s || '').length > 16 ? '…' : ''})`,
        sub: `${t.v ?? ''}${t.v && t.cls ? ' · ' : ''}${t.cls ?? ''}`,
        a: t.a,
      });
    }
    const hits = pool.filter((p) => p.label.toLowerCase().includes(v) || p.a.includes(v)).slice(0, max);
    if (!hits.length) {
      list.style.display = ADDR_RE.test(v) ? 'none' : 'block';
      if (!ADDR_RE.test(v)) list.innerHTML = '<div class="nohits">no census match — paste a full 0x… address to resolve any token</div>';
      return;
    }
    list.innerHTML = '';
    for (const h of hits) {
      const d = document.createElement('div');
      d.innerHTML = `${h.label} <span style="color:var(--fg-faint)">${h.sub}${h.sub ? ' · ' : ''}${h.a.slice(0, 10)}…</span>`;
      d.addEventListener('mousedown', (ev) => {
        ev.preventDefault();
        list.style.display = 'none';
        void resolve(h.a, 'pick');
      });
      list.appendChild(d);
    }
    list.style.display = 'block';
  }

  input.addEventListener('input', () => {
    rebuild();
    if (debounce) clearTimeout(debounce);
    const v = input.value.trim();
    if (ADDR_RE.test(v)) {
      debounce = setTimeout(() => void resolve(v, 'paste'), 350);
    }
  });
  input.addEventListener('focus', () => {
    if (cur && input.value === displayLabel(cur, cur.addr)) input.select();
    else rebuild();
  });
  input.addEventListener('keydown', (ev) => {
    if (ev.key === 'Enter') {
      const v = input.value.trim();
      if (ADDR_RE.test(v)) {
        ev.preventDefault();
        void resolve(v, 'paste');
      } else if (list.style.display === 'block') {
        const first = list.querySelector('div:not(.nohits)');
        if (first) {
          ev.preventDefault();
          first.dispatchEvent(new MouseEvent('mousedown', { cancelable: true }));
        }
      }
    }
  });
  input.addEventListener('blur', () => {
    const v = input.value.trim();
    if (ADDR_RE.test(v) && (!cur || cur.addr !== v.toLowerCase())) void resolve(v, 'paste');
    setTimeout(() => (list.style.display = 'none'), 150);
  });

  onClear();
  return {
    resolve,
    current: () => cur,
    clear() {
      cur = null;
      input.value = '';
      onClear();
      o.onResolve(null);
    },
    input,
  };
}
