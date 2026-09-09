# The FDIC & POOR spines — the genesis anchors

> FDIC `0x812571A12330A74E2A3C1fF8953f6f3aac7a83e9` (V2 genesis,
> constructor-registered, parent FED) and POOR
> `0xaa1505c928fd85e10a550cfde9e8f464c3574d8a` ("Proof Of Own Reserves
> Contract", V3 genesis, parent FDIC) `[chain]`. Deep-dive per the
> [tier criterion](/knowledge/deep/) — the two genesis tokens anchor the
> system's two lineage economies: the claim farm and the community feed.

## The two geneses `[src]`

| | FDIC (Federal Deposit Insurance Contract) | POOR (Proof Of Own Reserves Contract) |
|---|---|---|
| Created in | V2 FederalMinter constructor (block 22362690) | V3 IndexMinter constructor (block 22590323) |
| Parent | FED `[src]` | FDIC `[chain]` |
| Registered to | Maria #1 (`tx.origin` of the deploy) | Maria #1 |
| `Debenture()` at birth | **false — published in the constructor** `[src]` | **true — never published** `[chain]` |
| Meaning | can never serve as a claim key; owner could `withdraw()` | remains a **live claim key forever** (V3 has no publish) |

The V4 constructor set (NOTS parent FED, SKILLS parent MV, LARP, NINE
parent BBC, SEMIOTIC parent Atropa — the latter unregistered) completes
the genesis layer; each has its generated entity page `[chain]`.

## FDIC — the farm spine `[chain]`

FDIC's `Claim` (open-sibling, [V2 semantics](/knowledge/mechanics/claim-and-publish/))
pays out its locked FED, and that design made FDIC the substrate of the
system's two farm economies:

1. **The claim-loop spam era** (from ~block 23.5M): a rotating fleet of
   bot clients (116 addresses observed; funder tops up workers at tx
   start) cycled *mint FDIC (FED in) → claim with someone else's
   unpublished V2 junk token as the key → receive the FED back*, netting
   freshly minted FDIC per cycle against ~0-value collateral. ~47.5M
   events pre-abandonment; the top junk key alone carried 44.46M of
   them; bursts reached ~100–110 events/block. FDIC's FED custody is 0
   at every probe since — the backing was drained by design of the loop,
   not by any exploit (`data/w3_events/fdic_spam_analysis.json`). This
   volume is why the chain-wide Recovery scan stops at block 24,532,968.
2. **The bureau-ancestry loop farm** — FDIC → DFM
   `0x51160F352ED148C89d48dfe6384Edd07aFA24E0E` → PARADE
   `0xE37ACc54711562510FaFC45d8199Ee329ebBceDd` → Tellerz
   `0xC7145e1290B1d1221Aba5Ae48d4aCE17c6BE088F` → BUREAU — the single
   largest claim farm, **still active 2026-09** (~100 loop iterations
   per tx: mint → claim → sell the farmed token for WPLS). All three
   spine tokens were **published early** (Jan–Feb 2025) — the canonical
   proof that **publish ≠ protection**: publishing removes a token as a
   claim *key*, never stops claims *on* it. All-time mints − claims −
   custody close exactly to the wei for every spine token
   (onchain event scan; generated panel below).

## POOR — the most-fed genesis `[chain]`

The V3 genesis is the opposite economy: no farm, broad community
feeding. POOR's parent custody (FDIC locked inside POOR) is the largest
of any genesis token — the only genesis that still holds its parent
collateral at snapshot (generated panel; backing far above 100% because
POOR's own supply stayed small while FDIC flowed in). Its `Debenture` is
still true, so POOR remains an eligible V2-claim key — the /claim tool
carries the corresponding live warnings. Mints, self-claims and the
monthly curve are generated below from the onchain event scan.

## Lineage views

The generated trees: [FDIC spine](/lineage/0x812571a12330a74e2a3c1ff8953f6f3aac7a83e9)
· [POOR spine](/lineage/0xaa1505c928fd85e10a550cfde9e8f464c3574d8a).
Entity pages: [FDIC](/tokens/0x812571a12330a74e2a3c1ff8953f6f3aac7a83e9)
· [POOR](/tokens/0xaa1505c928fd85e10a550cfde9e8f464c3574d8a).
