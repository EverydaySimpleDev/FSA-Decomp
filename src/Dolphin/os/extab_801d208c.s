/*
 * fn_801D208C (0x801D208C-0x801D217C, 0xF0/240 bytes) - a boolean "is a cue ready" query for
 * the "timed-cue lookup table" component (see project_fsa_multiple_inheritance_pattern.md).
 *
 * Real understanding: if this->0x28 (mode) is nonzero, returns true immediately if
 * this->0x29 (a secondary flag byte) has bit 0 set; otherwise (mode==0) checks whether
 * this->0x30 equals a specific constant (lbl_8053F040) and, if so, whether enough time has
 * elapsed since this->0xc beyond a further constant (lbl_8053F048) - the same int-to-double
 * timestamp-delta idiom used throughout this component. If mode==2 specifically, delegates
 * to the SAME "has this->0x24's window elapsed" check as fn_801D217C (calling
 * fn_800C3638(this+0x24, timeDelta)) - the two functions share near-identical logic for
 * that one case, likely from a common inlined helper.
 */

.section extab, "a"
.balign 4
.global etb_80008500
etb_80008500:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008500, 8

.section extabindex, "a"
.balign 4
.global eti_80015868
eti_80015868:
    .4byte fn_801D208C
    .4byte 0x000000F0
    .4byte etb_80008500
.size eti_80015868, 12

.text
.balign 4
.global fn_801D208C

fn_801D208C:
    stwu 1, -0x20(1)
    mflr 0
    li 5, 0x0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    lbz 4, 0x28(3)
    cntlzw 0, 4
    extrwi. 0, 0, 8, 19
    .4byte 0x41820068 # beq .L_801D2114
    lbz 0, 0x29(3)
    li 5, 0x0
    clrlwi. 0, 0, 31
    .4byte 0x40820050 # bne .L_801D210C
    cmplwi 4, 0x0
    .4byte 0x408200A0 # bne .L_801D2164
    .4byte 0xC022C0A0 # lfs f1, lbl_8053F040@sda21(r0)
    lfs 0, 0x30(3)
    fcmpu cr0, 1, 0
    .4byte 0x40820090 # bne .L_801D2164
    lwz 4, 0xc(3)
    lis 0, 0x4330
    stw 0, 0x8(1)
    xoris 0, 4, 0x8000
    .4byte 0xC842C098 # lfd f2, lbl_8053F038@sda21(r0)
    stw 0, 0xc(1)
    .4byte 0xC002C0A8 # lfs f0, lbl_8053F048@sda21(r0)
    lfd 1, 0x8(1)
    lfs 3, 0x34(3)
    fsubs 1, 1, 2
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    .4byte 0x4081005C # ble .L_801D2164
L_801D210C:
    li 5, 0x1
    .4byte 0x48000054 # b .L_801D2164
L_801D2114:
    cmplwi 4, 0x2
    .4byte 0x4082004C # bne .L_801D2164
    li 31, 0x0
    .4byte 0x40820040 # bne .L_801D2160
    lwz 4, 0xc(3)
    lis 0, 0x4330
    stw 0, 0x8(1)
    addi 3, 3, 0x24
    xoris 0, 4, 0x8000
    .4byte 0xC842C098 # lfd f2, lbl_8053F038@sda21(r0)
    stw 0, 0xc(1)
    .4byte 0xC002C0A4 # lfs f0, lbl_8053F044@sda21(r0)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fsubs 1, 1, 0
    bl fn_800C3638
    cmpwi 3, 0x0
    .4byte 0x41820008 # beq .L_801D2160
    li 31, 0x1
L_801D2160:
    mr 5, 31
L_801D2164:
    lwz 0, 0x24(1)
    mr 3, 5
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

