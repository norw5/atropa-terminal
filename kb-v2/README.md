# The public knowledge base — how this tree is organized

> Written normative pages + generated reference data, produced by the
> method documented under `method/`. New here? Read the
> [overview](/knowledge/overview/) first.

## What this tree is

The public-facing reference core: every entity, its mechanics, its taxonomy
class, its lineage and liquidity structure — generated from the data layer,
never hand-curated into existence. A versioned research log (the provenance
back-end) holds the errata history and working notes behind every
supersession; this tree always reflects current-state.

## Layout

- `method/` — provenance + coverage policy (public Method pages)
- `taxonomy/` — the semantics-derived taxonomy: dimension and class
  definitions, the machine rules, and how to reproduce them
- `mechanics/` — **written, normative mechanics pages**: the
  five minter generations + cross-cutting topics (registry/tx.origin,
  `_hu` ladder, claim/publish, multipliers). The portal appends generated
  census statistics to these pages at build time — written text and
  generated numbers never live in the same artifact.
- `deep/` — **deep-dive tier**: distillations for Tier-1 core entities
  (reserves, math family, Keys Of Ong, TeddyBear, Atropa, the FDIC/POOR
  spines). The README states the selection criterion; pDAI/Maker core is
  explicitly out (external systems stay at timeline rows + registry-page
  depth). Same generated-panel pattern as mechanics.
- `overview.md` — the orientation page: what the system is, the actors,
  how the pieces fit, the era windows, and a glossary. The natural entry
  point for a newcomer.
- `reference/` — first-class written reference pages: shared
  infrastructure (MATH/RNG/math family), liquidity structure, admin
  surface (what the owner keys actually gate). Token and
  contract entity pages are **generated portal output**
  (`/tokens/{address}`, `/contracts/{address}`), not files in this tree.

## Machine contracts

- Taxonomy fields are derived per-token from the census + registry data.
- The claims registry is generated from the same data layer as the pages.
- Shared infra state (MATH family) is generated as the one bundle both
  this portal and the AFFECTION portal consume.

## Editorial rules

1. Normative content = `[src]` / `[chain]` only, each statement with a proof
   pointer and pinned block where relevant.
2. `[ext]` / `[irc]` / `[ext-owner]` never normative; community material lives
   in a labeled Community-record layer only.
3. Coverage is completeness-by-construction (see `method/coverage.md`).
4. Nothing from the quarantine layer ships here, ever.
5. Actors: functional attribution only (deployer/creator fields, computed
   role tables). No person pages, no identity claims.
