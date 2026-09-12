import { cpSync, mkdirSync } from 'node:fs';
import { resolve } from 'node:path';

const root = resolve(import.meta.dirname, '..');
const dst = resolve(root, 'public', 'data');
mkdirSync(dst, { recursive: true });

const copies = [
  ['../portal-v2-data/taxonomy.compact.json', 'taxonomy.compact.json'],
  ['../portal-v2-data/registry.compact.json', 'registry.compact.json'],
  ['../portal-v2-data/claims.compact.json', 'claims.compact.json'],
  ['../portal-v2-data/tokens_v2.compact.json', 'tokens_v2.compact.json'],
  ['../portal-v2-data/tokens_unified.compact.json', 'tokens_unified.compact.json'],
  ['../portal-v2-data/irc.compact.json', 'irc.compact.json'],
  ['../portal-v2-data/timeline.compact.json', 'timeline.compact.json'],
  ['../portal-v2-data/pools.compact.json', 'pools.compact.json'],
  ['../portal-data/shared_infra.compact.json', 'shared_infra.compact.json'],
  ['../portal-data/graph_atropa_subgraph.json', 'graph_atropa_subgraph.json'],
  ['../data/tokens.csv', 'tokens.csv'],
  ['../portal-v2-data/tokens_all.csv', 'tokens_all.csv'],
];

for (const [src, name] of copies) {
  try {
    cpSync(resolve(root, src), resolve(dst, name));
    console.log(`copied ${name}`);
  } catch {
    console.log(`SKIP ${name} (not built yet — run tools/kbv2_classify.py + tools/kbv2_bundle.py)`);
  }
}
