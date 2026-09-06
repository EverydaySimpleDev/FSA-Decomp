# TLWP cluster, part 5/7 (Track A byte-match + overview -
# 0x9FC=2556B, the LARGEST piece of this actor). update() state
# handler #2. Uses the global PRNG advance, effect spawn fn_8013CC50,
# the ease primitive fn_801F71A4, the generic FourCC actor dispatcher
# fn_801F9484, the player validity/position family fn_8023DE58/
# fn_8023E724/Player_GetCapabilityFlagByIndex, fn_801EEC98/ClassifyBamAngleToQuadrant/fn_801F68E0/
# SpatialRegistry_GetBase, plus an extensive set of unfamiliar helpers
# (fn_801365E8/80138A30/8022CA6C/8022F3DC/8022FD8C/8022FE80/8022FEB8/
# 802300EC/802303FC/80230498/80230534/80230BF4/80236B50/8023764C/
# 80309C4C/8037EFB4/80384C58/803865B8/8038AD24) not chased further
# given the function's size.
.section extab, "a"
.balign 4
.global etb_80007C2C
etb_80007C2C:
    .4byte 0x20CA0000
    .4byte 0x00000000
.size etb_80007C2C, 8

.section extabindex, "a"
.balign 4
.global eti_80014BC0
eti_80014BC0:
    .4byte fn_801B56A0
    .4byte 0x000009FC
    .4byte etb_80007C2C
.size eti_80014BC0, 12

.text
.balign 4
.global fn_801B56A0

fn_801B56A0:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stfd 29, 0x70(1)
    psq_st 29, 0x78(1), 0, 0
    stw 31, 0x6c(1)
    stw 30, 0x68(1)
    stw 29, 0x64(1)
    stw 28, 0x60(1)
    mr 28, 3
    lis 3, lbl_8050EC80@ha
    lfs 0, 0x60(28)
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    lis 5, lbl_804A37E0@ha
    stfs 0, 0x38(1)
    li 4, 0x1
    mulli 0, 0, 0xc8
    addi 31, 5, lbl_804A37E0@l
    lfs 4, 0x64(28)
    stfs 4, 0x3c(1)
    add 3, 3, 0
    lbz 0, 0x7a(3)
    lfs 2, 0x68(28)
    stfs 2, 0x40(1)
    lfs 3, 0x6c(28)
    stfs 3, 0x44(1)
    lfs 1, 0xc(28)
    psq_l 6, 0xc(28), 0, 0
    fadds 0, 0, 1
    lfs 5, 0x14(28)
    fadds 1, 2, 1
    psq_st 6, 0x2c(1), 0, 0
    stfs 0, 0x38(1)
    lfs 0, 0x10(28)
    stfs 5, 0x34(1)
    fadds 2, 4, 0
    fadds 0, 3, 0
    stfs 1, 0x40(1)
    stfs 2, 0x3c(1)
    stfs 0, 0x44(1)
    lwz 3, 0x254(28)
    slw 3, 4, 3
    clrlwi 3, 3, 24
    and. 0, 3, 0
    .4byte 0x41820900 # beq .L_801B6064
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_801B577C
    .4byte 0x480008EC # b .L_801B6064
L_801B577C:
    lwz 0, 0x230(28)
    cmpwi 0, 0x5
    .4byte 0x41820014 # beq .L_801B5798
    cmpwi 0, 0x6
    .4byte 0x4182000C # beq .L_801B5798
    cmpwi 0, 0x7
    .4byte 0x4082002C # bne .L_801B57C0
L_801B5798:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1000
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_801B57C0
    li 3, 0x309
    li 0, 0x7
    .4byte 0x906D8558 # stw r3, lbl_8053A118@sda21(r0)
    stw 0, 0x230(28)
L_801B57C0:
    lwz 4, 0x198(28)
    mr 3, 28
    addi 6, 1, 0x1c
    addi 7, 1, 0x14
    addi 8, 1, 0x18
    li 5, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x230(28)
    cmplwi 0, 0x7
    .4byte 0x41810878 # bgt .L_801B6064
    lis 3, jumptable_804A3928@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A3928@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC022BA70 # lfs f1, lbl_8053EA10@sda21(r0)
    li 5, 0x48b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x294(28)
    addi 4, 28, 0xc
    .4byte 0xC022BA70 # lfs f1, lbl_8053EA10@sda21(r0)
    li 5, 0x48c
    lwz 3, 0x4(28)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x298(28)
    li 0, 0x1
    stw 0, 0x230(28)
    lwz 4, 0x4(28)
    addi 3, 1, 0x38
    lwz 5, 0x198(28)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(28)
    bl fn_8022FD8C
    stw 3, 0x244(28)
    lwz 3, 0x244(28)
    cmpwi 3, 0x0
    .4byte 0x418007D0 # blt .L_801B6064
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418207C4 # beq .L_801B6064
    lfs 1, 0x30(1)
    addi 7, 1, 0x20
    .4byte 0xC002BAC4 # lfs f0, lbl_8053EA64@sda21(r0)
    addi 4, 31, 0x68
    lwz 5, 0x198(28)
    li 8, 0x100
    fsubs 0, 1, 0
    lwz 6, 0x4(28)
    lfs 1, 0x34(1)
    stfs 0, 0x30(1)
    psq_l 0, 0x2c(1), 0, 0
    stfs 1, 0x28(1)
    psq_st 0, 0x0(7), 0, 0
    lwz 0, 0x254(28)
    lwz 3, 0x244(28)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820774 # beq .L_801B6064
    li 0, 0x2
    stw 0, 0x230(28)
    lwz 3, 0x244(28)
    li 6, 0x0
    lwz 4, 0x4(28)
    li 7, 0x0
    lwz 5, 0x198(28)
    bl fn_8022FE80
    lwz 3, 0x244(28)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820744 # beq .L_801B6064
    lwz 3, 0x244(28)
    lwz 4, 0x198(28)
    bl fn_80384C58
    lwz 3, 0x244(28)
    bl fn_8037EFB4
    cmpwi 3, 0x1
    .4byte 0x41820020 # beq .L_801B595C
    .4byte 0x40800724 # bge .L_801B6064
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_801B5950
    .4byte 0x48000718 # b .L_801B6064
L_801B5950:
    li 0, 0x4
    stw 0, 0x230(28)
    .4byte 0x4800070C # b .L_801B6064
L_801B595C:
    li 3, 0x0
    bl fn_80230534
    li 0, 0x3
    stw 0, 0x230(28)
    .4byte 0x480006F8 # b .L_801B6064
    .4byte 0xC3C2BA78 # lfs f30, lbl_8053EA18@sda21(r0)
    li 29, 0x0
    .4byte 0xC3E2BAC8 # lfs f31, lbl_8053EA68@sda21(r0)
    li 30, 0x0
    .4byte 0x48000118 # b .L_801B5A98
L_801B5984:
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 29
    lfs 0, 0xc(28)
    fsubs 29, 1, 0
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(28)
    fsubs 0, 1, 0
    fmuls 0, 0, 0
    fmadds 4, 29, 29, 0
    fcmpo cr0, 4, 30
    .4byte 0x4081004C # ble .L_801B5A04
    frsqrte 1, 4
    .4byte 0xC862BAA0 # lfd f3, lbl_8053EA40@sda21(r0)
    .4byte 0xC842BAA8 # lfd f2, lbl_8053EA48@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_801B5A88
L_801B5A04:
    .4byte 0xC802BAB0 # lfd f0, lbl_8053EA50@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801B5A1C
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801B5A88
L_801B5A1C:
    stfs 4, 0x10(1)
    lis 0, 0x7f80
    lwz 4, 0x10(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801B5A44
    .4byte 0x40800040 # bge .L_801B5A74
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801B5A5C
    .4byte 0x48000034 # b .L_801B5A74
L_801B5A44:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801B5A54
    li 0, 0x1
    .4byte 0x48000028 # b .L_801B5A78
L_801B5A54:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801B5A78
L_801B5A5C:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801B5A6C
    li 0, 0x5
    .4byte 0x48000010 # b .L_801B5A78
L_801B5A6C:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801B5A78
L_801B5A74:
    li 0, 0x4
L_801B5A78:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801B5A88
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801B5A88:
    fcmpo cr0, 4, 31
    .4byte 0x40810008 # ble .L_801B5A94
    addi 30, 30, 0x1
L_801B5A94:
    addi 29, 29, 0x1
L_801B5A98:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpw 29, 3
    .4byte 0x4180FEE0 # blt .L_801B5984
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpw 30, 3
    .4byte 0x418005B0 # blt .L_801B6064
    li 0, 0x1
    stw 0, 0x230(28)
    .4byte 0x480005A4 # b .L_801B6064
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x41820594 # beq .L_801B6064
    li 31, 0x0
    mr 30, 28
L_801B5ADC:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182007C # beq .L_801B5B64
    lwz 29, 0x4(28)
    mr 3, 31
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x40820068 # bne .L_801B5B64
    mr 3, 31
    bl fn_8023E724
    lfs 1, 0x0(3)
    .4byte 0xC002BA78 # lfs f0, lbl_8053EA18@sda21(r0)
    stfs 1, 0x264(30)
    lfs 1, 0x4(3)
    stfs 1, 0x268(30)
    lfs 1, 0x8(3)
    mr 3, 31
    stfs 1, 0x26c(30)
    stfs 0, 0x26c(30)
    bl fn_8022F3DC
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_801B5B48
    mr 3, 31
    li 4, 0x5
    li 5, 0x0
    bl fn_8022CA6C
L_801B5B48:
    mr 3, 31
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801B5B64
    mr 3, 31
    li 4, 0x1
    bl fn_8023764C
L_801B5B64:
    addi 31, 31, 0x1
    addi 30, 30, 0xc
    cmpwi 31, 0x4
    .4byte 0x4180FF6C # blt .L_801B5ADC
    lis 3, lbl_80529DEC@ha
    li 4, 0x1
    addi 3, 3, lbl_80529DEC@l
    li 0, 0x5
    stb 4, 0x24e(3)
    stw 0, 0x230(28)
    lfs 0, 0xc(28)
    li 30, 0x0
    mr 29, 30
    mr 31, 28
    stfs 0, 0x48(1)
    lfs 0, 0x10(28)
    stfs 0, 0x4c(1)
    lfs 0, 0x14(28)
    stfs 0, 0x50(1)
L_801B5BB0:
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418201C0 # beq .L_801B5D7C
    cmpwi 30, 0x0
    .4byte 0x41820014 # beq .L_801B5BD8
    lfs 1, 0x4c(1)
    .4byte 0xC002BACC # lfs f0, lbl_8053EA6C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x4c(1)
L_801B5BD8:
    lfs 1, 0x48(1)
    addi 3, 31, 0x264
    .4byte 0xC042BA88 # lfs f2, lbl_8053EA28@sda21(r0)
    .4byte 0xC062BA70 # lfs f3, lbl_8053EA10@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x4c(1)
    addi 3, 31, 0x268
    .4byte 0xC042BA88 # lfs f2, lbl_8053EA28@sda21(r0)
    .4byte 0xC062BA70 # lfs f3, lbl_8053EA10@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x268(31)
    lfs 0, 0x4c(1)
    lfs 2, 0x264(31)
    fsubs 6, 1, 0
    lfs 1, 0x48(1)
    .4byte 0xC002BA78 # lfs f0, lbl_8053EA18@sda21(r0)
    fsubs 5, 2, 1
    fmuls 1, 6, 6
    fmadds 4, 5, 5, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801B5C74
    frsqrte 1, 4
    .4byte 0xC862BAA0 # lfd f3, lbl_8053EA40@sda21(r0)
    .4byte 0xC842BAA8 # lfd f2, lbl_8053EA48@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_801B5CF8
L_801B5C74:
    .4byte 0xC802BAB0 # lfd f0, lbl_8053EA50@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801B5C8C
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801B5CF8
L_801B5C8C:
    stfs 4, 0xc(1)
    lis 0, 0x7f80
    lwz 4, 0xc(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801B5CB4
    .4byte 0x40800040 # bge .L_801B5CE4
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801B5CCC
    .4byte 0x48000034 # b .L_801B5CE4
L_801B5CB4:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801B5CC4
    li 0, 0x1
    .4byte 0x48000028 # b .L_801B5CE8
L_801B5CC4:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801B5CE8
L_801B5CCC:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801B5CDC
    li 0, 0x5
    .4byte 0x48000010 # b .L_801B5CE8
L_801B5CDC:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801B5CE8
L_801B5CE4:
    li 0, 0x4
L_801B5CE8:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801B5CF8
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801B5CF8:
    .4byte 0xC002BA70 # lfs f0, lbl_8053EA10@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x4080002C # bge .L_801B5D2C
    mr 3, 30
    addi 4, 31, 0x264
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    addi 29, 29, 0x1
    bl fn_80230498
    .4byte 0x48000058 # b .L_801B5D80
L_801B5D2C:
    fneg 1, 5
    lis 3, lbl_80534C00@ha
    fneg 2, 6
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002BAD0 # lfs f0, lbl_8053EA70@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    mr 4, 3
    mr 3, 30
    bl fn_80230BF4
    mr 3, 30
    addi 4, 31, 0x264
    li 5, 0xff
    bl fn_802303FC
    .4byte 0x48000008 # b .L_801B5D80
L_801B5D7C:
    addi 29, 29, 0x1
L_801B5D80:
    addi 30, 30, 0x1
    addi 31, 31, 0xc
    cmpwi 30, 0x4
    .4byte 0x4180FE24 # blt .L_801B5BB0
    cmpwi 29, 0x4
    .4byte 0x418002D0 # blt .L_801B6064
    li 0, 0x6
    stw 0, 0x230(28)
    .4byte 0x480002C4 # b .L_801B6064
    lwz 0, 0x234(28)
    cmpwi 0, 0x0
    .4byte 0x408202B8 # bne .L_801B6064
    lfs 0, 0xc(28)
    mr 30, 28
    li 31, 0x0
    stfs 0, 0x48(1)
    lfs 0, 0x10(28)
    stfs 0, 0x4c(1)
    lfs 0, 0x14(28)
    stfs 0, 0x50(1)
L_801B5DD0:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418201B8 # beq .L_801B5F94
    lwz 29, 0x4(28)
    mr 3, 31
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x408201A4 # bne .L_801B5F94
    cmpwi 31, 0x0
    .4byte 0x41820014 # beq .L_801B5E0C
    lfs 1, 0x4c(1)
    .4byte 0xC002BACC # lfs f0, lbl_8053EA6C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x4c(1)
L_801B5E0C:
    lfs 1, 0x48(1)
    addi 3, 30, 0x264
    .4byte 0xC042BA88 # lfs f2, lbl_8053EA28@sda21(r0)
    .4byte 0xC062BA70 # lfs f3, lbl_8053EA10@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x4c(1)
    addi 3, 30, 0x268
    .4byte 0xC042BA88 # lfs f2, lbl_8053EA28@sda21(r0)
    .4byte 0xC062BA70 # lfs f3, lbl_8053EA10@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x268(30)
    lfs 0, 0x4c(1)
    lfs 3, 0x264(30)
    fsubs 1, 1, 0
    lfs 2, 0x48(1)
    .4byte 0xC002BA78 # lfs f0, lbl_8053EA18@sda21(r0)
    fsubs 2, 3, 2
    fabs 3, 1
    fabs 1, 2
    frsp 3, 3
    frsp 2, 1
    fmuls 1, 3, 3
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801B5EB8
    frsqrte 1, 4
    .4byte 0xC862BAA0 # lfd f3, lbl_8053EA40@sda21(r0)
    .4byte 0xC842BAA8 # lfd f2, lbl_8053EA48@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_801B5F3C
L_801B5EB8:
    .4byte 0xC802BAB0 # lfd f0, lbl_8053EA50@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801B5ED0
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801B5F3C
L_801B5ED0:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801B5EF8
    .4byte 0x40800040 # bge .L_801B5F28
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801B5F10
    .4byte 0x48000034 # b .L_801B5F28
L_801B5EF8:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801B5F08
    li 0, 0x1
    .4byte 0x48000028 # b .L_801B5F2C
L_801B5F08:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801B5F2C
L_801B5F10:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801B5F20
    li 0, 0x5
    .4byte 0x48000010 # b .L_801B5F2C
L_801B5F20:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801B5F2C
L_801B5F28:
    li 0, 0x4
L_801B5F2C:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801B5F3C
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801B5F3C:
    .4byte 0xC002BAC0 # lfs f0, lbl_8053EA60@sda21(r0)
    fcmpo cr0, 4, 0
    lwz 0, 0x240(28)
    cmpwi 0, 0x0
    .4byte 0x40820028 # bne .L_801B5F74
    mr 3, 31
    addi 4, 30, 0x264
    li 5, 0x3c
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000024 # b .L_801B5F94
L_801B5F74:
    mr 3, 31
    addi 4, 30, 0x264
    li 5, 0x3e
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_801B5F94:
    addi 31, 31, 0x1
    addi 30, 30, 0xc
    cmpwi 31, 0x4
    .4byte 0x4180FE30 # blt .L_801B5DD0
    li 0, 0x8
    stw 0, 0x234(28)
    lwz 3, 0x240(28)
    addi 0, 3, 0x1
    stw 0, 0x240(28)
    lwz 0, 0x240(28)
    cmpwi 0, 0x1
    .4byte 0x408100A4 # ble .L_801B6064
    .4byte 0xC3A2BAD4 # lfs f29, lbl_8053EA74@sda21(r0)
    li 30, 0x0
    .4byte 0xC3E2BAD8 # lfs f31, lbl_8053EA78@sda21(r0)
    lis 29, 0x544c
L_801B5FD4:
    lfs 0, 0xc(28)
    stfs 0, 0x48(1)
    fadds 0, 0, 29
    fadds 29, 29, 31
    lfs 1, 0x10(28)
    stfs 1, 0x4c(1)
    lfs 1, 0x14(28)
    stfs 1, 0x50(1)
    stfs 0, 0x48(1)
    bl SpatialRegistry_GetBase
    addi 0, 30, 0x1
    lwz 5, 0x4(28)
    addi 4, 29, 0x5750
    addi 6, 1, 0x48
    slwi 7, 0, 4
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    addi 30, 30, 0x1
    cmpwi 30, 0x3
    .4byte 0x4180FFB0 # blt .L_801B5FD4
    li 0, 0x7
    stw 0, 0x230(28)
    .4byte 0x48000034 # b .L_801B6064
    .4byte 0x800D8558 # lwz r0, lbl_8053A118@sda21(r0)
    cmpwi 0, 0x309
    .4byte 0x40820028 # bne .L_801B6064
    lwz 0, 0x254(28)
    addi 4, 31, 0x28
    addi 5, 31, 0x48
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slwi 0, 0, 2
    li 6, 0x0
    lwzx 4, 4, 0
    lwzx 5, 5, 0
    bl fn_801365E8
L_801B6064:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    psq_l 29, 0x78(1), 0, 0
    lfd 29, 0x70(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    lwz 29, 0x64(1)
    lwz 0, 0xa4(1)
    lwz 28, 0x60(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

