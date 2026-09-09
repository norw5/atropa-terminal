# Claim & publish semantics

> Normative from the recovered templates `[src]`; system-level behavior
> verified onchain `[chain]`.

Across generations, "claim" always means the same physical operation —
**surrender child tokens, receive locked parent collateral** — but the
gating changes per generation:

| Generation | Claim shape | Gate | Publish |
|---|---|---|---|
| V1 | none — permanent sink | — | — |
| V2 | `Claim(Contract, Amount)` — **open sibling**: any registered sibling with `Debenture() == true` is a valid key | key must be an unpublished registered sibling | `publish()` (level ≥ 100) sets `Debenture = false`: stops being a **key**, enables `withdraw()` |
| V3 | `Claim(Contract, Amount)` — **gated sibling** | key must have the **same Creator and same Parent** as the payout token; payout token must still have `Debenture == true`; **payout token's parent must not be TBILL** (the V1 sink stays a sink) | none on the token — the minter's TTI interface declares `publish()` but the deployed template implements it nowhere; **first `withdraw()` sets `Debenture = false`** — the payout side dies on first exit |
| V4 | `Claim(Amount)` — **self-redeem** | burn your own tokens; parent pays out; **TBILL-parented children excluded** (same guard as V3) | n/a (no Debenture flag) |

One asymmetry is easy to miss and matters for anyone holding V2 keys: the
TBILL-parent guard (`if (Parent == TreasuryBillContract) revert`) exists in
the V3 and V4 templates but **not in V2** `[src]` — a V2 child of TBILL
remains fully claimable, and locked TBILL can leave through it. The
[/claim tool](/claim) warns on exactly this case.

Two system-level consequences, verified onchain `[chain]`:

1. **Publish ≠ protection.** Publishing removes a token as a claim *key*;
   it does nothing to stop claims *on* a token as the payout source. The
   bureau-ancestry spine FDIC → DFM `0x51160F352ED148C89d48dfe6384Edd07aFA24E0E`
   → PARADE `0xE37ACc54711562510FaFC45d8199Ee329ebBceDd` → Tellerz was
   published early in its life — and was then claim-loop-farmed for ~20
   months, still active as of 2026-09. Publishing is an ownership gesture,
   not a defense.
2. **Unpublished V2 children remain permanent claim keys by design.**
   511 V2 children were ever published (event-study scan `[chain]`); the
   unpublished majority are keys forever (their entity pages show the
   backing ratio that follows from being farmed or not, and the generated
   panel on the [V2 page](/knowledge/mechanics/v2-federalminter/) carries
   the current publish-adoption counts).

The economics that made this loop profitable: a claim pays out parent
collateral 1:1 against surrendered child supply — where child supply was
minted 1:1 (V2) — so any key whose market price falls below its parent
value is farmed until the parent custody hits zero (visible on entity
pages as the 0%-backing warning).
