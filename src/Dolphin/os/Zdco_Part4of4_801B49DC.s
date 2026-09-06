# ZDCO cluster, part 4/4 (268B, no extab - leaf). setParams-like state
# selector - a jump-table dispatch setting this->0x230 to one of
# several fixed state values (0/1/2/4/0xa) based on the spawn
# parameter, no calls.
#
# NOTE: attempted real-C++ promotion (Phase 4), got VERY close - a
# near-miss, not a structural failure. The control flow (a plain
# cmpwi/bge compare-chain mapping spawnParam's low byte to 5 possible
# this->0x230 states) matches a genuine `switch(v) { case 0/1/2: ...;
# case 3: case 7: ...; default: ... }` cleanly - 0 diffs on that part.
# The bitfield extracts (this->0x254/0x258, reloading this->0x90 fresh
# for each - matching the established "repeated this-relative reads are
# safe to write literally" rule) and the field copies (0xc/0x10/0x14 ->
# 0x26c/0x270/0x274) also matched immediately once written to literally
# mirror retail's exact load/store INTERLEAVING order (retail loads/
# stores the 3 leading float globals in a load-then-immediate-partial-
# store pattern, NOT load-all-then-store-all - matching each global's
# FIRST use exactly, not caching all upfront, closed 66 of 83 diffs in
# one step).
#
# The remaining, NOT-fixed issue: retail assigns the 3 leading float
# globals to DESCENDING registers by declaration/first-use order (a, at
# lbl_8053EA08, first-used => f2; b, lbl_8053E9EC, second-used => f1; c,
# lbl_8053E9C0, third-used => f0 - note c also has a much longer live
# range, reused again far later for this->0x44/0x40/0x3c). Every
# natural-C++ phrasing tried (5 total) gives ASCENDING allocation
# instead (a=f0, b=f1, c=f2) when each local is declared+initialized
# inline exactly at its first use (matching program-order timing
# perfectly, only the register NUMBER differs) - OR, if any of the 3
# locals are pre-declared uninitialized before their first use (tried:
# full reverse c,b,a; also just c+a reversed with b left inline), a
# DIFFERENT, WORSE regression appears where `b`'s otherwise-already-
# correct f1 register ALSO gets reassigned, even though `b`'s own
# declaration position didn't change. This means MWCC's FP register
# choice here is driven by something in the compiler's own internal
# allocation pass (unclear if it's live-range-END order, or an
# allocate-eagerly-on-any-predeclaration behavior) rather than by any
# tested source-level declaration/initialization ordering. Same
# confirmed-hard "MWCC's own scheduler/allocator decides, not
# source-controllable" category as fn_802C59B0/fn_8041499C (this same
# file's neighbors) and Grve_SetParams's 3-float case. Left as raw asm -
# only 17 of 268 bytes differ (all register-numbering, plus 2 knock-on
# branch-offset diffs in the switch dispatch), the closest full-function
# near-miss found this batch.
#
# ALSO TESTED: `#pragma scheduling off` / `reset` (confirmed genuinely
# supported/functional on this project's own GC/1.3.2 mwcceppc.exe via
# a standalone test). Wrapping the whole function body in the pragma
# made the match WORSE (23 differing instrs, up from 17) - an
# independent `li r4,0x0` constant materialization moved to yet a THIRD
# different position, not matching retail either. Confirms retail's own
# compile of this function was not built with scheduling disabled - the
# pragma is real and situationally useful but not a blind fix for this
# residual; don't retry here without a new angle (e.g. isolating the
# pragma to just the 3-float-load span rather than the whole function).
.text
.balign 4
.global fn_801B49DC

fn_801B49DC:
    .4byte 0xC042BA68 # lfs f2, lbl_8053EA08@sda21(r0)
    li 4, 0x0
    .4byte 0xC022BA4C # lfs f1, lbl_8053E9EC@sda21(r0)
    stfs 2, 0x60(3)
    .4byte 0xC002BA20 # lfs f0, lbl_8053E9C0@sda21(r0)
    stfs 2, 0x64(3)
    stfs 1, 0x68(3)
    stfs 1, 0x6c(3)
    stfs 2, 0x70(3)
    stfs 2, 0x74(3)
    stfs 1, 0x78(3)
    stfs 1, 0x7c(3)
    stw 4, 0x240(3)
    stw 4, 0x244(3)
    stw 4, 0x248(3)
    stw 4, 0x234(3)
    stw 4, 0x238(3)
    stw 4, 0x23c(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 24
    stw 0, 0x250(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 5
    stw 0, 0x254(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 4, 20
    stw 0, 0x258(3)
    stw 4, 0x24c(3)
    lfs 1, 0xc(3)
    stfs 1, 0x26c(3)
    lfs 1, 0x10(3)
    stfs 1, 0x270(3)
    lfs 1, 0x14(3)
    stfs 1, 0x274(3)
    stfs 0, 0x44(3)
    stfs 0, 0x40(3)
    stfs 0, 0x3c(3)
    stw 4, 0x25c(3)
    sth 4, 0x94(3)
    stb 4, 0x1a8(3)
    lwz 0, 0x250(3)
    cmpwi 0, 0x3
    .4byte 0x4182004C # beq .L_801B4AD0
    .4byte 0x4080001C # bge .L_801B4AA4
    cmpwi 0, 0x1
    .4byte 0x41820034 # beq .L_801B4AC4
    .4byte 0x40800024 # bge .L_801B4AB8
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801B4AB0
    .4byte 0x4800003C # b .L_801B4ADC
L_801B4AA4:
    cmpwi 0, 0x7
    .4byte 0x41820028 # beq .L_801B4AD0
    .4byte 0x48000030 # b .L_801B4ADC
L_801B4AB0:
    stw 4, 0x230(3)
    blr
L_801B4AB8:
    li 0, 0x1
    stw 0, 0x230(3)
    blr
L_801B4AC4:
    li 0, 0x2
    stw 0, 0x230(3)
    blr
L_801B4AD0:
    li 0, 0x4
    stw 0, 0x230(3)
    blr
L_801B4ADC:
    li 0, 0xa
    stw 0, 0x230(3)
    blr

