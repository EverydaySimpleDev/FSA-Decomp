# fn_803CF504 - helper (0xAB8)
.section extab, "a"
.balign 4
.global etb_8000F904
etb_8000F904:
    .4byte 0x900A0000
    .4byte 0x00000000
.size etb_8000F904, 8

.section extabindex, "a"
.balign 4
.global eti_8001F750
eti_8001F750:
    .4byte fn_803CF504
    .4byte 0x00000AB8
    .4byte etb_8000F904
.size eti_8001F750, 12

.text
.balign 4
.global fn_803CF504

fn_803CF504:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    li 0, 0x3
    stmw 14, 0x38(1)
    mr 31, 3
    stw 0, 0x1a8(3)
    lis 3, lbl_804765D0@ha
    addi 30, 3, lbl_804765D0@l
    .4byte 0x806D9300 # lwz r3, lbl_8053AEC0@sda21(r0)
    bl fn_804310CC
    li 6, 0x0
    lis 3, lbl_80529DEC@ha
    stw 6, 0x80(31)
    li 5, 0x117
    addi 4, 3, lbl_80529DEC@l
    li 3, 0x1
    stw 6, 0x7c(31)
    li 0, -0x1
    stw 5, 0x84(31)
    lbz 4, 0x23b(4)
    stw 4, 0xa4(31)
    stw 6, 0xa0(31)
    stw 6, 0xa8(31)
    stb 6, 0x113(31)
    stw 6, 0xac(31)
    stb 3, 0x111(31)
    stb 3, 0x112(31)
    stb 3, 0x110(31)
    stb 6, 0x114(31)
    stb 6, 0x115(31)
    stw 0, 0xb0(31)
    sth 6, 0xdc(31)
    stb 6, 0x116(31)
    stw 6, 0xb4(31)
    stb 6, 0x117(31)
    lwz 4, 0x84(31)
    cmplwi 4, 0x117
    .4byte 0x40820018 # bne .L_803CF5B4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_803CF5B4
    li 4, 0x116
L_803CF5B4:
    stw 4, 0x84(31)
    lis 3, 0x6674
    addi 6, 3, 0x3031
    li 5, 0x54
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x84(31)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x84(31)
    cmplwi 0, 0x60
    .4byte 0x4182000C # beq .L_803CF604
    cmplwi 0, 0x64
    .4byte 0x4082000C # bne .L_803CF60C
L_803CF604:
    li 0, 0x5a
    stw 0, 0xb0(31)
L_803CF60C:
    li 15, 0x0
    mr 14, 31
L_803CF614:
    mr 4, 15
    li 3, 0x0
    bl fn_803B8CAC
    addi 15, 15, 0x1
    clrlwi 0, 3, 24
    cmpwi 15, 0x8
    stw 0, 0xb8(14)
    addi 14, 14, 0x4
    .4byte 0x4180FFE0 # blt .L_803CF614
    lwz 3, 0x14(31)
    li 4, 0x0
    li 0, 0x1
    mr 14, 31
    lwz 3, 0x4(3)
    addi 15, 30, 0x0
    addi 16, 30, 0x18
    addi 17, 30, 0x30
    stb 4, 0xb0(3)
    li 18, 0x0
    lwz 3, 0x18(31)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x1c(31)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x20(31)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x24(31)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x28(31)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x2c(31)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x30(31)
    lwz 3, 0x4(3)
    stb 4, 0xb0(3)
    lwz 3, 0x50(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
L_803CF6CC:
    lwz 3, 0x38(14)
    li 0, 0x1
    lwz 5, 0x0(15)
    lwz 3, 0x4(3)
    lwz 6, 0x4(15)
    stb 0, 0xb0(3)
    lwz 3, 0x44(14)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(16)
    stb 0, 0xb0(3)
    lwz 6, 0x4(16)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(17)
    stb 0, 0xb0(3)
    lwz 6, 0x4(17)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 18, 18, 0x1
    li 0, 0x0
    cmpwi 18, 0x3
    stb 0, 0xb0(3)
    addi 14, 14, 0x4
    addi 15, 15, 0x8
    addi 16, 16, 0x8
    addi 17, 17, 0x8
    .4byte 0x4180FF60 # blt .L_803CF6CC
    lwz 3, 0x50(31)
    .4byte 0xC02204F4 # lfs f1, lbl_80543494@sda21(r0)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x50(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x50(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    lbz 5, 0x28(3)
    bl fn_804023D0
    addi 0, 30, 0x780
    lwz 3, 0x50(31)
    stw 0, 0x30(1)
    addi 0, 30, 0x768
    li 4, 0x0
    mr 29, 31
    stw 0, 0x2c(1)
    addi 0, 30, 0x750
    addi 14, 30, 0x620
    addi 28, 30, 0x608
    stw 0, 0x28(1)
    addi 0, 30, 0x6c8
    addi 27, 30, 0x5f0
    addi 26, 30, 0x5d8
    stw 0, 0x24(1)
    addi 0, 30, 0x6b0
    addi 25, 30, 0x5c0
    addi 24, 30, 0x5a8
    stw 0, 0x20(1)
    addi 0, 30, 0x698
    addi 23, 30, 0x590
    addi 22, 30, 0x578
    stw 0, 0x1c(1)
    addi 0, 30, 0x680
    addi 21, 30, 0x560
    addi 20, 30, 0x548
    stw 0, 0x18(1)
    addi 0, 30, 0x668
    addi 19, 30, 0x530
    addi 18, 30, 0x518
    stw 0, 0x14(1)
    addi 0, 30, 0x650
    addi 17, 30, 0x500
    addi 16, 30, 0x4e8
    stw 0, 0x10(1)
    addi 0, 30, 0x638
    addi 15, 30, 0x4d0
    addi 30, 30, 0x4b8
    stw 0, 0xc(1)
    li 0, 0x0
    sth 4, 0x26(3)
    stw 0, 0x8(1)
L_803CF920:
    lwz 3, 0x38(29)
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    .4byte 0xC0420500 # lfs f2, lbl_805434A0@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x38(29)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x22(3)
    lwz 3, 0x38(29)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lwz 4, 0x30(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(29)
    lbz 5, 0x125(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 4, 0x2c(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(29)
    lbz 5, 0x126(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 4, 0x28(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(29)
    lbz 5, 0x127(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 4, 0x24(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(29)
    lbz 5, 0x128(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 4, 0x20(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(29)
    lbz 5, 0x129(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 4, 0x1c(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(29)
    lbz 5, 0x12a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 4, 0x18(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(29)
    lbz 5, 0x12b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 4, 0x14(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(29)
    lbz 5, 0x12c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 4, 0x10(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(29)
    lbz 5, 0x12d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 4, 0xc(1)
    lwz 12, 0x0(3)
    lwz 5, 0x0(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4(4)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(29)
    lbz 5, 0x12e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(14)
    lwz 12, 0x0(3)
    lwz 6, 0x4(14)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(29)
    lbz 5, 0x12f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(29)
    lbz 5, 0x130(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(29)
    lbz 5, 0x131(31)
    bl fn_804023D0
    lwz 3, 0x38(29)
    li 0, 0x0
    .4byte 0xC02204F4 # lfs f1, lbl_80543494@sda21(r0)
    sth 0, 0x26(3)
    .4byte 0xC04204B8 # lfs f2, lbl_80543458@sda21(r0)
    lwz 3, 0x44(29)
    bl fn_80402E08
    lwz 3, 0x44(29)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x20(3)
    lwz 3, 0x44(29)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x118(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x119(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x11a(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x11b(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x11c(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(21)
    lwz 12, 0x0(3)
    lwz 6, 0x4(21)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x11d(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(20)
    lwz 12, 0x0(3)
    lwz 6, 0x4(20)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x11e(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x11f(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x120(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(17)
    lwz 12, 0x0(3)
    lwz 6, 0x4(17)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x121(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(16)
    lwz 12, 0x0(3)
    lwz 6, 0x4(16)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x122(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(15)
    lwz 12, 0x0(3)
    lwz 6, 0x4(15)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x123(31)
    bl fn_804023D0
    lwz 3, 0x8(31)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(29)
    lbz 5, 0x124(31)
    bl fn_804023D0
    lwz 3, 0x8(1)
    li 5, 0x0
    lwz 4, 0x44(29)
    addi 14, 14, 0x8
    addi 3, 3, 0x1
    addi 28, 28, 0x8
    mr 0, 3
    stw 3, 0x8(1)
    lwz 3, 0x30(1)
    cmpwi 0, 0x3
    sth 5, 0x26(4)
    addi 27, 27, 0x8
    addi 3, 3, 0x8
    addi 26, 26, 0x8
    stw 3, 0x30(1)
    addi 25, 25, 0x8
    lwz 3, 0x2c(1)
    addi 24, 24, 0x8
    addi 23, 23, 0x8
    addi 22, 22, 0x8
    addi 3, 3, 0x8
    addi 21, 21, 0x8
    stw 3, 0x2c(1)
    addi 20, 20, 0x8
    lwz 3, 0x28(1)
    addi 19, 19, 0x8
    addi 18, 18, 0x8
    addi 17, 17, 0x8
    addi 3, 3, 0x8
    addi 16, 16, 0x8
    stw 3, 0x28(1)
    addi 15, 15, 0x8
    lwz 3, 0x24(1)
    addi 30, 30, 0x8
    addi 29, 29, 0x4
    addi 3, 3, 0x8
    stw 3, 0x24(1)
    lwz 3, 0x20(1)
    addi 3, 3, 0x8
    stw 3, 0x20(1)
    lwz 3, 0x1c(1)
    addi 3, 3, 0x8
    stw 3, 0x1c(1)
    lwz 3, 0x18(1)
    addi 3, 3, 0x8
    stw 3, 0x18(1)
    lwz 3, 0x14(1)
    addi 3, 3, 0x8
    stw 3, 0x14(1)
    lwz 3, 0x10(1)
    addi 3, 3, 0x8
    stw 3, 0x10(1)
    lwz 3, 0xc(1)
    addi 3, 3, 0x8
    stw 3, 0xc(1)
    .4byte 0x4180FA08 # blt .L_803CF920
    lwz 3, 0x54(31)
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    .4byte 0xC04204BC # lfs f2, lbl_8054345C@sda21(r0)
    bl fn_80402E08
    lwz 3, 0x54(31)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x22(3)
    lwz 3, 0x54(31)
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x54(31)
    li 0, 0x0
    .4byte 0xC02204B8 # lfs f1, lbl_80543458@sda21(r0)
    sth 0, 0x26(3)
    .4byte 0xC04204BC # lfs f2, lbl_8054345C@sda21(r0)
    sth 0, 0xde(31)
    stb 0, 0x1a4(31)
    stb 0, 0x1a5(31)
    stb 0, 0x1a6(31)
    lwz 3, 0x58(31)
    bl fn_80402E08
    lwz 3, 0x58(31)
    li 4, 0x0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 0, 0x0
    sth 0, 0xd8(31)
    sth 0, 0xda(31)
    lmw 14, 0x38(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

