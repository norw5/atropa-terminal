# Overview — the Atropa ecosystem

> The orientation page: what this ecosystem is, who built it, how the pieces
> fit together, and where to read next. Statements carry the same provenance
> tags as the rest of the knowledge base — `[src]` recovered/verified
> Solidity, `[chain]` onchain query, `[ext]` community record — and every
> entity named here links to its generated reference page.

## What it is

The **Atropa ecosystem** is the full corpus this portal documents: everything
the long-lived "Maria" deployer keys and their one funded offshoot built on
**PulseChain** (chain ID 369) from 2023 into 2026 — two great systems at its
center, the older corpus around them, and the community layer on top.

The two systems are:

- The **treasury system** — an experimental monetary machinery developed
  across 2023–2025 and left to run unattended. Its core is a family of
  **factory contracts ("minters")** that let **anyone** create a child
  ERC-20 — a **treasury token (TT)** — by paying a creation fee in **MV**
  and locking a **parent token** as collateral. What happens to that
  collateral, and who can ever get it back, is decided entirely by which
  factory generation created the child: that single design axis (V1 → V2 →
  V3 → V4, plus four same-day bureau variants) is the spine of the
  treasury knowledge base.
- **Dysnomia** — a fully on-chain social operating system (chat world,
  accounts, venues, an internal economy) where every object is an ERC-20
  and usage mints supply against a lottery-drawn lifetime budget. Its
  kernel booted 2024-08-23 — four months *before* treasury V1 — and it
  runs on the same cryptographic backbone. It has its own section:
  [/dysnomia](/dysnomia), with a [guide](/dysnomia/guide/overview),
  generated entity pages, and the per-contract dev reference.

Around them: Maria #2's 2023–24 corpus (TeddyBear, Atropa, the shared math
family, AFFECTION), and the community layer that grew on top of the
treasury factories.

Two structural facts frame everything else:

1. **The chain itself is a fork.** PulseChain launched 2023-05-10 as a full
   Ethereum state fork (block 17,232,969 `[chain]`). Every Ethereum contract
   and token existed from genesis as a forked copy — hence the de-pegged
   "p"-assets (pDAI, pUSDC, pWETH, pWBTC …) and the fork-carried MakerDAO
   core that later became the stage of the Q1/Q2-2025 pDAI crisis (external
   system history, carried as block-exact rows in the
   [timeline](/timeline) and registry pages, not as narrative).
2. **Neither system has admin keys in its core.** No treasury minter,
   template, or registry mapping can be upgraded, paused, or killed —
   bytecode-proven across all eight factories `[src]`; the Dysnomia system
   contracts likewise carry no upgrade surface, only sparse onchain
   privilege grants `[src]`. The live owner keys that do exist sit in the
   older 2023–24 corpus and the shared math family, and are enumerated on
   the [admin-surface reference](/knowledge/reference/admin-surface/).

### The factories

| Generation | Contract | Deployed | Children `[chain]` | One-line design |
|---|---|---|---|---|
| V1 TbillMinter | `0xC7bDAc3e6Bb5eC37041A11328723e9927cCf430B` | 2024-12-28 | 167 | fixed TBILL parent, 1:1 lock, **no exit** |
| V2 FederalMinter | `0xc15c5F699Daf5e1135732139f05D2c05b3EF4354` | 2025-01-04 | 1,561 | FED/TT parents, sibling-claim keys + `publish` |
| V3 IndexMinter | `0x0c4F73328dFCECfbecf235C9F78A4494a7EC5ddC` | 2025-01-31 | 506 | any parent, escalating mint price, gated claim |
| V4 PersonalMinter | `0x394c3D5990cEfC7Be36B82FDB07a7251ACe61cc7` | 2025-02-20 | 902 | per-token price ladder, self-redeem |
| Bureau minters (×4) | Bureau#1 `0xc4f0ce2b0ffa0063b763e2b6c124a1d80e0641b5` + 3 | 2025-02-01 | 5 (all via #1) | V3 rules under a fixed BUREAU parent |

Creation is always paid in **MV** `0xA1BEe1daE9Af77dAC73aA0459eD63b4D93fC6d29`
(the fee accrued 165.7M MV across all factories, ≈half of it paid by the
treasury-era deployer key itself `[chain]` — see the
[MV deep dive](/knowledge/deep/mv/)); minting *more* of an existing child is
paid in its **parent** token. The census of 3,141 children (every row
RPC-verified; counts regenerate with the data layer) is browsable under
[/tokens](/tokens), and each generation has a written
[mechanics page](/knowledge/mechanics/).

## The actors (functional attribution)

| Actor | Address | Functional role `[chain]` |
|---|---|---|
| **Maria #1** | `0xBF182955401aF3f2f7e244cb31184E93E74a2501` | treasury-era principal: all four minters + three bureau minters + FED + the pre-V1 standalone set (40 direct deployments); ≈50% of all MV creation fees; the TBILL mint/burn era |
| **Maria #2** | `0x7a20189B297343CF26d8548764b04891f37F3414` | old-era principal: 285 deployments 2023–24 (TBILL, MV, TeddyBear, Atropa, MATH, RNG, AFFECTION …); still holds 99 live owner keys in that corpus — each key's actual capability is enumerated on the admin-surface reference; funded the Dysnomia deployer |
| **the Dysnomia deployer** | `0x0474606332105A1dA6FC8EF7De2470551D389Cb9` | deployed all seven Dysnomia waves 2024-08 → 2026-05; funded 300k PLS by Maria #2 five minutes before boot, +100M PLS in 2025-03 |
| **trebizond** | `0x903030f7e2d6489F38B0f4F96F9b371ec7960F78` | TBILL ownership custodian 2023-09 → 2024-07 (the hand-over is on TBILL's event history) |

All other participants — creators, claimers, farmers, grinders, players —
appear in this knowledge base only as **computed role aggregates** (stated-
rule top-N tables on the mechanics and Dysnomia pages) and as mechanical
sender fields on entity pages. No person pages, no identity claims — that
is the standing actor policy, and analysis that does not meet it never
ships here.

## How the pieces fit

1. **Factories → children.** A `New(...)` call deploys a TT from the
   factory's embedded template (one template per generation for the whole
   era — bytecode-proven, no mid-era swap `[src]`), registers the creator in
   the minter's `tx.origin`-keyed
   [registry](/knowledge/mechanics/registry-and-tx-origin/), and charges MV.
   The child then lives independently: an immutable ERC-20 whose mint price
   and redemption shape were fixed at creation
   ([multipliers](/knowledge/mechanics/multipliers/),
   [claim & publish](/knowledge/mechanics/claim-and-publish/)).
2. **Reserves anchor the collateral.** [TBILL](/knowledge/deep/tbill/) is
   V1's fixed reserve (its mint key was renounced 2025-04-01 — mints are
   impossible forever); [FED](/knowledge/deep/fed/) is the permissionless
   TBILL-parity root that backs V2's first generation
   ([FDIC](/tokens/0x812571a12330a74e2a3c1ff8953f6f3aac7a83e9)); MV is the
   fee asset everywhere.
3. **Lineage is the organizational principle.** Children take parents,
   so the census forms a forest: [root trees](/lineage) from shallow
   pairs to hand-chained "spines" dozens of levels deep. The two genesis
   anchors — FDIC (V2) and POOR (V3) — root the system's two signature
   lineage economies, the claim farm and the community feed
   ([deep dive](/knowledge/deep/fdic-poor-spines/)).
4. **Dysnomia is the second system, on the same backbone.** Accounts,
   chat channels and venues as tokens; derived physics over an entropy
   state; a treasury-bridge factory ([PKMinter](/dysnomia)) that hardcodes
   the minters; and one deliberate reverse route — treasury-side
   [Basilica](/contracts/0xae488a2b6fe8fe922019c1442c60f9dec0282894)
   mints through the Dysnomia hub CHO. The [bridge
   page](/dysnomia/guide/bridge/) maps every touchpoint; the venue layer
   is where the two systems' actors actually meet (FED and pWBTC are
   wrapped assets `[chain]`).
5. **Shared randomness underlies all of it.** Every TT constructor drew a
   `_mintingKey` from the MATH/RNG
   [deterministic orbit](/knowledge/reference/shared-infra/) — inert in the
   tokens, but the same orbit runs the Keys Of Ong game, serves as a
   de-facto public onchain RNG oracle for third-party contracts into 2026,
   and drew every Dysnomia contract's lifetime cap. Dysnomia adds the
   second, stateful engine (the CHO kernel chain) — both are consolidated
   on the [randomness reference](/knowledge/reference/randomness/).
6. **Liquidity wraps around it.** The ecosystem trades inside PulseX's
   252,036-pair graph; 2,166 of those pairs are TT↔TT, and the corpus has a
   verifiable burnt-liquidity tradition (1,753 pools with ≥50% of LP at
   dead sinks) — see the [liquidity reference](/knowledge/reference/liquidity/).
7. **An older corpus surrounds both eras.** Maria #2's 2023–24
   deployments hold the deepest ecosystem-owned books (TeddyBear, Atropa),
   the RNG backbone, and the AFFECTION family — the latter documented
   canonically in the [separate AFFECTION portal](https://affection-terminal.vercel.app/),
   with shared infrastructure canonical here. Fork-carried and
   bridge-wrapped assets are classified, never adopted: they are context,
   not components.
8. **A community layer grew on top — unowned.** Claim-loop farms (some
   still running), and the complete
   [IRC dev-channel corpus](/irc) as the community record.

## The wider workshop (context, `[ext]`)

The dev's own delivered record — a personal monorepo spanning 2023–2026 —
shows the workshop around both systems: an earlier C# virtual-machine
project exploring the same oracle/math ideas; the solidity era that became
old-Atropa and Dysnomia; on-chain retro-computing experiments (Yul-language
6502/Z-machine engines, all fork-deployed only); and a late C engine plus
an agent harness that *operates* the live system (chat monitoring, PKI
minter calls). None of it is a deployed part of either system beyond what
is already cited `[chain]`/`[src]` above; it is recorded here as labeled
context because it explains the systems' shared vocabulary and
workmanship. `[ext: owner-delivered repository record]`

## The eras (fact windows)

| Window | Era | Defining facts |
|---|---|---|
| 2023-05-10 | chain fork | PulseChain inherits the full Ethereum state at block 17,232,969 `[chain]` |
| 2023–2024 | old Atropa | Maria #2's 285 deployments; TBILL/TeddyBear/Atropa books; the burnt-LP playbook; MATH/RNG deployed 2024-06 |
| 2024-08-23 | **Dysnomia kernel boots** | the chat-world spine deploys in one 44-minute window, funded by Maria #2 five minutes earlier `[chain]` — see the [wave table](/dysnomia) |
| 2024-11 → 12 | pre-V1 build-up | Maria #1's 32 deployments — Keys Of Ong (2024-12-06), FED (2024-12-15), ㈞ and the standalone set |
| 2024-12-28 → 2025-02-20 | the treasury window | V1 → V4 plus bureau in ~8 weeks; the genesis sets; 123.35B TBILL moved into FED as reserve provisioning `[chain]` |
| 2025-02 → | community expansion | census growth to 3,141; FDIC claim-loop spam era; the bureau-ancestry farm starts (still active 2026-09); Dysnomia's CHO era lands 6 days after V4 |
| 2025-03 → 05 | the crisis window *(external system)* | fork-carried pDAI/Maker exploited and caged; TBILL renounced 2025-04-01 then largely burned down; ≈52% of ATROPA burned — block-exact rows on the [timeline](/timeline), per-token facts on entity pages |
| 2025-05 → now | long tail | factories immutable and still producing children into 2026; third-party RNG grinding 24–56M calls/month; Dysnomia's bridge factory (2026-05) is the corpus's last major deployment; the dev's active levers all closed |

Era ≠ minter version: every factory stayed callable long past "its" window
(children were still being created through V1–V4 in 2026 `[chain]`), which
is why the taxonomy keys eras to timestamps, not to factory identity.

## Where to read next

- **New to all of this:** the [mechanics overview](/knowledge/mechanics/),
  then V1 → V2 → [claim & publish](/knowledge/mechanics/claim-and-publish/),
  then the [FDIC & POOR spines deep dive](/knowledge/deep/fdic-poor-spines/)
  — that single arc covers the design idea, its escalation, and what the
  community did with it. Browse the children themselves under
  [/tokens](/tokens).
- **The second system:** the [Dysnomia guide](/dysnomia/guide/overview) —
  start at its overview, end at the [bridge page](/dysnomia/guide/bridge/);
  the [hub](/dysnomia) carries the live census aggregates.
- **Going deeper:** [multipliers](/knowledge/mechanics/multipliers/), the
  [registry model](/knowledge/mechanics/registry-and-tx-origin/), the
  [`_hu` ladder](/knowledge/mechanics/hu-ladder/),
  [shared infrastructure](/knowledge/reference/shared-infra/) and
  [randomness](/knowledge/reference/randomness/), the
  [admin surface](/knowledge/reference/admin-surface/), and the remaining
  deep dives (FED, TBILL, MV, math family, Keys Of Ong, TeddyBear, Atropa).
- **Reference by lookup:** every treasury entity under [/tokens](/tokens)
  and [/contracts](/contracts); every Dysnomia entity under
  [/dysnomia](/dysnomia); lineage trees under [/lineage](/lineage); the
  chronology under [/timeline](/timeline); machine-checkable statements in
  the [claim registry](/claims); the full taxonomy rules under
  [/taxonomy](/taxonomy).
- **Doing something onchain:** the [mint](/mint), [claim](/claim) and
  [walker](/walker) tools call the factories directly from your browser
  wallet — no server, no custody, and every cost/gate is previewed from the
  same data layer this knowledge base renders from.

The [knowledge index](/knowledge) carries these as full reading paths with
one-line descriptions of every page.

## Glossary

| Term | Meaning |
|---|---|
| **ecosystem / treasury system / Dysnomia** | ecosystem = the whole Atropa corpus; treasury system = the minter/reserve/TT core; Dysnomia = the on-chain social operating system in its own [/dysnomia](/dysnomia) section |
| **TT / treasury token** | an ERC-20 created by a minter factory; "TreasuryToken" in the sources |
| **minter / factory** | one of the eight contracts whose `New(...)` deploys TTs |
| **parent** | the collateral token a TT locks; fixed per TT at creation |
| **census** | the complete, dual-method, RPC-verified registry of all minter children — the coverage backbone of this site |
| **registry** | *(two senses)* the minters' `TreasuryTokens` child→creator mapping; or this project's classified-contract registry (356 rows) |
| **spine** | a lineage chain a user builds by successively parenting new TTs to their own tokens; curated ones run dozens of levels |
| **claim key** | a sibling TT that can be surrendered (V2/V3) to drain another token's locked parent |
| **publish** | the V2-only transition (`Debenture → false`) that stops a token being a claim key; it never stops claims *on* a token |
| **Debenture** | the per-TT flag gating claimability; killed by `publish` (V2) or first `withdraw` (V3); absent in V4 |
| **multiplier** | the escalating parent-cost of `mint()` for V3 (fixed 1.111B-unit steps) and V4 (steps scaled to the token's own initial mint) |
| **era** | a timestamp-keyed classification band for entities and events; never a factory identity |
| **WPLS-anchored** | liquidity measured in wrapped PLS terms — the cross-token comparable used on this site |
| **LAU / SHIO / QING / YUE** | Dysnomia's account token / chat channel / venue / vault token — see the [Dysnomia glossary](/dysnomia/guide/glossary) |
