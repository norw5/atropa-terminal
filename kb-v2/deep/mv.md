# MV / WM — ᨓᨆ

> Token `0xA1BEe1daE9Af77dAC73aA0459eD63b4D93fC6d29` · deployed by Maria #2
> at block 18216969 (2023-09-03) `[chain]`. No verified source is
> published on blockscout and none was recovered — mechanics below are
> `[chain]` (selector-level) plus `[src-decompiled]` where a heimdall-rs
> decompilation exists as a **non-normative research aid** (download:
> [decompiled source](/artifacts/decompiled/0xa1bee1dae9af77dac73aa0459ed63b4d93fc6d29.sol));
> decompile readings are always cross-checked onchain before stating them
> here. Deep-dive per the [tier criterion](/knowledge/deep/) —
> the universal creation payment.

## Mechanics `[chain]`

- ERC20 + Burnable + Ownable; the Ownable mint path was **renounced two
  days after deploy** (block 18235512).
- Supply is **not frozen**: the public function `Rho()` (selector
  `0xa4566950`) still mints — see the split decode below.
- **Burn-by-distribution**: the dead address `0x000000000000000000000000000000000000dead`
  has accumulated ≈66% of the ≈2.01B supply (1.34B MV at the dead sink
  at the driest point of the curve) — MV's dominant sink is distribution
  to a dead address rather than ERC20 `burn()`. Drip bursts occurred in
  2023 and again around block 26.0M (2026)
  (onchain event decode + the daily supply curve).
- Daily supply has been flat at 2.0129B since 2026-08-02 `[chain]`.

## `Rho()` — the six-leg permissionless mint, decoded `[src-decompiled + chain]`

`Rho()` is permissionless (no gate on the caller) and has **no cap
constant anywhere in the bytecode** — every call mints a fixed six-leg
schedule. The decode below is the heimdall reading cross-checked against
an onchain window of 8,400 mints (blocks 27,243,800–27,247,267); per call:

| recipient | amount per call | note |
|---|---|---|
| `0x000000000000000000000000000000000000dEaD` | 4.0 MV | dead sink |
| `0x7a20189B297343CF26d8548764b04891f37F3414` (Maria #2) | 1.0 MV | deployer |
| `0x046eB71EB92E3eD2534d005ab4436B4b8dB24DFa` | 8¹⁸ wei ≈ 0.018014 MV | numerology dust |
| `0x9abF7504162E5ca517D50A16E8aDdCB10115Aab` | 7¹⁸ wei ≈ 0.0016284 MV | numerology dust |
| `0x7ae04eD7f1082d8AA1c19893E9eC4039a666C02C` | 5¹⁸ wei ≈ 0.0000038 MV | numerology dust |
| `msg.sender` | 1.0 MV | caller leg |

- Total **6.0185 MV per call**; the dead address takes 66.46% per call —
  the burn-by-distribution sink above is this function's dominant leg.
- The three dust legs are computed, not embedded: base^decimals
  (8¹⁸ / 7¹⁸ / 5¹⁸ wei).
- **Liveness** `[chain]`: no call since block 27,420,067 (2026-08-02) —
  dormant only because nobody calls it. The function reverts only on the
  zero-caller leg; it remains callable by any EOA today, and each call
  would pay out 5.0185 MV to the fixed parties plus 1 MV to the caller.
- Caller history `[chain]`: Maria #2 herself (2023); a third-party EOA
  fleet during the block-26M burst era (each farming the 1 MV caller
  leg); `0xdd498016bc1f12878d59acf2a08b3a262cb638d0` in the 2026-07
  window.

## Role — the fee asset of every factory generation `[chain]`

`New(...)` in **every** minter generation (V1–V4 and all bureau
variants) charges `InitialMint` of MV via `WMContract.transferFrom`
before creating a child — byte-verified against every deployed factory
plus the reconstructed V1 head `[src]` (the parent token is never charged
at creation; `mint()` is paid in parent). Consequences, all
event-verified:

- **165,725,342.80 MV accrued** to the eight minters across 3,209
  payments (blocks 22,303,912 → 27,039,598 at scan tip) — ≈8.2% of supply.
- The minters hold everything they accrued: per-minter event totals
  reconcile with custody balances **exactly (delta 0)** — bytecode
  analysis proved no
  minter has any outflow path, so the dev's fee base is unswept and
  unsweepable `[src,chain]`.
- Top payer: Maria #1 herself, ≈50% of all payments — the system's
  "fees" were substantially self-funded during the construction eras.

See the [multipliers page](/knowledge/mechanics/multipliers/) for what `New`
costs at creation time and the [economics summary](/export) bundles for
the machine-readable curves. Book depth: 218.2M WPLS anchored, 540/542
pairs live `[chain]`.
