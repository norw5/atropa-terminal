# Deep dives — Tier-1 core entities

> This tier adds **depth** to a fixed set of core
> entities; it does not select what *exists*. Coverage of every token and
> contract is completeness-by-construction via the generated layers
> (`/tokens`, `/contracts`, `/lineage`, `/taxonomy`) — see
> [method/coverage](/knowledge/method/coverage/). pDAI/Maker-core and other
> external systems are **not** deep-dive subjects (block-exact rows in the
> [timeline](/timeline) + registry entity pages are their depth).

## Selection criterion (stated once, applies to every page here)

A deep-dive page exists for an entity when **all** of the following hold:

1. It is Tier-1 core Atropa: deployed by a Maria key, or mechanically
   derived from core infrastructure, AND
2. it is load-bearing for the system's mechanics (a reserve/payment asset
   every factory depends on, the shared RNG backbone, a genesis spine, or
   the ecosystem's deepest liquidity), AND
3. the v1 research layer holds pinned, provenance-tagged material worth
   distilling (this tier is distillation, never new collection).

Entities failing any arm stay at their generated entity-page depth — their
absence here is not a judgment about importance but the criterion above.
Each page carries the same tags as the rest of the KB: `[src]` recovered or
verified source, `[chain]` onchain query (block-pinned where relevant),
`[ext]` community record (never normative). Current-state numbers live in
the generated panels the portal appends below each page's written text.

## The set

| Page | Entity | Why it qualifies (arm 2) |
|---|---|---|
| [FED](/knowledge/deep/fed/) | Reserve Teh `0x1D177CB9EfEEa49A8B97ab1C72785a3A37ABc9Ff` | V2-era root reserve; permissionless TBILL-parity sink |
| [TBILL](/knowledge/deep/tbill/) | Treasury Bill `0x463413c579D29c26D59a65312657DFCe30D545A1` | V1's fixed reserve; renounced-mint ledger |
| [MV](/knowledge/deep/mv/) | ᨓᨆ `0xA1BEe1daE9Af77dAC73aA0459eD63b4D93fC6d29` | the universal creation payment of every generation |
| [Math family](/knowledge/deep/math-family/) | MATH/RNG + family `0xB680F0cc…` etc. | the shared RNG backbone every TT constructor touches |
| [Keys Of Ong](/knowledge/deep/keys-of-ong/) | `0x9CCc2de565da893AB1300674F174545A3E568F93` | the ecosystem's live RNG-consumer game |
| [TeddyBear](/knowledge/deep/teddybear/) | `0xd6c31bA0754C4383A41c0e9DF042C62b5e918f6d` | deepest ecosystem liquidity book |
| [Atropa](/knowledge/deep/atropa/) | `0xCc78A0acDF847A2C1714D2a925bB4477df5d48a6` | namesake token; flagship burnt pool |
| [FDIC & POOR spines](/knowledge/deep/fdic-poor-spines/) | `0x812571A1…` / `0xaa1505c9…` | the two genesis anchors of the lineage economies |
