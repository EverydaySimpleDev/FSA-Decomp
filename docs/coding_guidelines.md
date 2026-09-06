# Coding guidelines

This page collects style conventions for real (understood, not raw-transcribed) C++ in this project. It's adapted from [zeldaret/tww](https://github.com/zeldaret/tww)'s and [zeldaret/tp](https://github.com/zeldaret/tp)'s own guides, plus a set of MWCC-matching rules this project has discovered the hard way. Those two projects are much more mature than FSA (thousands of matched functions vs. FSA's current ~180), so several conventions below are adapted rather than copied wholesale - see "How FSA differs" at the end.

We don't have strict rules for most things. Keep code readable, and prefer honest placeholder names over confidently-wrong guesses.

## Table of contents

1. [Placeholder names are fine](#placeholder-names-are-fine)
2. [Avoid Ghidra-isms](#avoid-ghidra-isms)
3. [Primitive types](#primitive-types)
4. [Offsets and padding](#offsets-and-padding)
5. [Includes](#includes)
6. [Naming style](#naming-style)
7. [MWCC-matching rules specific to this project](#mwcc-matching-rules-specific-to-this-project)
8. [How FSA differs from TWW/TP](#how-fsa-differs-from-twwtp)

## Placeholder names are fine

You don't need to know a variable's real purpose to land it as real C++. `unk_0x1c`, `field_0x1c`, `temp`, or an address-based name like `fn_801F5AE0` are all fine - and preferable to a specific-sounding name that turns out to be wrong. A wrong name is worse than an honest unknown one, because it actively misleads the next person (including future-you). This is not a suggestion - see [[feedback_fsa_real_decompilation_required]] in project memory: mechanical, not-understood byte transcription was explicitly rejected as insufficient for this project, and a confidently-guessed-wrong name has the same problem in miniature.

## Avoid Ghidra-isms

Don't copy-paste straight from a decompiler's output. Common tells:

- Assigning inside an `if` condition via the comma operator instead of a clean statement
- `} else { if (...) {` instead of `} else if (...) {`
- Excess parentheses that don't change meaning
- Copying a value into a second variable and testing the copy, instead of testing the original directly

These aren't just cosmetic - see the next section. Source *shape*, not just logic, affects whether MWCC's `-O4` optimizer reproduces retail's exact bytes.

## Primitive types

Use this project's typedefs (`include/types.h`) in game code:

* `signed char` -> `s8` &nbsp; `unsigned char` -> `u8`
* `signed short` -> `s16` &nbsp; `unsigned short` -> `u16`
* `signed long` -> `s32` &nbsp; `unsigned long` -> `u32`
* `float` -> `f32` &nbsp; `double` -> `f64`

**`int` and `s32` are NOT interchangeable for matching purposes**, even though both are 32-bit signed integers - MWCC's instruction selection can differ. There's no typedef for `int`; use it directly only where retail's own disassembly implies plain `int` (rare in this project's Dolphin-SDK-glue code, essentially never in game code).

## Offsets and padding

Struct/class members get a `// 0xNN` offset comment:

```cpp
struct Foo {
	u32 vtable; // 0x000
	u32 unk_004; // 0x004
	f32 unk_00c[15]; // 0x00c-0x044
};
```

**Don't materialize compiler-inferred alignment padding as a field.** If a `u8` is followed by an `s32` that needs 4-byte alignment, just declare them adjacently - the compiler inserts the gap automatically, and a hand-written `u8 pad[3];` would be redundant (and wrong if the struct's real size or alignment assumptions ever change).

This is a different thing from a **genuinely unexplored byte range**, which this project already handles correctly via `unk_OFFSET` arrays (see `include/Game/Actor.h`) - that convention should continue exactly as-is. The padding rule only applies to compiler-inserted alignment gaps between two *known* fields, which is rare in this project today since most structs are still mostly unknown.

**Prefer a compile-time layout guard** once a struct's confirmed-prefix size is known:

```cpp
STATIC_ASSERT(sizeof(Actor) == 0x21c);
```

See `include/Game/Actor.h` for the macro definition (MWCC-only; a no-op fallback isn't currently needed since this project only targets MWCC, but keep the pattern self-contained per-header rather than assuming a shared global.h exists).

## Includes

Forward-declare where possible instead of including a full header, especially in headers rather than `.cpp` files. Since most of this project's structs aren't headerized yet, this matters less today than it will once more real classes exist - worth remembering as the project matures.

## Naming style

TWW/TP's naming style (`i_`/`o_` parameters, `m`-prefixed UpperCamelCase members, `l_`/`g_` for static/global) assumes each function is a real member function of an identified class. **Most of FSA's promoted functions are still `extern "C"` free functions operating on a `void* thisObj`/`thisPtr` whose exact owning class isn't confirmed yet** - so that convention doesn't directly apply most of the time. Until a function's owning class is confirmed:

- Keep the `extern "C"` free-function form (required anyway - see [[project_fsa_phase4_kickoff]]'s C++-name-mangling notes on why real member functions can't be used for functions still called by raw `bl` from unpromoted code).
- Name the parameter `thisObj` or `thisPtr` (both already in use; either is fine, don't need to unify existing code).
- In-function locals: `lower_snake_case` or `lowerCamelCase`, no prefix - match whichever the surrounding file already uses.
- A `this`-relative field ONLY gets promoted out of a raw `*(type*)((char*)thisObj + 0xNN)` cast into a real named struct field (e.g. `((Actor*)thisObj)->spawnParam`) once that field's role is CONFIRMED for the shared base `Actor` struct specifically (see `include/Game/Actor.h`) - not for fields that are actually specific to one still-unidentified derived actor class. Inventing a per-actor struct type for a single function's fields would imply a level of class-identity confidence this project doesn't have yet; keep those as raw offset casts with a good comment instead.
- Global symbols keep this project's established `lbl_ADDRESS`/`fn_ADDRESS` convention until a real name is confirmed (getter-name-derived, assert-string-derived, or otherwise directly evidenced) - then rename via the established mechanism (edit `symbols.txt`, regex-replace project-wide, rebuild to confirm `main.dol: OK`; see [[project_fsa_phase4_kickoff]]'s rename writeup).

## MWCC-matching rules specific to this project

These are hard-won, empirically-verified rules this project has found that neither TWW's nor TP's guide covers (their codebases are old enough, and matched enough, that most of this tuning already happened before either project's docs were written). Condensed from [[project_fsa_phase4_kickoff]] - see that memory for the full narrative and examples behind each:

- **Match `s32`/`u32` to whichever compare instruction (`cmpwi` vs `cmplwi`) retail's disassembly actually uses** for a given field - the C++ type, not the logical meaning of the comparison, drives MWCC's instruction choice.
- **Every `extern` data symbol needs its exact `size:0xNN` from `symbols.txt`**, declared as an array/struct of that exact size - never a bare scalar or an unsized array, even if only one element is ever accessed.
- **For a plain two-body `if`/`else`**, write the disassembly's FALL-THROUGH body (the one immediately after the branch, no intervening label) as the C++ `if` body, and the jump-target body as the trailing/`else` code.
- **Repeated reads of a `this`-relative field are safe to write literally** (don't cache in a local if retail doesn't) - MWCC does not reorder/merge those. Repeated reads of a *named external global*, however, DO get reordered/reloaded unpredictably - cache those explicitly to match retail's own choice, checked case-by-case.
- **Try both if/else and the ternary operator** when one fails to match - confirmed genuinely different MWCC codegen paths, not just style (credit: TWW's own `docs/decompiling.md`).
- **A `bool`-returning function with a `beqlr`/`bnelr`-preload shape** (default value set unconditionally, then conditional-branch-and-return instructions) needs the return type declared `bool` (not `s32`/`int`) - and a MULTI-term `&&`/`||` condition should be a bare `return <chain>;`, while a SINGLE bare comparison needs the explicit `bool result = false; if (cond) { result = true; } return result;` phrasing instead (a bare single-comparison return collapses to a different branchless canonicalization).
- **A `switch` statement can produce MWCC's shared-tail merge point** (`mr rX,rY; blr` reached from multiple cases) where an if/else-if chain testing the same logical conditions often can't - worth trying even when the target condition reads like a "range" rather than a `switch`, as long as the range is small enough to spell out as discrete `case` labels. Case DECLARATION ORDER in source can also affect MWCC's block layout even when the logic is identical.
- **Source declaration order can control MWCC's register/immediate-scheduling choice - but only for values with matching/overlapping liveness** (e.g. two loop-carried locals, or two immediates materialized in the same basic block). It does NOT reliably control ordering between values with different liveness classes (one crossing a branch vs. one computed fresh after it, or a global load competing with a memory load) - don't spend an attempt on declaration-order tricks for that second category; it's a compiler-scheduler-internal choice.
- **Verify every promotion via a real byte comparison**, not just a successful link - `main.dol: OK`'s checksum check is the authoritative verification; a quick pre-check via `objcopy --only-section=.text` + `cmp` against the function's own `build/.../src/....o` is a fast way to sanity-check a candidate before wiring it into `configure.py`/`splits.txt`.
- **Sibling MWCC/JSystem-era decomps (zeldaret/tww, zeldaret/tp) are a real source of verified idioms**, not just inspiration - when stuck, batch-disassemble their `build/<REGION>/src/**/*.o` (real compiled objects only - NOT the per-unit retail-target copies elsewhere in `build/`, which include code even THEY haven't matched yet) and search for the same instruction-level shape. See [[reference_fsa_tww_local_clone_technique]] for the full recipe.

## How FSA differs from TWW/TP

FSA is much earlier in its decompilation than either sibling project (~180 real functions vs. thousands). A few of their conventions are deliberately NOT adopted yet, or adopted differently:

- **No Doxygen scaffolding** (`@ingroup`/`@class`/`@brief` stubs, as TP uses on every actor) - premature until actual classes are identified; would just be empty ceremony right now. Revisit once real actor classes start getting headerized.
- **No per-class struct headers yet** for the ~180 promoted functions, since most operate on an unidentified `void* thisObj` rather than a confirmed class - see the naming-style section above. `include/Game/Actor.h` is the one exception (the base class, independently confirmed via the dispatch-table/vtable investigation), and is the model to extend once a derived actor's identity and full field layout are confirmed the same way.
- **Address-banner comments** (TWW's auto-generated `/* startAddr-endAddr .text mangled_name */` above every function) aren't used - this project's raw-`.s`-to-`.cpp` promotion banners (a `//`-comment block explaining what was tried, what matched, and why) serve a similar "context for the next reader" role, tailored to documenting MWCC-matching attempts specifically. Keep writing those.
