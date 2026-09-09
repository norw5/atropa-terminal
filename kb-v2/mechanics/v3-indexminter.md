# V3 IndexMinter

> Contract `0x0c4F73328dFCECfbecf235C9F78A4494a7EC5ddC` · deployed block
> 22590323 (2025-01-31) by Maria #1 `[chain]`. Source recovered:
> `indexminter.sol` — deployed selector sets **exact** both sides `[src]`.
> 506 census children `[chain]`.

## What changed from V2 `[src]`

1. **Any ERC-20 can be a parent** — the "index" idea: children can be
   collateralized by arbitrary tokens, not just FED/TTs. Genesis child:
   **POOR** ("Proof Of Own Reserves Contract"
   `0xaA1505C928fd85E10a550cfDe9e8f464c3574D8a`), the most-fed genesis
   token onchain (1,668 mints `[chain]`).
2. **The escalating multiplier** (see [multipliers](/knowledge/mechanics/multipliers/)):

   ```solidity
   function Multiplier(uint256 addition) public view returns (uint256) {
       return ((addition + totalSupply()) / 1111111111000000000000000000) + 1;
   }
   function mint(uint256 amount) public {
       Parent.transferFrom(msg.sender, address(this), amount * Multiplier(amount));
       _mint(msg.sender, amount);
   }
   ```

   Mint cost steps up by one whole unit of parent per 1.111B units of
   existing supply — supply growth is punished arithmetically.

3. **Gated sibling claim** — `Claim(address Contract, uint256 Amount)`
   requires `Creator == TTI(Contract).Creator()` **and**
   `Parent == TTI(Contract).Parent()` and `Debenture` on `this`: only
   siblings from the same creator+parent can drain `this`'s parent, and
   **the first `withdraw()` sets `Debenture = false`, permanently killing
   `this`'s claimability**.

## Head additions `[src]`

`GetStandardTokenParent(address)` (cross-minter parent fallback) and
constants `POOR()`, `TreasuryMinter()`, `FederalMinter()`; the head also
carries the registry trio like V2.

## Notes

- The child template is byte-identical to Bureau#1's except for the CBOR
  metadata hash (same code, different compilation unit) `[src-bc]`.
- The minter stayed live long past its era window — era ≠ minter version
  (only 65 of 167 "V1-class" children were minted inside the 7-day V1
  window; the same long tail applies to V3).
