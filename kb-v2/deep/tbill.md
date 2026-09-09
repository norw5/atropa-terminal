# TBILL — Treasury Bill ㉾

> Token `0x463413c579D29c26D59a65312657DFCe30D545A1` · deployed by Maria #2
> at block 17418113 (2023-06-01) `[chain]`. Verified source:
> `TBILL_TreasuryBill.sol` (solc 0.8.18) `[src]`. Deep-dive per the
> [tier criterion](/knowledge/deep/) — V1's fixed reserve.

## Mechanics `[src]`

ERC20 + Burnable + **Ownable with a single privileged function**:
`mint(address,uint256)` under `onlyOwner`. Nothing else is gated — no
pause, no blacklist, no upgrade. The owner key is the token's entire
admin surface, and it was used exactly to be given away:

## The ownership chain — complete, dated `[chain]`

All four `OwnershipTransferred` events in TBILL's history:

| When (UTC) | Block | Transition | Tx |
|---|---|---|---|
| 2023-06-01 | 17,418,113 | deploy → Maria #2 `0x7a20189B297343CF26d8548764b04891f37F3414` | `0x8b2a351ec4d47ce6911c4250a4c0f658bd15ed8b35b017e29b1abc5b2fc39c0c` |
| 2023-09-26 | 18,409,001 | Maria #2 → `trebizond` `0x903030f7e2d6489F38B0f4F96F9b371ec7960F78` | `0x7e302b79f4b1d8cdc2310886f7b9b754cc3f77765807c135107595429a0f2f4f` |
| 2024-07-12 | 20,868,028 | trebizond → Maria #1 `0xBF182955401aF3f2f7e244cb31184E93E74a2501` | `0x93614a355ec689017e2e21fb9639136fc898764ac22d5951068726151e701986` |
| **2025-04-01 17:39** | 23,101,492 | Maria #1 → **0x0 — RENOUNCED; mints impossible forever** | `0x908aed25644c82a75a927ed4f86ab4a2c0a61bbd736050c2c1f2f494d6da10ab` |

`trebizond` (functional attribution only) was the TBILL ownership
custodian 2023-09 → 2024-07 — its 1-unit mint at block 18,409,018
coincided with its handover-in `[chain]`.

## The mint/burn ledger — closes to the wei `[chain]`

Every from-zero mint in TBILL's history (22 events) went to
Maria-controlled addresses: Maria #2 minted 1,221,111,111 (genesis era),
`trebizond` 1, Maria #1 minted 1,135,016,963,666 across Dec-2024 →
Mar-2025, ending with the single 1,000,000,000,000-unit mint of
2025-03-27 (block 23,053,113, tx
`0xd4d00fb7ac01d9ef7c51980f504f3efaf8ff23066c1fa208cfb2a93f1efaa55a` —
see the [timeline](/timeline)). **No further
mints ever** (scan to tip; the owner key is dead).

Cumulative 1,136.24B minted − 947.30B burned (16 to-zero transfers) =
188.94B today, flat since 2026-05-26. The burn side is dominated by Maria
#1 (944.20B: 348B at 2025-04-01 17:42 — seven minutes after the
renunciation — then 166.8B on Apr-2, then the 429.40B final burn-down
2025-05-23→26) plus 3.10B by the takeover EOA
`0xc108f4fce4c4d26159ad5d393bb8718e16374df3` (2025-04-17)
(`data/w3c_crisis_tbill_{timeline,burns}.json`).

Maria #1's out-map (2,052 transfers, 1,202.58B): 944.20B burned +
123.35B into the [FED reserve](/knowledge/deep/fed/) + 100.00B in a 6-minute
round-trip through DEX-trading wallet
`0xd8b1a6493af4f11719d877cf06a4d8b15c3d690f` (2025-05-15, returned in
full; that wallet holds 0 today) + ~10B dripped into TBILL books (the
largest single TBILL-side pool step ever was 400.8M — the ~1T was never
dumped into liquidity) `[chain]`.

## Role in the treasury system

- **V1's fixed parent**: every V1 TbillMinter child mints 1:1 against
  TBILL with no redemption — 117.14M TBILL permanently locked across 58
  of the 167 V1 children `[chain]` (generated
  panel on the [V1 mechanics page](/knowledge/mechanics/v1-tbillminter/)).
- **FED's parity asset**: FED's permissionless `mint` locks TBILL 1:1
  `[src]` — see [FED](/knowledge/deep/fed/).
- Reserve-side numeraires for several t-share-era TTs (Treasury Share,
  PHILIP, DOPAMINE, GLASNOST parent TBILL) `[chain]`.

The Q1/Q2-2025 pDAI/Maker events that intersect this ledger are external
system history — carried as block-exact rows in the [timeline](/timeline)
and on the registry entity pages, not deep-dive material here. Book depth:
742.5M WPLS anchored, 850/851 pairs live `[chain]`.
