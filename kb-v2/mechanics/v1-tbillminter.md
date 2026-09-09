# V1 TbillMinter

> Contract `0xC7bDAc3e6Bb5eC37041A11328723e9927cCf430B` · deployed block
> 22303877 (2024-12-28) by Maria #1 `[chain]`. Source was never published;
> the mechanics below are **reconstructed from deployed bytecode**
> (disassembly + selector diff, solc 0.8.21, ipfs metadata intact) and hold
> source-level confidence `[src-bc]`. Statistics regenerate from the census
> at build time.

## Head surface — exactly three functions `[src-bc]`

| Selector | Function | Behavior |
|---|---|---|
| `0x192c7a9d` | `New(string,string,uint256)` | mints a new TT; **charges `InitialMint` of MV** via `MV.transferFrom(msg.sender, this, InitialMint)` (MV `0xA1BEe1daE9Af77dAC73aA0459eD63b4D93fC6d29` hardcoded); deploys the embedded template; registers `TreasuryTokens[child] = tx.origin` |
| `0x4853ae1b` | `Transfer(address,address)` | registry re-assignment, `tx.origin`-checked |
| `0x5f5c5585` | `TreasuryTokens(address)` | registry read |

## The child template `[src-bc]`

One 7,749-byte template, embedded in the minter, **identical for the whole
era** (minter creation-code ipfs hash `5822122088ba3c53…cca7dceca1c` equals
every child's runtime metadata hash; no mid-era swap ever happened). A V1 TT
is:

- plain ERC20 + Burnable, plus
- `mint(uint256)` — **1:1 against TBILL** `0x463413c579D29c26D59a65312657DFCe30D545A1`
  (hardcoded inside the template region): `TBILL.transferFrom(msg.sender, this, amount)` → `_mint(msg.sender, amount)`
- `has(address,string)` — the permission predicate of the `_hu` ladder
  (address-class variant; see [the ladder](/knowledge/mechanics/hu-ladder/))
- `_mathlib()` → MATH `0xB680F0cc810317933F234f67EB6A9E923407f05D`; the
  constructor computes `_mintingKey = mathlib.Random()` once
  ([constructor-key-inert](/knowledge/reference/shared-infra/))

**No `Parent()` getter, no `Debenture`, no `Claim`, no `publish`, no
`withdraw`.** The TBILL that flowed into V1 children is a permanent sink:
117.14M TBILL sits locked across 58 of 167 children with no exit path
anywhere in the bytecode `[chain]`.

## Economics in one paragraph

V1 is the flat parity era: a child is created by paying MV (equal to its
initial mint), and anyone can then mint it 1:1 against TBILL — which stays
locked inside the child forever. There is no redemption mechanism at all;
the design was superseded by V2's claim model within a week.
