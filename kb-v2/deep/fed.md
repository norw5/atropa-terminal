# FED — Reserve Teh ㉾

> Token `0x1D177CB9EfEEa49A8B97ab1C72785a3A37ABc9Ff` · deployed by Maria #1
> at block 22194132 (2024-12-15), tx
> `0xf76a8e73e13c7be6e40266591800aba2f7d00b09e7a68a5c0b6ff7047791c64a`
> `[chain]`. Verified source: `FED_TT.sol` (blockscout-verified, fetched to
> `docs/solidity/verified/`) `[src]`. Deep-dive per the
> [tier criterion](/knowledge/deep/) — V2-era root reserve.

## Mechanics `[src]`

FED is a **V1-era-style Treasury Token deployed as a standalone root
reserve**, thirteen days before the V1 minter itself:

- ERC20 + Burnable, constructor mints nothing (the commented-out
  constructor body is a preserved draft of the `Dong`/`Mom` game code).
- **`mint(uint256 amount)` — permissionless, TBILL-parity**: pulls
  `amount` of TBILL `0x463413c579D29c26D59a65312657DFCe30D545A1` from the
  caller via `transferFrom` and mints the same `amount` of FED to the
  caller. No owner gate, no cap.
- **No exit path**: there is no `Claim`, no `withdraw`, no admin transfer
  of the locked TBILL — every TBILL locked into FED is a permanent sink
  (the same parity-lock shape as [V1](/knowledge/mechanics/v1-tbillminter/)).
- The string-class permission KV `_hu[string][address]` (constructor
  grants `"user"`/`"op"`/`"sysop"` to the deployer) gates the `hu` setter
  and the `TTDATA` fallback — an onchain key-value store, not an asset
  privilege.
- `has(address,string)` — the V1-era capability probe (staticcall any
  selector), and `_mathlib` pointing at MATH
  `0xB680F0cc810317933F234f67EB6A9E923407f05D` with `_mintingKey` in the
  inheritance — the [RNG lineage](/knowledge/reference/shared-infra/) every TT
  family member carries (inert here).

FED is **not** the V1 minter's embedded template — the deployed V1
template is a leaner address-class `_hu` variant (runtime bytecode
analysis); FED_TT.sol is its closest verified relative `[src]`.

## Role in the treasury system `[chain]`

- **V2's root parent**: the FederalMinter accepts "FED or any creator-held
  TT" as parent `[src]`; the V2 genesis token
  [FDIC](/tokens/0x812571a12330a74e2a3c1ff8953f6f3aac7a83e9) was
  constructor-registered with parent FED. The V4 genesis NOTS also parents
  FED `[chain]`.
- **Backing injection**: 123.35B TBILL was moved into the FED contract by
  Maria #1 across 6 transfers, Dec-2024 → Jan-2025 (the reserve
  provisioning that preceded the community waves) `[chain]` — that TBILL
  is permanently locked by the no-exit mechanics above.
- **The farm substrate**: FDIC's `Claim` pays out FED, which made FED the
  recycled collateral of the FDIC claim-loop spam era; FDIC's FED custody
  is 0 at every probe since block ~23.5M `[chain]` (see the
  [FDIC/POOR deep dive](/knowledge/deep/fdic-poor-spines/)).

## Liquidity & state

Deepest reserve-asset book in the ecosystem after the forked majors:
1.30B WPLS anchored across 709 live pairs of 710 total `[chain]`
(factory crawl, blocks 27,435,182–27,435,383; burnt-LP flagged). Supply and the
current state are generated below from the data layer.
