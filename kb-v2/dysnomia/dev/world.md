# WORLD — "Dysnomia World" — coordinate tiles + creator royalties — **NOT DEPLOYED**

> **NOT DEPLOYED** — complete in source; the wave-5 create at block
> 23,730,303 (tx `0x853C1be1D2bBEC817b9043608fEbb20a223CdCEf`) produced NO
> code (failed creation) and no retry exists `[chain]`. REGISTER-UNKNOWN #2.

## 1. Identity

| | |
|---|---|
| Source | `domain/world.sol` (contract `WORLD`, name "Dysnomia World"/"WORLD") |
| Would-be wave | 5 (Jun 2025, between PANG and META-era activity) |
| Onchain | absent — no code at any candidate `[chain]` |

## 2. Role

The tile world the oracle layer was staged for: `_world[lat][lon][caude] =
Bun` (per-venue tile mass), `_cauda`/`_creation`/`_creators` creator
ledgers, and the royalty distributor. `Code(lat, lon, cause)` is the core:
settles the venue via CHEON.Su, reads META.Beat, **bounds-checks the tile
against `Yeo`** (± range around the venue's anchor — the
territory-expansion consumer), adds Hypobar mass to the tile, **mints VITUS
to the player's YUE**, and credits creators (Deimos). The constructor
deploys its own VITUS and seeds it.

## 3. Dependencies

Constructed with (CHEON, META, MAP); calls `Cheon().Sei().Chan().addOwner(
address(this))` — onlyOwners, so only the spine/deployer could ever boot it
(on a fork, impersonation satisfies this — the owner-floated fork-deploy
experiment, REGISTER-UNKNOWN owner-review). Deploys VITUS.

## 4. State

`Cheon`, `Meta`, `Vitus`, `Map`, the tile/cauda/creation/creators maps,
`_whitelist` (caude → distributive → allowed).

## 5. Functions

<!-- fntable: WORLD @ domain/world.sol -->
<!-- fntable-begin: WORLD @ domain/world.sol -->
Function table extracted mechanically from `domain/world.sol` (`tools/dys_fntable.py`, artifact `data/dysnomia/fn_tables.json`). Gate: `public` = anyone · `owners` = MultiOwnable set, **msg.sender OR tx.origin** · `bouncers` = QING bouncer rule · `single-owner` = classic owner · `deployer` = constructor wiring. `meter` = the call self-mints one unit via `_mintToCap()` (a call-counter against the constructor-lottery `maxSupply`).

| signature | gate | meter | events | reverts |
|---|---|---|---|---|
| `constructor(address CheonAddress, address MetaAddress, address MapAddress)` | deployer | — | — | — |
| `Whitelist(address Caude, address Distributive, bool Allow)` | public | — | — | — |
| `Tail(address Caude, uint256 Position) returns (uint256 Bid)` | public | — | — | — |
| `Bun(int256 Latitude, int256 Longitude, address Caude) returns (uint256)` | public | — | — | — |
| `Buzz(int256 Latitude, address Coder, address Caude) returns (uint256)` | public | — | — | — |
| `Distribute(address Caude, address Distributive, uint256 Amount) returns (uint256 Remaining)` | public | — | — | — |
| `Code(int256 Latitude, int256 Longitude, address Cause)` | public | — | — | `OutOfRange`, `assert` |

Errors declared: `OutOfRange(int256 QingLatitude, int256 QingLongitude, uint256 Range)`
<!-- fntable-end -->

Effects: `Whitelist` — world-owner or venue-owner (`owner(msg.sender)`
membership). `Tail(caude, position)` — walks the cauda chain resolving a
creator position. `Distribute(caude, distributive, amount)` — pays royalties
down the creator chains via transferFrom, skipping ≤1,111,111,111 dust legs,
whitelist-gated. `Code` — the settle-bounds-mint-credit sequence described
above; `OutOfRange` reverts carry the venue anchor + the Yeo range.

Designed loop in plain terms `[src]`: a player picks a coordinate near a
QING they fancy and calls `Code(lat, lon, qing)` — the claim must land
inside the Yeo box around the venue's anchor (`OutOfRange` otherwise), it
appends to the caller's `Cauda` (Latin "tail" — the running list of their
claimed coordinate IDs), VITUS lands in their YUE, and the venue's creator
chain earns Deimos credit. Tiles are **multi-owner** (the world map is keyed
by position AND caude, so different holders coexist on one coordinate and
split `Distribute` proportionally to their Bun mass); claims never expire,
and creators gate who may distribute through their holdings via `Whitelist`.

## 6. Integration notes

- Reference-only. The fork-deploy experiment (owner-queued, explicitly NOT
  current work) would exercise: constructor chain (CHEON/META/MAP + CHAN
  ownership), Code on a live QING, VITUS mint path.

## 7. Provenance

- [src] `docs/solidity/dysnomia/domain/world.sol`.
- [chain] failed-create tx (above); absence probes.
