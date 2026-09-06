/*
 * fn_801D882C(this) (0x801D882C-0x801D8980, 0x154/340 bytes) - this new
 * class's velocity-select companion to fn_801D85B0's state machine (same
 * shape as dtor_801D46FC's fn_801D4C70). For states in [0xb,0xf): computes a
 * direction toward the pattern-array entry fn_801D85B0 selected (this->0x334,
 * indexing this+(pattern*8)+0x2d4/0x2d8 - the SAME array), normalizes via the
 * CONFIRMED frsqrte idiom, scales by this->0x254 (a per-state rate), and
 * smooths this->0x3c/0x40 toward it via the CONFIRMED fn_801F71A4 "approach
 * at rate, clamp to max" utility (twice, once per axis). Otherwise: resets
 * this->0x3c to the shared base constant `lbl_8053F1CC`; this->0x40 climbs by
 * `|lbl_8053EFB8|` for states 8/0x10, else also resets. Unconditionally
 * resets this->0x44. Needs -mgekko.
 */

.section extab, "a"
.balign 4
.global etb_8000874C
etb_8000874C:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_8000874C, 8

.section extabindex, "a"
.balign 4
.global eti_80015B44
eti_80015B44:
    .4byte fn_801D882C
    .4byte 0x00000154
    .4byte etb_8000874C
.size eti_80015B44, 12

.text
.balign 4
.global fn_801D882C

fn_801D882C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stfd 31, 0x10(1)
    psq_st 31, 0x18(1), 0, 0
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0xf
    .4byte 0x408000C8 # bge .L_801D8918
    cmpwi 0, 0xb
    .4byte 0x40800008 # bge .L_801D8860
    .4byte 0x480000BC # b .L_801D8918
L_801D8860:
    lbz 0, 0x334(31)
    lis 3, lbl_80539D44@ha
    lfs 0, 0x10(31)
    slwi 0, 0, 3
    lfs 1, 0xc(31)
    add 4, 31, 0
    .4byte 0xC042C244 # lfs f2, lbl_8053F1E4@sda21(r0)
    lfs 4, 0x2d8(4)
    lfs 3, 0x2d4(4)
    fsubs 31, 4, 0
    lfs 0, lbl_80539D44@l(3)
    fsubs 1, 3, 1
    fmuls 0, 2, 0
    fmuls 2, 31, 31
    fmadds 5, 1, 1, 2
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801D88E4
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801D88BC
    .4byte 0x48000024 # b .L_801D88DC
L_801D88BC:
    frsqrte 4, 5
    .4byte 0xC062C248 # lfs f3, lbl_8053F1E8@sda21(r0)
    .4byte 0xC002C24C # lfs f0, lbl_8053F1EC@sda21(r0)
    frsp 4, 4
    fmuls 2, 4, 4
    fmuls 3, 3, 4
    fnmsubs 0, 5, 2, 0
    fmuls 5, 3, 0
L_801D88DC:
    fmuls 1, 1, 5
    fmuls 31, 31, 5
L_801D88E4:
    lfs 0, 0x254(31)
    addi 3, 31, 0x3c
    .4byte 0xC042C250 # lfs f2, lbl_8053F1F0@sda21(r0)
    fmuls 1, 1, 0
    .4byte 0xC062C238 # lfs f3, lbl_8053F1D8@sda21(r0)
    fmuls 31, 31, 0
    bl fn_801F71A4
    fmr 1, 31
    .4byte 0xC042C250 # lfs f2, lbl_8053F1F0@sda21(r0)
    .4byte 0xC062C238 # lfs f3, lbl_8053F1D8@sda21(r0)
    addi 3, 31, 0x40
    bl fn_801F71A4
    .4byte 0x48000048 # b .L_801D895C
L_801D8918:
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    stfs 0, 0x3c(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0x10
    .4byte 0x41820014 # beq .L_801D893C
    .4byte 0x40800028 # bge .L_801D8954
    cmpwi 0, 0x8
    .4byte 0x41820008 # beq .L_801D893C
    .4byte 0x4800001C # b .L_801D8954
L_801D893C:
    .4byte 0xC022C018 # lfs f1, lbl_8053EFB8@sda21(r0)
    lfs 0, 0x40(31)
    fabs 1, 1
    fadds 0, 0, 1
    stfs 0, 0x40(31)
    .4byte 0x4800000C # b .L_801D895C
L_801D8954:
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    stfs 0, 0x40(31)
L_801D895C:
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    stfs 0, 0x44(31)
    psq_l 31, 0x18(1), 0, 0
    lwz 0, 0x24(1)
    lfd 31, 0x10(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

