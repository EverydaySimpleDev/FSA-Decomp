# Fresh-gap-hunt batch 8 landing (non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_800081F8
etb_800081F8:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800081F8, 8

.global etb_80008200
etb_80008200:
    .4byte 0x310A0000
    .4byte 0x00000000
.size etb_80008200, 8

.global etb_80008208
etb_80008208:
    .4byte 0x2B0A0000
    .4byte 0x00000000
.size etb_80008208, 8

.section extabindex, "a"
.balign 4
.global eti_80015418
eti_80015418:
    .4byte fn_801CA0F8
    .4byte 0x0000017C
    .4byte etb_800081F8
.size eti_80015418, 12

.global eti_80015424
eti_80015424:
    .4byte fn_801CA274
    .4byte 0x000002F0
    .4byte etb_80008200
.size eti_80015424, 12

.global eti_80015430
eti_80015430:
    .4byte fn_801CA564
    .4byte 0x00000970
    .4byte etb_80008208
.size eti_80015430, 12

.text
.balign 4
.global fn_801CA0F8
.global fn_801CA274
.global fn_801CA564

fn_801CA0F8:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC042BF80 # lfs f2, lbl_8053EF20@sda21(r0)
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x41820028 # beq .L_801CA154
    lfs 1, 0x6c(31)
    lfs 0, 0x64(31)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x41820010 # beq .L_801CA154
    bl fn_801C53C4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801CA15C
L_801CA154:
    li 3, 0x0
    .4byte 0x48000100 # b .L_801CA258
L_801CA15C:
    li 29, 0x0
    bl SpatialRegistry_GetBase
    lbz 5, 0x195(31)
    mr 4, 31
    .4byte 0xC022BF8C # lfs f1, lbl_8053EF2C@sda21(r0)
    bl fn_801F82CC
    mr. 30, 3
    .4byte 0x418000DC # blt .L_801CA254
    lwz 0, 0x198(31)
    cmpw 30, 0
    .4byte 0x418200D0 # beq .L_801CA254
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    mr. 30, 3
    .4byte 0x418200BC # beq .L_801CA254
    lis 3, 0x5357
    lwz 4, 0x1a0(30)
    addi 0, 3, 0x424d
    cmpw 4, 0
    .4byte 0x4182001C # beq .L_801CA1C8
    .4byte 0x40800020 # bge .L_801CA1D0
    lis 3, 0x464c
    addi 0, 3, 0x4d45
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_801CA1C8
    .4byte 0x4800000C # b .L_801CA1D0
L_801CA1C8:
    li 3, 0x0
    .4byte 0x4800008C # b .L_801CA258
L_801CA1D0:
    psq_l 1, 0xc(31), 0, 0
    addi 5, 1, 0x8
    lfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x0
    li 6, 0x0
    stfs 0, 0x10(1)
    psq_st 1, 0x0(5), 0, 0
    psq_l 2, 0x8(5), 1, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x0(5), 0, 0
    psq_l 0, 0x44(30), 1, 0
    ps_sub 0, 2, 0
    psq_st 0, 0x8(5), 1, 0
    lwz 7, 0x168(30)
    lwz 8, 0x110(30)
    bl fn_801F37AC
    clrlwi. 0, 3, 24
    mr 29, 3
    .4byte 0x41820034 # beq .L_801CA254
    li 0, 0x1
    stb 0, 0x164(30)
    lwz 0, 0x248(31)
    cmpwi 0, 0x10
    .4byte 0x40820014 # bne .L_801CA248
    lwz 0, 0x230(31)
    oris 0, 0, 0x80
    stw 0, 0x230(31)
    .4byte 0x48000010 # b .L_801CA254
L_801CA248:
    mr 3, 31
    li 4, 0x10
    bl fn_801C3B7C
L_801CA254:
    mr 3, 29
L_801CA258:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801CA274:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stmw 26, 0x38(1)
    mr 31, 3
    li 3, 0x0
    lwz 0, 0x564(31)
    cmpwi 0, 0x3
    .4byte 0x4182027C # beq .L_801CA530
    lwz 4, 0x560(31)
    li 0, 0xf
    cmpwi 4, 0x4
    .4byte 0x41820010 # beq .L_801CA2D4
    li 0, 0x1
    slw 0, 0, 4
    clrlwi 0, 0, 24
L_801CA2D4:
    lfs 1, 0x534(31)
    mr 28, 0
    lfs 0, 0x52c(31)
    .4byte 0xC042BF80 # lfs f2, lbl_8053EF20@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810244 # ble .L_801CA530
    lfs 1, 0x538(31)
    lfs 0, 0x530(31)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810230 # ble .L_801CA530
    addi 3, 31, 0x528
    clrlwi 4, 0, 24
    bl fn_8021693C
    clrlwi. 30, 3, 24
    .4byte 0x418200FC # beq .L_801CA410
    li 27, 0x0
    li 26, 0x0
L_801CA320:
    li 0, 0x1
    slw 29, 0, 26
    and. 0, 30, 29
    .4byte 0x418200D8 # beq .L_801CA404
    mr 3, 26
    addi 4, 31, 0xc
    bl fn_802379E4
    clrlwi. 0, 27, 24
    .4byte 0x408200BC # bne .L_801CA3FC
    mr 3, 26
    li 27, 0x1
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 26
    lfs 0, 0x10(31)
    fsubs 31, 0, 1
    bl fn_8023E724
    lfs 3, 0x0(3)
    lis 3, lbl_80539D44@ha
    lfs 0, 0xc(31)
    fmuls 2, 31, 31
    .4byte 0xC022BF8C # lfs f1, lbl_8053EF2C@sda21(r0)
    fsubs 4, 0, 3
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    fmadds 5, 4, 4, 2
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801CA3D0
    .4byte 0xC002BF80 # lfs f0, lbl_8053EF20@sda21(r0)
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801CA3A8
    .4byte 0x48000024 # b .L_801CA3C8
L_801CA3A8:
    frsqrte 3, 5
    .4byte 0xC042BF90 # lfs f2, lbl_8053EF30@sda21(r0)
    .4byte 0xC002BF94 # lfs f0, lbl_8053EF34@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 5, 1, 0
    fmuls 5, 2, 0
L_801CA3C8:
    fmuls 4, 4, 5
    fmuls 31, 31, 5
L_801CA3D0:
    .4byte 0xC002BF94 # lfs f0, lbl_8053EF34@sda21(r0)
    mr 3, 31
    li 4, 0x20
    fmuls 4, 4, 0
    fmuls 31, 31, 0
    stfs 4, 0x3c(31)
    stfs 31, 0x40(31)
    bl fn_801C3B7C
    lwz 0, 0x230(31)
    oris 0, 0, 0x8
    stw 0, 0x230(31)
L_801CA3FC:
    andc 0, 28, 29
    clrlwi 28, 0, 24
L_801CA404:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF14 # blt .L_801CA320
L_801CA410:
    lfs 31, 0x60(31)
    clrlwi. 28, 28, 24
    lfs 30, 0x64(31)
    lfs 29, 0x68(31)
    lfs 28, 0x6c(31)
    lfs 0, 0x52c(31)
    stfs 0, 0x60(31)
    lfs 0, 0x530(31)
    stfs 0, 0x64(31)
    lfs 0, 0x534(31)
    stfs 0, 0x68(31)
    lfs 0, 0x538(31)
    stfs 0, 0x6c(31)
    .4byte 0x4082000C # bne .L_801CA450
    li 29, 0x0
    .4byte 0x480000D0 # b .L_801CA51C
L_801CA450:
    mr 3, 31
    li 4, -0x1
    bl fn_801F2740
    clrlwi. 0, 3, 24
    mr 29, 3
    .4byte 0x418200B8 # beq .L_801CA51C
    mr 3, 31
    addi 4, 1, 0x8
    bl fn_801F3128
    li 30, 0x0
L_801CA478:
    li 0, 0x1
    clrlwi 3, 29, 24
    slw 4, 0, 30
    and. 0, 3, 4
    .4byte 0x41820088 # beq .L_801CA510
    and. 0, 28, 4
    .4byte 0x41820078 # beq .L_801CA508
    mr 3, 31
    mr 4, 30
    bl fn_801F329C
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_801CA4E0
    lfs 2, 0x8(1)
    addi 3, 1, 0x24
    lfs 1, 0xc(1)
    addi 4, 1, 0x18
    .4byte 0xC002BF80 # lfs f0, lbl_8053EF20@sda21(r0)
    stfs 2, 0x24(1)
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
    bl fn_801CD0D0
    lfs 1, 0x18(1)
    lfs 0, 0x1c(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    .4byte 0x48000014 # b .L_801CA4F0
L_801CA4E0:
    lfs 1, 0x8(1)
    lfs 0, 0xc(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
L_801CA4F0:
    lwz 4, 0x114(31)
    mr 3, 30
    addi 5, 1, 0x10
    li 6, 0x2
    bl fn_80238548
    .4byte 0x4800000C # b .L_801CA510
L_801CA508:
    andc 0, 29, 4
    clrlwi 29, 0, 24
L_801CA510:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF60 # blt .L_801CA478
L_801CA51C:
    stfs 31, 0x60(31)
    mr 3, 29
    stfs 30, 0x64(31)
    stfs 29, 0x68(31)
    stfs 28, 0x6c(31)
L_801CA530:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    lmw 26, 0x38(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_801CA564:
    stwu 1, -0x120(1)
    mflr 0
    stw 0, 0x124(1)
    stfd 31, 0x110(1)
    psq_st 31, 0x118(1), 0, 0
    stfd 30, 0x100(1)
    psq_st 30, 0x108(1), 0, 0
    stfd 29, 0xf0(1)
    psq_st 29, 0xf8(1), 0, 0
    stfd 28, 0xe0(1)
    psq_st 28, 0xe8(1), 0, 0
    stfd 27, 0xd0(1)
    psq_st 27, 0xd8(1), 0, 0
    stfd 26, 0xc0(1)
    psq_st 26, 0xc8(1), 0, 0
    stfd 25, 0xb0(1)
    psq_st 25, 0xb8(1), 0, 0
    stfd 24, 0xa0(1)
    psq_st 24, 0xa8(1), 0, 0
    stfd 23, 0x90(1)
    psq_st 23, 0x98(1), 0, 0
    stfd 22, 0x80(1)
    psq_st 22, 0x88(1), 0, 0
    stfd 21, 0x70(1)
    psq_st 21, 0x78(1), 0, 0
    stfd 20, 0x60(1)
    psq_st 20, 0x68(1), 0, 0
    stmw 27, 0x4c(1)
    mr 29, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x29
    .4byte 0x4080002C # bge .L_801CA60C
    cmpwi 0, 0x17
    .4byte 0x40800018 # bge .L_801CA600
    cmpwi 0, 0xe
    .4byte 0x40800038 # bge .L_801CA628
    cmpwi 0, 0x0
    .4byte 0x40800028 # bge .L_801CA620
    .4byte 0x4800002C # b .L_801CA628
L_801CA600:
    cmpwi 0, 0x1b
    .4byte 0x40800024 # bge .L_801CA628
    .4byte 0x48000018 # b .L_801CA620
L_801CA60C:
    cmpwi 0, 0x2f
    .4byte 0x41820010 # beq .L_801CA620
    .4byte 0x40800014 # bge .L_801CA628
    cmpwi 0, 0x2e
    .4byte 0x4080000C # bge .L_801CA628
L_801CA620:
    li 3, 0x0
    .4byte 0x4800083C # b .L_801CAE60
L_801CA628:
    mr 3, 29
    bl fn_801C53C4
    lfs 0, 0x534(29)
    mr 31, 3
    lfs 3, 0x52c(29)
    .4byte 0xC042BF80 # lfs f2, lbl_8053EF20@sda21(r0)
    fsubs 0, 0, 3
    fcmpo cr0, 0, 2
    .4byte 0x408101E0 # ble .L_801CA828
    lfs 1, 0x538(29)
    lfs 0, 0x530(29)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408101CC # ble .L_801CA828
    lfs 23, 0x60(29)
    li 30, 0x0
    lfs 22, 0x64(29)
    li 28, 0x0
    lfs 21, 0x68(29)
    lfs 20, 0x6c(29)
    stfs 3, 0x60(29)
    lfs 0, 0x530(29)
    stfs 0, 0x64(29)
    lfs 0, 0x534(29)
    stfs 0, 0x68(29)
    lfs 0, 0x538(29)
    stfs 0, 0x6c(29)
L_801CA694:
    mr 3, 29
    mr 7, 28
    addi 4, 1, 0xc
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpw 28, 3
    .4byte 0x4082004C # bne .L_801CA6FC
    lwz 3, 0x560(29)
    li 0, 0x0
    cmpwi 3, 0x4
    .4byte 0x41820010 # beq .L_801CA6D0
    cmpw 3, 28
    .4byte 0x41820008 # beq .L_801CA6D0
    li 0, 0x1
L_801CA6D0:
    clrlwi. 0, 0, 24
    .4byte 0x40820028 # bne .L_801CA6FC
    lfs 29, 0xc(1)
    mr 3, 28
    lfs 28, 0x10(1)
    li 30, 0x1
    stw 28, 0x338(29)
    bl fn_8023B6CC
    mr 3, 28
    addi 4, 29, 0xc
    bl fn_80237948
L_801CA6FC:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF90 # blt .L_801CA694
    stfs 23, 0x60(29)
    clrlwi. 0, 30, 24
    stfs 22, 0x64(29)
    stfs 21, 0x68(29)
    stfs 20, 0x6c(29)
    .4byte 0x4182010C # beq .L_801CA828
    lwz 30, 0x338(29)
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 30
    lfs 0, 0x10(29)
    fsubs 30, 0, 1
    bl fn_8023E724
    lfs 3, 0x0(3)
    lis 3, lbl_80539D44@ha
    lfs 0, 0xc(29)
    fmuls 2, 30, 30
    .4byte 0xC022BF8C # lfs f1, lbl_8053EF2C@sda21(r0)
    fsubs 4, 0, 3
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    fmadds 5, 4, 4, 2
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801CA7AC
    .4byte 0xC002BF80 # lfs f0, lbl_8053EF20@sda21(r0)
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801CA784
    .4byte 0x48000024 # b .L_801CA7A4
L_801CA784:
    frsqrte 3, 5
    .4byte 0xC042BF90 # lfs f2, lbl_8053EF30@sda21(r0)
    .4byte 0xC002BF94 # lfs f0, lbl_8053EF34@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 5, 1, 0
    fmuls 5, 2, 0
L_801CA7A4:
    fmuls 4, 4, 5
    fmuls 30, 30, 5
L_801CA7AC:
    .4byte 0xC002BF94 # lfs f0, lbl_8053EF34@sda21(r0)
    mr 4, 30
    addi 3, 29, 0x1dc
    fmuls 4, 4, 0
    fmuls 30, 30, 0
    stfs 4, 0x3c(29)
    stfs 30, 0x40(29)
    bl fn_801EAC20
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_801CA808
    lis 4, 0x2
    mr 3, 30
    addi 4, 4, 0x2
    bl fn_80230FD0
    .4byte 0xC002BF80 # lfs f0, lbl_8053EF20@sda21(r0)
    addi 4, 1, 0x20
    stfs 29, 0x20(1)
    li 5, 0x0
    li 6, 0x0
    stfs 28, 0x24(1)
    stfs 0, 0x28(1)
    lwz 3, 0x4(29)
    bl fn_801CB4A4
L_801CA808:
    mr 3, 29
    li 4, 0x20
    bl fn_801C3B7C
    lwz 0, 0x230(29)
    li 3, 0x0
    oris 0, 0, 0x8
    stw 0, 0x230(29)
    .4byte 0x4800063C # b .L_801CAE60
L_801CA828:
    lwz 3, 0x248(29)
    subi 0, 3, 0xe
    cmplwi 0, 0x1a
    .4byte 0x41810098 # bgt .L_801CA8CC
    lis 3, jumptable_804A4798@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A4798@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x98(29)
    cmpwi 0, 0x2
    .4byte 0x4182004C # beq .L_801CA8A4
    .4byte 0x40800014 # bge .L_801CA870
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801CA87C
    .4byte 0x40800028 # bge .L_801CA890
    .4byte 0x48000070 # b .L_801CA8DC
L_801CA870:
    cmpwi 0, 0x4
    .4byte 0x40800068 # bge .L_801CA8DC
    .4byte 0x48000040 # b .L_801CA8B8
L_801CA87C:
    .4byte 0xC362BF98 # lfs f27, lbl_8053EF38@sda21(r0)
    .4byte 0xC342BF9C # lfs f26, lbl_8053EF3C@sda21(r0)
    .4byte 0xC322BFA0 # lfs f25, lbl_8053EF40@sda21(r0)
    .4byte 0xC302BFA4 # lfs f24, lbl_8053EF44@sda21(r0)
    .4byte 0x48000050 # b .L_801CA8DC
L_801CA890:
    .4byte 0xC362BFA8 # lfs f27, lbl_8053EF48@sda21(r0)
    .4byte 0xC342BF9C # lfs f26, lbl_8053EF3C@sda21(r0)
    .4byte 0xC322BFAC # lfs f25, lbl_8053EF4C@sda21(r0)
    .4byte 0xC302BFA4 # lfs f24, lbl_8053EF44@sda21(r0)
    .4byte 0x4800003C # b .L_801CA8DC
L_801CA8A4:
    .4byte 0xC362BF9C # lfs f27, lbl_8053EF3C@sda21(r0)
    .4byte 0xC342BF98 # lfs f26, lbl_8053EF38@sda21(r0)
    .4byte 0xC322BFA4 # lfs f25, lbl_8053EF44@sda21(r0)
    .4byte 0xC302BFA0 # lfs f24, lbl_8053EF40@sda21(r0)
    .4byte 0x48000028 # b .L_801CA8DC
L_801CA8B8:
    .4byte 0xC362BF9C # lfs f27, lbl_8053EF3C@sda21(r0)
    .4byte 0xC342BFA8 # lfs f26, lbl_8053EF48@sda21(r0)
    .4byte 0xC322BFA4 # lfs f25, lbl_8053EF44@sda21(r0)
    .4byte 0xC302BFAC # lfs f24, lbl_8053EF4C@sda21(r0)
    .4byte 0x48000014 # b .L_801CA8DC
L_801CA8CC:
    .4byte 0xC362BFB0 # lfs f27, lbl_8053EF50@sda21(r0)
    .4byte 0xC322BF84 # lfs f25, lbl_8053EF24@sda21(r0)
    fmr 26, 27
    fmr 24, 25
L_801CA8DC:
    fsubs 0, 25, 27
    .4byte 0xC022BF80 # lfs f1, lbl_8053EF20@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x4081026C # ble .L_801CAB54
    fsubs 0, 24, 26
    fcmpo cr0, 0, 1
    .4byte 0x40810260 # ble .L_801CAB54
    lfs 20, 0x60(29)
    li 30, 0x0
    lfs 21, 0x64(29)
    li 28, 0x0
    lfs 22, 0x68(29)
    lfs 23, 0x6c(29)
    stfs 27, 0x60(29)
    stfs 26, 0x64(29)
    stfs 25, 0x68(29)
    stfs 24, 0x6c(29)
L_801CA920:
    mr 3, 29
    mr 7, 28
    addi 4, 1, 0xc
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpw 28, 3
    .4byte 0x4082008C # bne .L_801CA9C8
    mr 3, 29
    mr 5, 28
    addi 4, 29, 0xc
    li 6, 0x0
    bl fn_801D0020
    lwz 0, 0x98(29)
    cmpw 3, 0
    .4byte 0x4082006C # bne .L_801CA9C8
    clrlwi. 0, 31, 24
    .4byte 0x4182001C # beq .L_801CA980
    mr 3, 28
    bl fn_8023B6CC
    mr 3, 28
    addi 4, 29, 0xc
    bl fn_80237948
    .4byte 0x4800004C # b .L_801CA9C8
L_801CA980:
    lwz 3, 0x560(29)
    li 0, 0x0
    cmpwi 3, 0x4
    .4byte 0x41820010 # beq .L_801CA99C
    cmpw 3, 28
    .4byte 0x41820008 # beq .L_801CA99C
    li 0, 0x1
L_801CA99C:
    clrlwi. 0, 0, 24
    .4byte 0x40820028 # bne .L_801CA9C8
    lfs 29, 0xc(1)
    mr 3, 28
    lfs 28, 0x10(1)
    li 30, 0x1
    stw 28, 0x338(29)
    bl fn_8023B6CC
    mr 3, 28
    addi 4, 29, 0xc
    bl fn_802379E4
L_801CA9C8:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF50 # blt .L_801CA920
    stfs 20, 0x60(29)
    clrlwi. 0, 30, 24
    stfs 21, 0x64(29)
    stfs 22, 0x68(29)
    stfs 23, 0x6c(29)
    .4byte 0x4182016C # beq .L_801CAB54
    lwz 0, 0x98(29)
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_801CAA38
    .4byte 0x40800014 # bge .L_801CAA0C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801CAA18
    .4byte 0x40800024 # bge .L_801CAA28
    .4byte 0x4800004C # b .L_801CAA54
L_801CAA0C:
    cmpwi 0, 0x4
    .4byte 0x40800044 # bge .L_801CAA54
    .4byte 0x48000034 # b .L_801CAA48
L_801CAA18:
    .4byte 0xC022BFA4 # lfs f1, lbl_8053EF44@sda21(r0)
    lfs 0, 0xc(29)
    fadds 29, 1, 0
    .4byte 0x48000030 # b .L_801CAA54
L_801CAA28:
    lfs 1, 0xc(29)
    .4byte 0xC002BFA4 # lfs f0, lbl_8053EF44@sda21(r0)
    fsubs 29, 1, 0
    .4byte 0x48000020 # b .L_801CAA54
L_801CAA38:
    .4byte 0xC022BFA4 # lfs f1, lbl_8053EF44@sda21(r0)
    lfs 0, 0x10(29)
    fadds 28, 1, 0
    .4byte 0x48000010 # b .L_801CAA54
L_801CAA48:
    lfs 1, 0x10(29)
    .4byte 0xC002BFA4 # lfs f0, lbl_8053EF44@sda21(r0)
    fsubs 28, 1, 0
L_801CAA54:
    lwz 30, 0x338(29)
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 30
    lfs 0, 0x10(29)
    fsubs 24, 0, 1
    bl fn_8023E724
    lfs 3, 0x0(3)
    lis 3, lbl_80539D44@ha
    lfs 0, 0xc(29)
    fmuls 2, 24, 24
    .4byte 0xC022BF8C # lfs f1, lbl_8053EF2C@sda21(r0)
    fsubs 4, 0, 3
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    fmadds 5, 4, 4, 2
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801CAAE0
    .4byte 0xC002BF80 # lfs f0, lbl_8053EF20@sda21(r0)
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801CAAB8
    .4byte 0x48000024 # b .L_801CAAD8
L_801CAAB8:
    frsqrte 3, 5
    .4byte 0xC042BF90 # lfs f2, lbl_8053EF30@sda21(r0)
    .4byte 0xC002BF94 # lfs f0, lbl_8053EF34@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 5, 1, 0
    fmuls 5, 2, 0
L_801CAAD8:
    fmuls 4, 4, 5
    fmuls 24, 24, 5
L_801CAAE0:
    .4byte 0xC002BF94 # lfs f0, lbl_8053EF34@sda21(r0)
    mr 4, 30
    addi 3, 29, 0x1dc
    fmuls 4, 4, 0
    fmuls 24, 24, 0
    stfs 4, 0x3c(29)
    stfs 24, 0x40(29)
    bl fn_801EAC20
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_801CAB40
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0xC002BF80 # lfs f0, lbl_8053EF20@sda21(r0)
    addi 4, 1, 0x14
    stfs 29, 0x14(1)
    li 5, 0x0
    li 6, 0x0
    stfs 28, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 3, 0x4(29)
    bl fn_801CB4A4
L_801CAB40:
    mr 3, 29
    li 4, 0x20
    bl fn_801C3B7C
    li 3, 0x0
    .4byte 0x48000310 # b .L_801CAE60
L_801CAB54:
    lfs 1, 0x68(29)
    li 30, 0x0
    lfs 0, 0x60(29)
    .4byte 0xC042BF80 # lfs f2, lbl_8053EF20@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408102F0 # ble .L_801CAE5C
    lfs 1, 0x6c(29)
    lfs 0, 0x64(29)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408102DC # ble .L_801CAE5C
    li 27, 0x0
    li 28, 0x0
L_801CAB8C:
    mr 3, 29
    mr 7, 28
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpw 28, 3
    .4byte 0x40820050 # bne .L_801CABF8
    clrlwi. 0, 31, 24
    .4byte 0x4182001C # beq .L_801CABCC
    mr 3, 28
    bl fn_8023B6CC
    mr 3, 28
    addi 4, 29, 0xc
    bl fn_80237948
    .4byte 0x48000030 # b .L_801CABF8
L_801CABCC:
    lwz 3, 0x560(29)
    li 0, 0x0
    cmpwi 3, 0x4
    .4byte 0x41820010 # beq .L_801CABE8
    cmpw 3, 28
    .4byte 0x41820008 # beq .L_801CABE8
    li 0, 0x1
L_801CABE8:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_801CABF8
    li 27, 0x1
    stw 28, 0x590(29)
L_801CABF8:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF8C # blt .L_801CAB8C
    clrlwi. 0, 27, 24
    .4byte 0x41820058 # beq .L_801CAC60
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0xc0
    li 5, 0x0
    bl fn_801F0E34
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0xc7
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 29
    li 4, 0x2a
    bl fn_801C3B7C
    lwz 0, 0x564(29)
    cmpwi 0, 0x3
    .4byte 0x40820010 # bne .L_801CAC58
    mr 3, 29
    li 4, 0x2
    bl fn_8021CDE4
L_801CAC58:
    li 3, 0x0
    .4byte 0x48000204 # b .L_801CAE60
L_801CAC60:
    clrlwi. 0, 31, 24
    .4byte 0x408201F8 # bne .L_801CAE5C
    psq_l 1, 0x3c(29), 0, 0
    li 28, 0x0
    lfs 0, 0x44(29)
    psq_st 1, 0x38(1), 0, 0
    stfs 0, 0x40(1)
L_801CAC7C:
    mr 3, 29
    mr 7, 28
    addi 5, 1, 0x8
    li 4, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpw 28, 3
    .4byte 0x40820044 # bne .L_801CACDC
    mr 3, 28
    bl fn_8023E724
    mr 31, 3
    mr 3, 28
    bl fn_8023B6CC
    lwz 7, 0x8(1)
    mr 4, 3
    mr 3, 29
    mr 5, 31
    mr 8, 28
    li 6, 0x0
    bl fn_801F37AC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801CACDC
    li 30, 0x1
    stw 28, 0x338(29)
L_801CACDC:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF98 # blt .L_801CAC7C
    clrlwi. 0, 30, 24
    .4byte 0x41820170 # beq .L_801CAE5C
    lwz 3, 0x338(29)
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(29)
    lwz 3, 0x338(29)
    fsubs 24, 0, 1
    bl fn_8023E724
    lfs 1, 0x0(3)
    lis 3, lbl_80539D44@ha
    lfs 0, 0xc(29)
    .4byte 0xC042BF80 # lfs f2, lbl_8053EF20@sda21(r0)
    fsubs 3, 0, 1
    stfs 24, 0x30(1)
    .4byte 0xC022BF8C # lfs f1, lbl_8053EF2C@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    stfs 3, 0x2c(1)
    fmuls 0, 1, 0
    psq_l 1, 0x2c(1), 0, 0
    stfs 2, 0x34(1)
    ps_mul 1, 1, 1
    ps_madd 4, 2, 2, 1
    ps_sum0 4, 4, 1, 1
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_801CADA4
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801CAD68
    fmr 31, 4
    .4byte 0x48000028 # b .L_801CAD8C
L_801CAD68:
    frsqrte 3, 4
    .4byte 0xC042BF90 # lfs f2, lbl_8053EF30@sda21(r0)
    .4byte 0xC002BF94 # lfs f0, lbl_8053EF34@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_801CAD8C:
    psq_l 1, 0x2c(1), 0, 0
    psq_l 0, 0x34(1), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x2c(1), 0, 0
    psq_st 0, 0x34(1), 1, 0
L_801CADA4:
    lfs 0, 0x38(1)
    li 0, 0x0
    lfs 1, 0x3c(1)
    mr 3, 29
    stfs 0, 0x3c(29)
    lfs 0, 0x40(1)
    stfs 1, 0x40(29)
    .4byte 0xC3C2BFB4 # lfs f30, lbl_8053EF54@sda21(r0)
    psq_l 1, 0x2c(1), 0, 0
    stfs 0, 0x44(29)
    ps_muls0 2, 1, 30
    psq_l 0, 0x34(1), 1, 0
    psq_l 3, 0x3c(29), 0, 0
    ps_muls0 1, 0, 30
    .4byte 0xC002BF80 # lfs f0, lbl_8053EF20@sda21(r0)
    ps_add 3, 3, 2
    psq_st 2, 0x2c(1), 0, 0
    psq_st 3, 0x3c(29), 0, 0
    psq_l 2, 0x44(29), 1, 0
    psq_st 1, 0x34(1), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x44(29), 1, 0
    stfs 0, 0x44(29)
    stw 0, 0xf8(29)
    bl fn_8021D020
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_801CAE38
    lwz 0, 0x564(29)
    cmpwi 0, 0x2
    .4byte 0x40820020 # bne .L_801CAE38
    lwz 3, 0x230(29)
    li 0, 0x30
    oris 3, 3, 0x400
    stw 3, 0x230(29)
    stw 0, 0xd8(29)
    stw 0, 0xdc(29)
    .4byte 0x4800001C # b .L_801CAE50
L_801CAE38:
    lwz 3, 0x230(29)
    li 0, 0x18
    rlwinm 3, 3, 0, 6, 4
    stw 3, 0x230(29)
    stw 0, 0xd8(29)
    stw 0, 0xdc(29)
L_801CAE50:
    mr 3, 29
    li 4, 0x21
    bl fn_801C3B7C
L_801CAE5C:
    mr 3, 30
L_801CAE60:
    psq_l 31, 0x118(1), 0, 0
    lfd 31, 0x110(1)
    psq_l 30, 0x108(1), 0, 0
    lfd 30, 0x100(1)
    psq_l 29, 0xf8(1), 0, 0
    lfd 29, 0xf0(1)
    psq_l 28, 0xe8(1), 0, 0
    lfd 28, 0xe0(1)
    psq_l 27, 0xd8(1), 0, 0
    lfd 27, 0xd0(1)
    psq_l 26, 0xc8(1), 0, 0
    lfd 26, 0xc0(1)
    psq_l 25, 0xb8(1), 0, 0
    lfd 25, 0xb0(1)
    psq_l 24, 0xa8(1), 0, 0
    lfd 24, 0xa0(1)
    psq_l 23, 0x98(1), 0, 0
    lfd 23, 0x90(1)
    psq_l 22, 0x88(1), 0, 0
    lfd 22, 0x80(1)
    psq_l 21, 0x78(1), 0, 0
    lfd 21, 0x70(1)
    psq_l 20, 0x68(1), 0, 0
    lfd 20, 0x60(1)
    lmw 27, 0x4c(1)
    lwz 0, 0x124(1)
    mtlr 0
    addi 1, 1, 0x120
    blr

