# fn_80183CF8(this) - GDMN's real setParams (see
# project_fsa_rivr_gdmn_fagn_actor_progress.md). Same overall shape as
# RIVR's setParams (extab_801831e0.s): zero-sizes the 2 tracked rects,
# clears state fields, conditionally copies a 4-byte variant/color
# tuple from `fn_8018330C()` into `0x234-0x237`/derived
# `0x238/0x239/0x23a` when the level config byte
# (`GetRoomConfigRecord()->0x31f2`) equals 1. Differs from RIVR in a few
# constants: `this->0x25c` is derived from bit 23 of `0x90` (vs RIVR's
# bit 31), `this->0x195=1` is set UNCONDITIONALLY (not gated), and the
# initial `this->0x254=2` (vs RIVR's 0).
#
# Attempted real-C++ promotion (Phase 4): the byte-extraction block
# (this->0x238/0x239/0x23a derived from reloading this->0x234 as a u32)
# needed 3 SEPARATE fresh re-reads of `*(u32*)(this_+0x234)`, not one
# cached local reused 3x - retail's own bytes reload the field from
# memory on every extraction rather than keeping it in a register.
# Confirms the established CSE-avoidance lesson (previously seen for
# function-call results, e.g. fn_8022C274/fn_8023A240) generalizes to
# plain MEMORY LOADS too - once fixed, this specific block matched
# byte-for-byte. The REMAINING residuals are both already-confirmed,
# unfixable-via-phrasing walls: (1) the float-prologue-order wall (7th+
# instance - retail loads the first 2 SDA float constants BEFORE the
# LR-save `stw`, MWCC always emits the LR-save first) and (2) the
# persistent f0/f1 float-register-role swap (3rd+ instance this
# session, see fn_80204DAC's extended banner for the full negative-
# result history). Deferred - the CSE-avoidance fix is preserved here
# for reference; do not re-attempt the 2 confirmed walls via new source
# phrasing.
.section extab, "a"
.balign 4
.global etb_80007604
etb_80007604:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007604, 8

.section extabindex, "a"
.balign 4
.global eti_8001432C
eti_8001432C:
    .4byte fn_80183CF8
    .4byte 0x00000124
    .4byte etb_80007604
.size eti_8001432C, 12

.text
.balign 4
.global fn_80183CF8

fn_80183CF8:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022AF58 # lfs f1, lbl_8053DEF8@sda21(r0)
    stw 0, 0x24(1)
    li 0, 0x0
    .4byte 0xC002AF5C # lfs f0, lbl_8053DEFC@sda21(r0)
    stw 31, 0x1c(1)
    mr 31, 3
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    stfs 1, 0x80(3)
    stfs 1, 0x84(3)
    stfs 0, 0x88(3)
    stfs 0, 0x8c(3)
    stw 0, 0x248(3)
    stw 0, 0x24c(3)
    stw 0, 0x250(3)
    stw 0, 0x23c(3)
    stw 0, 0x240(3)
    stw 0, 0x244(3)
    stb 0, 0x238(3)
    stb 0, 0x239(3)
    stb 0, 0x23a(3)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f2(3)
    cmplwi 0, 0x1
    .4byte 0x40820050 # bne .L_80183DBC
    addi 3, 1, 0x8
    bl fn_8018330C
    lbz 0, 0x8(1)
    stb 0, 0x234(31)
    lbz 0, 0x9(1)
    stb 0, 0x235(31)
    lbz 0, 0xa(1)
    stb 0, 0x236(31)
    lbz 0, 0xb(1)
    stb 0, 0x237(31)
    lwz 0, 0x234(31)
    srwi 0, 0, 24
    stb 0, 0x238(31)
    lwz 0, 0x234(31)
    extrwi 0, 0, 8, 8
    stb 0, 0x239(31)
    lwz 0, 0x234(31)
    extrwi 0, 0, 8, 16
    stb 0, 0x23a(31)
L_80183DBC:
    lwz 0, 0x90(31)
    li 4, 0x1
    li 3, 0x2
    .4byte 0xC002AF44 # lfs f0, lbl_8053DEE4@sda21(r0)
    extrwi 5, 0, 1, 23
    li 0, 0x0
    stw 5, 0x25c(31)
    stb 4, 0x195(31)
    stw 3, 0x254(31)
    stfs 0, 0x26c(31)
    stfs 0, 0x268(31)
    stfs 0, 0x264(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x258(31)
    sth 0, 0x260(31)
    stw 0, 0x270(31)
    stw 0, 0x230(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
