/*
 * fn_801D8B28(this) (0x801D8B28-0x801D95F4, 0xACC/2748 bytes, largest function
 * landed this session) - this new class's STATE-TRANSITION-CONDITION
 * EVALUATOR, structurally the direct counterpart of dtor_801D46FC's
 * fn_801D5390: a real compiler jumptable (`jumptable_804A4CFC`) on the shared
 * this->0x248 state field (21 states, 0-0x14), where each case checks a
 * state-specific exit condition (proximity to 4 fixed anchors via
 * `fn_8023E724`, elapsed-time thresholds on this->0x24c, flag bits on
 * this->0x230/0x2bc, countdown checks on a GLOBAL singleton's own fields
 * (fn_801DAC6C() - parameterless, see extab_801daa48.s/oscluster_801dac6c.c -
 * ->0x84/->0x80, not per-instance data), or a facing-
 * angle/distance combo via fn_80093340) and, when satisfied, commits a
 * transition via fn_801D9C58(this, newState) - the SAME "commit new state"
 * helper referenced by every other method landed for this class
 * (fn_801D8400/fn_801D85B0/fn_801D882C).
 *
 * Several cases share the exact same "weighted pattern-select + random
 * duration" logic as fn_801D85B0 (this->0x334/0x338/0x33f, the SAME
 * this+(pattern*8)+0x2d4 array), and one case spawns actors via the
 * CONFIRMED fn_801F9484 universal spawn dispatcher (type code at
 * `lbl_80534C00`-relative offset, not yet decoded) at anchor-derived
 * positions, playing sound 0x453 afterward via the CONFIRMED fn_801F0E34.
 *
 * The FINAL case (state 0x14) is a cleanup/death transition: releases 2
 * attached effect handles (this->0x2c8/0x2cc) via the CONFIRMED fn_801EE434,
 * zeroes them, then makes a REAL VIRTUAL CALL through vtable slot 0x28/4=10
 * before unconditionally committing state 0x14 itself.
 *
 * Structure is fully understood; the exact real-world meaning of each of the
 * 21 individual state-transition conditions is NOT all traced (same standard
 * applied to fn_801D5390). Needs -mgekko.
 */

.section extab, "a"
.balign 4
.global etb_8000876C
etb_8000876C:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_8000876C, 8

.section extabindex, "a"
.balign 4
.global eti_80015B74
eti_80015B74:
    .4byte fn_801D8B28
    .4byte 0x00000ACC
    .4byte etb_8000876C
.size eti_80015B74, 12

.text
.balign 4
.global fn_801D8B28

fn_801D8B28:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stw 31, 0xdc(1)
    stw 30, 0xd8(1)
    stw 29, 0xd4(1)
    stw 28, 0xd0(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmplwi 0, 0x14
    .4byte 0x41810A74 # bgt .L_801D95CC
    lis 4, jumptable_804A4CFC@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A4CFC@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 3, 0x4(31)
    bl fn_801CD228
    clrlwi. 0, 3, 24
    .4byte 0x41820A4C # beq .L_801D95CC
    li 29, 0x0
    .4byte 0xC3E2C254 # lfs f31, lbl_8053F1F4@sda21(r0)
L_801D8B8C:
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(31)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 31
    cror eq, lt, eq
    .4byte 0x41820034 # beq .L_801D8BE0
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(31)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 31
    cror eq, lt, eq
    .4byte 0x41820010 # beq .L_801D8BE0
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFB0 # blt .L_801D8B8C
L_801D8BE0:
    cmpwi 29, 0x4
    .4byte 0x408009E8 # bge .L_801D95CC
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x418209D8 # beq .L_801D95CC
    mr 3, 31
    li 4, 0x1
    bl fn_801D9C58
    .4byte 0x480009C8 # b .L_801D95CC
    lwz 0, 0x24c(31)
    cmpwi 0, 0xb4
    .4byte 0x418009BC # blt .L_801D95CC
    li 4, 0x2
    bl fn_801D9C58
    .4byte 0x480009B0 # b .L_801D95CC
    lwz 0, 0x2bc(31)
    clrlwi. 0, 0, 31
    .4byte 0x418209A4 # beq .L_801D95CC
    li 4, 0x3
    bl fn_801D9C58
    .4byte 0x48000998 # b .L_801D95CC
    lwz 0, 0x2bc(31)
    clrlwi. 0, 0, 31
    .4byte 0x41820044 # beq .L_801D8C84
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x4
    li 5, 0x1
    li 6, 0x0
    bl fn_80458FF0
    li 3, 0x1e1
    bl fn_801CD664
    addi 0, 3, 0x258
    mr 3, 31
    sth 0, 0x33a(31)
    li 4, 0x4
    bl fn_801D9C58
    .4byte 0x4800094C # b .L_801D95CC
L_801D8C84:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x6
    .4byte 0x40820940 # bne .L_801D95CC
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 18, 16
    stw 0, 0x230(31)
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x40820928 # bne .L_801D95CC
    bl fn_801DAC6C
    lhz 0, 0x84(3)
    clrlwi. 0, 0, 31
    .4byte 0x40820918 # bne .L_801D95CC
    bl fn_801DAC6C
    lwz 0, 0x80(3)
    li 30, 0xa
    subfic 0, 0, 0x1e
    cmpwi 0, 0xa
    .4byte 0x40800008 # bge .L_801D8CD4
    mr 30, 0
L_801D8CD4:
    cmpwi 30, 0x0
    .4byte 0x408108F4 # ble .L_801D95CC
    .4byte 0xC042C258 # lfs f2, lbl_8053F1F8@sda21(r0)
    li 28, 0x0
    lfs 1, 0x10(31)
    lis 29, 0x4943
    lfs 3, 0x14(31)
    lfs 0, 0xc(31)
    fadds 1, 2, 1
    stfs 0, 0x24(1)
    stfs 1, 0x28(1)
    stfs 3, 0x2c(1)
    .4byte 0x48000028 # b .L_801D8D2C
L_801D8D08:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    addi 4, 29, 0x484c
    addi 6, 1, 0x24
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    addi 28, 28, 0x1
L_801D8D2C:
    cmpw 28, 30
    .4byte 0x4180FFD8 # blt .L_801D8D08
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x53
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000884 # b .L_801D95CC
    lhz 3, 0x33a(31)
    subi 0, 3, 0x1
    sth 0, 0x33a(31)
    lhz 0, 0x33a(31)
    cmplwi 0, 0x0
    .4byte 0x4082086C # bne .L_801D95CC
    li 3, 0x1e1
    bl fn_801CD664
    addi 0, 3, 0x258
    .4byte 0xC022C22C # lfs f1, lbl_8053F1CC@sda21(r0)
    sth 0, 0x33a(31)
    mr 3, 31
    addi 4, 31, 0xc
    li 28, 0x0
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x41800028 # blt .L_801D8DB4
    bl fn_801DAC6C
    lwz 0, 0x80(3)
    cmpwi 0, 0x1e
    .4byte 0x40800018 # bge .L_801D8DB4
    bl fn_801DAC6C
    lhz 0, 0x84(3)
    clrlwi. 0, 0, 31
    .4byte 0x40820008 # bne .L_801D8DB4
    li 28, 0x1
L_801D8DB4:
    clrlwi. 0, 28, 24
    .4byte 0x41820814 # beq .L_801D95CC
    mr 3, 31
    li 4, 0x6
    bl fn_801D9C58
    .4byte 0x48000804 # b .L_801D95CC
    lwz 0, 0x2bc(31)
    clrlwi. 0, 0, 31
    .4byte 0x418207F8 # beq .L_801D95CC
    mr 3, 31
    li 4, 0x7
    bl fn_801D9C58
    .4byte 0x480007E8 # b .L_801D95CC
    lwz 0, 0x2bc(31)
    clrlwi. 0, 0, 31
    .4byte 0x41820010 # beq .L_801D8E00
    li 4, 0x4
    bl fn_801D9C58
    .4byte 0x480007D0 # b .L_801D95CC
L_801D8E00:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x6
    .4byte 0x408207C4 # bne .L_801D95CC
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x408207B8 # bne .L_801D95CC
    bl fn_801DAC6C
    lhz 0, 0x84(3)
    clrlwi. 0, 0, 31
    .4byte 0x408207A8 # bne .L_801D95CC
    bl fn_801DAC6C
    lwz 0, 0x80(3)
    li 29, 0xa
    subfic 0, 0, 0x1e
    cmpwi 0, 0xa
    .4byte 0x40800008 # bge .L_801D8E44
    mr 29, 0
L_801D8E44:
    cmpwi 29, 0x0
    .4byte 0x40810784 # ble .L_801D95CC
    .4byte 0xC042C258 # lfs f2, lbl_8053F1F8@sda21(r0)
    li 28, 0x0
    lfs 1, 0x10(31)
    lis 30, 0x4943
    lfs 3, 0x14(31)
    lfs 0, 0xc(31)
    fadds 1, 2, 1
    stfs 0, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 3, 0x20(1)
    .4byte 0x48000028 # b .L_801D8E9C
L_801D8E78:
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    addi 4, 30, 0x484c
    addi 6, 1, 0x18
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    addi 28, 28, 0x1
L_801D8E9C:
    cmpw 28, 29
    .4byte 0x4180FFD8 # blt .L_801D8E78
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x53
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000714 # b .L_801D95CC
    lfs 0, 0x10(31)
    lfs 1, 0x2d0(31)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820700 # bne .L_801D95CC
    stfs 1, 0x10(31)
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC022C25C # lfs f1, lbl_8053F1FC@sda21(r0)
    .4byte 0xC042C22C # lfs f2, lbl_8053F1CC@sda21(r0)
    bl fn_802D79E8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x2
    li 5, 0x0
    bl fn_80134DE4
    mr 3, 31
    li 4, 0x9
    bl fn_801D9C58
    .4byte 0x480006C4 # b .L_801D95CC
    lwz 0, 0x24c(31)
    cmpwi 0, 0xb4
    .4byte 0x418006B8 # blt .L_801D95CC
    lbz 0, 0x33f(31)
    cmplwi 0, 0x3
    .4byte 0x40820080 # bne .L_801D8FA0
    li 6, 0x1
    li 7, 0x6
    stw 6, 0x90(1)
    slwi 0, 6, 2
    addi 5, 1, 0x90
    li 4, 0x2
    stwx 4, 5, 0
    li 6, 0x5
    li 3, 0x3
    li 4, 0x6
    stw 6, 0x98(1)
    slwi 0, 3, 2
    li 6, 0x9
    li 3, 0x5
    stwx 4, 5, 0
    cmpwi 7, 0x0
    slwi 0, 3, 2
    li 4, 0xa
    stw 6, 0xa0(1)
    stwx 4, 5, 0
    .4byte 0x40810020 # ble .L_801D8F94
    li 3, 0x6
    bl fn_801CD664
    slwi 0, 3, 2
    addi 3, 1, 0x90
    lwzx 0, 3, 0
    stb 0, 0x334(31)
    .4byte 0x4800001C # b .L_801D8FAC
L_801D8F94:
    li 0, 0x0
    stb 0, 0x334(31)
    .4byte 0x48000010 # b .L_801D8FAC
L_801D8FA0:
    li 3, 0xc
    bl fn_801CD664
    stb 3, 0x334(31)
L_801D8FAC:
    li 3, 0x3d
    bl fn_801CD664
    addi 0, 3, 0x3c
    li 4, 0x0
    sth 0, 0x338(31)
    lbz 0, 0x334(31)
    lfs 1, 0xc(31)
    slwi 0, 0, 3
    add 3, 31, 0
    lfs 0, 0x2d4(3)
    fcmpo cr0, 1, 0
    .4byte 0x41800018 # blt .L_801D8FF0
    fcmpu cr0, 1, 0
    .4byte 0x40820014 # bne .L_801D8FF4
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820008 # beq .L_801D8FF4
L_801D8FF0:
    li 4, 0x1
L_801D8FF4:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_801D900C
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_801D9018
L_801D900C:
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 19, 17
    stw 0, 0x230(31)
L_801D9018:
    mr 3, 31
    li 4, 0xa
    bl fn_801D9C58
    .4byte 0x480005A8 # b .L_801D95CC
    lwz 0, 0x2bc(31)
    clrlwi. 0, 0, 31
    .4byte 0x4182059C # beq .L_801D95CC
    bl fn_801E6234
    mr 3, 31
    li 4, 0xb
    bl fn_801D9C58
    .4byte 0x48000588 # b .L_801D95CC
    bl fn_801D9960
    .4byte 0x48000580 # b .L_801D95CC
    lwz 0, 0x2bc(31)
    clrlwi. 0, 0, 31
    .4byte 0x41820574 # beq .L_801D95CC
    lwz 0, 0x230(31)
    li 4, 0xb
    xori 0, 0, 0x2000
    stw 0, 0x230(31)
    bl fn_801D9C58
    .4byte 0x4800055C # b .L_801D95CC
    lwz 0, 0x2bc(31)
    clrlwi. 0, 0, 31
    .4byte 0x41820550 # beq .L_801D95CC
    li 4, 0xe
    bl fn_801D9C58
    .4byte 0x48000544 # b .L_801D95CC
    lwz 0, 0x2bc(31)
    clrlwi. 0, 0, 31
    .4byte 0x418202D4 # beq .L_801D9368
    lwz 0, 0x230(31)
    li 28, -0x1
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820030 # beq .L_801D90D4
    .4byte 0xC062C260 # lfs f3, lbl_8053F200@sda21(r0)
    lfs 0, 0x10(31)
    lfs 2, 0xc(31)
    .4byte 0xC022C264 # lfs f1, lbl_8053F204@sda21(r0)
    fadds 3, 3, 0
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    fsubs 1, 2, 1
    stfs 3, 0x10(1)
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    .4byte 0x4800002C # b .L_801D90FC
L_801D90D4:
    .4byte 0xC062C260 # lfs f3, lbl_8053F200@sda21(r0)
    lfs 0, 0x10(31)
    .4byte 0xC042C264 # lfs f2, lbl_8053F204@sda21(r0)
    lfs 1, 0xc(31)
    fadds 3, 3, 0
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    fadds 1, 2, 1
    stfs 3, 0x10(1)
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
L_801D90FC:
    lwz 0, 0x230(31)
    li 3, -0x2000
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820008 # beq .L_801D9110
    li 3, 0x2000
L_801D9110:
    extsh 30, 3
    mr 3, 31
    mr 5, 30
    addi 4, 1, 0xc
    bl fn_801D0338
    mr. 29, 3
    .4byte 0x41800090 # blt .L_801D91B8
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 29
    lfs 0, 0x10(1)
    fsubs 31, 1, 0
    bl fn_8023E724
    lfs 1, 0x0(3)
    lis 3, lbl_80534C00@ha
    lfs 0, 0xc(1)
    fmr 2, 31
    addi 3, 3, lbl_80534C00@l
    fsubs 1, 1, 0
    bl fn_80093340
    .4byte 0xC002C268 # lfs f0, lbl_8053F208@sda21(r0)
    lis 0, 0x4330
    stw 0, 0xc8(1)
    fmuls 2, 1, 0
    .4byte 0xC862C278 # lfd f3, lbl_8053F218@sda21(r0)
    .4byte 0xC022C26C # lfs f1, lbl_8053F20C@sda21(r0)
    .4byte 0xC002C250 # lfs f0, lbl_8053F1F0@sda21(r0)
    fctiwz 2, 2
    stfd 2, 0xc0(1)
    lwz 0, 0xc4(1)
    subf 0, 0, 30
    extsh 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0xcc(1)
    lfd 2, 0xc8(1)
    fsubs 2, 2, 3
    fabs 2, 2
    fmuls 1, 1, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801D91B8
    mr 28, 29
L_801D91B8:
    cmpwi 28, 0x0
    .4byte 0x41800070 # blt .L_801D922C
    lbz 0, 0x33e(31)
    cmplwi 0, 0x2
    .4byte 0x41800054 # blt .L_801D921C
    cmplwi 0, 0x3
    .4byte 0x4080005C # bge .L_801D922C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022C238 # lfs f1, lbl_8053F1D8@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002C270 # lfs f0, lbl_8053F210@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_801D922C
L_801D921C:
    mr 3, 31
    li 4, 0xe
    bl fn_801D9C58
    .4byte 0x480003A4 # b .L_801D95CC
L_801D922C:
    lbz 0, 0x33f(31)
    cmplwi 0, 0x3
    .4byte 0x40820080 # bne .L_801D92B4
    li 6, 0x1
    li 7, 0x6
    stw 6, 0x60(1)
    slwi 0, 6, 2
    addi 5, 1, 0x60
    li 4, 0x2
    stwx 4, 5, 0
    li 6, 0x5
    li 3, 0x3
    li 4, 0x6
    stw 6, 0x68(1)
    slwi 0, 3, 2
    li 6, 0x9
    li 3, 0x5
    stwx 4, 5, 0
    cmpwi 7, 0x0
    slwi 0, 3, 2
    li 4, 0xa
    stw 6, 0x70(1)
    stwx 4, 5, 0
    .4byte 0x40810020 # ble .L_801D92A8
    li 3, 0x6
    bl fn_801CD664
    slwi 0, 3, 2
    addi 3, 1, 0x60
    lwzx 0, 3, 0
    stb 0, 0x334(31)
    .4byte 0x4800001C # b .L_801D92C0
L_801D92A8:
    li 0, 0x0
    stb 0, 0x334(31)
    .4byte 0x48000010 # b .L_801D92C0
L_801D92B4:
    li 3, 0xc
    bl fn_801CD664
    stb 3, 0x334(31)
L_801D92C0:
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
    .4byte 0x41800018 # blt .L_801D9308
    fcmpu cr0, 1, 0
    .4byte 0x40820014 # bne .L_801D930C
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820008 # beq .L_801D930C
L_801D9308:
    li 5, 0x1
L_801D930C:
    clrlwi. 0, 5, 24
    .4byte 0x41820018 # beq .L_801D9328
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4082001C # bne .L_801D9338
    li 4, 0x1
    .4byte 0x48000014 # b .L_801D9338
L_801D9328:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820008 # beq .L_801D9338
    li 4, 0x1
L_801D9338:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_801D9350
    mr 3, 31
    li 4, 0xc
    bl fn_801D9C58
    .4byte 0x48000010 # b .L_801D935C
L_801D9350:
    mr 3, 31
    li 4, 0xb
    bl fn_801D9C58
L_801D935C:
    li 0, 0x0
    stb 0, 0x33e(31)
    .4byte 0x48000268 # b .L_801D95CC
L_801D9368:
    lwz 0, 0x24c(31)
    cmpwi 0, 0xa
    .4byte 0x4082025C # bne .L_801D95CC
    bl fn_801D95F4
    clrlwi. 0, 3, 24
    .4byte 0x41820250 # beq .L_801D95CC
    lbz 6, 0x33e(31)
    lis 4, 0x3
    mr 3, 31
    li 5, 0x0
    addi 0, 6, 0x1
    addi 4, 4, 0x35
    stb 0, 0x33e(31)
    bl fn_801F0E34
    .4byte 0x4800022C # b .L_801D95CC
    lwz 0, 0x2bc(31)
    clrlwi. 0, 0, 31
    .4byte 0x41820220 # beq .L_801D95CC
    li 4, 0x10
    bl fn_801D9C58
    .4byte 0x48000214 # b .L_801D95CC
    lis 4, 0x4
    li 5, 0x0
    addi 4, 4, 0x59
    bl fn_801F0E34
    lfs 0, 0x10(31)
    lfs 1, 0x2d0(31)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x408201F0 # bne .L_801D95CC
    stfs 1, 0x10(31)
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC022C274 # lfs f1, lbl_8053F214@sda21(r0)
    .4byte 0xC042C22C # lfs f2, lbl_8053F1CC@sda21(r0)
    bl fn_802D79E8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x2
    li 5, 0x0
    bl fn_80134DE4
    mr 3, 31
    li 4, 0x11
    bl fn_801D9C58
    .4byte 0x480001B4 # b .L_801D95CC
    lhz 0, 0x336(31)
    cmplwi 0, 0x0
    .4byte 0x408201A8 # bne .L_801D95CC
    li 4, 0x12
    bl fn_801D9C58
    .4byte 0x4800019C # b .L_801D95CC
    lwz 0, 0x2bc(31)
    clrlwi. 0, 0, 31
    .4byte 0x41820190 # beq .L_801D95CC
    lbz 0, 0x33f(31)
    cmplwi 0, 0x3
    .4byte 0x40820080 # bne .L_801D94C8
    li 6, 0x1
    li 7, 0x6
    stw 6, 0x30(1)
    slwi 0, 6, 2
    addi 5, 1, 0x30
    li 4, 0x2
    stwx 4, 5, 0
    li 6, 0x5
    li 3, 0x3
    li 4, 0x6
    stw 6, 0x38(1)
    slwi 0, 3, 2
    li 6, 0x9
    li 3, 0x5
    stwx 4, 5, 0
    cmpwi 7, 0x0
    slwi 0, 3, 2
    li 4, 0xa
    stw 6, 0x40(1)
    stwx 4, 5, 0
    .4byte 0x40810020 # ble .L_801D94BC
    li 3, 0x6
    bl fn_801CD664
    slwi 0, 3, 2
    addi 3, 1, 0x30
    lwzx 0, 3, 0
    stb 0, 0x334(31)
    .4byte 0x4800001C # b .L_801D94D4
L_801D94BC:
    li 0, 0x0
    stb 0, 0x334(31)
    .4byte 0x48000010 # b .L_801D94D4
L_801D94C8:
    li 3, 0xc
    bl fn_801CD664
    stb 3, 0x334(31)
L_801D94D4:
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
    .4byte 0x41800018 # blt .L_801D951C
    fcmpu cr0, 1, 0
    .4byte 0x40820014 # bne .L_801D9520
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820008 # beq .L_801D9520
L_801D951C:
    li 5, 0x1
L_801D9520:
    clrlwi. 0, 5, 24
    .4byte 0x41820018 # beq .L_801D953C
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4082001C # bne .L_801D954C
    li 4, 0x1
    .4byte 0x48000014 # b .L_801D954C
L_801D953C:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820008 # beq .L_801D954C
    li 4, 0x1
L_801D954C:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_801D9564
    mr 3, 31
    li 4, 0xc
    bl fn_801D9C58
    .4byte 0x4800006C # b .L_801D95CC
L_801D9564:
    mr 3, 31
    li 4, 0xb
    bl fn_801D9C58
    .4byte 0x4800005C # b .L_801D95CC
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x4182004C # beq .L_801D95CC
    lwz 3, 0x2c8(31)
    bl fn_801EE434
    lwz 3, 0x2cc(31)
    bl fn_801EE434
    li 0, 0x0
    mr 3, 31
    stw 0, 0x2c8(31)
    li 4, 0x0
    .4byte 0xC022C22C # lfs f1, lbl_8053F1CC@sda21(r0)
    stw 0, 0x2cc(31)
    .4byte 0xC042C230 # lfs f2, lbl_8053F1D0@sda21(r0)
    lwz 12, 0x0(31)
    lwz 12, 0x28(12)
    mtctr 12
    bctrl
    mr 3, 31
    li 4, 0x14
    bl fn_801D9C58
L_801D95CC:
    psq_l 31, 0xe8(1), 0, 0
    lwz 0, 0xf4(1)
    lfd 31, 0xe0(1)
    lwz 31, 0xdc(1)
    lwz 30, 0xd8(1)
    lwz 29, 0xd4(1)
    lwz 28, 0xd0(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

