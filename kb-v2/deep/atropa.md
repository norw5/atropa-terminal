# Atropa — the namesake token

> Token `0xCc78A0acDF847A2C1714D2a925bB4477df5d48a6` · deployed by Maria #2
> at block 17384840 (2023-05-29, nineteen days after the chain fork)
> `[chain]`. Verified source: `Atropa.sol` (solc 0.8.18) `[src]`.
> Deep-dive per the [tier criterion](/knowledge/deep/) — namesake token; the
> flagship burnt pool.

## The name

Atropa belladonna — deadly nightshade. The dev's own recorded explanation is
a character, not a plant: *"i had a character named atropa on discworld with
over a year of online play time"* `[irc: atropa_logged line 12498]`, the same
Discworld MUD background that later shaped [Dysnomia](/dysnomia/guide/overview)
(its dev one-line self-description calls the system "a cross between a shell
account and a mud" `[irc: line 21114]`). The namesake token is thus the
ecosystem's signature carried from the workshop's oldest layer — and the
IRC-handle homage token `mariarahel` exists separately in the `addresses.sol`
named layer `[ext]`.

## Mechanics `[src]`

`contract Atropa is ERC20, ERC20Burnable, Ownable` with:

- a constructor mint of **1,111,111,111 × 10¹⁸ ATROPA** to the deployer —
  the ecosystem's recurring `1111111111` motif (it reappears two years
  later as the modulo in Dysnomia's contract-cap lottery,
  `maxSupply = Random() % 111111` `[src]`);
- `mint(address,uint256)` under `onlyOwner` — the one privileged function.

Ownership was later **renounced** `[chain]`: no one can ever mint again,
and supply is fixed at whatever burns have left. That renunciation is the
token's governance story in one line — the same story the treasury core
would later generalize into zero-admin factories.

## Role in the corpus `[chain]`

- **Second-deepest ecosystem-owned book**: 2.82B WPLS anchored, 2,251
  live pairs of 2,311 `[chain]` (factory crawl).
- **Parent of SEMIOTIC** `0x7d2520C0EfF78c54948600Ec6C68aCc7A2E4D1cf`
  — the V4 minter's constructor-created child that is deliberately
  **unregistered** in `TreasuryTokens` (the sole such census child)
  `[src,chain]`.
- **A custodian in its own right**: the renounced contract still *owns*
  six old-era glyph tokens (𐐏, ᎧᏃ, ᜤ᜴, 𐐧Ꮖ, ՔՈՏ, 𐐒𐐬𐐿𐐨𐑍𐐰𐑋) —
  transferred to it by Maria #2, each key functionally inert `[chain:
  owner() census]`. Ownership by a renounced contract is custody without
  control: the tokens' admin surfaces read "live owner", but no one can
  exercise them.

## The flagship burnt pool `[chain]`

The PulseX pair **pDAI×Atropa**
`0x5ef7aac0de4f2012cb36730da140025b113fada4` — the deepest ATROPA book —
has **93.76% of its LP at dead sinks since 2023-05-29** (created the day
the token deployed; burn event block-exact in `data/w3c_burnt_lp.parquet`
/ `w3c_extractable.json`). Burnt liquidity can never be withdrawn or
re-priced by its providers — but the pool itself keeps pricing and filling
trades forever. It is the canonical example of the corpus's
burnt-liquidity tradition
([liquidity reference](/knowledge/reference/liquidity/)): the asset stays
tradeable while the market structure becomes a public monument.

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
pool, whose depth could not run away from the buyer. Sender identities
beyond the mechanical record, and the pDAI/Maker mechanism itself, are
external system history — block-exact rows in the [timeline](/timeline)
and registry entity pages, not deep-dive material here.
