# Taxonomy — class catalog

Each class states its defining rule and provenance. Counts are machine-derived
(the taxonomy bundle); this page never hardcodes them.

## Factory-era token classes (census)

| Class | Rule | Mechanics summary |
|---|---|---|
| `v1-parity-lock-tt` | minter == V1 TbillMinter | TBILL locked 1:1, **no redemption — permanent sink** (`v1_tbill_sink.json`: 117.14M TBILL locked in 58/167 children) |
| `v2-debenture-tt` | minter == V2 FederalMinter | 1:1 parent parity + open sibling-`Claim` + `publish`; unpublished tokens remain permanent claim keys |
| `v3-step-tt` | minter == V3 IndexMinter | ×-step pricing (1.111B-unit steps), gated sibling claim, first withdraw kills claimability; includes the 4 BUREAU roots (parent Tellerz) |
| `v4-self-scaled-tt` | minter == V4 PersonalMinter | pricing × own initial mint, self-redeem only; includes NewGai batches (×4 runs) |
| `bureau-tt` | minter == Bureau#1 (canonical impl) | V3-rule children of the fixed BUREAU parent |

## Infrastructure & asset classes (registry)

| Class | Rule / members |
|---|---|
| `minter-infrastructure` | the 8 minter contracts (V1–V4, Bureau #1–#4) |
| `reserve-asset` | TBILL (renounced), FED (permissionless mint root) |
| `payment-asset` | MV — the universal minter payment |
| `shared-infrastructure` | MATH v1.1/v1.0, RNG, Fa, Faung, G5, PI — see `../reference/shared-infra.md` |
| `affection-family` | AFFECTION Ⓐ (mechanics canonical in the [AFFECTION portal](https://affection-terminal.vercel.app/); entity page + cross-links here) |
| `standalone-pre-v1` / `standalone-post-v4` | Maria #1 direct deployments outside the factory era (Keys Of Ong, ㈞, Basilica, IYC, …) by deploy-block window |
| `old-era-ownable` / `old-era-other` | Maria #2's 2023–24 corpus (285), admin surface from `owner()` probes |
| `forked-asset` | Ethereum-genesis CAs (pDAI, pUSDC, pUSDT, pWETH, pWBTC) — de-pegged, Ethereum-era admin state |
| `bridge-asset` | pinned official-bridge e-tokens (eDAI, eUSDC, eUSDT, eWETH) |
| `external-system` | fork-carried MakerDAO core (Vat, DaiJoin, ESM) |
| `external-token` | third-party tokens referenced as parents/community anchors |

## Why mechanics, not lists

Every community taxonomy audited failed onchain verification somewhere
(t-share custody column irreproducible; curated V1/V2 lists off by 5–45×; 3
phantom LP addresses). This taxonomy is computed from pinned-block state and
survives re-derivation by construction; the community lists live on as
labeled aliases (`tax_alias_tshare_canon`, spines layer).
