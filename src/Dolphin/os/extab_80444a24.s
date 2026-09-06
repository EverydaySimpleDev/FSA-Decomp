# fn_80444A24 (dtor) + fn_80444B68 (real ctor, direct vtable-install) - a
# NINTH sibling of the "weapon/joint-attachment resolver" family (vtable
# lbl_804B1B60). Reuses the shared lbl_804AF86C component, same shape as
# the other siblings.
.section extab, "a"
.balign 4
.global etb_8001129C
etb_8001129C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8001129C, 8

.global etb_800112A4
etb_800112A4:
    .4byte 0x104A0000
    .4byte 0x00000054
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001E
    .4byte dtor_80084580
.size etb_800112A4, 24

.section extabindex, "a"
.balign 4
.global eti_800211CC
eti_800211CC:
    .4byte fn_80444A24
    .4byte 0x00000144
    .4byte etb_8001129C
.size eti_800211CC, 12

.global eti_800211D8
eti_800211D8:
    .4byte fn_80444B68
    .4byte 0x000007D0
    .4byte etb_800112A4
.size eti_800211D8, 12

.text
.balign 4
.global fn_80444A24
.global fn_80444B68

fn_80444A24:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    .4byte 0x41820114 # beq .L_80444B50
    lis 3, lbl_804B1B60@ha
    addi 0, 3, lbl_804B1B60@l
    stw 0, 0x0(27)
    lwz 3, 0x4(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80444A6C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80444A6C:
    li 0, 0x0
    stw 0, 0x4(27)
    lwz 3, 0x8(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80444A94
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80444A94:
    li 0, 0x0
    stw 0, 0x8(27)
    lwz 3, 0xc(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80444ABC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80444ABC:
    li 31, 0x0
    mr 30, 27
    stw 31, 0xc(27)
    li 29, 0x0
L_80444ACC:
    lwz 3, 0x10(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80444AEC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80444AEC:
    addi 29, 29, 0x1
    stw 31, 0x10(30)
    cmpwi 29, 0x6
    addi 30, 30, 0x4
    .4byte 0x4180FFD0 # blt .L_80444ACC
    mr 30, 27
    li 29, 0x0
    li 31, 0x0
L_80444B0C:
    lwz 3, 0x28(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80444B2C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80444B2C:
    addi 29, 29, 0x1
    stw 31, 0x28(30)
    cmpwi 29, 0x2
    addi 30, 30, 0x4
    .4byte 0x4180FFD0 # blt .L_80444B0C
    extsh. 0, 28
    .4byte 0x4081000C # ble .L_80444B50
    mr 3, 27
    bl dtor_80084580
L_80444B50:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80444B68:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    lis 4, lbl_804B1B60@ha
    mr 31, 3
    addi 3, 4, lbl_804B1B60@l
    li 0, -0x1
    stw 3, 0x0(31)
    li 3, 0x118
    stw 0, 0x30(31)
    stw 0, 0x34(31)
    stw 0, 0x38(31)
    stw 0, 0x3c(31)
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820008 # beq .L_80444BBC
    bl fn_8009C4EC
L_80444BBC:
    lis 3, lbl_80529DEC@ha
    stw 30, 0x4(31)
    addi 5, 3, lbl_80529DEC@l
    lis 3, lbl_8048FBEC@ha
    lwz 6, 0x34(5)
    addi 4, 3, lbl_8048FBEC@l
    lwz 3, 0x4(31)
    lis 5, 0x110
    bl fn_8009C69C
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80444BFC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80444BFC:
    stw 3, 0x8(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x4(31)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x8(31)
    bl fn_80402F04
    lwz 3, 0x8(31)
    .4byte 0xC0220DD8 # lfs f1, lbl_80543D78@sda21(r0)
    .4byte 0xC0420DE4 # lfs f2, lbl_80543D84@sda21(r0)
    bl fn_80402E08
    lwz 4, 0x8(31)
    li 0, 0x0
    li 3, 0x2c
    sth 0, 0x22(4)
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80444C68
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80444C68:
    stw 3, 0xc(31)
    lis 3, 0x6c61
    addi 6, 3, 0x636b
    li 5, 0x5062
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xc(31)
    bl fn_80402F04
    lwz 3, 0xc(31)
    li 4, 0x0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 4, 0xc(31)
    li 0, 0x0
    li 3, 0x2c
    sth 0, 0x26(4)
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80444CDC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80444CDC:
    stw 3, 0x10(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6f63
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x10(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80444D2C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80444D2C:
    stw 3, 0x14(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6f63
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
    .4byte 0x41820010 # beq .L_80444D7C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80444D7C:
    stw 3, 0x18(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6f63
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
    .4byte 0x41820010 # beq .L_80444DCC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80444DCC:
    stw 3, 0x1c(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6f63
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
    .4byte 0x41820010 # beq .L_80444E1C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80444E1C:
    stw 3, 0x20(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6f63
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
    .4byte 0x41820010 # beq .L_80444E6C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80444E6C:
    stw 3, 0x24(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3036
    addi 5, 4, 0x6f63
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
    .4byte 0x41820010 # beq .L_80444EBC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80444EBC:
    stw 3, 0x28(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x7463
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x28(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80444F0C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80444F0C:
    stw 3, 0x2c(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7463
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x2c(31)
    bl fn_80402F04
    lwz 4, 0x10(31)
    lis 3, 0x6d6d
    li 0, 0x0
    li 5, 0x54
    lwz 4, 0x4(4)
    addi 6, 3, 0x3035
    stb 0, 0xb0(4)
    lwz 3, 0x14(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x18(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x1c(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x20(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x24(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x18
    lwz 12, 0x0(4)
    lwz 12, 0xb0(12)
    mtctr 12
    bctrl
    lbz 0, 0x18(1)
    lis 3, 0x6d6d
    addi 6, 3, 0x3035
    li 5, 0x54
    stb 0, 0x30(31)
    lbz 0, 0x19(1)
    stb 0, 0x31(31)
    lbz 0, 0x1a(1)
    stb 0, 0x32(31)
    lbz 0, 0x1b(1)
    stb 0, 0x33(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x14
    lwz 12, 0x0(4)
    lwz 12, 0xb4(12)
    mtctr 12
    bctrl
    lbz 0, 0x14(1)
    lis 3, 0x6d6d
    addi 6, 3, 0x3033
    li 5, 0x54
    stb 0, 0x34(31)
    lbz 0, 0x15(1)
    stb 0, 0x35(31)
    lbz 0, 0x16(1)
    stb 0, 0x36(31)
    lbz 0, 0x17(1)
    stb 0, 0x37(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x10
    lwz 12, 0x0(4)
    lwz 12, 0xb0(12)
    mtctr 12
    bctrl
    lbz 0, 0x10(1)
    lis 3, 0x6d6d
    addi 6, 3, 0x3033
    li 5, 0x54
    stb 0, 0x38(31)
    lbz 0, 0x11(1)
    stb 0, 0x39(31)
    lbz 0, 0x12(1)
    stb 0, 0x3a(31)
    lbz 0, 0x13(1)
    stb 0, 0x3b(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0xc
    lwz 12, 0x0(4)
    lwz 12, 0xb4(12)
    mtctr 12
    bctrl
    lbz 0, 0xc(1)
    lis 3, 0x6d6d
    addi 6, 3, 0x3031
    li 5, 0x54
    stb 0, 0x3c(31)
    lbz 0, 0xd(1)
    stb 0, 0x3d(31)
    lbz 0, 0xe(1)
    stb 0, 0x3e(31)
    lbz 0, 0xf(1)
    stb 0, 0x3f(31)
    lwz 3, 0x4(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 30, 0x154(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6d6d
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6d6d
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3033
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6d6d
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3034
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6d6d
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3035
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6d6d
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3036
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6d6d
    addi 6, 4, 0x3035
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 4, 0x6d6d
    lwz 3, 0x4(31)
    addi 6, 4, 0x3033
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 3, 0x19
    li 5, 0x0
    .4byte 0xC0020DD4 # lfs f0, lbl_80543D74@sda21(r0)
    fsubs 1, 1, 31
    addi 0, 3, 0x660d
    .4byte 0xC0420DD0 # lfs f2, lbl_80543D70@sda21(r0)
    mr 3, 31
    stfs 1, 0x40(31)
    stw 5, 0x44(31)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(6)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    addi 0, 4, 0xa
    stw 0, 0x48(31)
    stb 5, 0x4c(31)
    stb 5, 0x4d(31)
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

