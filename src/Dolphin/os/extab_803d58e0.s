# fn_803D58E0 - CONSTRUCTOR (0x63C) - allocates 9 sub-objects (operator new x9), string-format helper fn_80095FB4 x4
.section extab, "a"
.balign 4
.global etb_8000FA3C
etb_8000FA3C:
    .4byte 0x200A0000
    .4byte 0x000000DC
    .4byte 0x00000018
    .4byte 0x0000015C
    .4byte 0x00000020
    .4byte 0x00000000
    .4byte 0x8A80001C
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
.size etb_8000FA3C, 40

.section extabindex, "a"
.balign 4
.global eti_8001F8DC
eti_8001F8DC:
    .4byte fn_803D58E0
    .4byte 0x0000063C
    .4byte etb_8000FA3C
.size eti_8001F8DC, 12

.text
.balign 4
.global fn_803D58E0

fn_803D58E0:
    stwu 1, -0x30(1)
    mflr 0
    lis 7, lbl_804B0288@ha
    lis 6, lbl_80529DEC@ha
    stw 0, 0x34(1)
    addi 0, 7, lbl_804B0288@l
    lis 8, lbl_80476F20@ha
    stw 31, 0x2c(1)
    mr 31, 3
    addi 3, 6, lbl_80529DEC@l
    stw 30, 0x28(1)
    addi 30, 8, lbl_80476F20@l
    stw 29, 0x24(1)
    mr 29, 4
    stw 28, 0x20(1)
    mr 28, 5
    stw 0, 0x0(31)
    lwz 3, 0x8(3)
    bl fn_80083A68
    .4byte 0x93ED91F8 # stw r31, lbl_8053ADB8@sda21(r0)
    li 6, 0x0
    li 0, 0x2
    addi 3, 31, 0x1c0
    stb 28, 0x2176(31)
    li 4, 0x0
    li 5, 0x258
    stw 6, 0x54(31)
    stw 6, 0x50(31)
    stb 6, 0x216e(31)
    stw 6, 0x78(31)
    stb 0, 0x216d(31)
    stb 0, 0x216c(31)
    stb 6, 0x88(31)
    stb 6, 0x2170(31)
    stb 6, 0x2171(31)
    bl memset
    addi 3, 31, 0x420
    li 4, 0x0
    li 5, 0x1d4c
    bl memset
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x7c(31)
    li 3, 0x118
    sth 0, 0x84(31)
    stb 0, 0x216f(31)
    stb 0, 0x2174(31)
    stb 0, 0x2173(31)
    stb 0, 0x2177(31)
    stb 0, 0x2175(31)
    stb 0, 0x1b4(31)
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820008 # beq .L_803D59BC
    bl fn_8009C4EC
L_803D59BC:
    stw 28, 0x4(31)
    mr 6, 29
    addi 4, 30, 0x40
    lis 5, 0x110
    lwz 3, 0x4(31)
    bl fn_8009C69C
    lwz 3, 0x4(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x9c
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lis 3, 0x5449
    addi 4, 30, 0x4c
    addi 3, 3, 0x4d47
    bl fn_804030C4
    mr 0, 3
    li 3, 0x168
    mr 29, 0
    bl fn_80084370
    mr. 28, 3
    .4byte 0x4182000C # beq .L_803D5A3C
    mr 4, 29
    bl fn_80097800
L_803D5A3C:
    stw 28, 0x8(31)
    li 6, 0x0
    li 0, 0xff
    addi 4, 1, 0x14
    stw 6, 0xc(1)
    addi 5, 1, 0xc
    stw 0, 0x14(1)
    lwz 3, 0x8(31)
    stw 6, 0x8(1)
    lwz 12, 0x0(3)
    stw 0, 0x10(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x7665
    lis 4, 0x54
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7361
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xc(31)
    lis 5, 0x7665
    lis 4, 0x54
    lwz 3, 0x4(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x7361
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x10(31)
    lwz 3, 0xc(31)
    bl fn_80095FB4
    lfs 0, 0x0(3)
    stfs 0, 0x58(31)
    lwz 3, 0x10(31)
    bl fn_80095FB4
    lfs 0, 0x0(3)
    stfs 0, 0x5c(31)
    lwz 3, 0xc(31)
    bl fn_80095FB4
    lfs 0, 0x4(3)
    stfs 0, 0x60(31)
    lwz 3, 0x10(31)
    bl fn_80095FB4
    lfs 1, 0x4(3)
    .4byte 0xC0020520 # lfs f0, lbl_805434C0@sda21(r0)
    stfs 1, 0x64(31)
    lwz 3, 0xc(31)
    lfs 2, 0x28(3)
    lfs 1, 0x20(3)
    fsubs 1, 2, 1
    stfs 1, 0x68(31)
    lwz 3, 0x10(31)
    lfs 2, 0x28(3)
    lfs 1, 0x20(3)
    fsubs 1, 2, 1
    stfs 1, 0x6c(31)
    stfs 0, 0x74(31)
    stfs 0, 0x70(31)
    lwz 3, 0xc(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6e6f
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6573
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5479
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6573
    addi 6, 4, 0x3031
    li 5, 0x5479
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x11e
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x4(31)
    lis 4, 0x6e6f
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x11f
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D5C74
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D5C74:
    stw 3, 0x14(31)
    lis 5, 0x6261
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x636b
    addi 5, 4, 0x7361
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x14(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D5CC4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D5CC4:
    stw 3, 0x18(31)
    lis 5, 0x626b
    lis 4, 0x5073
    lwz 3, 0x4(31)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6162
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x18(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D5D14
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D5D14:
    stw 3, 0x1c(31)
    lis 5, 0x7362
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7965
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x1c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D5D64
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D5D64:
    stw 3, 0x20(31)
    lis 3, 0x6f62
    addi 6, 3, 0x3034
    li 5, 0x506e
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x20(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D5DB0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D5DB0:
    stw 3, 0x24(31)
    lis 5, 0x6262
    lis 4, 0x5074
    lwz 3, 0x4(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6f70
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x24(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D5E00
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D5E00:
    stw 3, 0x28(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 3, 0x4(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6363
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x28(31)
    bl fn_80402F04
    mr 29, 31
    addi 30, 30, 0x0
    li 28, 0x0
L_803D5E40:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D5E5C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D5E5C:
    stw 3, 0x2c(29)
    lwz 5, 0x0(30)
    lwz 3, 0x4(31)
    lwz 6, 0x4(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x2c(29)
    bl fn_80402F04
    addi 28, 28, 0x1
    addi 30, 30, 0x8
    cmpwi 28, 0x8
    addi 29, 29, 0x4
    .4byte 0x4180FFA8 # blt .L_803D5E40
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    lwz 0, 0x8(3)
    stw 0, 0x4c(31)
    lbz 0, 0x2176(31)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_803D5EE8
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    li 4, 0x0
    bl fn_80440C6C
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    li 4, 0x0
    bl fn_80440BF4
    lwz 3, 0x4c(31)
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    .4byte 0xC0420528 # lfs f2, lbl_805434C8@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x4c(31)
    li 0, 0x0
    sth 0, 0x22(3)
L_803D5EE8:
    li 0, 0x0
    mr 3, 31
    sth 0, 0x80(31)
    sth 0, 0x82(31)
    sth 0, 0x86(31)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

