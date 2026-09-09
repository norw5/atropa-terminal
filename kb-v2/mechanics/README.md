# Mechanics

New to the system? Start with the [overview](/knowledge/overview/) — this
section is the detailed layer beneath it.

The treasury system is a family of immutable factory contracts ("minters")
that deploy child ERC-20s ("TreasuryTokens", TTs) with parent-collateral
economics. Five generations exist onchain; every page in this section states
the normative mechanics with source provenance — `[src]` recovered/verified
Solidity and `[chain]` onchain state — and generated statistics from the
census data layer.

| Page | Contract | Generation | Children `[chain]` |
|---|---|---|---|
| [V1 TbillMinter](/knowledge/mechanics/v1-tbillminter/) | `0xC7bDAc3e6Bb5eC37041A11328723e9927cCf430B` | 2024-12-28 · block 22303877 | 167 |
| [V2 FederalMinter](/knowledge/mechanics/v2-federalminter/) | `0xc15c5F699Daf5e1135732139f05D2c05b3EF4354` | 2025-01-04 · block 22362690 | 1,560 |
| [V3 IndexMinter](/knowledge/mechanics/v3-indexminter/) | `0x0c4F73328dFCECfbecf235C9F78A4494a7EC5ddC` | 2025-01-31 · block 22590323 | 506 |
| [V4 PersonalMinter](/knowledge/mechanics/v4-personalminter/) | `0x394c3D5990cEfC7Be36B82FDB07a7251ACe61cc7` | 2025-02-20 · block 22755643 | 891 |
| [Bureau minters](/knowledge/mechanics/bureau-minters/) | four contracts, 2025-02-01 | V3-adjacent | 5 (all via #1) |

Cross-cutting topics:

- [The registry / `tx.origin` ownership model](/knowledge/mechanics/registry-and-tx-origin/)
- [The `_hu` permission ladder](/knowledge/mechanics/hu-ladder/)
- [Claim & publish semantics](/knowledge/mechanics/claim-and-publish/)
- [Multipliers](/knowledge/mechanics/multipliers/)
- [Liquidity structure](/knowledge/reference/liquidity/) (reference section)
- [Shared infrastructure — MATH/RNG](/knowledge/reference/shared-infra/) (reference section)

All eight minters were deployed by the same EOA (Maria #1
`0xBF182955401aF3f2f7e244cb31184E93E74a2501`) except Bureau#4 (deployer
`0x3eC13D6BB18dB629941399EE12B5b3a1Ea281De6`) `[chain]`. None of them
carries any admin, upgrade, or kill surface — see the per-minter pages and
the [bytecode provenance in the claim registry](/claims).
