/*
 * fn_801D9960(this) (0x801D9960-0x801D9C58, 0x2F8/760 bytes) - called from
 * fn_801D8B28's un-cased branch (extab_801d8b28.s). Does two independent jobs:
 *
 * 1. "Idle animation glance" - decrements this->0x33c; at 0, computes an
 *    anchor-relative facing candidate the SAME way fn_801D95F4 does (dual-
 *    branch anchor pick + fn_8023E724/fn_80093340 direction, but WITHOUT
 *    spawning anything this time), then checks whether the existing attached
 *    animation object at this+0x2a8 is ready via fn_801DA894(this+0x2a8) - if
 *    so, transitions to state 0xd via the CONFIRMED fn_801D9C58.
 * 2. If current state==0xb: decrements this->0x338; at 0, re-runs the SAME
 *    "weighted pattern-select + random duration" logic fn_801D85B0/
 *    fn_801D8B28 use (this->0x334/0x338/0x33f, this+(pattern*8)+0x2d4 array),
 *    then transitions to state 0xc if the resulting distance/flag check
 *    passes.
 *
 * Needs -mgekko.
 */

.section extab, "a"
.balign 4
.global etb_8000877C
etb_8000877C:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_8000877C, 8

.section extabindex, "a"
.balign 4
.global eti_80015B8C
eti_80015B8C:
    .4byte fn_801D9960
    .4byte 0x000002F8
    .4byte etb_8000877C
.size eti_80015B8C, 12

.text
.balign 4
.global fn_801D9960

fn_801D9960:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stw 31, 0x6c(1)
    stw 30, 0x68(1)
    stw 29, 0x64(1)
    stw 28, 0x60(1)
    mr 31, 3
    lhz 3, 0x33c(3)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801D999C
    subi 0, 3, 0x1
    sth 0, 0x33c(31)
L_801D999C:
    lhz 0, 0x33c(31)
    cmplwi 0, 0x0
    .4byte 0x40820148 # bne .L_801D9AEC
    lwz 0, 0x230(31)
    li 30, -0x1
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820030 # beq .L_801D99E4
    .4byte 0xC062C260 # lfs f3, lbl_8053F200@sda21(r0)
    lfs 0, 0x10(31)
    lfs 2, 0xc(31)
    .4byte 0xC022C264 # lfs f1, lbl_8053F204@sda21(r0)
    fadds 3, 3, 0
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    fsubs 1, 2, 1
    stfs 3, 0xc(1)
    stfs 1, 0x8(1)
    stfs 0, 0x10(1)
    .4byte 0x4800002C # b .L_801D9A0C
L_801D99E4:
    .4byte 0xC062C260 # lfs f3, lbl_8053F200@sda21(r0)
    lfs 0, 0x10(31)
    .4byte 0xC042C264 # lfs f2, lbl_8053F204@sda21(r0)
    lfs 1, 0xc(31)
    fadds 3, 3, 0
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    fadds 1, 2, 1
    stfs 3, 0xc(1)
    stfs 1, 0x8(1)
    stfs 0, 0x10(1)
L_801D9A0C:
    lwz 0, 0x230(31)
    li 3, -0x2000
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820008 # beq .L_801D9A20
    li 3, 0x2000
L_801D9A20:
    extsh 28, 3
    mr 3, 31
    mr 5, 28
    addi 4, 1, 0x8
    bl fn_801D0338
    mr. 29, 3
    .4byte 0x41800090 # blt .L_801D9AC8
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 29
    lfs 0, 0xc(1)
    fsubs 31, 1, 0
    bl fn_8023E724
    lfs 1, 0x0(3)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x8(1)
    fmr 2, 31
    addi 3, 3, lbl_80534C00@l
    fsubs 1, 1, 0
    bl fn_80093340
    .4byte 0xC002C268 # lfs f0, lbl_8053F208@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x50(1)
    fmuls 2, 1, 0
    .4byte 0xC862C278 # lfd f3, lbl_8053F218@sda21(r0)
    .4byte 0xC022C26C # lfs f1, lbl_8053F20C@sda21(r0)
    .4byte 0xC002C250 # lfs f0, lbl_8053F1F0@sda21(r0)
    fctiwz 2, 2
    stfd 2, 0x48(1)
    lwz 0, 0x4c(1)
    subf 0, 0, 28
    extsh 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x54(1)
    lfd 2, 0x50(1)
    fsubs 2, 2, 3
    fabs 2, 2
    fmuls 1, 1, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801D9AC8
    mr 30, 29
L_801D9AC8:
    cmpwi 30, 0x0
    .4byte 0x41800020 # blt .L_801D9AEC
    addi 3, 31, 0x2a8
    bl fn_801DA894
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801D9AEC
    mr 3, 31
    li 4, 0xd
    bl fn_801D9C58
L_801D9AEC:
    lwz 0, 0x248(31)
    cmpwi 0, 0xb
    .4byte 0x4082013C # bne .L_801D9C30
    lhz 3, 0x338(31)
    subi 0, 3, 0x1
    sth 0, 0x338(31)
    lhz 0, 0x338(31)
    cmplwi 0, 0x0
    .4byte 0x40820124 # bne .L_801D9C30
    lbz 0, 0x33f(31)
    cmplwi 0, 0x3
    .4byte 0x40820080 # bne .L_801D9B98
    li 6, 0x1
    li 7, 0x6
    stw 6, 0x14(1)
    slwi 0, 6, 2
    addi 5, 1, 0x14
    li 4, 0x2
    stwx 4, 5, 0
    li 6, 0x5
    li 3, 0x3
    li 4, 0x6
    stw 6, 0x1c(1)
    slwi 0, 3, 2
    li 6, 0x9
    li 3, 0x5
    stwx 4, 5, 0
    cmpwi 7, 0x0
    slwi 0, 3, 2
    li 4, 0xa
    stw 6, 0x24(1)
    stwx 4, 5, 0
    .4byte 0x40810020 # ble .L_801D9B8C
    li 3, 0x6
    bl fn_801CD664
    slwi 0, 3, 2
    addi 3, 1, 0x14
    lwzx 0, 3, 0
    stb 0, 0x334(31)
    .4byte 0x4800001C # b .L_801D9BA4
L_801D9B8C:
    li 0, 0x0
    stb 0, 0x334(31)
    .4byte 0x48000010 # b .L_801D9BA4
L_801D9B98:
    li 3, 0xc
    bl fn_801CD664
    stb 3, 0x334(31)
L_801D9BA4:
    li 3, 0x3d
    bl fn_801CD664
    addi 0, 3, 0x3c
    li 4, 0x0
    sth 0, 0x338(31)
    mr 5, 4
    lbz 0, 0x334(31)
    lfs 1, 0xc(31)
    slwi 0, 0, 3
    add 3, 31, 0
    lfs 0, 0x2d4(3)
    fcmpo cr0, 1, 0
    .4byte 0x41800018 # blt .L_801D9BEC
    fcmpu cr0, 1, 0
    .4byte 0x40820014 # bne .L_801D9BF0
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820008 # beq .L_801D9BF0
L_801D9BEC:
    li 5, 0x1
L_801D9BF0:
    clrlwi. 0, 5, 24
    .4byte 0x41820018 # beq .L_801D9C0C
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4082001C # bne .L_801D9C1C
    li 4, 0x1
    .4byte 0x48000014 # b .L_801D9C1C
L_801D9C0C:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820008 # beq .L_801D9C1C
    li 4, 0x1
L_801D9C1C:
    clrlwi. 0, 4, 24
    .4byte 0x41820010 # beq .L_801D9C30
    mr 3, 31
    li 4, 0xc
    bl fn_801D9C58
L_801D9C30:
    psq_l 31, 0x78(1), 0, 0
    lwz 0, 0x84(1)
    lfd 31, 0x70(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    lwz 29, 0x64(1)
    lwz 28, 0x60(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

