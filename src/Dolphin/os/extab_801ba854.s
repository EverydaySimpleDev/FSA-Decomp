.section extab, "a"
.balign 4
.global etb_80007DA4
etb_80007DA4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80007DA4, 8

.global etb_80007DAC
etb_80007DAC:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80007DAC, 8

.global etb_80007DB4
etb_80007DB4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007DB4, 8

.global etb_80007DBC
etb_80007DBC:
    .4byte 0x50CA0000
    .4byte 0x00000000
.size etb_80007DBC, 8

.section extabindex, "a"
.balign 4
.global eti_80014DF4
eti_80014DF4:
    .4byte fn_801BA854
    .4byte 0x00000038
    .4byte etb_80007DA4
.size eti_80014DF4, 12

.global eti_80014E00
eti_80014E00:
    .4byte fn_801BA88C
    .4byte 0x0000006C
    .4byte etb_80007DAC
.size eti_80014E00, 12

.global eti_80014E0C
eti_80014E0C:
    .4byte fn_801BA8F8
    .4byte 0x000003F0
    .4byte etb_80007DB4
.size eti_80014E0C, 12

.global eti_80014E18
eti_80014E18:
    .4byte fn_801BACE8
    .4byte 0x000004C0
    .4byte etb_80007DBC
.size eti_80014E18, 12

.text
.balign 4
.global fn_801BA854
.global fn_801BA88C
.global fn_801BA8F8
.global fn_801BACE8
.global fn_801BB1A8

fn_801BA854:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_801BA87C
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    addi 4, 3, 0xc
    lwz 3, 0x24(5)
    bl fn_8030C210
L_801BA87C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BA88C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 5
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    mr 3, 31
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0xd
    .4byte 0x4082000C # bne .L_801BA8CC
    li 3, 0x0
    .4byte 0x48000014 # b .L_801BA8DC
L_801BA8CC:
    mr 3, 29
    mr 4, 30
    mr 5, 31
    bl fn_801F15BC
L_801BA8DC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801BA8F8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x3
    .4byte 0x418201D0 # beq .L_801BAAE4
    .4byte 0x4080001C # bge .L_801BA934
    cmpwi 0, 0x1
    .4byte 0x418200B8 # beq .L_801BA9D8
    .4byte 0x40800194 # bge .L_801BAAB8
    cmpwi 0, 0x0
    .4byte 0x40800018 # bge .L_801BA944
    .4byte 0x480002F8 # b .L_801BAC28
L_801BA934:
    cmpwi 0, 0x5
    .4byte 0x41820280 # beq .L_801BABB8
    .4byte 0x408002EC # bge .L_801BAC28
    .4byte 0x480001D4 # b .L_801BAB14
L_801BA944:
    lwz 3, 0x1a0(31)
    subis 0, 3, 0x4c54
    cmplwi 0, 0x5a52
    .4byte 0x4082003C # bne .L_801BA98C
    .4byte 0xC022BC14 # lfs f1, lbl_8053EBB4@sda21(r0)
    .4byte 0xC002BC18 # lfs f0, lbl_8053EBB8@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
L_801BA98C:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x4180027C # blt .L_801BAC28
    .4byte 0xC022BC1C # lfs f1, lbl_8053EBBC@sda21(r0)
    mr 3, 31
    addi 4, 31, 0xc
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x41800264 # blt .L_801BAC28
    mr 3, 31
    li 4, 0x1
    bl fn_801BACE8
    .4byte 0x48000254 # b .L_801BAC28
L_801BA9D8:
    lis 4, 0x4
    li 5, 0x0
    addi 4, 4, 0x6f
    bl fn_801F0E34
    lwz 3, 0x1a0(31)
    subis 0, 3, 0x4c54
    cmplwi 0, 0x5a52
    .4byte 0x4082003C # bne .L_801BAA30
    .4byte 0xC022BC14 # lfs f1, lbl_8053EBB4@sda21(r0)
    .4byte 0xC002BC18 # lfs f0, lbl_8053EBB8@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
L_801BAA30:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0xa8(12)
    mtctr 12
    bctrl
    .4byte 0xC022BC20 # lfs f1, lbl_8053EBC0@sda21(r0)
    lfs 0, 0x54(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820024 # beq .L_801BAA74
    .4byte 0xC042BC24 # lfs f2, lbl_8053EBC4@sda21(r0)
    addi 3, 31, 0x54
    bl fn_801CD950
    lfs 0, 0x54(31)
    stfs 0, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0x5c(31)
    .4byte 0x480001B8 # b .L_801BAC28
L_801BAA74:
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x418001A8 # blt .L_801BAC28
    addi 3, 31, 0x270
    bl fn_801D217C
    clrlwi. 0, 3, 24
    .4byte 0x41820198 # beq .L_801BAC28
    mr 3, 31
    li 4, 0x2
    bl fn_801BACE8
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0xb0(12)
    mtctr 12
    bctrl
    .4byte 0x48000174 # b .L_801BAC28
L_801BAAB8:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810168 # ble .L_801BAC28
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820158 # beq .L_801BAC28
    mr 3, 31
    li 4, 0x3
    bl fn_801BACE8
    .4byte 0x48000148 # b .L_801BAC28
L_801BAAE4:
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x41800138 # blt .L_801BAC28
    addi 3, 31, 0x270
    bl fn_801D217C
    clrlwi. 0, 3, 24
    .4byte 0x41820128 # beq .L_801BAC28
    mr 3, 31
    li 4, 0x4
    bl fn_801BACE8
    .4byte 0x48000118 # b .L_801BAC28
L_801BAB14:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x4081010C # ble .L_801BAC28
    lwz 3, 0x1a0(31)
    subis 0, 3, 0x5a4f
    cmplwi 0, 0x5241
    .4byte 0x4082006C # bne .L_801BAB98
    lwz 4, 0x27c(31)
    lis 0, 0x4330
    stw 0, 0x8(1)
    addi 3, 31, 0x294
    subi 0, 4, 0x2
    .4byte 0xC822BC38 # lfd f1, lbl_8053EBD8@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 1, 0, 1
    bl fn_800C3638
    cmpwi 3, 0x0
    .4byte 0x41820038 # beq .L_801BAB98
    lis 4, 0x5a4f
    .4byte 0xC022BC20 # lfs f1, lbl_8053EBC0@sda21(r0)
    .4byte 0xC042BC1C # lfs f2, lbl_8053EBBC@sda21(r0)
    mr 3, 31
    addi 4, 4, 0x5348
    bl fn_801CECF4
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801BAB98
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x30
    li 5, 0x0
    bl fn_801F0E34
L_801BAB98:
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820084 # beq .L_801BAC28
    mr 3, 31
    li 4, 0x5
    bl fn_801BACE8
    .4byte 0x48000074 # b .L_801BAC28
L_801BABB8:
    lwz 3, 0x1a0(31)
    subis 0, 3, 0x4c54
    cmplwi 0, 0x5a52
    .4byte 0x4082003C # bne .L_801BAC00
    .4byte 0xC022BC14 # lfs f1, lbl_8053EBB4@sda21(r0)
    .4byte 0xC002BC18 # lfs f0, lbl_8053EBB8@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
L_801BAC00:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810020 # ble .L_801BAC28
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801BAC28
    mr 3, 31
    li 4, 0x0
    bl fn_801BACE8
L_801BAC28:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    lwz 0, 0x248(31)
    cmpwi 0, 0x5
    .4byte 0x4182001C # beq .L_801BAC60
    .4byte 0x40800054 # bge .L_801BAC9C
    cmpwi 0, 0x3
    .4byte 0x4080004C # bge .L_801BAC9C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801BAC60
    .4byte 0x48000040 # b .L_801BAC9C
L_801BAC60:
    .4byte 0xC022BC10 # lfs f1, lbl_8053EBB0@sda21(r0)
    .4byte 0xC002BC28 # lfs f0, lbl_8053EBC8@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    .4byte 0x4800003C # b .L_801BACD4
L_801BAC9C:
    .4byte 0xC022BC2C # lfs f1, lbl_8053EBCC@sda21(r0)
    .4byte 0xC002BC30 # lfs f0, lbl_8053EBD0@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
L_801BACD4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801BACE8:
    stwu 1, -0x1e90(1)
    mflr 0
    stw 0, 0x1e94(1)
    li 0, 0x1e88
    stfd 31, 0x1e80(1)
    psq_stx 31, 1, 0, 0, 0
    li 0, 0x1e78
    stfd 30, 0x1e70(1)
    psq_stx 30, 1, 0, 0, 0
    li 0, 0x1e68
    stfd 29, 0x1e60(1)
    psq_stx 29, 1, 0, 0, 0
    stmw 22, 0x1e38(1)
    mr 31, 4
    mr 30, 3
    cmpwi 31, 0x3
    .4byte 0x418202E0 # beq .L_801BB008
    .4byte 0x4080001C # bge .L_801BAD48
    cmpwi 31, 0x1
    .4byte 0x41820048 # beq .L_801BAD7C
    .4byte 0x4080023C # bge .L_801BAF74
    cmpwi 31, 0x0
    .4byte 0x40800018 # bge .L_801BAD58
    .4byte 0x48000420 # b .L_801BB164
L_801BAD48:
    cmpwi 31, 0x5
    .4byte 0x41820344 # beq .L_801BB090
    .4byte 0x40800414 # bge .L_801BB164
    .4byte 0x4800031C # b .L_801BB070
L_801BAD58:
    li 3, 0x79
    bl fn_801CD664
    addi 0, 3, 0x3c
    .4byte 0xC002BC0C # lfs f0, lbl_8053EBAC@sda21(r0)
    stw 0, 0x250(30)
    stfs 0, 0x54(30)
    stfs 0, 0x58(30)
    stfs 0, 0x5c(30)
    .4byte 0x480003EC # b .L_801BB164
L_801BAD7C:
    li 3, 0x79
    bl fn_801CD664
    addi 0, 3, 0x3c
    addi 3, 30, 0x270
    stw 0, 0x250(30)
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    lwz 3, 0x1a0(30)
    subis 0, 3, 0x5a4f
    cmplwi 0, 0x5241
    .4byte 0x40820188 # bne .L_801BAF34
    lwz 23, 0x90(30)
    psq_l 1, 0x24(30), 0, 0
    lfs 0, 0x2c(30)
    cmplwi 23, 0x0
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    .4byte 0x41820154 # beq .L_801BAF1C
    lis 4, fn_801BB1A8@ha
    addi 3, 1, 0x20
    addi 4, 4, fn_801BB1A8@l
    li 28, 0x0
    li 5, 0x0
    li 6, 0x8
    li 7, 0x3c1
    bl __construct_array
    neg 22, 23
    .4byte 0xC3C2BC40 # lfs f30, lbl_8053EBE0@sda21(r0)
    .4byte 0xCBE2BC38 # lfd f31, lbl_8053EBD8@sda21(r0)
    mr 24, 22
    addi 25, 1, 0x20
    lis 29, 0x4330
    .4byte 0x480000A0 # b .L_801BAEA4
L_801BAE08:
    xoris 0, 22, 0x8000
    stw 29, 0x1e28(1)
    mr 27, 24
    mr 26, 25
    stw 0, 0x1e2c(1)
    lfd 0, 0x1e28(1)
    fsubs 0, 0, 31
    fmuls 29, 30, 0
    .4byte 0x48000070 # b .L_801BAE98
L_801BAE2C:
    xoris 0, 27, 0x8000
    lfs 0, 0x24(30)
    stw 0, 0x1e2c(1)
    addi 3, 1, 0x14
    fadds 1, 0, 29
    stw 29, 0x1e28(1)
    stfs 0, 0x14(1)
    lfd 0, 0x1e28(1)
    lfs 3, 0x28(30)
    fsubs 0, 0, 31
    stfs 3, 0x18(1)
    lfs 2, 0x2c(30)
    fmadds 0, 30, 0, 3
    stfs 2, 0x1c(1)
    stfs 1, 0x14(1)
    stfs 0, 0x18(1)
    lwz 4, 0x4(30)
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0xd
    .4byte 0x40820018 # bne .L_801BAE94
    stw 22, 0x0(26)
    addi 25, 25, 0x8
    addi 28, 28, 0x1
    stw 27, 0x4(26)
    addi 26, 26, 0x8
L_801BAE94:
    addi 27, 27, 0x1
L_801BAE98:
    cmpw 27, 23
    .4byte 0x4081FF90 # ble .L_801BAE2C
    addi 22, 22, 0x1
L_801BAEA4:
    cmpw 22, 23
    .4byte 0x4081FF60 # ble .L_801BAE08
    cmpwi 28, 0x0
    .4byte 0x4081006C # ble .L_801BAF1C
    mr 3, 28
    bl fn_801CD664
    slwi 0, 3, 3
    addi 4, 1, 0x20
    addi 3, 1, 0x24
    lwzx 4, 4, 0
    lwzx 0, 3, 0
    lis 3, 0x4330
    xoris 4, 4, 0x8000
    stw 3, 0x1e28(1)
    xoris 0, 0, 0x8000
    .4byte 0xC882BC38 # lfd f4, lbl_8053EBD8@sda21(r0)
    stw 4, 0x1e2c(1)
    .4byte 0xC0A2BC40 # lfs f5, lbl_8053EBE0@sda21(r0)
    lfd 0, 0x1e28(1)
    stw 0, 0x1e34(1)
    fsubs 3, 0, 4
    lfs 2, 0x8(1)
    stw 3, 0x1e30(1)
    lfs 0, 0xc(1)
    lfd 1, 0x1e30(1)
    fmadds 2, 5, 3, 2
    fsubs 1, 1, 4
    stfs 2, 0x8(1)
    fmadds 0, 5, 1, 0
    stfs 0, 0xc(1)
L_801BAF1C:
    psq_l 1, 0x8(1), 0, 0
    lfs 0, 0x10(1)
    psq_st 1, 0xc(30), 0, 0
    stfs 0, 0x14(30)
    psq_st 1, 0x18(30), 0, 0
    stfs 0, 0x20(30)
L_801BAF34:
    .4byte 0xC002BC0C # lfs f0, lbl_8053EBAC@sda21(r0)
    addi 4, 30, 0xc
    .4byte 0xC022BC10 # lfs f1, lbl_8053EBB0@sda21(r0)
    li 5, 0x555
    stfs 0, 0x54(30)
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x58(30)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x5c(30)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    stw 3, 0x2a8(30)
    .4byte 0x480001F4 # b .L_801BB164
L_801BAF74:
    li 0, -0x1
    addi 3, 30, 0x270
    stw 0, 0x250(30)
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    lwz 3, 0x2a8(30)
    bl fn_801EE434
    li 0, 0x0
    .4byte 0xC022BC10 # lfs f1, lbl_8053EBB0@sda21(r0)
    stw 0, 0x2a8(30)
    addi 4, 30, 0xc
    li 5, 0x15b
    li 6, 0x0
    lwz 3, 0x4(30)
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022BC10 # lfs f1, lbl_8053EBB0@sda21(r0)
    li 5, 0x15c
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x50
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000160 # b .L_801BB164
L_801BB008:
    .4byte 0xC022BC2C # lfs f1, lbl_8053EBCC@sda21(r0)
    li 3, 0x29
    .4byte 0xC002BC30 # lfs f0, lbl_8053EBD0@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 24, 22
    stw 0, 0x230(30)
    bl fn_801CD664
    addi 0, 3, 0x28
    addi 3, 30, 0x270
    stw 0, 0x250(30)
    li 4, 0x2
    li 5, 0x2
    bl fn_801D22A0
    .4byte 0x480000F8 # b .L_801BB164
L_801BB070:
    li 0, -0x1
    addi 3, 30, 0x270
    stw 0, 0x250(30)
    li 4, 0x3
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x480000D8 # b .L_801BB164
L_801BB090:
    lwz 12, 0x0(3)
    lwz 12, 0xa4(12)
    mtctr 12
    bctrl
    .4byte 0xC022BC10 # lfs f1, lbl_8053EBB0@sda21(r0)
    li 0, -0x1
    .4byte 0xC002BC28 # lfs f0, lbl_8053EBC8@sda21(r0)
    addi 3, 30, 0x270
    stfs 1, 0x60(30)
    li 4, 0x4
    li 5, 0x0
    li 6, 0x0
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    lwz 7, 0x230(30)
    ori 7, 7, 0x100
    stw 7, 0x230(30)
    stw 0, 0x250(30)
    bl fn_801D22DC
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022BC10 # lfs f1, lbl_8053EBB0@sda21(r0)
    li 5, 0x15b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022BC10 # lfs f1, lbl_8053EBB0@sda21(r0)
    li 5, 0x15c
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x32
    li 5, 0x0
    bl fn_801F0E34
L_801BB164:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    li 0, 0x1e88
    psq_lx 31, 1, 0, 0, 0
    lfd 31, 0x1e80(1)
    li 0, 0x1e78
    psq_lx 30, 1, 0, 0, 0
    lfd 30, 0x1e70(1)
    li 0, 0x1e68
    psq_lx 29, 1, 0, 0, 0
    lfd 29, 0x1e60(1)
    lmw 22, 0x1e38(1)
    lwz 0, 0x1e94(1)
    mtlr 0
    addi 1, 1, 0x1e90
    blr

fn_801BB1A8:
    blr

