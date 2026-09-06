# fn_803D5554 - helper (0x1BC)
.section extab, "a"
.balign 4
.global etb_8000FA2C
etb_8000FA2C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000FA2C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F8C4
eti_8001F8C4:
    .4byte fn_803D5554
    .4byte 0x000001BC
    .4byte etb_8000FA2C
.size eti_8001F8C4, 12

.text
.balign 4
.global fn_803D5554

fn_803D5554:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804310CC
    li 7, 0x0
    li 6, -0x1
    stw 7, 0x54(31)
    li 5, 0x7b
    li 3, 0x1
    li 0, 0x2
    stw 7, 0x50(31)
    li 4, 0x0
    stb 7, 0x216e(31)
    stw 7, 0x78(31)
    stb 7, 0x88(31)
    stb 7, 0x2170(31)
    stb 7, 0x2171(31)
    stw 6, 0x7c(31)
    sth 7, 0x84(31)
    stb 7, 0x216f(31)
    sth 7, 0x80(31)
    sth 7, 0x82(31)
    sth 7, 0x86(31)
    stb 7, 0x2174(31)
    stb 7, 0x2173(31)
    stb 7, 0x2177(31)
    stb 7, 0x2175(31)
    stb 7, 0x1b4(31)
    stb 7, 0x2170(31)
    stw 5, 0x54(31)
    stb 3, 0x2177(31)
    stb 0, 0x216c(31)
    lwz 3, 0x14(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x14(31)
    li 0, 0x0
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    sth 0, 0x26(3)
    .4byte 0xC0420550 # lfs f2, lbl_805434F0@sda21(r0)
    lwz 3, 0x18(31)
    bl fn_80402E08
    lwz 3, 0x18(31)
    li 30, 0x0
    mr 29, 31
    li 28, 0x0
    sth 30, 0x22(3)
L_803D5634:
    lwz 3, 0x1c(29)
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    .4byte 0xC0420534 # lfs f2, lbl_805434D4@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x1c(29)
    addi 28, 28, 0x1
    cmpwi 28, 0x2
    addi 29, 29, 0x4
    sth 30, 0x22(3)
    .4byte 0x4180FFDC # blt .L_803D5634
    lwz 3, 0x24(31)
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    .4byte 0xC0420548 # lfs f2, lbl_805434E8@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x24(31)
    li 30, 0x0
    mr 29, 31
    li 28, 0x0
    sth 30, 0x22(3)
    lwz 3, 0x28(31)
    lwz 3, 0x4(3)
    stb 30, 0xb0(3)
L_803D568C:
    .4byte 0xC0220530 # lfs f1, lbl_805434D0@sda21(r0)
    lwz 3, 0x2c(29)
    fmr 2, 1
    bl fn_80402CE0
    lwz 3, 0x2c(29)
    li 4, 0x0
    sth 30, 0x24(3)
    lwz 3, 0x2c(29)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x2c(29)
    addi 28, 28, 0x1
    cmpwi 28, 0x8
    addi 29, 29, 0x4
    sth 30, 0x26(3)
    .4byte 0x4180FFB8 # blt .L_803D568C
    mr 3, 31
    bl fn_803D49A4
    lis 3, lbl_80529DEC@ha
    li 0, 0x0
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x243(3)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

