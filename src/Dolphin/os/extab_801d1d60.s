/*
 * fn_801D1D60 (0x801D1D60-0x801D1F14, 0x1B4/436 bytes) - the "timed-cue lookup table"
 * component's "restart evaluation from my own stored timestamp" entry point (see
 * project_fsa_multiple_inheritance_pattern.md).
 *
 * Real understanding: recomputes the active time-window (this->0x34) from this->0xc (the
 * stored reference timestamp, NOT a caller-supplied offset - the key difference from
 * fn_801D1F14, which takes the offset as a parameter) and this->0x28 (mode: which of the
 * lbl_8053F040/8053F044 window-adjustment constants applies), clamped against a minimum of
 * lbl_8053F040. Then performs the exact same step-list walk as fn_801D1C18/fn_801D1F14:
 * accumulate durations across the active sequence (this->0x0[this->0x8]) looking for the
 * step whose window contains "now," clamping the result into this->0x10/0x1c.
 */

.section extab, "a"
.balign 4
.global etb_800084F0
etb_800084F0:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800084F0, 8

.section extabindex, "a"
.balign 4
.global eti_80015850
eti_80015850:
    .4byte fn_801D1D60
    .4byte 0x000001B4
    .4byte etb_800084F0
.size eti_80015850, 12

.text
.balign 4
.global fn_801D1D60

fn_801D1D60:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 3, 0xc(3)
    addi 3, 3, 0x1
    bl fn_801CD664
    lis 4, 0x4330
    lwz 5, 0xc(31)
    xoris 3, 3, 0x8000
    stw 4, 0x8(1)
    xoris 0, 5, 0x8000
    .4byte 0xC822C098 # lfd f1, lbl_8053F038@sda21(r0)
    stw 3, 0xc(1)
    lfd 0, 0x8(1)
    stw 0, 0x14(1)
    fsubs 2, 0, 1
    stw 4, 0x10(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    .4byte 0x4081000C # ble .L_801D1DC4
    fmr 2, 0
    .4byte 0x48000014 # b .L_801D1DD4
L_801D1DC4:
    .4byte 0xC002C0A0 # lfs f0, lbl_8053F040@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40800008 # bge .L_801D1DD4
    fmr 2, 0
L_801D1DD4:
    xoris 3, 5, 0x8000
    lis 0, 0x4330
    stw 3, 0x14(1)
    .4byte 0xC822C098 # lfd f1, lbl_8053F038@sda21(r0)
    stw 0, 0x10(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fcmpu cr0, 2, 0
    .4byte 0x40820020 # bne .L_801D1E14
    lbz 0, 0x28(31)
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_801D1E0C
    .4byte 0xC042C0A0 # lfs f2, lbl_8053F040@sda21(r0)
    .4byte 0x4800000C # b .L_801D1E14
L_801D1E0C:
    .4byte 0xC002C0A4 # lfs f0, lbl_8053F044@sda21(r0)
    fsubs 2, 2, 0
L_801D1E14:
    stfs 2, 0x34(31)
    li 6, 0x0
    .4byte 0xC822C098 # lfd f1, lbl_8053F038@sda21(r0)
    mr 5, 6
    lwz 0, 0x8(31)
    lis 3, 0x4330
    lwz 4, 0x0(31)
    slwi 0, 0, 2
    lfs 2, 0x34(31)
    lwzx 9, 4, 0
    mr 7, 9
    .4byte 0x48000080 # b .L_801D1EC0
L_801D1E44:
    xoris 0, 6, 0x8000
    lha 4, 0x2(7)
    stw 0, 0x14(1)
    add 6, 6, 4
    stw 3, 0x10(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820050 # bne .L_801D1EB8
    xoris 0, 6, 0x8000
    stw 3, 0x10(1)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    .4byte 0x40800034 # bge .L_801D1EB8
    lwz 3, 0x18(31)
    lwz 0, 0x14(31)
    cmpw 8, 3
    .4byte 0x4081000C # ble .L_801D1EA0
    mr 8, 3
    .4byte 0x48000010 # b .L_801D1EAC
L_801D1EA0:
    cmpw 8, 0
    .4byte 0x40800008 # bge .L_801D1EAC
    mr 8, 0
L_801D1EAC:
    stw 8, 0x10(31)
    stw 5, 0x1c(31)
    .4byte 0x4800004C # b .L_801D1F00
L_801D1EB8:
    addi 7, 7, 0x4
    addi 5, 5, 0x1
L_801D1EC0:
    lha 8, 0x0(7)
    extsh. 0, 8
    .4byte 0x4080FF7C # bge .L_801D1E44
    lwz 4, 0x18(31)
    lha 0, 0x0(9)
    lwz 3, 0x14(31)
    cmpw 0, 4
    .4byte 0x4081000C # ble .L_801D1EE8
    mr 0, 4
    .4byte 0x48000010 # b .L_801D1EF4
L_801D1EE8:
    cmpw 0, 3
    .4byte 0x40800008 # bge .L_801D1EF4
    mr 0, 3
L_801D1EF4:
    stw 0, 0x10(31)
    li 0, 0x0
    stw 0, 0x1c(31)
L_801D1F00:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

