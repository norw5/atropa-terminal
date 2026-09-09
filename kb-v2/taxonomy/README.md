# Taxonomy — dimensions and machine rules

> Semantics-derived, machine-implemented over the census + registry data
> (per-token `tax_*` fields). Rules version:
> `kbv2-taxonomy-rules-v1`. Classes are defined by **objective, data-derivable
> rules** — never by community-list membership. Maria authorship is the
> core/community filter (`tax_origin`), not a class.

## The eight dimensions

| # | Field | Values | Derivation rule (machine) |
|---|---|---|---|
| 1 | `tax_creation` | factory-child · standalone-deploy · fork-carried · bridge-wrapped · lp-token · external-system | census membership → factory-child; Maria/community deploy lists → standalone-deploy; Ethereum-genesis CA → fork-carried; pinned bridge set → bridge-wrapped; PulseX pair set → lp-token; Maker core map → external-system |
| 2 | `tax_pricing` | flat-1:1 · system-step · self-scaled · fixed-supply · capped-self-mint · uncapped-mint · non-factory | V1/V2 → flat-1:1 (parent-parity, `[src]` tbillminter/federalminter); V3/Bureau → system-step (× per 1.111B-unit step, `[src]` indexminter); V4 → self-scaled (× own initial mint, `[src]` personalminter); reserves/math family per source |
| 3 | `tax_redemption` | none-permanent-sink · open-sibling-claim · gated-sibling-claim · self-redeem · non-factory | V1 has no withdraw (reconstructed 3-fn head, `[src]` bytecode reconstruction); V2 `Claim`+`publish`; V3/Bureau gated sibling Claim, first withdraw kills it; V4 self-Claim only |
| 4 | `tax_parent_class` | fixed-reserve-tbill · reserve-payment · census-tt · dev-contract · forked-asset · bridge-asset · lp-token · minter-itself · external-token · none | parent==null & V1 → fixed-reserve-tbill; parent ∈ {TBILL, FED, MV} → reserve-payment; ∈ census → census-tt; ∈ math family/AFFECTION → dev-contract; ∈ forked majors → forked-asset; ∈ pinned bridge → bridge-asset; ∈ pair set → lp-token; ∈ minter set → minter-itself; else external-token |
| 5 | `tax_admin` | none-factory · renounced · live-owner-maria2 · live-owner-other · none | census TTs → none-factory (bytecode-proven zero admin surface, `[src]` selector diff); registry via `owner()` probes `[chain]` + the pinned family-state probe |
| 6 | `tax_liquidity` | pooled-live · pooled-dead-all · spine-only-paper · n-a (+ flags: `lp-parent`, `burnt-locked-50`) | from the factory pool crawl + reserves enrichment: pairs_live ≥ 1 → pooled-live; pairs exist, none live → pooled-dead-all; no pool ever → spine-only-paper; parent ∈ pair set → lp-parent flag; any own pool with ≥50% LP at dead sinks (burnt-LP census) → burnt-locked-50 |
| 7 | `tax_era` | v1 · v2 · v3-bureau · v4 · post-crisis · long-tail · old-atropa · pre-v1 · treasury-window | block < minter deploy blocks (22,303,877 / 22,362,690 / 22,590,323 / 22,755,643); then timestamps: < 2025-04-16 05:47 UTC (crisis) → v4; < 2025-07-01 → post-crisis; else long-tail. Non-census: deploy ts windows (old-atropa 2023–24, pre-v1, treasury-window) |
| 8 | `tax_rng` | constructor-key-inert · infrastructure · live-orbit-consumer · none | census TTs → constructor-key-inert (`_mintingKey` computed once via MATH at construction, never used again — `[src]` template analysis); MATH/RNG/math family → infrastructure; Keys Of Ong → live-orbit-consumer (`Dong()` calls `Random()`, `[src]`) |

## Filter + alias fields

- `tax_origin`: **core** (Maria-deployed infrastructure) · **core-factory**
  (any factory child — mechanically derived from core, whoever the creator) ·
  **community** (third-party deployments) · **external** (fork-carried,
  bridge-wrapped, outside systems). The core/community boundary is Maria
  authorship of the *machinery*, not of each token.
- `tax_alias_tshare_canon`: TRUE iff the address is on the dev-published
  37-entry audit list (`docs/tshare_tokens_audit_1.txt`). Alias only.

## Machine readability

The `tax_*` fields for every entity ship with the portal data layer
(`/data/taxonomy.compact.json`; full-field CSV at `/data/tokens.csv`;
class catalog in `classes.md` links each class to its rule). Current class
counts regenerate with the census.
