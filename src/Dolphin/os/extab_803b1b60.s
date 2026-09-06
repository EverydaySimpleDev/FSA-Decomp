# fn_803B1B60 - helper (0x80c)
.section extab, "a"
.balign 4
.global etb_8000F4CC
etb_8000F4CC:
    .4byte 0x698A0000
    .4byte 0x00000000
.size etb_8000F4CC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F24C
eti_8001F24C:
    .4byte fn_803B1B60
    .4byte 0x0000080C
    .4byte etb_8000F4CC
.size eti_8001F24C, 12

.text
.balign 4
.global fn_803B1B60

fn_803B1B60:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stfd 29, 0xa0(1)
    psq_st 29, 0xa8(1), 0, 0
    stfd 28, 0x90(1)
    psq_st 28, 0x98(1), 0, 0
    stfd 27, 0x80(1)
    psq_st 27, 0x88(1), 0, 0
    stfd 26, 0x70(1)
    psq_st 26, 0x78(1), 0, 0
    stmw 19, 0x3c(1)
    mr 31, 3
    lwz 3, 0x440(3)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_803B1BB8
    subi 0, 3, 0x1
    stw 0, 0x440(31)
L_803B1BB8:
    lis 3, lbl_8050DB0C@ha
    lwz 30, 0x440(31)
    addi 3, 3, lbl_8050DB0C@l
    lha 27, 0x244(3)
    cmpwi 30, 0x0
    lha 0, 0x24a(3)
    subfic 29, 27, 0x96
    lha 26, 0x246(3)
    subfic 23, 0, 0x96
    lha 25, 0x248(3)
    subf 28, 27, 23
    lha 22, 0x24c(3)
    lha 21, 0x24e(3)
    subf 24, 26, 29
    lha 20, 0x250(3)
    subf 19, 26, 28
    .4byte 0x408201A8 # bne .L_803B1DA0
    lwz 0, 0x450(31)
    cmpwi 0, 0x1
    .4byte 0x40820088 # bne .L_803B1C8C
    lbz 0, 0x4b8(31)
    cmplwi 0, 0xff
    .4byte 0x40820020 # bne .L_803B1C30
    li 3, 0x0
    li 4, 0x106
    bl fn_80389BF0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803B1C30
    li 0, 0x1
    stb 0, 0x4b8(31)
L_803B1C30:
    lbz 0, 0x4b9(31)
    cmplwi 0, 0xff
    .4byte 0x40820020 # bne .L_803B1C58
    li 3, 0x1
    li 4, 0x107
    bl fn_80389BF0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803B1C58
    li 0, 0x1
    stb 0, 0x4b9(31)
L_803B1C58:
    lbz 0, 0x4ba(31)
    cmplwi 0, 0xff
    .4byte 0x40820020 # bne .L_803B1C80
    li 3, 0x2
    li 4, 0x108
    bl fn_80389BF0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803B1C80
    li 0, 0x1
    stb 0, 0x4ba(31)
L_803B1C80:
    li 0, 0x1
    stb 0, 0x4bb(31)
    .4byte 0x480000A4 # b .L_803B1D2C
L_803B1C8C:
    lbz 0, 0x4b8(31)
    cmplwi 0, 0xff
    .4byte 0x40820020 # bne .L_803B1CB4
    li 3, 0x0
    li 4, 0xe2
    bl fn_80389BF0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803B1CB4
    li 0, 0x1
    stb 0, 0x4b8(31)
L_803B1CB4:
    lbz 0, 0x4b9(31)
    cmplwi 0, 0xff
    .4byte 0x40820020 # bne .L_803B1CDC
    li 3, 0x1
    li 4, 0xe3
    bl fn_80389BF0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803B1CDC
    li 0, 0x1
    stb 0, 0x4b9(31)
L_803B1CDC:
    lbz 0, 0x4ba(31)
    cmplwi 0, 0xff
    .4byte 0x40820020 # bne .L_803B1D04
    li 3, 0x2
    li 4, 0xe4
    bl fn_80389BF0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803B1D04
    li 0, 0x1
    stb 0, 0x4ba(31)
L_803B1D04:
    lbz 0, 0x4bb(31)
    cmplwi 0, 0xff
    .4byte 0x40820020 # bne .L_803B1D2C
    li 3, 0x3
    li 4, 0xe5
    bl fn_80389BF0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803B1D2C
    li 0, 0x1
    stb 0, 0x4bb(31)
L_803B1D2C:
    lbz 3, 0x4b8(31)
    cmplwi 3, 0x1
    .4byte 0x408205F4 # bne .L_803B2328
    lbz 0, 0x4b9(31)
    cmplwi 0, 0x1
    .4byte 0x408205E8 # bne .L_803B2328
    lbz 0, 0x4ba(31)
    cmplwi 0, 0x1
    .4byte 0x408205DC # bne .L_803B2328
    cmplwi 3, 0x1
    .4byte 0x408205D4 # bne .L_803B2328
    mr 5, 31
    li 6, 0x0
    li 4, 0xff
    li 3, 0x0
    .4byte 0x48000018 # b .L_803B1D80
L_803B1D6C:
    addi 0, 6, 0x4b8
    addi 6, 6, 0x1
    stbx 4, 31, 0
    sth 3, 0x460(5)
    addi 5, 5, 0x2
L_803B1D80:
    lwz 0, 0x454(31)
    cmpw 6, 0
    .4byte 0x4180FFE4 # blt .L_803B1D6C
    li 3, 0x96
    li 0, 0x3
    stw 3, 0x440(31)
    stb 0, 0x4c1(31)
    .4byte 0x4800058C # b .L_803B2328
L_803B1DA0:
    cmpw 30, 29
    .4byte 0x418001C8 # blt .L_803B1F6C
    lwz 0, 0x450(31)
    lis 4, 0x776b
    lis 3, 0x50
    slwi 0, 0, 2
    addi 6, 4, 0x3032
    add 4, 31, 0
    addi 5, 3, 0x6d6d
    lwz 3, 0x10(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(31)
    lis 5, 0x776b
    lis 4, 0x50
    lfs 28, 0x0(3)
    slwi 0, 0, 2
    addi 6, 5, 0x3032
    add 3, 31, 0
    addi 5, 4, 0x6d6d
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    subf 0, 29, 30
    lis 5, 0x4330
    mullw 4, 0, 0
    xoris 6, 25, 0x8000
    lwz 12, 0x0(3)
    fmr 1, 28
    stw 5, 0x10(1)
    .4byte 0xC8820440 # lfd f4, lbl_805433E0@sda21(r0)
    mullw 0, 27, 27
    xoris 4, 4, 0x8000
    stw 4, 0x14(1)
    .4byte 0xC0C20484 # lfs f6, lbl_80543424@sda21(r0)
    lfd 0, 0x10(1)
    stw 5, 0x18(1)
    xoris 0, 0, 0x8000
    fsubs 2, 0, 4
    stw 0, 0x1c(1)
    lfs 3, 0x41c(31)
    lfd 0, 0x18(1)
    stw 6, 0xc(1)
    fsubs 5, 3, 6
    fsubs 0, 0, 4
    .4byte 0xC0620434 # lfs f3, lbl_805433D4@sda21(r0)
    stw 5, 0x8(1)
    lwz 12, 0x10(12)
    fdivs 0, 2, 0
    lfd 2, 0x8(1)
    fsubs 2, 2, 4
    fsubs 0, 3, 0
    fadds 2, 6, 2
    fmuls 0, 2, 0
    fadds 2, 5, 0
    mtctr 12
    bctrl
    lwz 4, 0x440(31)
    lis 30, 0x4330
    xoris 3, 27, 0x8000
    lwz 0, 0x450(31)
    subf 4, 29, 4
    stw 30, 0x20(1)
    xoris 4, 4, 0x8000
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    stw 4, 0x24(1)
    cmpwi 0, 0x2
    .4byte 0xC0620434 # lfs f3, lbl_805433D4@sda21(r0)
    lfd 0, 0x20(1)
    stw 3, 0x2c(1)
    fsubs 1, 0, 2
    stw 30, 0x28(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 2
    fdivs 0, 1, 0
    fsubs 29, 3, 0
    .4byte 0x4080016C # bge .L_803B2050
    lis 3, lbl_80476208@ha
    .4byte 0xCB820418 # lfd f28, lbl_805433B8@sda21(r0)
    addi 25, 3, lbl_80476208@l
    li 24, 0x0
L_803B1EF8:
    lwz 0, 0x450(31)
    lwz 5, 0x0(25)
    slwi 3, 0, 2
    lwz 6, 0x4(25)
    addi 0, 3, 0x10
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x4c9
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 30, 0x28(1)
    lwz 12, 0x24(12)
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 28
    fmuls 0, 0, 29
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 25, 25, 0x8
    cmpwi 24, 0xd
    .4byte 0x4180FF94 # blt .L_803B1EF8
    .4byte 0x480000E8 # b .L_803B2050
L_803B1F6C:
    cmpw 30, 24
    .4byte 0x418000E0 # blt .L_803B2050
    lwz 0, 0x450(31)
    lis 4, 0x776b
    lis 3, 0x50
    slwi 0, 0, 2
    addi 6, 4, 0x3032
    add 4, 31, 0
    addi 5, 3, 0x6d6d
    lwz 3, 0x10(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(31)
    lis 5, 0x776b
    lis 4, 0x50
    lfs 28, 0x0(3)
    slwi 0, 0, 2
    addi 6, 5, 0x3032
    add 3, 31, 0
    addi 5, 4, 0x6d6d
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    subf 0, 24, 30
    lis 5, 0x4330
    mullw 4, 0, 0
    xoris 6, 25, 0x8000
    lwz 12, 0x0(3)
    fmr 1, 28
    stw 5, 0x20(1)
    .4byte 0xC8620440 # lfd f3, lbl_805433E0@sda21(r0)
    mullw 0, 26, 26
    xoris 4, 4, 0x8000
    stw 4, 0x24(1)
    lfs 4, 0x41c(31)
    lfd 0, 0x20(1)
    stw 5, 0x18(1)
    xoris 0, 0, 0x8000
    fsubs 2, 0, 3
    stw 0, 0x1c(1)
    lwz 12, 0x10(12)
    lfd 0, 0x18(1)
    stw 6, 0x2c(1)
    fsubs 0, 0, 3
    stw 5, 0x28(1)
    fdivs 0, 2, 0
    lfd 2, 0x28(1)
    fsubs 2, 2, 3
    fmuls 0, 2, 0
    fadds 2, 4, 0
    mtctr 12
    bctrl
L_803B2050:
    lwz 0, 0x440(31)
    cmpw 0, 23
    .4byte 0x418102D0 # bgt .L_803B2328
    cmpw 0, 28
    .4byte 0x418001D0 # blt .L_803B2230
    subf 0, 28, 0
    lis 30, 0x4330
    mullw 4, 0, 0
    xoris 5, 20, 0x8000
    lis 3, lbl_80476270@ha
    stw 30, 0x20(1)
    .4byte 0xCBC20440 # lfd f30, lbl_805433E0@sda21(r0)
    xoris 21, 22, 0x8000
    mullw 0, 22, 22
    xoris 4, 4, 0x8000
    stw 4, 0x24(1)
    addi 29, 3, lbl_80476270@l
    .4byte 0xC3A20488 # lfs f29, lbl_80543428@sda21(r0)
    li 19, 0x0
    xoris 0, 0, 0x8000
    lfd 0, 0x20(1)
    stw 0, 0x1c(1)
    fsubs 1, 0, 30
    .4byte 0xC3E20434 # lfs f31, lbl_805433D4@sda21(r0)
    stw 30, 0x18(1)
    lfd 0, 0x18(1)
    stw 5, 0x2c(1)
    fsubs 0, 0, 30
    stw 30, 0x28(1)
    fdivs 0, 1, 0
    lfd 1, 0x28(1)
    fsubs 1, 1, 30
    fsubs 0, 31, 0
    fadds 1, 29, 1
    fmuls 26, 1, 0
    .4byte 0x48000144 # b .L_803B2220
L_803B20E0:
    lwz 0, 0x450(31)
    lwz 5, 0x10(29)
    slwi 3, 0, 2
    lwz 6, 0x14(29)
    addi 0, 3, 0x10
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(31)
    lfs 28, 0x0(3)
    slwi 3, 0, 2
    lwz 5, 0x10(29)
    addi 0, 3, 0x10
    lwz 6, 0x14(29)
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x420(31)
    fmr 1, 28
    lwz 12, 0x0(3)
    fsubs 0, 0, 29
    lwz 12, 0x10(12)
    fadds 2, 0, 26
    mtctr 12
    bctrl
    lwz 3, 0x440(31)
    lwz 0, 0x450(31)
    subf 3, 28, 3
    stw 30, 0x28(1)
    xoris 3, 3, 0x8000
    cmpwi 0, 0x2
    stw 3, 0x2c(1)
    lfd 0, 0x28(1)
    stw 21, 0x24(1)
    fsubs 1, 0, 30
    stw 30, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fdivs 0, 1, 0
    fsubs 27, 31, 0
    .4byte 0x40800084 # bge .L_803B2218
    .4byte 0xCB820418 # lfd f28, lbl_805433B8@sda21(r0)
    mr 23, 29
    li 22, 0x0
    lis 20, 0x4330
L_803B21A8:
    lwz 0, 0x450(31)
    lwz 5, 0x0(23)
    slwi 3, 0, 2
    lwz 6, 0x4(23)
    addi 0, 3, 0x10
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x4d6
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 20, 0x28(1)
    lwz 12, 0x24(12)
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 28
    fmuls 0, 0, 27
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 23, 23, 0x8
    cmpwi 22, 0x3
    .4byte 0x4180FF94 # blt .L_803B21A8
L_803B2218:
    addi 29, 29, 0x18
    addi 19, 19, 0x1
L_803B2220:
    lwz 0, 0x454(31)
    cmpw 19, 0
    .4byte 0x4180FEB8 # blt .L_803B20E0
    .4byte 0x480000FC # b .L_803B2328
L_803B2230:
    cmpw 0, 19
    .4byte 0x418000F4 # blt .L_803B2328
    subf 0, 19, 0
    lis 5, 0x4330
    mullw 4, 0, 0
    xoris 6, 20, 0x8000
    lis 3, lbl_80476270@ha
    stw 5, 0x20(1)
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    li 19, 0x0
    mullw 0, 21, 21
    xoris 4, 4, 0x8000
    stw 4, 0x24(1)
    addi 20, 3, lbl_80476270@l
    lfd 0, 0x20(1)
    stw 5, 0x18(1)
    xoris 0, 0, 0x8000
    fsubs 1, 0, 2
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    stw 6, 0x2c(1)
    fsubs 0, 0, 2
    stw 5, 0x28(1)
    fdivs 0, 1, 0
    lfd 1, 0x28(1)
    fsubs 1, 1, 2
    fmuls 26, 1, 0
    .4byte 0x48000080 # b .L_803B231C
L_803B22A0:
    lwz 0, 0x450(31)
    lwz 5, 0x10(20)
    slwi 3, 0, 2
    lwz 6, 0x14(20)
    addi 0, 3, 0x10
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(31)
    lfs 29, 0x0(3)
    slwi 3, 0, 2
    lwz 5, 0x10(20)
    addi 0, 3, 0x10
    lwz 6, 0x14(20)
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    lfs 0, 0x420(31)
    lwz 12, 0x10(12)
    fadds 2, 0, 26
    mtctr 12
    bctrl
    addi 20, 20, 0x18
    addi 19, 19, 0x1
L_803B231C:
    lwz 0, 0x454(31)
    cmpw 19, 0
    .4byte 0x4180FF7C # blt .L_803B22A0
L_803B2328:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    psq_l 29, 0xa8(1), 0, 0
    lfd 29, 0xa0(1)
    psq_l 28, 0x98(1), 0, 0
    lfd 28, 0x90(1)
    psq_l 27, 0x88(1), 0, 0
    lfd 27, 0x80(1)
    psq_l 26, 0x78(1), 0, 0
    lfd 26, 0x70(1)
    lmw 19, 0x3c(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

