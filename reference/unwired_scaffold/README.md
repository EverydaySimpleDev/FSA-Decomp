# Unwired scaffold / reference material

This directory holds 828 files (~8.6MB) that were sitting in `src/` but were
**never referenced by `configure.py` or `config/G4SE01/splits.txt`** — none of
it is part of the actual build, and none of it has ever passed the project's
build+diff verification. Moved out of `src/` on 2026-08-27 so it can't be
mistaken for verified FSA decomp work; `main.dol` was confirmed byte-exact
(`OK`) both before and after the move.

## Where it came from

`configure.py` itself documents the original intent (see the comment that
used to sit above the object list, roughly): these files were seeded from a
same-SDK-era sibling decomp (Chibi-Robo:PIA) plus what looks like Wind
Waker-style JSystem scaffolding, meant as a **name/size cross-reference aid**
for identifying FSA's own functions — see `config/G4SE01/reuse/crossref*.py`
and `crossref_report.txt` for that tooling. The idea was reasonable, but the
addresses/content were never verified against FSA's real retail bytes.

## Why it was moved, not just left alone

Spot-checking found the cross-reference data itself is unreliable, not just
unverified. `OSInitAlarm` shows **three different addresses** across three
sources in this project's own history:
- **Real, build-verified address**: `0x800402FC` (confirmed in
  `config/G4SE01/symbols.txt`, landed and byte-verified in `Game/OSCreateAlarm.cpp`'s
  sibling `Dolphin/os/extab_800402d0.s`)
- This scaffold's `Dolphin/os/osalarm_80161e1c.c` claims `0x80161E1C`
- `crossref_report.txt` claims `0x801BB444`

None of the three agree. A separate memory note
(`project_fsa_stale_unwired_files_warning.md`) independently caught another
file from this same batch (`lcstoredata_80163208.c`) containing code that
doesn't match FSA's real retail bytes at its claimed address at all. The
project's actual successful methodology (ground-truth disassembly + build+diff
verification, documented extensively in project memory) never ended up using
this material — it was superseded, not built upon.

## What's in here

- `JSystem/`, `sysdolphin/` — 100% unwired, zero files ever referenced.
- `TRK_MINNOW_DOLPHIN/` — 100% unwired (including a prebuilt `__exception.o`
  blob, also unreferenced by the linker script/build).
- `Runtime.PPCEABI.H/` — 100% unwired; notably contains a *second, different*
  copy of `__init_cpp_exceptions.cpp` (35 lines) distinct from the real,
  wired, 69-line version at `src/Dolphin/Runtime/__init_cpp_exceptions.cpp`.
- `THP/` — 100% unwired.
- `Dolphin/*` (scattered, ~301 files) — only the specific files that were
  unwired; anything actually referenced by `configure.py` stayed in `src/Dolphin/`.
  Confirmed via a full source scan that no wired `.c`/`.cpp`/`.s` file
  `#include`s anything from this directory or from `Runtime.PPCEABI.H/`,
  `JSystem/`, `sysdolphin/`, `THP/`, or `TRK_MINNOW_DOLPHIN/`.

## If you want to use this material anyway

Treat every claim in it (function identity, address, byte content) as
**unverified and possibly wrong for FSA specifically**, even where it looks
polished and complete. It may still be useful as a rough structural reference
(e.g. "JSystem probably has a class shaped like this") but never as a source
of truth — always re-verify against FSA's actual retail DOL before trusting
anything from here, exactly like every other real landing in this project.
