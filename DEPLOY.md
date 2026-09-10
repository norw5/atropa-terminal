# atropa.terminal/v2 — deployable snapshot

A self-contained build of the Atropa Terminal v2 portal: the static site
generator source, the generated public artifacts (bytecode/verified-source/
decompile downloads, ABIs, the docs+sources tarball), and exactly the data
trees the build reads. Nothing from the research environment's internal
working layers is included.

## Layout

- `portal-v2/` — the Astro 7 static site (this is the Vercel root)
- `kb-v2/` — the public knowledge-base content collection
- `portal-v2-data/`, `portal-data/`, `data/` — the data layer the build reads
  (compact bundles the islands fetch + the full-field files the entity pages
  render from)

## Build

    cd portal-v2
    npm install
    npm run build        # runs scripts/copy-data.mjs, then astro build -> dist/
    npm run preview      # serves dist/ production-faithfully on :4321

The build is pure static generation (~3,970 pages, ~25 s); it performs no
network calls. The interaction tools (/mint, /claim, /walker) are client-side
islands that talk to public PulseChain RPCs and the visitor's injected wallet
only — no server, no keys, no third-party contracts in the path.

## Deploy (Vercel)

1. `git init` this directory and push it to a GitHub repo (private is fine).
2. In Vercel: import the repo, framework preset **Astro**,
   **Root Directory = `portal-v2`** (the sibling data trees must stay in the
   repo — the build reads `../data`, `../portal-data`, `../portal-v2-data`,
   `../kb-v2` relative to `portal-v2/`).
3. Build command and output directory are picked up automatically
   (`npm run build`, `dist`). No environment variables needed.
4. The production domain in `astro.config.mjs` (`site:`) is
   `https://atropa-terminal.vercel.app` — change it if a custom domain is
   bound.

## Data freshness

All chain-derived data is pinned to snapshot blocks (the method pages state
them). Refreshing the data layer happens in the research environment; after
any refresh, regenerate this snapshot rather than editing files here.
Regenerating preserves the git repository in this directory — commit the
refreshed files as usual.

## Notes

- `public/data/` inside `portal-v2/` is NOT shipped in this snapshot —
  `npm run build` regenerates it from the sibling trees via
  `scripts/copy-data.mjs`.
- The IRC raw log ships verbatim (byte-faithful, sha256 in the bundle).
- The `/graph` 3D mode pulls `3d-force-graph` from npm; everything else is
  dependency-light by design.
