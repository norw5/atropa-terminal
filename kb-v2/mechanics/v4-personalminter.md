# V4 PersonalMinter

> Contract `0x394c3D5990cEfC7Be36B82FDB07a7251ACe61cc7` · deployed block
> 22755643 (2025-02-20) by Maria #1 `[chain]`. Source recovered:
> `personalminter.sol` — deployed selector set exact; two body-level
> divergences documented below `[src]`. 891 census children `[chain]`.

V4 closes the arc the claim model opened: with sibling keys gone, the only
way out of a child is to burn it yourself — and pricing stops being a
system-wide constant, becoming a parameter each token sets at birth.

## The self-scaled multiplier `[src]`

```solidity
Mint = InitialMint;                     // constructor
function Multiplier(uint256 addition) public view returns (uint256) {
    return ((addition + totalSupply()) / Mint) + 1;
}
```

Every child defines its own price ladder by its own initial mint: a
1-token child doubles in parent-cost after ~1 unit of supply; a
1.111B-unit child prices like a V3 token. "Personal" minter — the
economics are set per token at creation.

## Self-redeem `[src]`

V4 removes the sibling-claim entirely: `Claim(uint256 Amount)` burns the
caller's **own** tokens and pays out `Amount` of the locked parent
(TBILL-parented children are excluded — the V1 sink stays a sink).
`withdraw(token, value)` moves any non-parent balance; no `Debenture` flag
exists in this generation.

## Head surface & genesis set `[src]`

`New(string,string,uint256,address)` like V3; plus `NewGai(string,string)`
and the constants `NOTS()`, `SKILLS()`, `NINE()`, `BBC()`,
`IndexMinter()`, `TreasuryMinter()`. The constructor builds the genesis
set: NOTS (parent FED), SKILLS (parent MV), LARP (parent SKILL), NINE
(parent BBC), SEMIOTIC (parent Atropa) — and **skips registering
SEMIOTIC** in the registry (the sole unregistered child in the whole
census, exactly as the source's final line does).

## Divergences source-vs-deployed `[src-bc]`

1. **`NewGai` exists and works — but not as drafted.** The repo draft
   cannot compile (a variable redeclared five times). The deployed body
   creates **five chained children** `➎←Gai, ➍←➎, ➌←➍, ➋←➌, ➊←➊`
   (Gai = `0xd6077A029Fb5BEF33b02391D7f0349c345F6DDb1`) with **declining
   initial mints 5,4,3,2,1 ×1e18** and a 15e18 MV charge. It was called
   exactly four times `[chain]`:
   `0x44d16a0dc9d49eb65bae5027563a350baea6dd5839fb31511658f3e29c73174f` (V4
   launch day, "gaia" batch — earlier mislabeled a hand-chain),
   `0x3e48084f8108ea6b7af035f5ccf2705cbe530927c80b6d41f108974f0de3dde1`
   (Darpa batch),
   `0xcc63f168150ad569af71234499f140f77ddab040e988d386ba66429663a3d9ba`
   (PP4000 batch),
   `0xe483e08cf2008070c4a7b6c7ef2a1782b52f41bef0348c5dd9488315da858b09`
   (Affection GAI batch).
2. **NOTS genesis literals differ**: deployed name "NotsDotQ", symbol
   "N㉾SD㉾Q" vs the source's "N㉾tsD㉾tQ"/"NoSDoQ" — the deployed literals
   are proven by the creation-code PUSH32 bytes `[bc]`.

Every V4 child shares one immutable-masked template (40 runtime codehashes
collapse to one template after masking the immutables) `[bc]` — like every
era, no template swap ever happened.
