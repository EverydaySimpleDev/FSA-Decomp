# fn_801CD9F0(value, target, step) - the float variant of the "ease
# toward value" primitive (see Game/stub_801cd970.cpp for the landed
# integer sibling EaseTowardS16, and the shared semantic writeup there).
# Kept as raw asm: float-heavy with several fcmpo/register-reuse
# interactions - matches this session's established hard float
# category. Split out of the original EaseTowardS16/fn_801CD9F0 dtk
# bundle now that the integer sibling is real C++.
#
# NOTE: attempted real-C++ promotion 4 times (continuation session).
# CORRECTED a real semantic error along the way: the function's final
# few comparisons ("diff >= 0"-looking checks) are NOT against literal
# 0.0f - they reuse the SAME epsilon global (lbl_8053EF7C) loaded
# earlier, i.e. this whole function compares against a near-zero
# epsilon throughout, never a hardcoded zero - important for genuine
# understanding, not just byte-matching. FIXED (generalizing the
# fn_801CE594 lesson): every `<=`/`<` float comparison, written as a
# genuine if/else with the fall-through body matching retail's actual
# branch direction (NOT a negated bare `if (cond) goto/return;`),
# compiles to retail's clean direct `fcmpo`+`ble`/`bge` - the earlier
# attempt's `cror eq,lt,eq`+`beq` synthesis was specifically caused by
# the negated-goto phrasing, confirming this is a real, reusable fix
# for float `<=`/`>=`-shaped comparisons project-wide, not one-off.
# TWO residuals remain unsolved: (1) `value`/`diff` and the epsilon
# global consistently swap f0/f3 register roles vs retail, regardless
# of declaration order (tried both orders - no effect, unlike
# fn_8021FB44's similar-looking 2-value case); (2) the final bool
# return (`value==target ? 0 : 1`) compiles to a `mfcr`+`rlwinm`+
# `xori` bit-extraction instead of retail's clean `bnelr` early-return,
# even with the established "default 1, early-return" phrasing. Left
# as raw asm - real progress (1 correctness fix, 1 generalizable
# technique confirmed) but not byte-exact.
#
# INVESTIGATED the bnelr issue in isolation (separate scratchpad tests,
# not wired into this file): a BARE float `!=`/`==` comparison feeding
# a bool return NEVER produces `bnelr` in this project's MWCC - always
# the `mfcr`+`rlwinm`+`xori` bit-extraction, regardless of phrasing
# (unlike the established INTEGER beqlr/bnelr-preload idiom, which
# works reliably). This is a genuine int-vs-float codegen asymmetry,
# not a phrasing bug. However, embedding the SAME final comparison
# inside a function with ONE prior if/else DOES flip it to a branchy
# (though not exactly bnelr) form - so surrounding complexity matters,
# just not predictably: a minimal 1-branch context produced a branchy
# `beq`+`li`+`blr` tail, but this function's full nested-if/else
# context (matching its real complexity) still produces the branchless
# form. The exact complexity threshold where MWCC switches is unknown -
# a real, useful area for a future dedicated investigation, since a
# working technique would likely unlock MULTIPLE other float-predicate
# functions in the remaining candidate pool, not just this one.
.text
.balign 4
.global fn_801CD9F0

fn_801CD9F0:
    lfs 3, 0x0(3)
    .4byte 0xC002BFDC # lfs f0, lbl_8053EF7C@sda21(r0)
    fsubs 3, 1, 3
    fcmpo cr0, 2, 0
    .4byte 0x40800008 # bge .L_801CDA08
    fneg 2, 2
L_801CDA08:
    .4byte 0xC002BFDC # lfs f0, lbl_8053EF7C@sda21(r0)
    fcmpo cr0, 3, 0
    .4byte 0x40810024 # ble .L_801CDA34
    fsubs 3, 3, 2
    fcmpo cr0, 3, 0
    .4byte 0x40810010 # ble .L_801CDA2C
    fsubs 0, 1, 3
    stfs 0, 0x0(3)
    .4byte 0x48000028 # b .L_801CDA50
L_801CDA2C:
    stfs 1, 0x0(3)
    .4byte 0x48000020 # b .L_801CDA50
L_801CDA34:
    fadds 3, 3, 2
    fcmpo cr0, 3, 0
    .4byte 0x40800010 # bge .L_801CDA4C
    fsubs 0, 1, 3
    stfs 0, 0x0(3)
    .4byte 0x48000008 # b .L_801CDA50
L_801CDA4C:
    stfs 1, 0x0(3)
L_801CDA50:
    lfs 0, 0x0(3)
    li 3, 0x1
    fcmpu cr0, 0, 1
    bnelr
    li 3, 0x0
    blr
