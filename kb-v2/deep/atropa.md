# Atropa — the namesake token

> Token `0xCc78A0acDF847A2C1714D2a925bB4477df5d48a6` · deployed by Maria #2
> at block 17384840 (2023-05-29, nineteen days after the chain fork)
> `[chain]`. Verified source: `Atropa.sol` (solc 0.8.18) `[src]`.
> Deep-dive per the [tier criterion](/knowledge/deep/) — namesake token; the
> flagship burnt pool.

## Mechanics `[src]`

`contract Atropa is ERC20, ERC20Burnable, Ownable` with:

- constructor mint of **1,111,111,111 × 10¹⁸ ATROPA** to the deployer
  (the ecosystem's recurring `1111111111` motif);
- `mint(address,uint256)` under `onlyOwner` — the one privileged
  function. Ownership was later **renounced** `[chain]`, fixing supply at
  whatever burns had left.

## Role in the corpus `[chain]`

- **Second-deepest ecosystem-owned book**: 2.82B WPLS anchored, 2,251
  live pairs of 2,311 `[chain]` (factory crawl).
- **Parent of SEMIOTIC** `0x7d2520C0EfF78c54948600Ec6C68aCc7A2E4D1cf`
  — the V4 minter's constructor-created child that is deliberately
  **unregistered** in `TreasuryTokens` (the sole such census child)
  `[src,chain]`.
- The name and symbol are the ecosystem's own — the IRC handle
  `mariarahel` homage token `mariarahel` exists separately in the
  `addresses.sol` named layer `[ext]`.

## The flagship burnt pool `[chain]`

The PulseX pair **pDAI×Atropa**
`0x5ef7aac0de4f2012cb36730da140025b113fada4` — the deepest ATROPA book —
has **93.76% of its LP at dead sinks since 2023-05-29** (created the day
the token deployed; burn event block-exact in `data/w3c_burnt_lp.parquet`
/ `w3c_extractable.json`). Its liquidity can never be withdrawn; it is
the canonical example of the corpus's burnt-liquidity tradition
([liquidity reference](/knowledge/reference/liquidity/)).

## The 2025-04-16/17 burns — mechanical record `[chain]`

Supply 1.111B → 636.9M (2025-04-16) → 534.9M (2025-04-18). Both cliff
burns were executed by the takeover EOA
`0xc108f4fce4c4d26159ad5d393bb8718e16374df3`:

| When (UTC) | Block | Burned | Tx |
|---|---|---|---|
| 2025-04-16 07:24 | 23,225,580 | 474,181,539 ATROPA | `0x9e621f8759d74f21e408d41a862762fcad0eb5b3381ef48f601de6cc44626489` |
| 2025-04-17 23:29 | 23,239,934 | 101,983,311 ATROPA | `0xb26994b6be63181c6e30ea4d7dc50329297a7c34f228ba8e55b0d514d5beae00` |

Total **576,164,849 ATROPA burned — ≈52% of pre-crisis supply**. The
same wallet extracted ≈476.61M ATROPA out of the burnt pool in the 90
minutes after the Maker cage (97 swaps, gross +15.10B pDAI in) — i.e.
≈83% of everything it burned was bought out of the permanently-locked
pool. Sender identities beyond
the mechanical record, and the pDAI/Maker mechanism itself, are external
system history — block-exact rows in the [timeline](/timeline) and
registry entity pages, not deep-dive material here.
