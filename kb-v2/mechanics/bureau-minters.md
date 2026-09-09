# Bureau minters

> Four contracts deployed the same day (2025-02-01) `[chain]`, each
> anchored to a BUREAU root token created through the **real V3 minter**
> (parent Tellerz `0xC7145e1290B1d1221Aba5Ae48d4aCE17c6BE088F`) — no bureau
> minter created its own root `[chain]`.

| # | Minter | Block | BUREAU root | Children | Implementation `[bc]` |
|---|---|---|---|---|---|
| 1 | `0xc4f0ce2b0ffa0063b763e2b6c124a1d80e0641b5` | 22602249 | `0x0b92aD7eD0da6c44Bf71B3FCEe668D1670000Ff5` | **5** | **canonical** — full template embedded, direct CREATE, selector-exact vs `bureauminter.sol` |
| 2 | `0x9680d815e3ba4fd78c5c1e6ea229abb03734e141` | 22602225 | `0x025C89443421eC5C9dC7fd9a00FD0Bf1bDdDdBaf` | 0 | **proxy** — charges MV, then CALLs V3 `New(…, BUREAU)`; no embedded template |
| 3 | `0xc9be525a582b6f84d928b7901bd18b4315f8502b` | 22602178 | `0x312f1Dd1467d1ef2265652970E45239f508227d0` | 0 | proxy like #2 (+`Transfer`) |
| 4 | `0x5De29C8eac1482221de1945A566B6c65f54A3C3e` | 22603752 | `0xCF43a8b0690747BB5b40Dc01803a76CEfD7CD81D` | 0 | full-template shape recompiled with **solc 0.8.28**; never used (deployer `0x3eC13D6BB18dB629941399EE12B5b3a1Ea281De6`, not Maria #1) |

Child economics wherever children exist = **V3 rules** (system-step
multiplier, gated sibling claim); the #2/#3 proxies additionally charge MV
per creation. Bureau#1's five children make up the entire bureau-tt census
class `[chain]`.

The four-way same-day iteration (proxy → proxy → full → month-later
rebuild by a third key) is visible onchain exactly as summarized here; no
interpretation is attached in this reference.
