# Admin surface — what the owner keys actually gate

> Every contract in the registry was probed onchain (`owner()`, pinned block)
> and its owner-gated function surface enumerated from verified source or
> decompilation `[src]`/`[src-decompiled]`. This page states the method and the
> capability vocabulary, and the renderer appends the generated census
> tables. Factory children and the eight minters carry a bytecode-proven
> **zero admin surface** (`none-factory`) and are not re-enumerated here.

## Method

- **Owner census `[chain]`**: one `eth_call owner()` per registry contract at
  a pinned block. Reverts mean the
  contract has no owner function; `0x0` means renounced.
- **Capability census `[src]`/`[src-decompiled]`**: for every contract with a
  live owner key, the set of functions gated behind the owner check was read
  from the verified source where we hold one, and otherwise from a decompile
  of the runtime bytecode. Only the gate itself is a fact here — what an
  owner *might do* with it stays a mechanical statement (function + effect),
  never an intent claim.

## Capability vocabulary

| value | meaning |
|---|---|
| `none` | no owner function exists at all |
| `inert` | owner gates only `renounceOwnership`/`transferOwnership` — the key changes nothing else |
| `owner-mint` | owner-gated `mint(address, uint256)` exists — the key can mint arbitrary amounts to arbitrary recipients |
| `owner-pool` | owner-gated pool management (set/remove paired pools) |
| `owner-parameter` | owner-gated parameter/content setters (fee-like knobs, buy price, writes) |
| `owner-withdraw` | owner-gated withdrawal of held assets |
| `owner-pausable-withdraw` | owner can pause the contract and trigger an emergency withdrawal |
| `governance` | owner-tunable governance parameters |
| `inert-rescue-open` | standard Ownable, but the asset-rescue path is permissionless |
| `bridge-operator` | official-bridge operator key (external system) |
| `unknown` | capability not yet pinned |

## Standing findings `[src]`/`[chain]`

- The treasury-era factory system has **zero admin surface** (bytecode-proven
  for the eight minters and the child templates): no owner, no upgrade, no
  reachable self-destruct.
- The reserve/standalone generation mostly used OpenZeppelin `Ownable` with
  an owner-gated `mint(address, uint256)`; those keys on the reserve assets
  were renounced (`owner == 0x0`). One same-shape key is still live in the
  old-era corpus and is surfaced by the generated table below.
- The shared-infrastructure family (the math family) holds live owner keys
  that are **inert**: verified source and decompiles show the owner gates
  only the standard ownership transfer — the RNG orbit, caps, and purchase
  routes are permissionless.
- Community helpers are third-party Ownable contracts with real owner
  powers (pause + emergency withdrawal on the hop tool; withdrawal on the
  per-user sweeper stub; tunable governance on the logo voting). They are
  documented facts-only and were never integrated into this portal's tools.
