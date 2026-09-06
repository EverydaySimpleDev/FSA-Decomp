/*
 * fn_801D2D38 (0x801D2D38-0x801D2E70, 0x138/312 bytes) - the "spawn effect" method for
 * "ClassX" (see project_fsa_multiple_inheritance_pattern.md). Matches the established spawn-
 * method shape confirmed for the "timed-cue lookup table"-embedding actor classes: builds a
 * 16-byte identity index array and a ~40-byte config struct on the stack, then calls the
 * CONFIRMED **fn_801F06F0** ("spawn effect with transform" primitive, see
 * project_fsa_shared_effect_subsystem_crossref.md) with `this->0x280+0xd5` as the
 * position/config offset.
 */

.section extab, "a"
.balign 4
.global etb_80008558
etb_80008558:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008558, 8

.section extabindex, "a"
.balign 4
.global eti_800158EC
eti_800158EC:
    .4byte fn_801D2D38
    .4byte 0x00000138
    .4byte etb_80008558
.size eti_800158EC, 12

.text
.balign 4
.global fn_801D2D38

fn_801D2D38:
    stwu 1, -0x50(1)
    mflr 0
    li 11, 0x0
    stw 0, 0x54(1)
    li 0, -0x1
    addi 10, 1, 0x8
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_801D2DBC
L_801D2D5C:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_801D2DBC:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801D2D5C
    li 10, 0x0
    li 6, -0x1
    stb 10, 0x25(1)
    li 9, 0x1
    li 8, 0x3
    li 5, 0x2
    .4byte 0xC022C0CC # lfs f1, lbl_8053F06C@sda21(r0)
    li 0, 0xc
    stw 6, 0x38(1)
    lis 4, lbl_80469474@ha
    fmr 2, 1
    addi 4, 4, lbl_80469474@l
    stw 6, 0x18(1)
    addi 6, 1, 0x8
    li 7, -0x1
    stw 10, 0x1c(1)
    stw 10, 0x20(1)
    stb 10, 0x24(1)
    stb 10, 0x26(1)
    stb 9, 0x27(1)
    stb 9, 0x28(1)
    stb 10, 0x29(1)
    stb 10, 0x2a(1)
    stb 10, 0x2b(1)
    stb 10, 0x2c(1)
    stb 10, 0x2d(1)
    stb 9, 0x2e(1)
    stw 8, 0x30(1)
    stb 9, 0x34(1)
    stb 10, 0x35(1)
    stb 10, 0x36(1)
    stw 10, 0x3c(1)
    stw 5, 0x40(1)
    stw 0, 0x38(1)
    stb 9, 0x25(1)
    lwz 5, 0x280(3)
    addi 5, 5, 0xd5
    bl fn_801F06F0
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

