# GWAT — 骨 — user-spawned sub-venues — **NOT DEPLOYED**

> **NOT DEPLOYED** — complete in source; no code onchain `[chain]`. 骨 =
> "bone" (Cantonese GWAT — the dev writes Cantonese romanizations).

## 1. Identity

| | |
|---|---|
| Source | `domain/soeng/07_gwat.sol` (contract `GWAT`, name 骨 / "GWAT") |
| Onchain | absent `[chain]` — note: the name collision with QING's `GWAT` bool (the withdrawability flag) is deliberate wordplay: the flag marks venues whose escrow behaves like a GWAT (locked) |

## 2. Role

The player-venue layer: `Gwat(parentQing, lin)` forks a parent QING into the
CALLER's own venue inside the current game — one per (parent QING, player
YUE) — named `"<user>'s <asset> GWAT"`, symbol `骨<sym>`. The spawn Waat
comes from [WAR](/dysnomia/dev/war).Faa (must not be ≡ 0 mod the map offset and must be
tile-free); the spawner receives the GWAT's full `maxSupply` (owner of their
house) and sets its market rate against the parent. GWATs chain: a GWAT's
`Asset()` is the parent QING — which is exactly the derivative chain
[YUE](/dysnomia/dev/yue).GetAssetRate walks with its 777-mod attenuation.

## 3. Dependencies

Constructed with the WAR address; needs WORLD+WAR live (the whole undeployed
stack); mints plain QINGs (base type) as its venue bodies.

## 4. State

`War`, `_qings` (parent → yue → gwat), `_waats`, its own `_map` grid
(separate from MAP's — GWAT venues get their own collision space via
`War.World().Map().Map().Compliment`).

## 5. Functions

<!-- fntable: GWAT @ domain/soeng/07_gwat.sol -->
<!-- fntable-begin: GWAT @ domain/soeng/07_gwat.sol -->
Function table extracted mechanically from `domain/soeng/07_gwat.sol`. Gate: `public` = anyone · `owners` = MultiOwnable set, **msg.sender OR tx.origin** · `bouncers` = QING bouncer rule · `single-owner` = classic owner · `deployer` = constructor wiring. `meter` = the call self-mints one unit via `_mintToCap()` (a call-counter against the constructor-lottery `maxSupply`).

| signature | gate | meter | events | reverts |
|---|---|---|---|---|
| `constructor(address WarAddress)` | deployer | — | — | — |
| `addToMap(uint256 Waat, address Qing)` | internal | — | — | `assert` |
| `GetMapGwat(int256 Latitude, int256 Longitude) returns (QINGINTERFACE)` | public | — | — | — |
| `Gwat(address Qing, uint256 Lin) returns (QING Mu)` | public | — | NewQing | `YourGwatAlreadyExists`, `ForbiddenToken`, `SpawningFailure`, `assert` |

Events declared: `NewQing(address Qing, address Integrative, uint256 Waat)`

Errors declared: `YourGwatAlreadyExists(address Token, address Qing)` · `ForbiddenToken(address which)` · `SpawningFailure(uint256 Lin)`
<!-- fntable-end -->

Effects: `Gwat(qing, lin)` — asserts the parent is really on MAP; refuses
duplicates (`YourGwatAlreadyExists`) and forbidden assets; draws
`Luo = War.Faa(qing, lin)` (`SpawningFailure` on 0-mod or tile clash);
deploys the QING body; renames to the user's venue name; cross-owns with
CHO; `_mint(msg.sender, maxSupply)` (the house belongs to the player);
registers the parent market rate; emits `NewQing`.

## 6. Integration notes

- Reference-only; see [world.md](/dysnomia/dev/world)/[war.md](/dysnomia/dev/war) for the boot
  chain. The YUE exchange desk already handles GWAT-shaped assets — the
  account layer shipped prepared for this.

## 7. Provenance

- [src] `domain/soeng/07_gwat.sol`.
- [chain] absence probes.
