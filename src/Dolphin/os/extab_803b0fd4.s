# fn_803B0FD4 - helper (0x524)
.section extab, "a"
.balign 4
.global etb_8000F4BC
etb_8000F4BC:
    .4byte 0x594A0000
    .4byte 0x00000000
.size etb_8000F4BC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F234
eti_8001F234:
    .4byte fn_803B0FD4
    .4byte 0x00000524
    .4byte etb_8000F4BC
.size eti_8001F234, 12

.text
.balign 4
.global fn_803B0FD4

fn_803B0FD4:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stfd 29, 0x70(1)
    psq_st 29, 0x78(1), 0, 0
    stfd 28, 0x60(1)
    psq_st 28, 0x68(1), 0, 0
    stfd 27, 0x50(1)
    psq_st 27, 0x58(1), 0, 0
    stmw 21, 0x24(1)
    mr 25, 3
    lis 3, lbl_8050DB0C@ha
    lwz 4, 0x440(25)
    addi 3, 3, lbl_8050DB0C@l
    addi 0, 4, 0x1
    stw 0, 0x440(25)
    lha 27, 0x25a(3)
    lha 5, 0x25c(3)
    lwz 0, 0x440(25)
    add 28, 27, 5
    lha 3, 0x25e(3)
    cmpw 0, 28
    .4byte 0x418102D8 # bgt .L_803B1314
    cmpw 0, 27
    .4byte 0x418100F4 # bgt .L_803B1138
    mullw 4, 0, 0
    lis 5, 0x4330
    xoris 6, 3, 0x8000
    stw 5, 0x10(1)
    lis 3, lbl_804762D0@ha
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    mullw 0, 27, 27
    xoris 4, 4, 0x8000
    stw 4, 0x14(1)
    addi 22, 3, lbl_804762D0@l
    li 21, 0x0
    lfd 0, 0x10(1)
    xoris 0, 0, 0x8000
    stw 5, 0x18(1)
    fsubs 1, 0, 2
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    stw 6, 0xc(1)
    fsubs 0, 0, 2
    stw 5, 0x8(1)
    fdivs 0, 1, 0
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 27, 1, 0
    .4byte 0x48000080 # b .L_803B1128
L_803B10AC:
    lwz 0, 0x450(25)
    lwz 5, 0x8(22)
    slwi 3, 0, 2
    lwz 6, 0xc(22)
    addi 0, 3, 0x10
    lwzx 3, 25, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(25)
    lfs 28, 0x0(3)
    slwi 3, 0, 2
    lwz 5, 0x8(22)
    addi 0, 3, 0x10
    lwz 6, 0xc(22)
    lwzx 3, 25, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 28
    lfs 0, 0x424(25)
    lwz 12, 0x10(12)
    fadds 2, 0, 27
    mtctr 12
    bctrl
    addi 22, 22, 0x10
    addi 21, 21, 0x1
L_803B1128:
    lwz 0, 0x454(25)
    cmpw 21, 0
    .4byte 0x4180FF7C # blt .L_803B10AC
    .4byte 0x480001E0 # b .L_803B1314
L_803B1138:
    cmpw 0, 28
    .4byte 0x418101D8 # bgt .L_803B1314
    subf 0, 27, 0
    lis 31, 0x4330
    mullw 4, 0, 0
    xoris 30, 3, 0x8000
    lis 3, lbl_804762D0@ha
    stw 31, 0x10(1)
    .4byte 0xCBE20440 # lfd f31, lbl_805433E0@sda21(r0)
    xoris 23, 5, 0x8000
    mullw 0, 5, 5
    xoris 4, 4, 0x8000
    stw 4, 0x14(1)
    addi 29, 3, lbl_804762D0@l
    .4byte 0xC0620488 # lfs f3, lbl_80543428@sda21(r0)
    li 26, 0x0
    xoris 0, 0, 0x8000
    lfd 0, 0x10(1)
    stw 0, 0xc(1)
    fsubs 1, 0, 31
    .4byte 0xC3820434 # lfs f28, lbl_805433D4@sda21(r0)
    stw 31, 0x8(1)
    lfd 0, 0x8(1)
    stw 30, 0x1c(1)
    fsubs 0, 0, 31
    stw 31, 0x18(1)
    fdivs 0, 1, 0
    lfd 2, 0x18(1)
    fsubs 1, 2, 31
    fadds 1, 3, 1
    fmuls 30, 1, 0
    .4byte 0x48000154 # b .L_803B1308
L_803B11B8:
    lwz 0, 0x450(25)
    lwz 5, 0x8(29)
    slwi 3, 0, 2
    lwz 6, 0xc(29)
    addi 0, 3, 0x10
    lwzx 3, 25, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(25)
    lfs 29, 0x0(3)
    slwi 3, 0, 2
    lwz 5, 0x8(29)
    addi 0, 3, 0x10
    lwz 6, 0xc(29)
    lwzx 3, 25, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 30, 0x1c(1)
    fmr 1, 29
    lwz 12, 0x0(3)
    stw 31, 0x18(1)
    lfs 2, 0x424(25)
    lfd 0, 0x18(1)
    lwz 12, 0x10(12)
    fsubs 0, 0, 31
    fadds 0, 2, 0
    fsubs 2, 0, 30
    mtctr 12
    bctrl
    lwz 3, 0x440(25)
    lwz 0, 0x450(25)
    subf 3, 27, 3
    stw 31, 0x10(1)
    xoris 3, 3, 0x8000
    cmpwi 0, 0x2
    stw 3, 0x14(1)
    lfd 0, 0x10(1)
    stw 23, 0xc(1)
    fsubs 1, 0, 31
    stw 31, 0x8(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 31
    fdivs 0, 1, 0
    fsubs 27, 28, 0
    .4byte 0x40800084 # bge .L_803B1300
    .4byte 0xCBA20418 # lfd f29, lbl_805433B8@sda21(r0)
    mr 21, 29
    li 22, 0x0
    lis 24, 0x4330
L_803B1290:
    lwz 0, 0x450(25)
    lwz 5, 0x0(21)
    slwi 3, 0, 2
    lwz 6, 0x4(21)
    addi 0, 3, 0x10
    lwzx 3, 25, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x4d9
    lwz 12, 0x0(3)
    lbzx 0, 25, 0
    stw 24, 0x18(1)
    lwz 12, 0x24(12)
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 29
    fmuls 0, 0, 27
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 21, 21, 0x8
    cmpwi 22, 0x2
    .4byte 0x4180FF94 # blt .L_803B1290
L_803B1300:
    addi 29, 29, 0x10
    addi 26, 26, 0x1
L_803B1308:
    lwz 0, 0x454(25)
    cmpw 26, 0
    .4byte 0x4180FEA8 # blt .L_803B11B8
L_803B1314:
    lwz 0, 0x440(25)
    cmpw 0, 28
    .4byte 0x418001A0 # blt .L_803B14BC
    lwz 0, 0x450(25)
    cmpwi 0, 0x1
    .4byte 0x40820088 # bne .L_803B13B0
    lbz 0, 0x4bc(25)
    cmplwi 0, 0xff
    .4byte 0x40820020 # bne .L_803B1354
    li 3, 0x0
    li 4, 0x103
    bl fn_80389BF0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803B1354
    li 0, 0x1
    stb 0, 0x4bc(25)
L_803B1354:
    lbz 0, 0x4bd(25)
    cmplwi 0, 0xff
    .4byte 0x40820020 # bne .L_803B137C
    li 3, 0x1
    li 4, 0x104
    bl fn_80389BF0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803B137C
    li 0, 0x1
    stb 0, 0x4bd(25)
L_803B137C:
    lbz 0, 0x4be(25)
    cmplwi 0, 0xff
    .4byte 0x40820020 # bne .L_803B13A4
    li 3, 0x2
    li 4, 0x105
    bl fn_80389BF0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803B13A4
    li 0, 0x1
    stb 0, 0x4be(25)
L_803B13A4:
    li 0, 0x1
    stb 0, 0x4bf(25)
    .4byte 0x480000A4 # b .L_803B1450
L_803B13B0:
    lbz 0, 0x4bc(25)
    cmplwi 0, 0xff
    .4byte 0x40820020 # bne .L_803B13D8
    li 3, 0x0
    li 4, 0xde
    bl fn_80389BF0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803B13D8
    li 0, 0x1
    stb 0, 0x4bc(25)
L_803B13D8:
    lbz 0, 0x4bd(25)
    cmplwi 0, 0xff
    .4byte 0x40820020 # bne .L_803B1400
    li 3, 0x1
    li 4, 0xdf
    bl fn_80389BF0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803B1400
    li 0, 0x1
    stb 0, 0x4bd(25)
L_803B1400:
    lbz 0, 0x4be(25)
    cmplwi 0, 0xff
    .4byte 0x40820020 # bne .L_803B1428
    li 3, 0x2
    li 4, 0xe0
    bl fn_80389BF0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803B1428
    li 0, 0x1
    stb 0, 0x4be(25)
L_803B1428:
    lbz 0, 0x4bf(25)
    cmplwi 0, 0xff
    .4byte 0x40820020 # bne .L_803B1450
    li 3, 0x3
    li 4, 0xe1
    bl fn_80389BF0
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_803B1450
    li 0, 0x1
    stb 0, 0x4bf(25)
L_803B1450:
    lbz 0, 0x4bc(25)
    cmplwi 0, 0x1
    .4byte 0x40820064 # bne .L_803B14BC
    lbz 0, 0x4bd(25)
    cmplwi 0, 0x1
    .4byte 0x40820058 # bne .L_803B14BC
    lbz 0, 0x4be(25)
    cmplwi 0, 0x1
    .4byte 0x4082004C # bne .L_803B14BC
    lbz 0, 0x4bf(25)
    cmplwi 0, 0x1
    .4byte 0x40820040 # bne .L_803B14BC
    mr 5, 25
    li 6, 0x0
    li 4, 0xff
    li 3, 0x0
    .4byte 0x48000018 # b .L_803B14A8
L_803B1494:
    addi 0, 6, 0x4bc
    addi 6, 6, 0x1
    stbx 4, 25, 0
    sth 3, 0x460(5)
    addi 5, 5, 0x2
L_803B14A8:
    lwz 0, 0x454(25)
    cmpw 6, 0
    .4byte 0x4180FFE4 # blt .L_803B1494
    li 0, 0x6
    stb 0, 0x4c1(25)
L_803B14BC:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    psq_l 29, 0x78(1), 0, 0
    lfd 29, 0x70(1)
    psq_l 28, 0x68(1), 0, 0
    lfd 28, 0x60(1)
    psq_l 27, 0x58(1), 0, 0
    lfd 27, 0x50(1)
    lmw 21, 0x24(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

