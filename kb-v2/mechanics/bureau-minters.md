# Bureau minters

> Four contracts deployed the same day (2025-02-01) `[chain]`. A bureau
> minter is a **fixed-parent storefront over the V3 factory engine**: you
> give up choosing a parent, and in exchange every token it creates is
> automatically collateralized by one reserve token — the minter's own
> **BUREAU** root. One of the four (#1) works; two (#2/#3) are
> structurally unable to create anything `[chain]`; one (#4) was never
> used.

## What a bureau minter is

The V3 IndexMinter lets a creator pick **any ERC-20 as the parent** of a
new token. A bureau minter removes that choice: the parent is baked into
the contract at deployment time. Everything else — pricing, minting,
claims — runs on the ordinary V3 rule set `[src]` (see
[V3 IndexMinter](/knowledge/mechanics/v3-indexminter/)).

Each bureau minter arrives with its own reserve token, created by the
minter's **constructor** calling the real V3 minter — canonical source
below; the proxies' roots appear in their minters' own deployment blocks
`[chain]`:

```solidity
constructor() {
    BUREAU = IndexMinter.New("Dysnomian Credit Bureau", unicode"BUREAU ㉾",
                             0, address(0xC7145e1290B1d1221Aba5Ae48d4aCE17c6BE088F));
}
```

So every "BUREAU ㉾" root is itself an ordinary V3 census child — parent
**Tellerz** `0xC7145e1290B1d1221Aba5Ae48d4aCE17c6BE088F`, initial mint 0,
supply grown only by V3 `mint()` — and the four minters each anchored to
their own `[chain]`. The result is a two-layer sub-treasury:

```
Tellerz ──V3 mint()──▶ BUREAU ㉾ (root) ──Bureau#1 New()──▶ bureau children
```

(The full chain runs deeper: the bureau layer hangs off the FED → FDIC →
DFM → PARADE → Tellerz spine — [walk it](/walker?root=0x0b92ad7ed0da6c44bf71b3fcee668d1670000ff5).)

To mint a bureau child you pay **BUREAU ㉾**; to get BUREAU ㉾ you mint it
from V3 paying **Tellerz** `[src]`. Nothing is hidden — the bureau layer
is just V3 mechanics with the parent choice removed.

## The four deployments

| # | Minter | Block | BUREAU root | Children | Implementation `[bc]` |
|---|---|---|---|---|---|
| 1 | `0xc4f0ce2b0ffa0063b763e2b6c124a1d80e0641b5` | 22602249 | `0x0b92aD7eD0da6c44Bf71B3FCEe668D1670000Ff5` | **5** | **canonical** — full template embedded, direct CREATE, selector-exact vs `bureauminter.sol` |
| 2 | `0x9680d815e3ba4fd78c5c1e6ea229abb03734e141` | 22602225 | `0x025C89443421eC5C9dC7fd9a00FD0Bf1bDdDdBaf` | 0 | **proxy** — charges MV, then CALLs V3 `New(…, BUREAU)`; no embedded template |
| 3 | `0xc9be525a582b6f84d928b7901bd18b4315f8502b` | 22602178 | `0x312f1Dd1467d1ef2265652970E45239f508227d0` | 0 | proxy like #2 (+`Transfer`) |
| 4 | `0x5De29C8eac1482221de1945A566B6c65f54A3C3e` | 22603752 | `0xCF43a8b0690747BB5b40Dc01803a76CEfD7CD81D` | 0 | full-template shape recompiled with **solc 0.8.28**; never used (deployer `0x3eC13D6BB18dB629941399EE12B5b3a1Ea281De6`, not Maria #1) |

All four were verified bytecode-side in the W1 archaeology: zero admin,
upgrade, or self-destruct selectors anywhere in the family `[src]`. The
same-night iteration (proxy → proxy → full → third-key rebuild four
hours later) is visible onchain exactly as tabulated; no interpretation
is attached in this reference.

## Creating a token through Bureau#1

`New(Name, Symbol, InitialMint)` — note there is **no parent parameter**
`[src]`:

```solidity
function New(string calldata Name, string calldata Symbol, uint256 InitialMint) public returns (address) {
    ERC20 BuyToken = ERC20(WMContract);                       // MV
    bool success1 = BuyToken.transferFrom(msg.sender, address(this), InitialMint);
    require(success1, ...);
    TT _new = new TT(Name, Symbol, InitialMint, address(IndexMinter), BUREAU);
    TreasuryTokens[address(_new)] = address(this);
    return address(_new);
}
```

Step by step, as a user:

1. **Approve MV and pay `InitialMint` of MV** — the same creation fee
   every factory generation charges. Bureau#1 accrued
   8,000,200 MV over exactly 5 creation payments, matching its 5
   children one-for-one `[chain]` (generated panel below).
2. **Your token is created with parent = the BUREAU root, fixed** — and
   the initial supply lands in your wallet.
3. **Registration goes on the bureau minter's own registry**, not on the
   V3 registry — `TreasuryTokens[child] = bureauMinter` `[src]`. Keep
   this in mind; it drives the claim consequences below.

The five children (the entire `bureau-tt` census class) were created by
four different accounts — Maria #1 plus three community creators
`[chain]`; the generated panel lists them.

## Life as a bureau child

- **Minting costs BUREAU ㉾, on the V3 step schedule** — `mint(amount)`
   pulls `amount × Multiplier(amount)` of the BUREAU root from the
   caller and mints `amount` of the child `[src]`. The multiplier is the
   standard V3 formula (see [multipliers](/knowledge/mechanics/multipliers/)):
   cost steps up by one whole BUREAU per 1.111B BUREAU of existing
   child supply.
- **Redemption is the V3 sibling-claim shape, with a structural twist** —
   next section.
- **No publish** — publishing exists only on V2 tokens (see
   [claim & publish](/knowledge/mechanics/claim-and-publish/)).
- **Stray tokens are stuck, and `Debenture` can never be turned off**:
   the child's `withdraw` resolves ownership through the **V3 registry**,
   which does not know bureau children → the gate can never pass → a
   bureau child also can never flip its own claimability off `[src]`.

## Claims — the structural quirk

The child template points its `IndexMinter` registry at the **real V3
minter** (`bureauminter.sol:43,111` `[src]`), so every claim gate a
bureau child runs is a V3 lookup. Three consequences, all mechanical:

1. **A bureau child can never serve as a claim key anywhere.** Keys must
   be found in the registry the payout consults — V3's — and bureau
   children live only on the bureau minter's own map `[src]`.
2. **As a payout, a bureau child's keys must be V3 children with the
   same creator AND the same parent (the BUREAU root)** — the standard
   V3 three-gate. As of the census, **no V3 child is parented to any
   BUREAU root** `[chain]`, so no qualifying key exists today. The only
   way one can come to exist: a bureau child's own creator mints a fresh
   V3 token with that BUREAU root as parent — creator equality would
   then hold by construction. In plain terms: **today only a child's
   creator could ever claim it, and they would have to build the key
   first.**
3. **No self-redeem** — `Claim(this, …)` runs the same V3 registry gate
   on the payout itself and reverts `[src]` (this is the V4-only
   ability).

The BUREAU ㉾ roots themselves are ordinary V3 children — claimable
under normal V3 rules (creator Maria #1 for roots #1–#3, parent
Tellerz), hanging off the same Tellerz hub the claim-farmed
bureau-ancestry spine grew from — see
[claim & publish](/knowledge/mechanics/claim-and-publish/).

## Why #2–#4 produced nothing

- **#2/#3 are structurally dead** `[chain]`: the proxy pulls the MV fee
  from the caller, then calls the real V3 `New(…, BUREAU)` — which
  charges MV **to the proxy itself**, and the proxy never granted (and
  structurally cannot grant) V3 an MV allowance. Every attempt reverts
  and the whole transaction — including the MV pull — rolls back.
  Fork-verified end-to-end; 0 children ever, 0 MV ever retained.
- **#4** is a full-template rebuild compiled with solc 0.8.28, deployed
  by a third EOA about 4½ hours after the Maria trio `[chain]` —
  functional in shape, but nobody ever called it: 0 children, 0 MV
  `[chain]`.

## What you can actually do with them

- **Create a token via Bureau#1** — [the mint tool](/mint) preselects
  the factory card; you need MV for the initial mint. Your token's
  parent will be BUREAU ㉾, automatically.
- **Mint an existing bureau child** — [mint](/mint?token=) on any of the
  five; the cost preview reads the live multiplier and tells you exactly
  how much BUREAU ㉾ to approve. Need BUREAU first?
  [Mint the root from V3](/mint?token=0x0b92ad7ed0da6c44bf71b3fcee668d1670000ff5)
  (pays Tellerz).
- **Try a claim** — [the claim tool](/claim) gives any token an
  eligibility verdict before you connect a wallet; on bureau children it
  will tell you the key situation above.
- **Walk the tree** — the bureau layer sits at the bottom of the oldest
  lineage onchain: FED → FDIC → DFM → PARADE → Tellerz → BUREAU ㉾ → the
  five children. Open
  [the FED lineage tree](/lineage/0x1d177cb9efeea49a8b97ab1c72785a3a37abc9ff),
  or start at the bureau itself in
  [the walker](/walker?root=0x0b92ad7ed0da6c44bf71b3fcee668d1670000ff5)
  with live per-hop cost previews.
