# decomp-toolkit patch: break common-BSS link-order cycles

`build/tools/dtk.exe` in this project is currently a **patched build** of
decomp-toolkit v1.8.3 (commit `e4219e7644fb7b96d920d5bc3d1d950f5569dcaf`),
not the stock release binary. `build/` is gitignored and `*.exe` is
gitignored project-wide, so **this patch is not tracked anywhere except this
file** - if `build/tools/dtk.exe` is ever deleted or the tool-download step
re-fetches the stock binary, the project will silently go back to failing on
every candidate described below until this patch is reapplied.

## The bug this works around

`resolve_link_order()` in `src/util/split.rs` builds a DAG of translation-unit
ordering constraints by walking each section (`.text`, `.ctors`, `.bss`,
`.sbss`, etc.) independently and adding a directed edge for every adjacent
split whose unit differs, then topologically sorts the combined graph.

Common-BSS symbol packing order (`.bss`/`.sbss` adjacency, including anything
marked `common`) is **not** a real address-order fact the way `.text`/`.ctors`
adjacency is - it's just an artifact of whichever TU happened to reference a
given common symbol first. When claiming a previously-unclaimed function that
touches this project's guard-byte/`__register_global_object` region (or,
separately, disturbs any other common-BSS symbol's implicit ordering), the
common-BSS-derived edges can directly contradict the `.text`-derived edges,
and `toposort` fails with `Cyclic dependency encountered while resolving link
order: ...`. Stock dtk has no fallback for this - it's a hard, unrecoverable
build failure - even though FSA's own `.text` order (the actual known fact)
is perfectly sortable on its own.

Notably, dtk *already* has a conceptually identical fix for an analogous
problem: `split_extabindex()` (same file) detects when `-inline deferred`
makes `.text` order and `extab` order disagree for functions within one TU,
and resolves it by grouping the conflicting entries into a single merged unit
rather than trying to force a total order. That grouping trick was never
extended to common-BSS ordering conflicts - that's the gap this patch fills,
using a different (retry/drop) mechanism suited to a graph-level conflict
rather than a single-TU one.

## The fix

See `dtk-link-order-cycle-break.patch` (applies cleanly to
`encounter/decomp-toolkit` at tag `v1.8.3`, single file: `src/util/split.rs`).

Every edge derived from `.bss`/`.sbss` adjacency (or where either side of the
adjacency is `common`) is tracked separately as "soft". If `toposort` reports
a cycle, the patch scans the cycle for a soft edge, drops just that one edge
from the graph, and retries - repeating until either the sort succeeds or no
soft edge remains in the reported cycle (at which point it hard-fails with
the original error, unchanged behavior). A `log::warn!` records exactly which
edges were dropped so it's auditable in build output. This can only ever
improve outcomes relative to stock dtk: previously ANY such cycle was a hard
failure with zero chance of a correct build; now it's given a chance to
resolve, and the existing `main.dol` sha1 checksum check (already part of
this project's normal build/verify loop) is what actually proves whether a
given candidate's bytes came out correct - dropping a soft edge is a
heuristic, not a proof, so **every candidate landed with this patch still
needs the normal build-and-diff-against-retail verification**, same as any
other candidate in this project.

## Rebuilding it

```
git clone https://github.com/encounter/decomp-toolkit.git
cd decomp-toolkit
git checkout v1.8.3   # e4219e7644fb7b96d920d5bc3d1d950f5569dcaf
git apply /path/to/dtk-link-order-cycle-break.patch
rustup update stable   # edition 2024 / let-chains need rustc >= 1.88; 1.87 fails to compile config.rs
cargo build --release
cp target/release/dtk.exe /path/to/fsa_decomp/build/tools/dtk.exe
```

The patched binary still reports itself as `dtk.exe 1.8.3
e4219e7644fb7b96d920d5bc3d1d950f5569dcaf` (same version/commit as stock,
since only the source working tree was modified, not tagged/committed) - so
`dtk.exe --version` alone cannot distinguish patched from stock. If in doubt,
check whether `build/tools/dtk.exe`'s file size/mtime match a fresh
`cargo build --release` of this patch, or just reapply the patch and rebuild;
it's idempotent and takes about 30 seconds once Rust is up to date.

## What this patch does NOT fix

Confirmed via direct testing (2026-08-26): this is a targeted fix for the
specific cyclic-dependency failure mode above, not a general fix for every
kind of cascade previously seen in this project's gap-hunting effort.
Recorded here so a future session doesn't waste time re-attempting these with
just this patch and no further investigation:

- **`802F8F0C`**: fails identically with or without this patch (1,193,364
  total DOL word diffs, own-range corrupted from the very first word). Never
  triggers a cyclic-dependency error at all - this is a different, still
  root-caused, bug.
- **`80047258`** (the ~131KB giant): the cyclic-dependency error IS resolved
  by this patch, and the candidate's own 131KB of code comes out **byte-for-
  byte correct** (0 own-range diffs) - a huge improvement from the pre-patch
  state. But a small residual 143-word, DOL-wide `+12`-byte-delta diff
  remains, scattered across many unrelated already-landed functions plus
  `_bss_init_info`. Not caused by a missing `.ctors`/`.dtors` claim (both
  checked and ruled out - only `.dtors` needed fixing, which was done and
  helped, but 143 words remained after). Most likely a `.rodata`/`.data`
  literal-constant-pool link-order/dedup ordering quirk, unrelated to the
  common-BSS mechanism this patch targets - not yet root-caused. The
  candidate was reverted rather than landed with known-wrong bytes.
