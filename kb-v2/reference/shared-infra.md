# Shared infrastructure — MATH, RNG, and the math family

> First-class page: Atropa Terminal is authoritative + deep for
> shared infrastructure. State pinned onchain `[chain]`;
> mechanics `[src]` from verified
> sources. Machine bundle: the one
> data-layer artifact this portal and the
> [AFFECTION portal](https://affection-terminal.vercel.app/) both consume
> (`/data/shared_infra.compact.json`). Generated state view (family table +
> usage curve): [/shared-infra](/shared-infra).

## The stack

```
MATH v1.1  Random() ──calls──▶ RNG  Generate() ──advances──▶ Mu (Faung state machine)
   ▲                                │
   │ aa (library reference)         └── modExp64 over MotzkinPrime 953467954114363
AFFECTION Ⓐ / every TT constructor (_mintingKey) / Keys Of Ong (Dong)
```

| Contract | Address | Role | Cap | Owner @ pin `[chain]` |
|---|---|---|---|---|
| MATH v1.1 (libAtropaMath) | `0xB680F0cc810317933F234f67EB6A9E923407f05D` | the public math/RNG library; `Random()` mints 1 MATH then calls RNG | 1,111,111,111e18 (`<=`) | Maria #2 `0x7a20189B297343CF26d8548764b04891f37F3414` |
| RNG (Random Number Generator) | `0xa96BcbeD7F01de6CEEd14fC86d90F21a36dE2143` | the orbit itself; `Generate()` advances `Mu` and mints 1 RNG | 1,111,111,111e18 (`<=`) | Maria #2 |
| MATH v1.0 | `0x5EF3011243B03f817223A19f277638397048A0DC` | legacy; 1:1 leg of MATH v1.1 `BuyWithMATH` | — | Maria #2 |
| Fa (libConjecture v1.0) | `0x232a27AB6941281b3f474Fe5fF7Cc89816fB675A` | lower-level conjecture token (4 Fa = 1 Ⓐ) | same family cap | Maria #2 |
| Faung (libDynamic v1.0) | `0x73A19FaFb359faf519C9707b781dfdB88407d10d` | the Faung token (2 Faung = 1 Ⓐ; supply ~3) | same family cap | Maria #2 |
| G5 (GIMME FIVE) | `0x2fc636E7fDF9f3E8d61033103052079781a6e7D2` | intermediate mint token (1 G5 = 5 pDAI) | uncapped | INDEPENDENCE `0x8B090509eAe0fEB4A0B934de1b4345161fA9a62d` |
| PI (pINDEPENDENCE) | `0xA2262D7728C689526693aE893D0fD8a352C7073C` | whale-route intermediate (1 PI = 300 pDAI) | uncapped | INDEPENDENCE |

**Owner-key census `[chain]`**: MATH v1.1, MATH v1.0, RNG, Fa, Faung and
AFFECTION all still carry the Maria-#2 owner key (block-pinned in the state
artifact). The treasury core has zero admin keys; the math family holds six
live ones (functionally inert today — `Ownable` gates nothing in the mint
paths — but they exist and are listed here as the risk register).

## Mechanics

- **Deterministic orbit `[src]`** (`rng.sol`, `fa.sol`, `faung.sol`,
  `MATH_atropaMath.sol`): `Generate()` advances the global `Mu` state by fixed
  `modExp64` transforms over MotzkinPrime 953467954114363, seeded entirely by
  hardcoded constructor constants. Zero onchain entropy (no
  blockhash/timestamp/prevrandao). One global step per call; predictable given
  the call count; steerable by anyone.
- **Cap semantics `[src]`**: every capped family member mints with
  `if (totalSupply() <= 1111111111e18) _mint(address(this), 1e18);` — the `<=`
  lets supply touch cap+1; burns (ERC20Burnable) reduce `totalSupply()` and
  re-open headroom. The ceiling bounds concurrent supply, not lifetime
  issuance.

## The RNG mints-per-`Generate()` reconciliation `[src]`

Two readings coexisted in our sources. Reading the deployed, verified sources
resolves them — they describe **different contracts**:

1. **The RNG token** (`0xa96BcbeD…`, `rng.sol` lines 1357–1373): `Generate()`
   contains exactly **one** mint —
   `if (totalSupply() <= (1111111111 * 10 ** decimals())) _mint(address(this), 1 * 10 ** decimals());`.
   There is no `_mintToCap` in this contract and `Conjecture.React()` here
   does not mint. **1 RNG per call, while under cap.** ✅ treasury-side
   reading.
2. **The AFFECTION token** (`0x24F0154C…`, `affection.sol`/`conjecture.sol`):
   its **own** `Generate()` calls its local `Conjecture.React()` twice — and
   *that* `React()` calls `_mintToCap()` — plus one final `_mintToCap()`:
   **3 Ⓐ per call, while under cap.** ✅ affection-docs reading.

No contradiction: RNG-the-token ≠ AFFECTION. Both use the identical `<=` cap
conditional.

**The MATH↔RNG ledger closes exactly `[chain]`**: `MATH.Random()` self-mints
1 MATH (its own cap) **and then** calls `RNG.Generate()` (1 more mint) — both
supplies sit far below cap, so neither ceiling ever bound. From-zero mint
counts: MATH 357,980,586 vs RNG 358,003,462 → **Δ 22,876 =
`Generate()` calls that did not pass through `MATH.Random()`** (direct RNG
calls; the delta accrues across all eras, incl. +2,393 in the current grinder
era). Current state agrees to the unit: 362,812,655 MATH vs 362,835,531 RNG.

## Usage curve `[chain]`

358M `Random()` calls all-time; affection-era peak 33.3M/month (2024-07);
2025-11→2026 second era at 24–56M/month — third-party contract-internal
grinding (MATH is a de-facto public onchain RNG oracle; see the generated
usage curve below). Keys Of Ong is a minor consumer
(<1% of volume, per the orbit attribution probe).
