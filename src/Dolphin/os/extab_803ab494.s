# fn_803AB494 - helper (0x858) - reads the nearby small-integer data table (804AF888)
.section extab, "a"
.balign 4
.global etb_8000F3FC
etb_8000F3FC:
    .4byte 0x510A0000
    .4byte 0x00000000
.size etb_8000F3FC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F114
eti_8001F114:
    .4byte fn_803AB494
    .4byte 0x00000858
    .4byte etb_8000F3FC
.size eti_8001F114, 12

.text
.balign 4
.global fn_803AB494

fn_803AB494:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stfd 29, 0xc0(1)
    psq_st 29, 0xc8(1), 0, 0
    stfd 28, 0xb0(1)
    psq_st 28, 0xb8(1), 0, 0
    stmw 22, 0x88(1)
    mr 30, 3
    lis 3, lbl_804AF888@ha
    lbz 6, 0x4c3(30)
    addi 3, 3, lbl_804AF888@l
    addi 5, 3, 0xc0
    li 4, 0x0
    slwi 0, 6, 2
    lwzx 5, 5, 0
    cmpwi 5, -0x1
    .4byte 0x41820024 # beq .L_803AB50C
    lbz 0, 0x4c5(30)
    cmpw 0, 5
    .4byte 0x4180000C # blt .L_803AB500
    addi 0, 6, 0x1
    stb 0, 0x4c3(30)
L_803AB500:
    lbz 5, 0x4c5(30)
    addi 0, 5, 0x1
    stb 0, 0x4c5(30)
L_803AB50C:
    lbz 6, 0x4c4(30)
    addi 5, 3, 0x44
    slwi 0, 6, 2
    lwzx 5, 5, 0
    cmpwi 5, -0x1
    .4byte 0x41820024 # beq .L_803AB544
    lbz 0, 0x4c6(30)
    cmpw 0, 5
    .4byte 0x4180000C # blt .L_803AB538
    addi 0, 6, 0x1
    stb 0, 0x4c4(30)
L_803AB538:
    lbz 5, 0x4c6(30)
    addi 0, 5, 0x1
    stb 0, 0x4c6(30)
L_803AB544:
    mr 6, 30
    li 7, 0x0
    .4byte 0x4800009C # b .L_803AB5E8
L_803AB550:
    lbz 0, 0x4c8(30)
    cmplwi 0, 0xff
    .4byte 0x41820070 # beq .L_803AB5C8
    addi 0, 4, 0x4ac
    lbzx 0, 30, 0
    cmpw 7, 0
    .4byte 0x40820044 # bne .L_803AB5AC
    lbz 0, 0x4c4(30)
    addi 5, 3, 0x0
    slwi 0, 0, 2
    lwzx 5, 5, 0
    cmpwi 5, -0x1
    .4byte 0x40820010 # bne .L_803AB590
    li 0, 0x3e
    stw 0, 0x3c0(6)
    .4byte 0x4800000C # b .L_803AB598
L_803AB590:
    addi 0, 5, 0xdb
    stw 0, 0x3c0(6)
L_803AB598:
    lbz 0, 0x4c8(30)
    cmpw 0, 4
    .4byte 0x40810040 # ble .L_803AB5E0
    addi 4, 4, 0x1
    .4byte 0x48000038 # b .L_803AB5E0
L_803AB5AC:
    lbz 0, 0x4c3(30)
    addi 5, 3, 0x88
    slwi 0, 0, 2
    lwzx 5, 5, 0
    addi 0, 5, 0xbd
    stw 0, 0x3c0(6)
    .4byte 0x4800001C # b .L_803AB5E0
L_803AB5C8:
    lbz 0, 0x4c3(30)
    addi 5, 3, 0x88
    slwi 0, 0, 2
    lwzx 5, 5, 0
    addi 0, 5, 0xbd
    stw 0, 0x3c0(6)
L_803AB5E0:
    addi 6, 6, 0x4
    addi 7, 7, 0x1
L_803AB5E8:
    lwz 10, 0x454(30)
    cmpw 7, 10
    .4byte 0x4180FF60 # blt .L_803AB550
    lbz 0, 0x4c3(30)
    addi 4, 3, 0xc0
    slwi 0, 0, 2
    lwzx 0, 4, 0
    cmpwi 0, -0x1
    .4byte 0x408206B0 # bne .L_803ABCB8
    lbz 0, 0x4c4(30)
    addi 4, 3, 0x44
    slwi 0, 0, 2
    lwzx 0, 4, 0
    cmpwi 0, -0x1
    .4byte 0x40820698 # bne .L_803ABCB8
    lbz 0, 0x4c8(30)
    cmplwi 0, 0xff
    .4byte 0x4182058C # beq .L_803ABBB8
    addi 31, 1, 0x70
    addi 0, 1, 0x50
    addi 8, 1, 0x60
    mr 6, 30
    mr 4, 31
    mr 5, 0
    mr 7, 8
    li 9, 0x0
    mtctr 10
    cmpwi 10, 0x0
    .4byte 0x40810078 # ble .L_803AB6D0
L_803AB65C:
    lwz 11, 0x350(6)
    li 24, 0x0
    lwz 10, 0x340(6)
    lwz 12, 0x360(6)
    add 10, 10, 11
    lwz 23, 0x370(6)
    add 10, 10, 12
    lwz 11, 0x320(6)
    add 10, 10, 23
    lwz 12, 0x380(6)
    add 10, 11, 10
    lwz 23, 0x3b0(6)
    subf 10, 12, 10
    lwz 11, 0x3a0(6)
    add 10, 10, 23
    stw 24, 0x0(4)
    add 10, 11, 10
    stw 10, 0x0(7)
    lwz 10, 0x0(7)
    stw 24, 0x0(5)
    cmpwi 10, -0x1388
    .4byte 0x4080000C # bge .L_803AB6BC
    li 10, -0x1388
    stw 10, 0x0(7)
L_803AB6BC:
    addi 4, 4, 0x4
    addi 5, 5, 0x4
    addi 6, 6, 0x4
    addi 7, 7, 0x4
    .4byte 0x4200FF90 # bdnz .L_803AB65C
L_803AB6D0:
    lwz 4, 0x454(30)
    mr 5, 0
    mr 6, 8
    li 11, -0x1389
    mtctr 4
    cmpwi 4, 0x0
    .4byte 0x4081002C # ble .L_803AB714
L_803AB6EC:
    lwz 4, 0x0(5)
    cmpwi 4, 0x0
    .4byte 0x40820014 # bne .L_803AB708
    lwz 4, 0x0(6)
    cmpw 11, 4
    .4byte 0x40800008 # bge .L_803AB708
    mr 11, 4
L_803AB708:
    addi 5, 5, 0x4
    addi 6, 6, 0x4
    .4byte 0x4200FFDC # bdnz .L_803AB6EC
L_803AB714:
    mr 6, 0
    mr 7, 8
    mr 10, 31
    li 12, 0x0
    li 23, 0x0
    li 4, 0x1
    .4byte 0x48000038 # b .L_803AB764
L_803AB730:
    lwz 5, 0x0(6)
    cmpwi 5, 0x0
    .4byte 0x4082001C # bne .L_803AB754
    lwz 5, 0x0(7)
    cmpw 11, 5
    .4byte 0x40820010 # bne .L_803AB754
    stw 9, 0x0(10)
    addi 12, 12, 0x1
    stw 4, 0x0(6)
L_803AB754:
    addi 6, 6, 0x4
    addi 7, 7, 0x4
    addi 10, 10, 0x4
    addi 23, 23, 0x1
L_803AB764:
    lwz 5, 0x454(30)
    cmpw 23, 5
    .4byte 0x4180FFC4 # blt .L_803AB730
    add 9, 9, 12
    cmpw 9, 5
    .4byte 0x4180FF58 # blt .L_803AB6D0
    lis 5, lbl_80476310@ha
    lis 4, lbl_8050DB0C@ha
    .4byte 0xC3A2046C # lfs f29, lbl_8054340C@sda21(r0)
    addi 24, 5, lbl_80476310@l
    .4byte 0xCBC20440 # lfd f30, lbl_805433E0@sda21(r0)
    mr 25, 30
    addi 26, 4, lbl_8050DB0C@l
    addi 29, 3, 0x108
    li 23, 0x0
    lis 27, 0x4330
    lis 28, 0x5449
    .4byte 0x480002AC # b .L_803ABA54
L_803AB7AC:
    lwz 0, 0x0(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_803AB7C8
    lwz 3, 0x50(25)
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000010 # b .L_803AB7D4
L_803AB7C8:
    lwz 3, 0x60(25)
    li 0, 0x1
    stb 0, 0xb0(3)
L_803AB7D4:
    lwz 3, 0x30(25)
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 3, 0x158(25)
    bl fn_80095FB4
    lha 0, 0x2ae(26)
    lfs 0, 0x4(3)
    xoris 3, 0, 0x8000
    lwz 0, 0x0(31)
    stw 3, 0x84(1)
    fadds 1, 29, 0
    cmpwi 0, 0x0
    stw 27, 0x80(1)
    lfd 0, 0x80(1)
    fsubs 0, 0, 30
    fadds 28, 0, 1
    .4byte 0x4182000C # beq .L_803AB820
    .4byte 0xC0020470 # lfs f0, lbl_80543410@sda21(r0)
    fadds 28, 28, 0
L_803AB820:
    lwz 3, 0x30(25)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    fmr 2, 28
    lwz 3, 0x30(25)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 0, 0x450(30)
    lwz 5, 0x0(24)
    slwi 3, 0, 2
    lwz 6, 0x4(24)
    addi 0, 3, 0x10
    lwzx 3, 30, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(30)
    lfs 31, 0x0(3)
    slwi 3, 0, 2
    lwz 5, 0x0(24)
    addi 0, 3, 0x10
    lwz 6, 0x4(24)
    lwzx 3, 30, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 31
    lfs 0, 0x42c(30)
    lwz 12, 0x10(12)
    fadds 2, 28, 0
    mtctr 12
    bctrl
    lwz 0, 0x450(30)
    lwz 5, 0x8(24)
    slwi 3, 0, 2
    lwz 6, 0xc(24)
    addi 0, 3, 0x10
    lwzx 3, 30, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(30)
    lfs 31, 0x0(3)
    slwi 3, 0, 2
    lwz 5, 0x8(24)
    addi 0, 3, 0x10
    lwz 6, 0xc(24)
    lwzx 3, 30, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 31
    lfs 0, 0x430(30)
    lwz 12, 0x10(12)
    fadds 2, 28, 0
    mtctr 12
    bctrl
    lwz 0, 0x0(31)
    addi 3, 28, 0x4d47
    slwi 0, 0, 2
    lwzx 4, 29, 0
    bl fn_80403104
    mr 0, 3
    lwz 3, 0x30(25)
    mr 22, 0
    li 5, 0x0
    lwz 12, 0x0(3)
    mr 4, 22
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x40(25)
    mr 4, 22
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 0, 0x0(31)
    addi 31, 31, 0x4
    lwz 6, 0x40(25)
    addi 25, 25, 0x4
    slwi 3, 0, 4
    addi 24, 24, 0x10
    addi 0, 3, 0x46c
    addi 23, 23, 0x1
    add 7, 30, 0
    lwz 5, 0x0(7)
    lwz 4, 0x4(7)
    stw 5, 0x8(1)
    lwz 3, 0x8(7)
    lwz 0, 0xc(7)
    lbz 7, 0x8(1)
    lbz 8, 0x9(1)
    stb 7, 0x150(6)
    lbz 7, 0xa(1)
    stb 8, 0x151(6)
    lbz 8, 0xb(1)
    stw 4, 0xc(1)
    stb 7, 0x152(6)
    lbz 7, 0xc(1)
    stb 8, 0x153(6)
    lbz 9, 0xd(1)
    stb 7, 0x154(6)
    lbz 8, 0xe(1)
    stb 9, 0x155(6)
    lbz 7, 0xf(1)
    stw 3, 0x10(1)
    stb 8, 0x156(6)
    lbz 10, 0x10(1)
    stb 7, 0x157(6)
    lbz 9, 0x11(1)
    stb 10, 0x158(6)
    lbz 8, 0x12(1)
    stb 9, 0x159(6)
    lbz 7, 0x13(1)
    stw 0, 0x14(1)
    stb 8, 0x15a(6)
    lbz 10, 0x14(1)
    stb 7, 0x15b(6)
    lbz 9, 0x15(1)
    stb 10, 0x15c(6)
    lbz 8, 0x16(1)
    stb 9, 0x15d(6)
    lbz 7, 0x17(1)
    stb 8, 0x15e(6)
    stw 5, 0x40(1)
    stw 4, 0x44(1)
    stw 3, 0x48(1)
    stw 0, 0x4c(1)
    stb 7, 0x15f(6)
L_803ABA54:
    lwz 0, 0x454(30)
    cmpw 23, 0
    .4byte 0x4180FD50 # blt .L_803AB7AC
    mr 23, 30
    mr 24, 30
    li 25, 0x0
    li 22, 0x0
    .4byte 0x48000134 # b .L_803ABBA4
L_803ABA74:
    addi 0, 25, 0x4ac
    lbzx 0, 30, 0
    cmpw 22, 0
    .4byte 0x40820118 # bne .L_803ABB98
    lfs 3, 0x2f4(23)
    addi 4, 1, 0x34
    .4byte 0xC0420474 # lfs f2, lbl_80543414@sda21(r0)
    li 3, 0x0
    .4byte 0xC0220478 # lfs f1, lbl_80543418@sda21(r0)
    li 5, 0xcb
    lfs 0, 0x2f0(23)
    fsubs 2, 3, 2
    lfs 3, 0x2f8(23)
    li 6, 0x1
    fadds 0, 1, 0
    .4byte 0xC0220434 # lfs f1, lbl_805433D4@sda21(r0)
    stfs 2, 0x38(1)
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x34(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x3c(1)
    bl fn_8013CC50
    lfs 3, 0x2f4(23)
    addi 4, 1, 0x28
    .4byte 0xC0420474 # lfs f2, lbl_80543414@sda21(r0)
    li 3, 0x0
    .4byte 0xC0220478 # lfs f1, lbl_80543418@sda21(r0)
    li 5, 0xcc
    lfs 0, 0x2f0(23)
    fsubs 2, 3, 2
    lfs 3, 0x2f8(23)
    li 6, 0x1
    fadds 0, 1, 0
    .4byte 0xC0220434 # lfs f1, lbl_805433D4@sda21(r0)
    stfs 2, 0x2c(1)
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x28(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x30(1)
    bl fn_8013CC50
    lwz 0, 0x1b8(24)
    cmplwi 0, 0x0
    .4byte 0x4082005C # bne .L_803ABB88
    lwz 7, 0x158(24)
    addi 4, 1, 0x1c
    .4byte 0xC0620448 # lfs f3, lbl_805433E8@sda21(r0)
    li 3, 0x0
    lfs 1, 0x28(7)
    li 5, 0x241
    lfs 0, 0x20(7)
    li 6, 0x0
    lfs 2, 0x30(7)
    li 7, 0x0
    fsubs 4, 1, 0
    .4byte 0xC0020428 # lfs f0, lbl_805433C8@sda21(r0)
    .4byte 0xC0220434 # lfs f1, lbl_805433D4@sda21(r0)
    li 8, 0x0
    stfs 0, 0x20(1)
    li 9, 0x0
    fmadds 2, 4, 3, 2
    stfs 0, 0x24(1)
    li 10, 0x1
    stfs 2, 0x1c(1)
    bl fn_8013CC50
    stw 3, 0x1b8(24)
L_803ABB88:
    lbz 0, 0x4c8(30)
    cmpw 0, 25
    .4byte 0x40810008 # ble .L_803ABB98
    addi 25, 25, 0x1
L_803ABB98:
    addi 23, 23, 0xc
    addi 24, 24, 0x4
    addi 22, 22, 0x1
L_803ABBA4:
    lwz 0, 0x454(30)
    cmpw 22, 0
    .4byte 0x4180FEC8 # blt .L_803ABA74
    li 0, 0xf0
    stw 0, 0x444(30)
L_803ABBB8:
    lis 3, lbl_80529DEC@ha
    li 0, 0x8
    addi 3, 3, lbl_80529DEC@l
    li 4, 0x4
    lwz 6, 0x118(3)
    srwi 5, 0, 31
    lwz 7, 0x11c(3)
    srwi 3, 4, 31
    subfc 0, 0, 6
    srwi 0, 6, 31
    subfe 5, 0, 5
    srwi 0, 7, 31
    subfc 4, 4, 7
    and. 5, 6, 5
    subfe 0, 0, 3
    and 6, 7, 0
    .4byte 0x4180004C # blt .L_803ABC44
    cmpwi 5, 0x7
    .4byte 0x41810044 # bgt .L_803ABC44
    cmpwi 6, 0x0
    .4byte 0x4180003C # blt .L_803ABC44
    cmpwi 6, 0x3
    .4byte 0x41810034 # bgt .L_803ABC44
    lis 3, lbl_8050EC80@ha
    slwi 0, 5, 2
    addi 5, 3, lbl_8050EC80@l
    li 3, 0x1
    lwz 4, 0x10(5)
    add 0, 6, 0
    slw 0, 3, 0
    mulli 3, 4, 0xc8
    add 4, 5, 3
    lwz 3, 0x28(4)
    or 0, 3, 0
    stw 0, 0x28(4)
L_803ABC44:
    li 0, 0x4
    li 3, 0x22
    stb 0, 0x4c0(30)
    li 0, 0x3c
    stb 3, 0x4c1(30)
    stw 0, 0x440(30)
    lbz 0, 0x4c8(30)
    cmplwi 0, 0xff
    .4byte 0x41820054 # beq .L_803ABCB8
    lis 3, 0x1
    li 22, 0x0
    addi 23, 3, 0x8
    .4byte 0x48000034 # b .L_803ABCA8
L_803ABC78:
    stw 23, 0x18(1)
    addi 0, 22, 0x4ac
    addi 4, 1, 0x18
    lbzx 0, 30, 0
    slwi 3, 0, 2
    addi 0, 3, 0x174
    lwzx 3, 30, 0
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
L_803ABCA8:
    lbz 3, 0x4c8(30)
    addi 0, 3, 0x1
    cmpw 22, 0
    .4byte 0x4180FFC4 # blt .L_803ABC78
L_803ABCB8:
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    psq_l 29, 0xc8(1), 0, 0
    lfd 29, 0xc0(1)
    psq_l 28, 0xb8(1), 0, 0
    lfd 28, 0xb0(1)
    lmw 22, 0x88(1)
    lwz 0, 0xf4(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

