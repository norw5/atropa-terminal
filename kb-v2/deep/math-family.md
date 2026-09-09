# The math family — MATH, RNG, and relatives

> The family: MATH v1.1 `0xB680F0cc810317933F234f67EB6A9E923407f05D`,
> RNG `0xa96BcbeD7F01de6CEEd14fC86d90F21a36dE2143` (both deployed by
> Maria #2, June 2024), MATH v1.0
> `0x5EF3011243B03f817223A19f277638397048A0DC`, Fa
> `0x232a27AB6941281b3f474Fe5fF7Cc89816fB675A`, Faung
> `0x73A19FaFb359faf519C9707b781dfdB88407d10d`, and the
> INDEPENDENCE-owned G5 `0x2fc636E7fDF9f3E8d61033103052079781a6e7D2` /
> PI `0xA2262D7728C689526693aE893D0fD8a352C7073C` `[chain]`. Deep-dive
> per the [tier criterion](/knowledge/deep/) — the shared RNG backbone.

The **normative mechanics** live in
[reference/shared-infra](/knowledge/reference/shared-infra/) (deterministic
modExp64 orbit over MotzkinPrime 953467954114363, `<=`-cap semantics,
the RNG-vs-AFFECTION mints-per-`Generate()` reconciliation, the
MATH↔RNG Δ 22,876 ledger closure) and the live state view at
[/shared-infra](/shared-infra) — both generated from the one cross-portal
bundle `shared_infra.compact.json`. This page adds the entity-level
record. `[src]` = verified `MATH_atropaMath.sol` / `rng.sol`; `[chain]` =
the pinned family state probe (block 27,486,857).

## What the family is

- **MATH v1.1 (libAtropaMath)** — the public entry point: `Random()`
  self-mints 1 MATH and calls `RNG.Generate()`, which advances the global
  orbit state and mints 1 RNG `[src]`. Every treasury-token constructor
  draws its `_mintingKey` through it; AFFECTION and third-party contracts
  call it directly. Also carries `hashWith`, `modExp(64)`,
  `MotzkinPrime()` and a family of `BuyWith{DAI,USDC,USDT,G5,PI,MATH}`
  routes `[src]`.
- **RNG** — the orbit token itself: `Generate()` = one deterministic
  state step + 1 mint under the `1111111111e18` ceiling `[src]`. No pool
  ever existed for it (spine-only-paper) `[chain]`.
- **MATH v1.0 / Fa / Faung** — the lower family tiers (legacy math
  library, conjecture token, dynamic token); MATH v1.0 is the 1:1 leg of
  v1.1's `BuyWithMATH` `[src]`.
- **G5 / PI** — intermediate mint tokens owned by INDEPENDENCE ©™
  `0x8b090509eAe0fEB4A0B934de1b4345161fA9a62d` (the `addresses.sol`
  constant), not by Maria #2 `[chain]`.

## The owner-key census `[chain]`

MATH v1.1, MATH v1.0, RNG, Fa, Faung — and AFFECTION itself — still
carry the Maria #2 owner key (six live keys at the pinned probe; G5/PI
carry INDEPENDENCE). Source analysis found **no `onlyOwner` gate on
any mint or withdrawal path in the family** — the keys are functionally
inert today and are carried as the risk register, restated on every
family entity page. The treasury core, by contrast, has zero admin
surface anywhere `[src]` (see [registry](/contracts)).

## Usage — a de-facto public RNG oracle `[chain]`

358M `Random()` calls all-time (from-zero mint counts, both legs of the
stack). Two eras: the affection-era peak (33.3M/month, 2024-07) and a
2025-11→2026 second era at 24–56M/month. Attribution sampling
showed the modern traffic is **third-party contract-internal looping**
(MATH is consumed as a public onchain randomness oracle by contracts the
treasury project never deployed); [Keys Of Ong](/knowledge/deep/keys-of-ong/)
accounts for under 1% of volume (per the orbit attribution probe). The
per-token usage curve and the MATH/RNG supply series are generated below.
