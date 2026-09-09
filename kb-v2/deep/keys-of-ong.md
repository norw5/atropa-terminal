# Keys Of Ong

> Token `0x9CCc2de565da893AB1300674F174545A3E568F93` (symbol ARCADIA) ·
> deployed by Maria #1 at block 22118904 (2024-12-06), tx
> `0xd3efe3bc95c1635210ac5b16e0b6d480358fdf7bce56219381f5ab5650d99fc5`
> `[chain]`. No verified source on blockscout; the surface below is
> decompiled + cross-anchored to the verified `FED_TT.sol` draft `[src]`.
> Deep-dive per the [tier criterion](/knowledge/deep/) — the ecosystem's live
> RNG-consumer game. t-share canon member `[ext]` list, `[chain]`
> membership.

## Mechanics `[src]`

ERC20 + Burnable plus exactly one game function:

- **`Dong(uint64 Key)`** — the guessing game: submit a key; if it equals
  the contract's private `_Key`, the contract **mints 1e18 (one whole
  token) to the caller and re-rolls `_Key` via
  `_mathlib.Random()`** — i.e. through MATH
  `0xB680F0cc810317933F234f67EB6A9E923407f05D`, the shared deterministic
  orbit ([math family](/knowledge/deep/math-family/),
  [shared-infra mechanics](/knowledge/reference/shared-infra/)).
- `has(address,string)` — the V1-era capability probe; `_mathlib()`,
  `_mintingKey()` — the standard family inheritance.
- **No owner, no admin surface, no other mint path** — the only way
  supply grows is a correct guess. Supply therefore equals all-time
  awards (generated below).

The deployed `Dong` matches, character-for-character, the commented-out
`Dong`/`Kong` draft preserved in the blockscout-verified `FED_TT.sol`
(lines 1318–1327) — the game was drafted inside the FED template and
shipped as its own standalone contract `[src]`.

## Reading the game (neutral facts)

- The randomness source is the **deterministic MATH orbit**: zero onchain
  entropy, one global step per call, predictable given the call count
  `[src]`. A player who can track the orbit state can compute the next
  `_Key`; predictability has been **demonstrated by third-party play**
  `[chain]` (sustained win patterns inconsistent with brute force). No
  win-concentration tables are published here by policy (actor coverage
  stays functional; unpublished analysis exists in the research layer).
- The dev-published "Treasury Lore Token Registry" `[ext]` describes it
  as an "on-chain constant-entropy PRNG prediction game" and references a
  "5-month zero-win difficulty barrier" audit note — community record,
  not verified here; the referenced lore documents were never recovered.

## State `[chain]`

All-time awards ≈ supply (generated panel). Liquidity is thin —
22.4k WPLS anchored across 32 pairs — the token's interest is the game,
not the book. Deployed 22 days before the V1 minter, it is the
pre-treasury era's RNG showcase and the MATH orbit's most visible
consumer inside the core corpus.
