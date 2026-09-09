# The `_hu` permission ladder

> Normative from the recovered templates `[src]` (V2 `federalminter.sol`,
> V3 `indexminter.sol`, V4 `personalminter.sol`); V1's deployed variant is
> bytecode-reconstructed `[src-bc]`.

Every treasury token carries a per-address permission byte:

```solidity
mapping(address => uint8) public _hu;   // constructor: _hu[tx.origin] = 255
```

| Level | How obtained | What it gates |
|---|---|---|
| 1 | `ha()` — anyone self-grants | read own `ho` KV entries |
| 5 | granted by a higher level | read/write foreign `ho` entries; `TTDATA` fallback + `receive()` (the onchain KV store / value-sink surface) |
| 10 | granted | **write** `ho` entries |
| 100 | granted | `publish()` — remove the token as a claim key |
| 255 | constructor (`tx.origin` = creator) | full control, including granting |

Grants follow strict-greater-than rules `[src]`:

```solidity
function hu(address h, uint8 allow) public {
    if (_hu[tx.origin] <= _hu[h] || _hu[tx.origin] <= allow) revert FuckOff(tx.origin);
    _hu[h] = allow;
}
```

A level can never grant its own level or higher, and can never raise an
address above its own. The ladder is a **per-token social graph** (creator
→ delegates), not a contract admin key — it gates only the token's own KV
store and publish transition. Variants: V1/V2 store `_ho[tx.origin][cx]`
as a `uint256`; V4 stores `uint256[]` (append-only log) `[src]`.

Observed usage of the `ho`/TTDATA store is marginal system-wide: 90 events
ever `[chain]` — the ladder's practical weight is the publish threshold
and the KV fallback surface, both documented in
[claim & publish](/knowledge/mechanics/claim-and-publish/).
