# V2 FederalMinter

> Contract `0xc15c5F699Daf5e1135732139f05D2c05b3ef4354` · deployed block
> 22362690 (2025-01-04) by Maria #1 `[chain]`. Source recovered:
> `federalminter.sol` — deployed selector sets are **exact** against the
> source on both the minter head and the child template `[src]`. The
> largest generation: 1,560 census children `[chain]`.

V2 is the pivot of the whole design: one week after V1's lock-forever
parity model, redemption appears — collateral becomes recoverable through
**claim keys**, and being a key becomes a publishable property of the
token. Everything later (V3's gates, V4's self-redeem) is a variation on
the problem V2 created.

## Minter head `[src]`

| Function | Behavior |
|---|---|
| `New(string,string,uint256,address)` | `WMContract.transferFrom(msg.sender, this, InitialMint)` — creation is paid in **MV** (`WMContract` = MV `0xA1BEe1daE9Af77dAC73aA0459eD63b4D93fC6d29`, as in every generation) — then `new TT(Name, Symbol, InitialMint, this, Parent)`; `TreasuryTokens[child] = tx.origin`. Onchain confirmation: the minter holds 82.91M MV it never moved (1,603 payments ≈ the 1,560 children) `[chain]` |
| `Transfer(address,address)` / `TreasuryTokens(address)` | registry re-assignment (tx.origin-checked) / read |
| `GetTreasuryTokenOwner(address)` | cross-minter registry fallback (see [registry model](/knowledge/mechanics/registry-and-tx-origin/)) |
| `V1Minter()` / `FED()` / `FDIC()` | constants; the constructor registers the genesis child **FDIC** (parent FED `0x1D177CB9EfEEa49A8B97ab1C72785a3A37ABc9Ff`) to `tx.origin` |

The parent of a V2 child is **FED or any creator-held TT** — the era's
"bond" metaphor: children are backed by the reserve (or by other children).

## Child template — 26 functions `[src]`

ERC20 + Burnable + `Parent()` + `Creator()` + `Debenture()` + the `_hu`
ladder + `ho`/`TTDATA` +:

- **`mint(uint256)` — flat 1:1**: `Parent.transferFrom(msg.sender, this, amount)` → `_mint(msg.sender, amount)`. No multiplier.
- **`Claim(address Contract, uint256 Amount)`** — the *open sibling claim*: surrender `Amount` of any registered sibling token `Contract` (one whose `Debenture()` is still true) and receive `Amount` of **this token's locked parent**. The sibling is the claim key; `this` is the payout source.
- **`publish()`** — `_hu[tx.origin] >= 100`; sets `Debenture = false`. A published token can no longer serve as a claim key, and its owner becomes eligible to `withdraw()`.
- **`withdraw(address token, uint256)`** — gated on `!Debenture`; moves a held child-token's balance out.

See [claim & publish semantics](/knowledge/mechanics/claim-and-publish/) for the
system-level consequences (publish ≠ protection).

## Observed usage `[chain]`

- 1,560 children; the top creator minted 417; the deepest hand-built spine
  reaches depth 66 under the "timer" hub.
- Publish adoption: 511 children were ever published (event-study scan
  `[chain]`; current counts in the generated panel below); the rest remain
  permanent claim keys by design.
- FDIC — the genesis child — became the root of the bureau-ancestry spine
  that was claim-farmed for ~20 months and was still active in 2026-09
  (its entity page carries the live warning banner).
