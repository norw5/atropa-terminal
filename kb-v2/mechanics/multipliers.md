# Multipliers

> Normative from the recovered templates `[src]`; current multipliers for
> every V3/V4/Bureau child are snapshotted on their entity pages
> (`multiplier_now`, block-pinned) `[chain]`.

| Generation | Pricing | Formula `[src]` |
|---|---|---|
| V1 | flat 1:1 vs TBILL | (no multiplier — `mint` is plain 1:1) |
| V2 | flat 1:1 vs parent | (no multiplier) |
| V3 / Bureau | **system step** | `((addition + totalSupply()) / 1111111111e18) + 1` |
| V4 | **self-scaled** | `((addition + totalSupply()) / Mint) + 1` where `Mint` = the token's own initial mint |

Reading the formulas:

- **V3** prices every child off the same ladder: each 1.111B units of
  existing supply adds one whole unit of parent cost to the next mint. A
  fresh token mints at 1×; after 1.111B units exist, 2×; and so on. The
  step constant is hardcoded — identical for all 506 V3 children and all
  bureau children.
- **V4** makes the ladder a **creation-time parameter**: a token whose
  initial mint was 1 unit doubles in cost after ~1 unit of supply; a token
  whose initial mint was 1.111B units behaves like a V3 token. The
  `multiplier_now` field on entity pages is exactly
  `(totalSupply // Mint) + 1` at the snapshot block.
- **Creation is always paid in MV**: `New(...)` charges `InitialMint`
  of **MV** (`WMContract`, every generation — the minter heads never touch
  the parent for payment; confirmed onchain by the minters' untouched MV
  balances). The multiplier applies only to subsequent `mint()` calls,
  which are paid in **parent** tokens.

Worked example (V3, fresh token): mint 500M units → cost 500M parent
(1×). Mint another 500M: addition 500M + totalSupply 500M = 1.0B < 1.111B
→ still 1×. After supply crosses 1.111B, every further mint costs 2× per
unit — and the **first** mint that crosses a boundary pays the new rate
on the whole requested amount (the multiplier is computed on
`addition + totalSupply()` before the mint).
