# The registry / `tx.origin` ownership model

> Normative from recovered sources `[src]`; registry state verified
> onchain for every census child `[chain]`.

Every minter keeps a single mapping — `TreasuryTokens(address child) =>
address owner` — written **at creation time to `tx.origin`**, not
`msg.sender` `[src]`. Consequences:

1. **Ownership is the EOA that initiated the creation transaction**, even
   when creation is routed through another contract. This is the load-bearing
   convention of the whole system: creators remain claimable parties no
   matter what intermediaries they used.
2. **Re-assignment** exists on every minter head: `Transfer(ctx, newOwner)`
   — callable only when `TreasuryTokens[ctx] == tx.origin` `[src]`.
3. **Cross-minter fallbacks**: V2 exposes
   `GetTreasuryTokenOwner(address)`, V3 `GetStandardTokenParent(address)`;
   V2's `Claim`/`withdraw` consult these when the local registry has no
   entry. The V4 template binds to `PersonalMinter`, V3's to
   `IndexMinter`, with a fallback chain V4 → V3 → V2 → V1 for ownership
   lookups `[src]`.
4. **One unregistered child exists in the whole census**: SEMIOTIC
   (V4 genesis) — the source's final constructor line deliberately skips
   the registry write `[src,chain]`.

The registry is also the claim infrastructure: a "claim key" is a sibling
token identified through the registry (see
[claim & publish](/knowledge/mechanics/claim-and-publish/)). The minter
registries are plain immutable mappings — no admin surface exists on any
of them (zero admin selectors anywhere in the deployed bytecode `[bc]`).
