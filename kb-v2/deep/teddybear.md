# TeddyBear — BEAR / TEDDY BEAR ㉾

> Token `0xd6c31bA0754C4383A41c0e9DF042C62b5e918f6d` · deployed by Maria #2
> at block 17417800 (2023-06-01, the same day as TBILL) `[chain]`.
> Verified source: `TeddyBear.sol` (solc 0.8.18) `[src]`. Deep-dive per
> the [tier criterion](/knowledge/deep/) — the ecosystem's deepest liquidity
> book.

## Mechanics `[src]`

The whole contract is four lines of substance:
`contract TeddyBear is ERC20, ERC20Burnable, Ownable` with a constructor
that mints **999,000,000,000,212 × 10¹⁸** TEDDY to the deployer. No mint
function exists — owner or otherwise — so supply can only fall (burns);
ownership was later renounced `[chain]`. The `…212` tail on the otherwise
round 999T genesis is a verbatim source fact, not a data artifact.

## Role in the corpus `[chain]`

- **The deepest ecosystem-owned book**: 3.19B WPLS anchored across 2,253
  live pairs of 2,299 total — outranking every reserve asset and every
  census TT; only forked majors (pDAI, pUSDC…) are deeper `[chain]`
  (factory crawl, blocks 27,435,182–27,435,383; burnt-locked flagged).
- **Parent of census children**: KIBO (Sticker Teddy Bear
  `0x2476B9357E8440Ecc0B15766395AB999d2861378`) and DARPA Teddy Bear
  (`0x64B43b22d2adAEC58DbEaFBacb4Ac2521F94CAee`) — V4 PersonalMinter
  children `[chain]`.
- The community framing "the teddy bear backs the treasury bill" is
  `[irc]`/`[ext]` lore (dev chat, 2023–24) — recorded as community
  material, never normative; no mechanical backing link exists between
  the two contracts beyond co-deployment day `[chain]`.

## The 2025 "Bear dump" — mechanical record `[chain]`

Block-exact, facts-only (sender attribution is functional — Maria
wallets are the core deployer keys):

- 459 transfers moved 197.20T TEDDY out of the Maria wallets across
  blocks 22.03M → 24.9M (onchain transfer decode). March-2025
  alone: 104.13T — concentrated in the TBILL-mint week.
- **55 minutes after the 1T TBILL mint** (2025-03-27 02:11–02:20 UTC),
  a rapid-fire burst began into the WPLS/TEDDY pair
  `0x31ef9a41500e6bd18524404ac9c5b88d04aa924e`, which absorbed 94.31T
  over the window — the single largest destination.
- Per-tx receipt decode of all 253 transactions: **458 of 459
  pair-directed transfers emitted Sync only — pure sells; zero Mint
  events — no LP was ever added** (receipt decode).
  Destination books: WPLS/TEDDY 94.31T, TBILL/TEDDY
  `0x24c4d0532cddae3b0b8935196f2b91e68d6b85ed` 49.75T, PLSX/TEDDY
  10.84T, ATROPA/TEDDY 4.67T, pDAI/TEDDY 3.35T + tail — a broad
  distribution into every liquid TEDDY-quoted book.
- Earlier/later waves: 57.53T in Dec-2024 (pre-V1 provisioning), 5.5T
  May-2025, 3.8T Jun, 19.8T Jul follow-ons.

Current supply, pool aggregates and the burnt-share flags are generated
below from the data layer.
