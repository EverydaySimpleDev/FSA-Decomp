/*
 * fn_801D72C0(this, posSrc) (0x801D72C0-0x801D74E0, 0x220/544 bytes) - the
 * "launch ALL recorded targets" sibling of fn_801D70BC (extab_801d70bc.s),
 * for the reusable "this+0x4c4" sub-object. Same posSrc-caching/self-ID-check
 * preamble, then loops over all 16 target-ID slots (this->0x0[i]): resolves
 * each via SpatialRegistry_GetBase/fn_801F666C, and for every valid one computes a
 * direction from self position (this->0x48/0x4c/0x50) toward the target,
 * blended with a per-slot facing-angle offset via the CONFIRMED shared anchor
 * table `lbl_8052EBC0` (this->0x54 + slot index), normalizes it (CONFIRMED
 * frsqrte idiom), scales by `lbl_8053F18C`, and - exactly like fn_801D70BC -
 * WRITES the resulting velocity into THAT TARGET's own this->0x3c/0x40/0x44
 * fields, launching it. After the loop, sets this's own state (this->0x44) to
 * 4, same as fn_801D70BC. Needs -mgekko.
 */

.section extab, "a"
.balign 4
.global etb_800086CC
etb_800086CC:
    .4byte 0x28CA0000
    .4byte 0x00000000
.size etb_800086CC, 8

.section extabindex, "a"
.balign 4
.global eti_80015A84
eti_80015A84:
    .4byte fn_801D72C0
    .4byte 0x00000220
    .4byte etb_800086CC
.size eti_80015A84, 12

.text
.balign 4
.global fn_801D72C0

fn_801D72C0:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stmw 27, 0x2c(1)
    mr 27, 4
    .4byte 0xC042C1CC # lfs f2, lbl_8053F16C@sda21(r0)
    lfs 1, 0x4(4)
    mr 31, 3
    lfs 0, 0x0(4)
    fadds 1, 2, 1
    lfs 2, 0x8(4)
    stfs 0, 0x48(3)
    stfs 1, 0x4c(3)
    stfs 2, 0x50(3)
    lwz 3, 0x40(3)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801D7330
    .4byte 0xC022C1D0 # lfs f1, lbl_8053F170@sda21(r0)
    lfs 0, 0x4(27)
    fadds 0, 1, 0
    stfs 0, 0x4c(31)
L_801D7330:
    mr 30, 31
    li 27, 0x0
    li 29, 0x0
L_801D733C:
    lwz 28, 0x0(30)
    cmpwi 28, 0x0
    .4byte 0x41800154 # blt .L_801D7498
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820140 # beq .L_801D7498
    lha 0, 0x54(31)
    lis 5, lbl_8052EBC0@ha
    lfs 0, 0x50(31)
    lis 4, lbl_80539D44@ha
    add 6, 0, 29
    addi 0, 5, lbl_8052EBC0@l
    extsh 5, 6
    stfs 0, 0x1c(1)
    neg 5, 5
    lfs 1, 0x5c(31)
    rlwinm 5, 5, 30, 18, 28
    .4byte 0xC0A2C1B0 # lfs f5, lbl_8053F150@sda21(r0)
    add 5, 0, 5
    lfs 4, 0x4c(31)
    lfs 3, 0x0(5)
    lfs 8, 0x4(5)
    fmuls 0, 1, 3
    lfs 2, 0x48(31)
    fmuls 1, 1, 8
    psq_l 7, 0x1c(1), 1, 0
    psq_l 6, 0x50(31), 1, 0
    fmsubs 0, 5, 8, 0
    fmadds 3, 5, 3, 1
    .4byte 0xC022C1B8 # lfs f1, lbl_8053F158@sda21(r0)
    ps_sub 6, 7, 6
    psq_l 8, 0x48(31), 0, 0
    fadds 2, 2, 0
    fadds 3, 4, 3
    lfs 0, lbl_80539D44@l(4)
    stfs 2, 0x14(1)
    fmuls 0, 1, 0
    stfs 3, 0x18(1)
    psq_l 1, 0x14(1), 0, 0
    psq_st 6, 0x1c(1), 1, 0
    ps_sub 1, 1, 8
    lfs 29, 0x1c(1)
    ps_mul 2, 1, 1
    psq_st 1, 0x14(1), 0, 0
    ps_madd 4, 29, 29, 2
    ps_sum0 4, 4, 2, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_801D7458
    fcmpo cr0, 4, 5
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801D741C
    fmr 31, 4
    .4byte 0x48000028 # b .L_801D7440
L_801D741C:
    frsqrte 3, 4
    .4byte 0xC042C1C0 # lfs f2, lbl_8053F160@sda21(r0)
    .4byte 0xC002C1C4 # lfs f0, lbl_8053F164@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_801D7440:
    psq_l 1, 0x14(1), 0, 0
    psq_l 0, 0x1c(1), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x14(1), 0, 0
    psq_st 0, 0x1c(1), 1, 0
L_801D7458:
    .4byte 0xC3C2C1EC # lfs f30, lbl_8053F18C@sda21(r0)
    psq_l 0, 0x14(1), 0, 0
    psq_l 2, 0x1c(1), 1, 0
    ps_muls0 1, 0, 30
    .4byte 0xC002C1B0 # lfs f0, lbl_8053F150@sda21(r0)
    ps_muls0 3, 2, 30
    stfs 0, 0x10(1)
    psq_st 1, 0x14(1), 0, 0
    lfs 2, 0x14(1)
    lfs 1, 0x18(1)
    stfs 2, 0x8(1)
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    psq_st 3, 0x1c(1), 1, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_801D7498:
    addi 27, 27, 0x1
    addi 29, 29, 0xfff
    cmpwi 27, 0x10
    addi 30, 30, 0x4
    .4byte 0x4180FE94 # blt .L_801D733C
    li 0, 0x4
    stw 0, 0x44(31)
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    lmw 27, 0x2c(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

