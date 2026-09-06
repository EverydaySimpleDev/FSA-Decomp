/*
 * fn_801D2FEC (0x801D2FEC-0x801D30B8, 0xCC/204 bytes) - "setup(this)" for "ClassX" (see
 * project_fsa_multiple_inheritance_pattern.md). Matches the established setup() shape:
 * fn_801D0ED0 (base step, distinct from the actor-class family's fn_801F5938/fn_801F5778 -
 * ClassX has its own, unrelated base hierarchy), an easing-constant float block at
 * this->0x60-0x8c from lbl_8053F070/74/78, this->0xb0=0, a flag OR'd into this->0x230,
 * this->0x108=0x3e8 mirrored into this->0x244, this->0x194=1, this->0x114=2.
 *
 * Then calls fn_801D2608(this+0x270, lbl_8053A130@sda21, 1), fn_801D22DC(this+0x270, 0, 2,
 * 0), fn_801D1D60(this+0x270) - the "timed-cue lookup table" component's init triple,
 * CONFIRMING the +0x270 embedding offset one more time (exactly matching dtor_801D2C60's
 * destructor guard).
 */

.section extab, "a"
.balign 4
.global etb_80008568
etb_80008568:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008568, 8

.section extabindex, "a"
.balign 4
.global eti_80015904
eti_80015904:
    .4byte fn_801D2FEC
    .4byte 0x000000CC
    .4byte etb_80008568
.size eti_80015904, 12

.text
.balign 4
.global fn_801D2FEC

fn_801D2FEC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    .4byte 0xC002C0D0 # lfs f0, lbl_8053F070@sda21(r0)
    li 8, 0x0
    .4byte 0xC042C0D4 # lfs f2, lbl_8053F074@sda21(r0)
    li 7, 0x3e8
    stfs 0, 0x60(31)
    li 6, 0x1
    .4byte 0xC022C0CC # lfs f1, lbl_8053F06C@sda21(r0)
    li 0, 0x2
    stfs 0, 0x64(31)
    addi 3, 31, 0x270
    .4byte 0xC002C0D8 # lfs f0, lbl_8053F078@sda21(r0)
    .4byte 0x388D8570 # li r4, lbl_8053A130@sda21
    stfs 2, 0x68(31)
    li 5, 0x1
    stfs 2, 0x6c(31)
    stfs 1, 0x70(31)
    stfs 1, 0x74(31)
    stfs 0, 0x78(31)
    stfs 0, 0x7c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 8, 0xb0(31)
    lwz 8, 0x230(31)
    ori 8, 8, 0x280
    stw 8, 0x230(31)
    stw 7, 0x108(31)
    lwz 7, 0x108(31)
    stw 7, 0x244(31)
    stb 6, 0x194(31)
    stw 0, 0x114(31)
    bl fn_801D2608
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    addi 3, 31, 0x270
    bl fn_801D1D60
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

