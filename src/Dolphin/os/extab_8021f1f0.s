# fn_8021F1F0(this, target) - "remove first occurrence of target from
# an array (this->0x4=count, this->0x8=elements), shifting later
# elements down by one slot to close the gap." A `found` flag starts
# false (searching, comparing each element against target) and flips
# true on the first match (from then on, every subsequent element is
# copied back one slot instead of compared) - a single linear pass
# doing double duty as both search and compact.
#
# NOTE: attempted real-C++ promotion 4 times (this session) - VERY
# CLOSE. The "2 consecutive blelr checks against the SAME unmodified
# cmpwi with no comparison in between" quirk noted below IS
# reproducible: writing 2 literal `if (count <= 0) return;` checks
# against the SAME cached local (no reload in between) makes MWCC
# reuse the stale CR bits and emit the identical double-blelr,
# matching retail exactly - a new, generalizable technique for this
# specific "duplicated/inlined guard" idiom. Attempts 2-4 (varying
# declaration order of `found`/`ptr`/the loop counter `i`) got `found`
# and `ptr`'s registers to match retail exactly (r6/r7). The ONE
# remaining diff: `i = found;` (both provably 0 at that point) compiles
# to `li r8,0` in every phrasing tried, but retail's actual bytes are
# `mr r5,r6` (a genuine register-to-register COPY, not a fresh
# immediate load) - suggesting retail's real source expressed this as
# a literal copy the compiler didn't constant-fold, for a reason not
# yet found. This single instruction-selection difference cascades
# into r5 vs r8 for `i`/the reloaded loop-bound throughout the tail.
# Left as raw asm - closest near-miss this session outside
# fn_801A3944; a good first candidate to revisit with a fresh idea for
# the `i = found` copy specifically. Kept as raw asm - a real dynamic
# loop combined with the stale-condition-flag reuse quirk. Split from
# GrowableArray_PushBack/GrowableArray_Reset, which were promoted to Game/stub_8021f25c.cpp.
.text
.balign 4
.global fn_8021F1F0

fn_8021F1F0:
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    blelr
    addi 7, 3, 0x8
    li 6, 0x0
    blelr
    mr 5, 6
    .4byte 0x48000030 # b .L_8021F23C
L_8021F210:
    clrlwi. 0, 6, 24
    .4byte 0x40820018 # bne .L_8021F22C
    lwz 0, 0x0(7)
    cmpw 4, 0
    .4byte 0x40820014 # bne .L_8021F234
    li 6, 0x1
    .4byte 0x4800000C # b .L_8021F234
L_8021F22C:
    lwz 0, 0x0(7)
    stw 0, -0x4(7)
L_8021F234:
    addi 5, 5, 0x1
    addi 7, 7, 0x4
L_8021F23C:
    lwz 8, 0x4(3)
    cmpw 5, 8
    .4byte 0x4180FFCC # blt .L_8021F210
    clrlwi. 0, 6, 24
    beqlr
    subi 0, 8, 0x1
    stw 0, 0x4(3)
    blr
