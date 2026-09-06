# fn_80439B28 (dtor) + fn_80439C78 (real ctor, direct vtable-install) - a
# FOURTH sibling of the "weapon/joint-attachment resolver" class family
# (vtable lbl_804B17A0). Reuses fn_80084370/fn_8009C4EC/fn_8009C69C and the
# confirmed lbl_80529DEC table, same as the other siblings. GQR mtspr fix
# applied (raw .4byte) for the 4 standard GQR2-5 quantization setups.
.section extab, "a"
.balign 4
.global etb_80010D9C
etb_80010D9C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80010D9C, 8

.global etb_80010DA4
etb_80010DA4:
    .4byte 0x180A0000
    .4byte 0x00000048
    .4byte 0x00000018
    .4byte 0x00000148
    .4byte 0x00000020
    .4byte 0x00000000
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
.size etb_80010DA4, 40

.section extabindex, "a"
.balign 4
.global eti_80020E0C
eti_80020E0C:
    .4byte fn_80439B28
    .4byte 0x00000150
    .4byte etb_80010D9C
.size eti_80020E0C, 12

.global eti_80020E18
eti_80020E18:
    .4byte fn_80439C78
    .4byte 0x0000024C
    .4byte etb_80010DA4
.size eti_80020E18, 12

.text
.balign 4
.global fn_80439B28
.global fn_80439C78

fn_80439B28:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 31, 3
    mr 27, 4
    .4byte 0x41820120 # beq .L_80439C60
    lis 3, lbl_804B17A0@ha
    addi 0, 3, lbl_804B17A0@l
    stw 0, 0x0(31)
    lwz 3, 0x4(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80439B70
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80439B70:
    li 0, 0x0
    stw 0, 0x4(31)
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80439B98
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80439B98:
    li 0, 0x0
    stw 0, 0x8(31)
    lwz 3, 0x34(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80439BC0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80439BC0:
    li 30, 0x0
    mr 29, 31
    stw 30, 0x34(31)
    li 28, 0x0
L_80439BD0:
    lwz 0, 0xc(29)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80439BF0
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0xc(29)
    bl fn_800EC240
    stw 30, 0xc(29)
L_80439BF0:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x8
    .4byte 0x4180FFD4 # blt .L_80439BD0
    lwz 0, 0x2c(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80439C24
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2c(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x2c(31)
L_80439C24:
    lwz 0, 0x30(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80439C48
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x30(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x30(31)
L_80439C48:
    li 3, 0x0
    extsh. 0, 27
    .4byte 0x906D9308 # stw r3, lbl_8053AEC8@sda21(r0)
    .4byte 0x4081000C # ble .L_80439C60
    mr 3, 31
    bl dtor_80084580
L_80439C60:
    mr 3, 31
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80439C78:
    stwu 1, -0x30(1)
    mflr 0
    lis 4, lbl_804B17A0@ha
    stw 0, 0x34(1)
    addi 0, 4, lbl_804B17A0@l
    lis 4, lbl_8048F6D0@ha
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    addi 30, 4, lbl_8048F6D0@l
    stw 29, 0x24(1)
    stw 0, 0x0(3)
    li 3, 0x118
    .4byte 0x93ED9308 # stw r31, lbl_8053AEC8@sda21(r0)
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_80439CC0
    bl fn_8009C4EC
L_80439CC0:
    stw 29, 0x4(31)
    lis 4, lbl_80529DEC@ha
    addi 6, 4, lbl_80529DEC@l
    addi 4, 30, 0xc
    lwz 3, 0x4(31)
    lis 5, 0x110
    lwz 6, 0x4c(6)
    bl fn_8009C69C
    li 3, 0x4
    oris 3, 3, 0x4
    .4byte 0x7C72E3A6 # mtspr GQR2, r3
    li 3, 0x5
    oris 3, 3, 0x5
    .4byte 0x7C73E3A6 # mtspr GQR3, r3
    li 3, 0x6
    oris 3, 3, 0x6
    .4byte 0x7C74E3A6 # mtspr GQR4, r3
    li 3, 0x7
    oris 3, 3, 0x7
    .4byte 0x7C75E3A6 # mtspr GQR5, r3
    lis 4, 0x5343
    addi 3, 4, 0x524e
    addi 4, 30, 0x1c
    bl fn_80403084
    bl fn_800A4994
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
    lwz 12, 0x0(3)
    lwz 4, 0x8(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x5449
    stw 0, 0x3c(31)
    addi 3, 4, 0x4d47
    addi 4, 30, 0x2c
    stw 0, 0xc(31)
    stw 0, 0x10(31)
    stw 0, 0x14(31)
    stw 0, 0x18(31)
    stw 0, 0x1c(31)
    stw 0, 0x20(31)
    stw 0, 0x24(31)
    stw 0, 0x28(31)
    stw 0, 0x2c(31)
    stw 0, 0x30(31)
    bl fn_804030C4
    mr 0, 3
    li 3, 0x168
    mr 30, 0
    bl fn_80084370
    mr. 29, 3
    .4byte 0x4182000C # beq .L_80439DC0
    mr 4, 30
    bl fn_80097800
L_80439DC0:
    stw 29, 0x34(31)
    li 6, 0x0
    li 0, 0xff
    addi 4, 1, 0x14
    stw 6, 0xc(1)
    addi 5, 1, 0xc
    stw 0, 0x14(1)
    lwz 3, 0x34(31)
    stw 6, 0x8(1)
    lwz 12, 0x0(3)
    stw 0, 0x10(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    .4byte 0xC0220CA0 # lfs f1, lbl_80543C40@sda21(r0)
    lis 4, 0x5062
    .4byte 0xC0020CA4 # lfs f0, lbl_80543C44@sda21(r0)
    li 0, 0x0
    stfs 1, 0x4c(31)
    addi 6, 4, 0x6c6b
    li 5, 0x0
    stfs 0, 0x50(31)
    sth 0, 0x54(31)
    sth 0, 0x56(31)
    stb 0, 0x40(31)
    stb 0, 0x42(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x5062
    stb 0, 0xb0(3)
    addi 6, 4, 0x6c6b
    li 5, 0x0
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 6, 0xb2(3)
    li 5, 0x0
    li 4, -0x1
    li 0, 0xff
    stb 6, 0x41(31)
    mr 3, 31
    stb 5, 0x5b(31)
    stw 4, 0x44(31)
    stw 5, 0x48(31)
    stb 5, 0x58(31)
    stb 0, 0x59(31)
    stb 0, 0x5a(31)
    stw 5, 0x38(31)
    stb 5, 0x5c(31)
    stb 5, 0x5d(31)
    stb 5, 0x5e(31)
    stb 5, 0x5f(31)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

