# fn_803D6BDC - BFIN: helper (0x124)
# Spatial registry (SpatialRegistry_GetBase x2), per-room config (fn_802D7440/802D6A9C).
#
# Attempted real-C++ promotion (Phase 4): got VERY close (0x118->0x124,
# matching size exactly, and the ENTIRE bit-scan loop + branch-sense of
# the "1a8" write block matched byte-for-byte) via 2 real fixes:
# (1) declaring `lbl_80529DEC` as `extern void* lbl_80529DEC[];` (an
# array, matching this project's vtable-declaration convention) instead
# of a plain scalar - the SAME lesson already confirmed for
# fn_803BAE68 this session - forces full lis/addi addressing instead of
# the @sda21 form MWCC otherwise picks; (2) writing the "1a8" branch as
# `if (x >= 0) {store x} else {store 4}` (positive case first) instead
# of the negated `if (x < 0)` form, to match retail's actual fallthrough
# structure (the >=0 case is the NO-BRANCH path in retail's bytes).
#
# The ONE remaining residual: the second (SpatialRegistry) loop's 2
# locals `count` (read once, loop bound) and `k` (byte-offset
# accumulator, +=4 per iteration) land in SWAPPED registers vs retail
# (retail: count=r30/k=r29; every variant tried: count=r29/k=r30) - a
# 3rd loop variable, `j` (the actual counter, r28), matches in every
# variant regardless. 4 phrasings tried (original declaration order;
# reversed k/j declaration order; swapped `k+=4,j++` comma-expression
# order to match retail's literal increment sequence; hoisting `k`'s
# declaration before the producing call - this one ALSO disrupted the
# correct call-then-loads instruction ORDER, reverting to worse) - none
# fixed the count/k register pairing. This is a small-scope instance of
# the same general "MWCC's own register-pairing preference isn't
# reachable via local declaration order" pattern already established
# for floats this session (fn_80204DAC/fn_801CC9F8), here for 2 plain
# integers instead. Deferred after 4 attempts - only 6 of ~73
# instructions differ, all in one small span, and the 2 real fixes
# above are valuable and should still be applied on the next attempt.
.section extab, "a"
.balign 4
.global etb_8000FA9C
etb_8000FA9C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000FA9C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F93C
eti_8001F93C:
    .4byte fn_803D6BDC
    .4byte 0x00000124
    .4byte etb_8000FA9C
.size eti_8001F93C, 12

.text
.balign 4
.global fn_803D6BDC

fn_803D6BDC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    bl fn_80239F10
    clrlwi. 0, 3, 24
    .4byte 0x418200DC # beq .L_803D6CE0
    li 29, 0x0
    li 30, 0x1
L_803D6C10:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 30, 29
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820018 # beq .L_803D6C3C
    mr 3, 29
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_803D6C3C
    stw 29, 0x234(31)
L_803D6C3C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFCC # blt .L_803D6C10
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41800014 # blt .L_803D6C64
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    stw 0, 0x1a8(3)
    .4byte 0x48000014 # b .L_803D6C74
L_803D6C64:
    lis 3, lbl_80529DEC@ha
    li 0, 0x4
    addi 3, 3, lbl_80529DEC@l
    stw 0, 0x1a8(3)
L_803D6C74:
    bl SpatialRegistry_GetBase
    lwz 30, 0x1008(3)
    li 28, 0x0
    li 29, 0x0
    .4byte 0x48000034 # b .L_803D6CB8
L_803D6C88:
    bl SpatialRegistry_GetBase
    addi 0, 29, 0x8
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D6CB0
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x5357
    cmplwi 0, 0x4556
    .4byte 0x40820008 # bne .L_803D6CB0
    bl fn_802B3A48
L_803D6CB0:
    addi 29, 29, 0x4
    addi 28, 28, 0x1
L_803D6CB8:
    cmpw 28, 30
    .4byte 0x4180FFCC # blt .L_803D6C88
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    lis 3, lbl_80529DEC@ha
    li 0, 0x1
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x240(3)
    stw 0, 0x230(31)
L_803D6CE0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
