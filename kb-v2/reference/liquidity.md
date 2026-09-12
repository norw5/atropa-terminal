# Liquidity structure

> Generated statistics from the liquidity-web crawl (both PulseX factories,
> end-to-end) `[chain]`; written structure below. Anchoring is
> WPLS-denominated throughout — the cross-token comparable this site uses
> (the pools carry no reliable USD leg: pDAI is de-pegged, so no pseudo-USD
> figures are shown).

## The shape of the webs `[chain]`

- Both PulseX factories were crawled end-to-end: V1
  `0x1715a3E4A142d8b698131108995174F37aEBA10D` (65,239 pairs) + V2
  `0x29eA7545DEf87022BAdc76323F373EA1e707C523` (186,797 pairs) — 252,036
  `PairCreated` events; the event counts equal `allPairsLength()` exactly
  for both, so the crawl is complete by construction.
- 34,634 pairs touch the interest registry (census TTs + reserves + named
  contracts). 1,581 census-era tokens ever had a pool; the rest are
  spine-only paper. 2,166 TT↔TT pairs exist — the ecosystem trades
  against itself.
- Reserves dominate the WPLS-anchored table: pDAI 39.5B, TeddyBear 3.19B,
  Atropa 2.82B, FED 1.30B (709 live pairs), TBILL 742.5M, MV 218.2M.
- 108 census TTs carry a PulseX LP token as **parent** — symbolic
  parenthood: every such LP pre-existed the TT and is a dust pool
  (≈0.005 tokens/side), not collateral.

## Burnt liquidity `[chain]`

The burnt-LP census (LP `balanceOf(DEAD) + balanceOf(ZERO)` vs
`totalSupply` per pair, all 34,634 pairs of interest):

| Fact | Value |
|---|---|
| pairs with ≥50% LP at dead sinks | 1,753 of 34,634 (5.1%) |
| pairs with any dead-sink LP | 1,919 |
| WPLS locked behind burnt LP | 564.4M WPLS (0.8% of WPLS-leg reserves) |
| concentration | old-era Maria #2 / forked-asset / TeddyBear pools dominate; census TTs are a minority |

The flagship case: the pDAI×Atropa pool burned 93.76% of its LP during
the April 2025 crisis window (verified inside the census). Entity pages
flag `burnt-locked-50` where ≥50% of one of the token's pools is at dead
sinks.

## Numeraires — forked vs bridge vs native `[chain]`

Three distinct "dollar-like" asset classes circulate, and they are not
interchangeable:

| Class | Examples | Nature |
|---|---|---|
| **fork-carried p-assets** | pDAI `0x6B175474E89094C44Da98b954EedEAC495271d0f`, pUSDC, pUSDT, pWETH, pWBTC `0x2260fac5e5542a773aa44fbcfedf7c193bc2c599` | Ethereum genesis state copies at identical addresses; de-pegged but liquid; carried Ethereum-era admin state at fork |
| **bridge-wrapped e-assets** | eDAI `0xefD766cCb38EaF1dfd701853BFCe31359239F305`, eUSDC `0x15D38573d2feeb82e7ad5187aB8c1D52810B1f07`, eUSDT `0x0Cb6F5a34ad42ec934882A05265A7d5F59b51A2f`, eWETH `0x02DcdD04e3F455D838cd1249292C58f3B79e3C3C` | official-bridge wrapped tokens (328-byte "… from Ethereum" contracts); distinct CAs, actually pegged by the bridge |
| **native reserves** | FED, TBILL, MV, TeddyBear, Atropa | Pulse-native Maria deployments, and the Atropa ecosystem's own units of account — the criterion for this row: born on PulseChain by an Atropa deployer key (neither fork-carried at genesis nor bridge-wrapped) **and** mechanically load-bearing inside the system's own economics — FED/TBILL as the reserve-collateral parents (V1's parity lock, V3/V4's claim guard), MV as the universal `New()` creation payment, TeddyBear/Atropa as the old-era flagship native books the liquidity webs anchor against |

The e/p prefix convention is informal — bare tickers collide (pDAI is *not*
eDAI's parent; they are different contracts on different origins). Any
valuation or pairing that silently mixes the classes is wrong by
construction; the entity pages classify every address into exactly one
class.
