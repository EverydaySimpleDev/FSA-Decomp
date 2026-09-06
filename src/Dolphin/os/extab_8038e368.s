# fn_8038E368 - actor@lbl_804AF32C: main per-frame update() (0x10FC, largest
# piece in this gap so far)
# Extremely effect/player-heavy: fn_8022F340 (x32, by far the most-repeated
# single callee found in this gap), fn_8023E724 player-validity (x8),
# SpatialRegistry_GetBase spatial registry (x7), fn_801F9484 FourCC dispatch (x6),
# fn_80138A30 boss-defeat/despawn notifier (x3), plus effect spawn
# (fn_8013CC50), room-notify (fn_801F0E34), and many once/twice-called
# helpers. Track A: byte-match verified, structural overview per the
# large/complex-function exception - the boss-defeat notifier calls suggest
# this may be a boss or major set-piece actor.
.section extab, "a"
.balign 4
.global etb_8000EE38
etb_8000EE38:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000EE38, 8

.section extabindex, "a"
.balign 4
.global eti_8001EC58
eti_8001EC58:
    .4byte fn_8038E368
    .4byte 0x000010FC
    .4byte etb_8000EE38
.size eti_8001EC58, 12

.text
.balign 4
.global fn_8038E368

fn_8038E368:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stmw 27, 0x6c(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x1
    .4byte 0x41820FF0 # beq .L_8038F374
    lwz 0, 0x90(31)
    cmplwi 0, 0x3
    .4byte 0x41820100 # beq .L_8038E490
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x40810098 # ble .L_8038E438
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x4180008C # blt .L_8038E438
    li 28, 0x0
L_8038E3B4:
    lwz 30, 0x4(31)
    mr 3, 28
    bl fn_8023DE58
    cmpw 3, 30
    .4byte 0x40820068 # bne .L_8038E42C
    mr 3, 28
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820058 # bne .L_8038E42C
    mr 3, 28
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x40820048 # bne .L_8038E42C
    mr 3, 28
    bl fn_8022F340
    slwi 3, 3, 2
    addi 0, 3, 0x24c
    lwzx 0, 31, 0
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8038E42C
    mr 3, 28
    bl fn_8022F340
    li 4, 0x11
    bl fn_803037D4
    mr 3, 28
    li 30, 0x1
    bl fn_8022F340
    slwi 3, 3, 2
    addi 0, 3, 0x24c
    stwx 30, 31, 0
L_8038E42C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF80 # blt .L_8038E3B4
L_8038E438:
    lfs 1, 0x60(31)
    addi 3, 1, 0x44
    stfs 1, 0x44(1)
    lfs 4, 0x64(31)
    stfs 4, 0x48(1)
    lfs 2, 0x68(31)
    stfs 2, 0x4c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x50(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x44(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x4c(1)
    fadds 0, 3, 2
    stfs 1, 0x48(1)
    stfs 0, 0x50(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
L_8038E490:
    .4byte 0xC0C20164 # lfs f6, lbl_80543104@sda21(r0)
    .4byte 0xC0420168 # lfs f2, lbl_80543108@sda21(r0)
    stfs 6, 0x34(1)
    .4byte 0xC0A2016C # lfs f5, lbl_8054310C@sda21(r0)
    stfs 6, 0x38(1)
    .4byte 0xC0820170 # lfs f4, lbl_80543110@sda21(r0)
    stfs 2, 0x3c(1)
    stfs 2, 0x40(1)
    lfs 1, 0x24(31)
    fadds 0, 6, 1
    fadds 7, 2, 1
    fadds 3, 5, 1
    stfs 0, 0x34(1)
    fadds 1, 4, 1
    lfs 0, 0x28(31)
    fadds 8, 6, 0
    stfs 5, 0x24(1)
    fadds 6, 2, 0
    stfs 4, 0x2c(1)
    fadds 2, 5, 0
    fadds 0, 4, 0
    stfs 5, 0x28(1)
    stfs 4, 0x30(1)
    stfs 8, 0x38(1)
    stfs 7, 0x3c(1)
    stfs 6, 0x40(1)
    stfs 3, 0x24(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 0, 0x230(31)
    cmplwi 0, 0xd
    .4byte 0x41810E0C # bgt .L_8038F31C
    lis 3, jumptable_804AF3B8@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AF3B8@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 28, 0x0
L_8038E530:
    lwz 0, 0x238(31)
    cmpw 0, 28
    .4byte 0x418200B8 # beq .L_8038E5F0
    mr 3, 28
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC0020174 # lfs f0, lbl_80543114@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x408200A0 # bne .L_8038E5F0
    mr 3, 28
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x40820090 # bne .L_8038E5F0
    mr 3, 28
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x40820080 # bne .L_8038E5F0
    mr 3, 28
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x40820070 # bne .L_8038E5F0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_8038E5D0
    mr 3, 28
    bl fn_8022F340
    bl fn_80237060
    cmpwi 3, 0x2
    .4byte 0x4180002C # blt .L_8038E5D0
    mr 3, 28
    bl fn_8022F340
    bl fn_8023725C
    cmpwi 3, 0x2
    .4byte 0x40800060 # bge .L_8038E618
    mr 3, 28
    bl fn_8022F340
    bl fn_8023725C
    cmpwi 3, 0x0
    .4byte 0x4182004C # beq .L_8038E618
L_8038E5D0:
    lwz 5, 0x4(31)
    mr 3, 28
    lwz 6, 0x198(31)
    addi 4, 1, 0x34
    li 7, 0x0
    li 8, 0x1
    bl fn_8022FF8C
    .4byte 0x4800002C # b .L_8038E618
L_8038E5F0:
    lwz 5, 0x4(31)
    mr 3, 28
    .4byte 0xC0220178 # lfs f1, lbl_80543118@sda21(r0)
    addi 4, 1, 0x24
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8038E618
    li 0, -0x1
    stw 0, 0x238(31)
L_8038E618:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF10 # blt .L_8038E530
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x234(31)
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x41800CE4 # blt .L_8038F31C
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC0020174 # lfs f0, lbl_80543114@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x40820CD0 # bne .L_8038F31C
    lwz 0, 0x90(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8038E664
    .4byte 0x41800014 # blt .L_8038E670
    .4byte 0x48000010 # b .L_8038E670
L_8038E664:
    li 0, 0x25e
    stw 0, 0x260(31)
    .4byte 0x4800000C # b .L_8038E678
L_8038E670:
    li 0, 0x25f
    stw 0, 0x260(31)
L_8038E678:
    lwz 5, 0x198(31)
    addi 7, 1, 0x18
    lwz 6, 0x4(31)
    li 8, 0x2080
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x20(1)
    lwz 3, 0x234(31)
    lwz 4, 0x260(31)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820C74 # beq .L_8038F31C
    lwz 3, 0x234(31)
    li 0, 0x1
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x48000C60 # b .L_8038F31C
    lwz 4, 0x4(31)
    addi 3, 1, 0x34
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x1
    bl fn_8022FEB8
    lwz 3, 0x234(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418201F0 # beq .L_8038E8D4
    lwz 0, 0x90(31)
    cmpwi 0, 0x1
    .4byte 0x418200B0 # beq .L_8038E7A0
    .4byte 0x40800010 # bge .L_8038E704
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8038E710
    .4byte 0x480001D4 # b .L_8038E8D4
L_8038E704:
    cmpwi 0, 0x3
    .4byte 0x408001CC # bge .L_8038E8D4
    .4byte 0x480000A0 # b .L_8038E7AC
L_8038E710:
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418201B4 # beq .L_8038E8D4
    lwz 3, 0x234(31)
    bl fn_8022F340
    bl fn_80237810
    mr 30, 3
    lwz 3, 0x234(31)
    bl fn_8022F340
    mr 4, 30
    li 5, 0x0
    bl fn_80236554
    lwz 29, 0x4(31)
    cmpwi 29, 0x8
    .4byte 0x41800030 # blt .L_8038E780
    bl SpatialRegistry_GetBase
    lwz 0, 0x234(31)
    lis 4, 0x5045
    mr 5, 29
    addi 6, 31, 0xc
    clrlwi 0, 0, 30
    addi 4, 4, 0x4646
    ori 7, 0, 0x4
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8038E780:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x90
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48000138 # b .L_8038E8D4
L_8038E7A0:
    mr 3, 31
    bl fn_8038DE74
    .4byte 0x4800012C # b .L_8038E8D4
L_8038E7AC:
    lwz 3, 0x234(31)
    bl fn_8022F340
    bl fn_80236E3C
    clrlwi. 0, 3, 24
    .4byte 0x4082004C # bne .L_8038E808
    lwz 3, 0x234(31)
    bl fn_8022F340
    slwi 0, 3, 2
    add 3, 31, 0
    lwz 0, 0x274(3)
    cmpwi 0, 0x0
    .4byte 0x41820050 # beq .L_8038E828
    lwz 3, 0x234(31)
    bl fn_8022F340
    slwi 0, 3, 2
    add 3, 31, 0
    lwz 30, 0x274(3)
    bl GetRoomConfigRecord
    mr 4, 30
    bl fn_802D800C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_8038E828
L_8038E808:
    li 0, 0x267
    stw 0, 0x260(31)
    lwz 3, 0x234(31)
    lwz 4, 0x260(31)
    bl fn_8038470C
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x480000B0 # b .L_8038E8D4
L_8038E828:
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182009C # beq .L_8038E8D4
    bl SpatialRegistry_GetBase
    lwz 5, 0x29c(31)
    lis 4, 0x4246
    lwz 0, 0x234(31)
    addi 4, 4, 0x5259
    clrlslwi 6, 5, 28, 4
    lwz 5, 0x4(31)
    ori 7, 6, 0x3
    li 8, -0x1
    addi 6, 31, 0xc
    li 9, -0x1
    rlwimi 7, 0, 8, 22, 23
    bl fn_801F9484
    stw 3, 0x270(31)
    lwz 0, 0x270(31)
    cmpwi 0, 0x0
    .4byte 0x41800058 # blt .L_8038E8D4
    li 3, 0xb
    li 0, 0x5
    stw 3, 0x29c(31)
    stw 0, 0x230(31)
    lwz 3, 0x234(31)
    bl fn_8022F340
    slwi 0, 3, 2
    add 3, 31, 0
    lwz 0, 0x274(3)
    cmpwi 0, 0x0
    .4byte 0x4182002C # beq .L_8038E8D4
    lwz 3, 0x234(31)
    bl fn_8022F340
    slwi 0, 3, 2
    add 3, 31, 0
    lwz 30, 0x274(3)
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_8038E8D4:
    lwz 3, 0x234(31)
    bl fn_8023E724
    mr 4, 3
    lwz 3, 0x234(31)
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    .4byte 0x48000A20 # b .L_8038F31C
    lwz 4, 0x4(31)
    addi 3, 1, 0x34
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x1
    bl fn_8022FEB8
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418209F4 # beq .L_8038F31C
    lwz 3, 0x234(31)
    bl fn_8022F340
    bl fn_80237810
    mr 30, 3
    lwz 3, 0x234(31)
    bl fn_8022F340
    mr 4, 30
    li 5, 0x0
    bl fn_80236554
    lwz 29, 0x4(31)
    cmpwi 29, 0x8
    .4byte 0x41800030 # blt .L_8038E988
    bl SpatialRegistry_GetBase
    lwz 0, 0x234(31)
    lis 4, 0x5045
    mr 5, 29
    addi 6, 31, 0xc
    clrlwi 0, 0, 30
    addi 4, 4, 0x4646
    ori 7, 0, 0x4
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8038E988:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x90
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x3
    stw 0, 0x230(31)
    .4byte 0x48000978 # b .L_8038F31C
    lwz 3, 0x234(31)
    bl fn_8022F340
    lis 4, lbl_80529DEC@ha
    slwi 0, 3, 2
    addi 4, 4, lbl_80529DEC@l
    lwz 3, 0x234(31)
    addi 29, 4, 0xd8
    lwzx 30, 29, 0
    bl fn_8022F340
    bl fn_80237810
    cmpw 3, 30
    .4byte 0x40820040 # bne .L_8038EA14
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x40820034 # bne .L_8038EA14
    lwz 3, 0x234(31)
    li 4, 0x0
    bl fn_8023061C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_8038EA14
    li 0, 0x1e
    li 3, 0x0
    stw 0, 0x25c(31)
    li 0, 0x6
    stw 3, 0x29c(31)
    stw 0, 0x230(31)
L_8038EA14:
    lwz 3, 0x234(31)
    bl fn_8022F340
    mr 30, 3
    lwz 3, 0x234(31)
    bl fn_8022F340
    bl fn_80237810
    slwi 0, 30, 2
    lwzx 0, 29, 0
    cmpw 3, 0
    .4byte 0x408208E4 # bne .L_8038F31C
    lwz 4, 0x25c(31)
    cmpwi 4, 0x0
    .4byte 0x408108D8 # ble .L_8038F31C
    lis 3, 0x6666
    addi 0, 3, 0x6667
    mulhw 0, 0, 4
    srawi 0, 0, 2
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0xa
    subf. 0, 0, 4
    .4byte 0x40820014 # bne .L_8038EA7C
    lwz 3, 0x234(31)
    bl fn_8022F340
    li 4, 0x9
    bl fn_80230EB8
L_8038EA7C:
    lwz 3, 0x25c(31)
    subi 0, 3, 0x1
    stw 0, 0x25c(31)
    .4byte 0x48000894 # b .L_8038F31C
    lwz 3, 0x240(31)
    subi 0, 3, 0x1
    cmpwi 3, 0x0
    stw 0, 0x240(31)
    .4byte 0x40820880 # bne .L_8038F31C
    li 0, 0x1
    stw 0, 0x248(31)
    .4byte 0x48000874 # b .L_8038F31C
    bl SpatialRegistry_GetBase
    lwz 4, 0x270(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820860 # bne .L_8038F31C
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x40820018 # bne .L_8038EAE0
    li 3, 0xb4
    li 0, 0x4
    stw 3, 0x240(31)
    stw 0, 0x230(31)
    .4byte 0x48000840 # b .L_8038F31C
L_8038EAE0:
    li 3, 0x0
    li 0, 0x6
    stw 3, 0x29c(31)
    stw 0, 0x230(31)
    .4byte 0x4800082C # b .L_8038F31C
    li 28, 0x0
L_8038EAF8:
    lwz 0, 0x234(31)
    cmpw 28, 0
    .4byte 0x40820030 # bne .L_8038EB30
    lwz 5, 0x4(31)
    mr 3, 28
    .4byte 0xC0220178 # lfs f1, lbl_80543118@sda21(r0)
    addi 4, 1, 0x24
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x40820070 # bne .L_8038EB90
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x480007F0 # b .L_8038F31C
L_8038EB30:
    lwz 5, 0x4(31)
    mr 3, 28
    .4byte 0xC0220178 # lfs f1, lbl_80543118@sda21(r0)
    addi 4, 1, 0x24
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_8038EB90
    mr 3, 28
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820034 # bne .L_8038EB90
    lwz 4, 0x234(31)
    mr 3, 28
    bl fn_8022E438
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8038EB84
    lwz 3, 0x234(31)
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x40820010 # bne .L_8038EB90
L_8038EB84:
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000790 # b .L_8038F31C
L_8038EB90:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF60 # blt .L_8038EAF8
    .4byte 0x48000780 # b .L_8038F31C
    lwz 0, 0x264(31)
    cmpwi 0, 0x3c
    .4byte 0x41800070 # blt .L_8038EC18
    lwz 0, 0x90(31)
    cmplwi 0, 0x3
    .4byte 0x40820064 # bne .L_8038EC18
    lwz 3, 0x234(31)
    bl fn_8023E724
    lfs 0, 0x0(3)
    li 4, 0x0
    .4byte 0xC062017C # lfs f3, lbl_8054311C@sda21(r0)
    li 0, 0x8
    stfs 0, 0x284(31)
    .4byte 0xC0420180 # lfs f2, lbl_80543120@sda21(r0)
    lfs 0, 0x4(3)
    .4byte 0xC0220174 # lfs f1, lbl_80543114@sda21(r0)
    stfs 0, 0x288(31)
    .4byte 0xC0020184 # lfs f0, lbl_80543124@sda21(r0)
    lfs 4, 0x8(3)
    stfs 4, 0x28c(31)
    lfs 4, 0x288(31)
    fadds 3, 4, 3
    stfs 3, 0x288(31)
    stfs 2, 0x28c(31)
    stfs 1, 0x290(31)
    stfs 0, 0x294(31)
    stfs 1, 0x298(31)
    stw 4, 0x264(31)
    stw 0, 0x230(31)
    .4byte 0x48000708 # b .L_8038F31C
L_8038EC18:
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    .4byte 0x480006F8 # b .L_8038F31C
    lwz 0, 0x264(31)
    li 28, 0x331
    cmpwi 0, 0x8
    .4byte 0x41800038 # blt .L_8038EC6C
    cmpwi 0, 0x9
    .4byte 0x4080000C # bge .L_8038EC48
    li 28, 0x332
    .4byte 0x48000028 # b .L_8038EC6C
L_8038EC48:
    cmpwi 0, 0xa
    .4byte 0x4080000C # bge .L_8038EC58
    li 28, 0x333
    .4byte 0x48000018 # b .L_8038EC6C
L_8038EC58:
    cmpwi 0, 0x12
    .4byte 0x4080000C # bge .L_8038EC68
    li 28, 0x334
    .4byte 0x48000008 # b .L_8038EC6C
L_8038EC68:
    li 28, 0x3f
L_8038EC6C:
    lwz 3, 0x234(31)
    bl fn_8023E724
    mr 4, 3
    lwz 3, 0x234(31)
    mr 5, 28
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    lwz 0, 0x264(31)
    cmpwi 0, 0xa
    .4byte 0x4180010C # blt .L_8038EDA8
    addi 4, 31, 0x284
    psq_l 1, 0x290(31), 0, 0
    psq_l 2, 0x0(4), 0, 0
    .4byte 0xC0020174 # lfs f0, lbl_80543114@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0x0(4), 0, 0
    psq_l 2, 0x8(4), 1, 0
    psq_l 1, 0x298(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x8(4), 1, 0
    lfs 1, 0x28c(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200C4 # bne .L_8038ED98
    stfs 0, 0x28c(31)
    li 0, 0x0
    stw 0, 0x264(31)
    lwz 29, 0x4(31)
    cmpwi 29, 0x8
    .4byte 0x4080002C # bge .L_8038ED18
    .4byte 0xC0220160 # lfs f1, lbl_80543100@sda21(r0)
    mr 3, 29
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000028 # b .L_8038ED3C
L_8038ED18:
    bl SpatialRegistry_GetBase
    lis 4, 0x5045
    mr 5, 29
    addi 4, 4, 0x4646
    addi 6, 31, 0x284
    li 7, 0x2c
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8038ED3C:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x22
    li 5, 0x0
    bl fn_801F0E34
    lfs 0, 0xc(31)
    stfs 0, 0x284(31)
    lfs 0, 0x10(31)
    stfs 0, 0x288(31)
    lfs 0, 0x14(31)
    stfs 0, 0x28c(31)
    lwz 3, 0x234(31)
    bl fn_8023E724
    lfs 0, 0x0(3)
    li 0, 0x9
    .4byte 0xC0220174 # lfs f1, lbl_80543114@sda21(r0)
    stfs 0, 0x284(31)
    .4byte 0xC0020188 # lfs f0, lbl_80543128@sda21(r0)
    stfs 1, 0x290(31)
    stfs 0, 0x294(31)
    stfs 0, 0x298(31)
    stw 0, 0x230(31)
    .4byte 0x48000588 # b .L_8038F31C
L_8038ED98:
    lfs 1, 0x298(31)
    .4byte 0xC002018C # lfs f0, lbl_8054312C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x298(31)
L_8038EDA8:
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    .4byte 0x48000568 # b .L_8038F31C
    lwz 3, 0x264(31)
    cmpwi 3, 0x78
    .4byte 0x418000A0 # blt .L_8038EE60
    li 0, 0x0
    stw 0, 0x264(31)
    lwz 0, 0x29c(31)
    cmpwi 0, 0xb
    .4byte 0x4182006C # beq .L_8038EE40
    lwz 29, 0x4(31)
    cmpwi 29, 0x8
    .4byte 0x40800030 # bge .L_8038EE10
    .4byte 0xC0220160 # lfs f1, lbl_80543100@sda21(r0)
    mr 3, 29
    addi 4, 31, 0x284
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000028 # b .L_8038EE34
L_8038EE10:
    bl SpatialRegistry_GetBase
    lis 4, 0x5045
    mr 5, 29
    addi 4, 4, 0x4646
    addi 6, 31, 0x284
    li 7, 0x2c
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_8038EE34:
    li 0, 0xa
    stw 0, 0x230(31)
    .4byte 0x480004E0 # b .L_8038F31C
L_8038EE40:
    li 4, 0x3
    li 3, 0x7
    stw 4, 0x264(31)
    li 0, 0xa
    stw 3, 0x268(31)
    stw 4, 0x26c(31)
    stw 0, 0x230(31)
    .4byte 0x480004C0 # b .L_8038F31C
L_8038EE60:
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    .4byte 0x480004B4 # b .L_8038F31C
    psq_l 1, 0x284(31), 0, 0
    psq_l 0, 0x290(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x284(31), 0, 0
    psq_l 1, 0x28c(31), 1, 0
    psq_l 0, 0x298(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x28c(31), 1, 0
    lwz 3, 0x234(31)
    bl fn_8023E724
    psq_l 2, 0x0(3), 0, 0
    lfs 1, 0x8(3)
    .4byte 0xC0020190 # lfs f0, lbl_80543130@sda21(r0)
    psq_st 2, 0x54(1), 0, 0
    stfs 1, 0x5c(1)
    lfs 2, 0x58(1)
    lfs 1, 0x288(31)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800018 # bge .L_8038EED0
    li 3, 0x0
    li 0, 0xb
    stw 3, 0x264(31)
    stw 0, 0x230(31)
    .4byte 0x48000450 # b .L_8038F31C
L_8038EED0:
    lwz 0, 0x29c(31)
    cmpwi 0, 0xb
    .4byte 0x41820018 # beq .L_8038EEF0
    lfs 1, 0x298(31)
    .4byte 0xC0020194 # lfs f0, lbl_80543134@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x298(31)
    .4byte 0x48000430 # b .L_8038F31C
L_8038EEF0:
    lwz 3, 0x264(31)
    cmpwi 3, 0x0
    .4byte 0x40810424 # ble .L_8038F31C
    lwz 0, 0x26c(31)
    cmpwi 0, 0x0
    .4byte 0x4181004C # bgt .L_8038EF50
    stw 3, 0x26c(31)
    lwz 3, 0x268(31)
    subi 0, 3, 0x1
    stw 0, 0x268(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x0
    .4byte 0x41810030 # bgt .L_8038EF50
    li 0, 0x7
    stw 0, 0x268(31)
    lwz 3, 0x264(31)
    subi 0, 3, 0x1
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x0
    .4byte 0x41810010 # bgt .L_8038EF50
    li 0, 0x0
    stw 0, 0x26c(31)
    .4byte 0x480003D0 # b .L_8038F31C
L_8038EF50:
    lwz 3, 0x26c(31)
    subi 0, 3, 0x1
    stw 0, 0x26c(31)
    .4byte 0x480003C0 # b .L_8038F31C
    lwz 3, 0x234(31)
    bl fn_8023E724
    lfs 2, 0x0(3)
    stfs 2, 0x54(1)
    lfs 0, 0x4(3)
    stfs 0, 0x58(1)
    lfs 0, 0x8(3)
    stfs 0, 0x5c(1)
    lwz 0, 0x264(31)
    cmpwi 0, 0xa
    .4byte 0x4080000C # bge .L_8038EF94
    li 28, 0x0
    .4byte 0x4800018C # b .L_8038F11C
L_8038EF94:
    cmpwi 0, 0xe
    .4byte 0x40800050 # bge .L_8038EFE8
    .4byte 0xC022017C # lfs f1, lbl_8054311C@sda21(r0)
    li 28, 0x1
    .4byte 0xC0020180 # lfs f0, lbl_80543120@sda21(r0)
    fadds 1, 1, 2
    stfs 1, 0x284(31)
    lfs 1, 0x58(1)
    fsubs 0, 1, 0
    stfs 0, 0x288(31)
    lfs 0, 0x5c(1)
    stfs 0, 0x28c(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0xa
    .4byte 0x40820150 # bne .L_8038F11C
    lwz 3, 0x234(31)
    bl fn_8022F340
    lis 4, 0x100
    addi 4, 4, 0x2
    bl fn_80230F44
    .4byte 0x48000138 # b .L_8038F11C
L_8038EFE8:
    .4byte 0xC0220198 # lfs f1, lbl_80543138@sda21(r0)
    li 28, 0x2
    .4byte 0xC002019C # lfs f0, lbl_8054313C@sda21(r0)
    fadds 1, 1, 2
    stfs 1, 0x284(31)
    lfs 1, 0x58(1)
    fsubs 0, 1, 0
    stfs 0, 0x288(31)
    lfs 0, 0x5c(1)
    stfs 0, 0x28c(31)
    lwz 0, 0x2a0(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8038F048
    lwz 3, 0x4(31)
    addi 4, 31, 0x284
    .4byte 0xC02201A0 # lfs f1, lbl_80543140@sda21(r0)
    li 5, 0x562
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2a0(31)
L_8038F048:
    lwz 0, 0x2a0(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8038F080
    lwz 3, 0x4(31)
    addi 4, 31, 0x284
    .4byte 0xC02201A4 # lfs f1, lbl_80543144@sda21(r0)
    li 5, 0x563
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2a4(31)
L_8038F080:
    lwz 0, 0x264(31)
    cmpwi 0, 0x64
    .4byte 0x41800094 # blt .L_8038F11C
    lwz 5, 0x4(31)
    addi 6, 1, 0xc
    psq_l 1, 0x24(31), 0, 0
    li 7, 0x2022
    lfs 0, 0x2c(31)
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x14(1)
    lwz 3, 0x234(31)
    lwz 4, 0x260(31)
    bl fn_8038BD08
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820058 # bne .L_8038F114
    li 0, 0xc
    stw 0, 0x230(31)
    lwz 0, 0x29c(31)
    cmpwi 0, 0xa
    .4byte 0x40820018 # bne .L_8038F0E8
    lwz 3, 0x234(31)
    bl fn_8022F340
    li 4, 0x2
    bl fn_80236ED8
    .4byte 0x48000238 # b .L_8038F31C
L_8038F0E8:
    cmpwi 0, 0xb
    .4byte 0x40820014 # bne .L_8038F100
    lwz 3, 0x234(31)
    bl fn_8022F340
    bl fn_80236DB0
    .4byte 0x48000220 # b .L_8038F31C
L_8038F100:
    lwz 3, 0x234(31)
    bl fn_8022F340
    li 4, 0x2
    bl fn_802370FC
    .4byte 0x4800020C # b .L_8038F31C
L_8038F114:
    li 0, 0x64
    stw 0, 0x264(31)
L_8038F11C:
    lwz 3, 0x234(31)
    addi 4, 1, 0x54
    addi 5, 28, 0xe9
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    lwz 3, 0x264(31)
    addi 0, 3, 0x1
    stw 0, 0x264(31)
    .4byte 0x480001D4 # b .L_8038F31C
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408201BC # bne .L_8038F31C
    lwz 5, 0x2a0(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8038F18C
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2a0(31)
L_8038F18C:
    lwz 5, 0x2a4(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_8038F1B4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2a4(31)
L_8038F1B4:
    lwz 3, 0x234(31)
    li 4, 0x0
    bl fn_8023061C
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820154 # bne .L_8038F31C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8038F1E8
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000138 # b .L_8038F31C
L_8038F1E8:
    li 0, 0xd
    lis 4, 0x4
    stw 0, 0x230(31)
    mr 3, 31
    addi 4, 4, 0x90
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x234(31)
    bl fn_8022F340
    bl fn_80237810
    mr 30, 3
    lwz 3, 0x234(31)
    bl fn_8022F340
    mr 4, 30
    li 5, 0x0
    bl fn_80236554
    lwz 29, 0x4(31)
    cmpwi 29, 0x8
    .4byte 0x418000EC # blt .L_8038F31C
    bl SpatialRegistry_GetBase
    lwz 0, 0x234(31)
    lis 4, 0x5045
    mr 5, 29
    addi 6, 31, 0xc
    clrlwi 0, 0, 30
    addi 4, 4, 0x4646
    ori 7, 0, 0x4
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480000BC # b .L_8038F31C
    lwz 3, 0x234(31)
    bl fn_8022F340
    lis 4, lbl_80529DEC@ha
    slwi 0, 3, 2
    addi 4, 4, lbl_80529DEC@l
    lwz 3, 0x234(31)
    addi 29, 4, 0xd8
    lwzx 30, 29, 0
    bl fn_8022F340
    bl fn_80237774
    cmpw 3, 30
    .4byte 0x41810018 # bgt .L_8038F2A8
    lwz 0, 0x25c(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8038F2A8
    mr 3, 31
    bl fn_801F3668
L_8038F2A8:
    lwz 3, 0x234(31)
    bl fn_8022F340
    mr 30, 3
    lwz 3, 0x234(31)
    bl fn_8022F340
    bl fn_80237774
    slwi 0, 30, 2
    lwzx 0, 29, 0
    cmpw 3, 0
    .4byte 0x41810050 # bgt .L_8038F31C
    lwz 4, 0x25c(31)
    cmpwi 4, 0x0
    .4byte 0x40810044 # ble .L_8038F31C
    lis 3, 0x6666
    addi 0, 3, 0x6667
    mulhw 0, 0, 4
    srawi 0, 0, 2
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0xa
    subf. 0, 0, 4
    .4byte 0x40820014 # bne .L_8038F310
    lwz 3, 0x234(31)
    bl fn_8022F340
    li 4, 0x9
    bl fn_80230EB8
L_8038F310:
    lwz 3, 0x25c(31)
    subi 0, 3, 0x1
    stw 0, 0x25c(31)
L_8038F31C:
    lwz 0, 0x90(31)
    cmplwi 0, 0x3
    .4byte 0x41820050 # beq .L_8038F374
    lwz 4, 0x23c(31)
    lis 3, lbl_804755E0@ha
    addi 3, 3, lbl_804755E0@l
    addi 0, 4, 0x1
    stw 0, 0x23c(31)
    lwz 4, 0x244(31)
    lwz 5, 0x23c(31)
    slwi 0, 4, 2
    lwzx 0, 3, 0
    cmpw 5, 0
    .4byte 0x40810024 # ble .L_8038F374
    addi 0, 4, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x8
    .4byte 0x41800010 # blt .L_8038F374
    li 0, 0x0
    stw 0, 0x244(31)
    stw 0, 0x23c(31)
L_8038F374:
    lwz 0, 0x90(31)
    cmplwi 0, 0x3
    .4byte 0x418200D4 # beq .L_8038F450
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x408100C4 # ble .L_8038F450
    li 0, 0x0
    addi 28, 1, 0x8
    stb 0, 0x8(1)
    li 27, 0x0
    li 30, 0x1
    stb 0, 0x9(1)
    stb 0, 0xa(1)
    stb 0, 0xb(1)
L_8038F3B0:
    lwz 29, 0x4(31)
    mr 3, 27
    bl fn_8023DE58
    cmpw 3, 29
    .4byte 0x40820030 # bne .L_8038F3F0
    mr 3, 27
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_8038F3F0
    mr 3, 27
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8038F3F0
    mr 3, 27
    bl fn_8022F340
    stbx 30, 28, 3
L_8038F3F0:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FFB8 # blt .L_8038F3B0
    mr 29, 31
    li 27, 0x0
    li 31, 0x0
    .4byte 0x48000038 # b .L_8038F440
L_8038F40C:
    lbz 0, 0x0(28)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_8038F434
    lwz 0, 0x24c(29)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_8038F434
    mr 3, 27
    li 4, 0x12
    bl fn_803037D4
    stw 31, 0x24c(29)
L_8038F434:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    addi 27, 27, 0x1
L_8038F440:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpw 27, 3
    .4byte 0x4180FFC0 # blt .L_8038F40C
L_8038F450:
    lmw 27, 0x6c(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

