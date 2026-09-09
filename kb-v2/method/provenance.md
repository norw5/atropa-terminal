# Method — Provenance

Public statement of how every claim in this knowledge base is sourced and
verified. (Machine counterpart: the <a href="/claims">claim registry</a>.)

## Tags

| Tag | Meaning | Normative? |
|---|---|---|
| `[src]` | Recovered or blockscout-verified Solidity, read directly from the deployed bytecode's verified source | yes |
| `[chain]` | Onchain query (eth_call / eth_getLogs / receipts / storage) at a stated block | yes |
| `[ext]` | Community material (sites, spreadsheets, trackers) — discovery-grade only | no |
| `[irc]` | Verbatim line-referenced quote from the #atropa_logged corpus (2023-10-20 → 2024-12-03) | no |
| `[ext-owner]` | Owner-provided, unverified | no |

Normative statements must carry a proof pointer (address + tx hash / eth_call
selector / source file + lines) and, where state-dependent, a pinned block.
Corrections are silent supersessions: the public text is current-state, and
the supersession chain lives in a versioned research log (the project's
provenance back-end, outside this published tree).

## Claim registry

The claim registry is generated from the same data layer as the pages and
holds claim-class rows: `{id, statement, provenance, proof_ref, pinned_block,
artifact}`. A page statement and a registry row must never disagree; the
registry is the machine-checkable half of the contract.

## Reproducibility

Every exported data artifact carries a manifest and a pinned block; the
reference bundles under <a href="/export">/export</a> are the exact files
this portal renders from. The taxonomy regenerates from the merged census
with a self-test that re-derives class counts and fails on any mismatch.
