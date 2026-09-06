# fn_803ABCEC - helper (0x468) - reads the nearby float-constant data table (804AF980)
.section extab, "a"
.balign 4
.global etb_8000F404
etb_8000F404:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000F404, 8

.section extabindex, "a"
.balign 4
.global eti_8001F120
eti_8001F120:
    .4byte fn_803ABCEC
    .4byte 0x00000468
    .4byte etb_8000F404
.size eti_8001F120, 12

.text
.balign 4
.global fn_803ABCEC

fn_803ABCEC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 31, 3
    lwz 3, 0x440(3)
    subi 0, 3, 0x1
    stw 0, 0x440(31)
    lwz 3, 0x440(31)
    cmpwi 3, 0x0
    .4byte 0x408201E0 # bne .L_803ABF00
    li 3, 0x96
    li 0, 0x0
    stw 3, 0x440(31)
    mr 5, 31
    li 6, 0x0
    li 7, 0x0
    stb 0, 0x4c3(31)
    li 4, 0x3e
    li 3, 0xbd
    stb 0, 0x4c4(31)
    stb 0, 0x4c5(31)
    stb 0, 0x4c6(31)
    .4byte 0x4800004C # b .L_803ABDA0
L_803ABD58:
    lbz 0, 0x4c8(31)
    cmplwi 0, 0xff
    .4byte 0x41820034 # beq .L_803ABD94
    addi 0, 6, 0x4ac
    lbzx 0, 31, 0
    cmpw 7, 0
    .4byte 0x4082001C # bne .L_803ABD8C
    stw 4, 0x3c0(5)
    lbz 0, 0x4c8(31)
    cmpw 0, 6
    .4byte 0x40810018 # ble .L_803ABD98
    addi 6, 6, 0x1
    .4byte 0x48000010 # b .L_803ABD98
L_803ABD8C:
    stw 3, 0x3c0(5)
    .4byte 0x48000008 # b .L_803ABD98
L_803ABD94:
    stw 3, 0x3c0(5)
L_803ABD98:
    addi 5, 5, 0x4
    addi 7, 7, 0x1
L_803ABDA0:
    lwz 0, 0x454(31)
    cmpw 7, 0
    .4byte 0x4180FFB0 # blt .L_803ABD58
    lis 3, lbl_80529DEC@ha
    addi 7, 3, lbl_80529DEC@l
    lwz 3, 0x118(7)
    lwz 5, 0x11c(7)
    cmpwi 3, 0x7
    mr 8, 5
    .4byte 0x41820024 # beq .L_803ABDE8
    .4byte 0x40800038 # bge .L_803ABE00
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_803ABDD8
    .4byte 0x4800002C # b .L_803ABE00
L_803ABDD8:
    cmpwi 5, 0x3
    .4byte 0x40820024 # bne .L_803ABE00
    li 8, 0x2
    .4byte 0x4800001C # b .L_803ABE00
L_803ABDE8:
    cmpwi 5, 0x2
    .4byte 0x40820008 # bne .L_803ABDF4
    li 8, 0x1
L_803ABDF4:
    cmpwi 8, 0x3
    .4byte 0x40820008 # bne .L_803ABE00
    li 8, 0x2
L_803ABE00:
    lbz 0, 0x4c8(31)
    cmplwi 0, 0x0
    .4byte 0x40820090 # bne .L_803ABE98
    lbz 0, 0x4ac(31)
    lis 3, lbl_80529DEC@ha
    addi 6, 3, lbl_80529DEC@l
    slwi 4, 0, 2
    li 3, 0x0
    add 5, 6, 4
    li 0, 0x1
    lwz 4, 0x130(5)
    addi 4, 4, 0x1
    stw 4, 0x130(5)
    stb 3, 0x243(6)
    lwz 3, 0x118(7)
    lbz 4, 0x4ac(31)
    cmpwi 3, 0x0
    slw 0, 0, 4
    stb 0, 0x243(6)
    .4byte 0x4180002C # blt .L_803ABE78
    cmpwi 3, 0x8
    .4byte 0x40800024 # bge .L_803ABE78
    cmpwi 8, 0x0
    .4byte 0x4180001C # blt .L_803ABE78
    cmpwi 8, 0x3
    .4byte 0x40800014 # bge .L_803ABE78
    mulli 0, 3, 0x3
    add 0, 6, 0
    add 3, 0, 8
    stb 4, 0x1fc(3)
L_803ABE78:
    lbz 0, 0x4c8(31)
    cmplwi 0, 0xff
    .4byte 0x41820064 # beq .L_803ABEE4
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x11
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000050 # b .L_803ABEE4
L_803ABE98:
    cmpwi 3, 0x0
    .4byte 0x41800038 # blt .L_803ABED4
    cmpwi 3, 0x8
    .4byte 0x40800030 # bge .L_803ABED4
    cmpwi 5, 0x0
    .4byte 0x41800028 # blt .L_803ABED4
    cmpwi 5, 0x3
    .4byte 0x40800020 # bge .L_803ABED4
    mulli 0, 3, 0x3
    lis 3, lbl_80529DEC@ha
    li 4, 0xff
    addi 3, 3, lbl_80529DEC@l
    add 0, 3, 0
    add 3, 0, 5
    stb 4, 0x1fc(3)
L_803ABED4:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2b
    li 5, -0x1
    bl fn_80458880
L_803ABEE4:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2c
    li 5, -0x1
    bl fn_80458880
    li 0, 0x21
    stb 0, 0x4c1(31)
    .4byte 0x48000238 # b .L_803AC134
L_803ABF00:
    cmpwi 3, 0x8a
    .4byte 0x41800168 # blt .L_803AC06C
    subi 3, 3, 0x8a
    lis 0, 0x4330
    subfic 3, 3, 0xc
    stw 0, 0x8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    stw 0, 0xc(1)
    .4byte 0xC0020468 # lfs f0, lbl_80543408@sda21(r0)
    lfd 1, 0x8(1)
    .4byte 0xC0620464 # lfs f3, lbl_80543404@sda21(r0)
    fsubs 1, 1, 2
    lwz 3, 0x70(31)
    fdivs 0, 1, 0
    fmuls 31, 3, 0
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x70(31)
    lfs 0, 0x3f4(31)
    lwz 12, 0x0(3)
    fadds 2, 0, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 0, 0x440(31)
    cmpwi 0, 0x8a
    .4byte 0x408201C8 # bne .L_803AC134
    lwz 3, 0x70(31)
    li 0, 0x0
    stb 0, 0xb0(3)
    lbz 0, 0x4c8(31)
    cmplwi 0, 0x0
    .4byte 0x408200B0 # bne .L_803AC034
    lbz 0, 0x4ac(31)
    lis 3, lbl_804AF980@ha
    lis 5, 0x5449
    slwi 0, 0, 2
    addi 3, 3, lbl_804AF980@l
    lwzx 4, 3, 0
    addi 3, 5, 0x4d47
    bl fn_80403104
    mr 0, 3
    lwz 3, 0x7c(31)
    mr 30, 0
    li 5, 0x0
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x80(31)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x78(31)
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 3, 0x78(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x78(31)
    lfs 0, 0x414(31)
    lwz 12, 0x0(3)
    fadds 2, 0, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0x7c(31)
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 3, 0x80(31)
    stb 0, 0xb0(3)
    .4byte 0x48000104 # b .L_803AC134
L_803AC034:
    lwz 3, 0x74(31)
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 3, 0x74(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x74(31)
    lfs 0, 0x418(31)
    lwz 12, 0x0(3)
    fadds 2, 0, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x480000CC # b .L_803AC134
L_803AC06C:
    cmpwi 3, 0x80
    .4byte 0x418000C4 # blt .L_803AC134
    subi 0, 3, 0x80
    lis 3, 0x4330
    xoris 4, 0, 0x8000
    lbz 0, 0x4c8(31)
    stw 4, 0xc(1)
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    cmplwi 0, 0x0
    stw 3, 0x8(1)
    .4byte 0xC0020468 # lfs f0, lbl_80543408@sda21(r0)
    lfd 1, 0x8(1)
    .4byte 0xC0620464 # lfs f3, lbl_80543404@sda21(r0)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fmuls 31, 3, 0
    .4byte 0x40820030 # bne .L_803AC0DC
    lwz 3, 0x78(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x78(31)
    lfs 0, 0x414(31)
    lwz 12, 0x0(3)
    fadds 2, 0, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x4800002C # b .L_803AC104
L_803AC0DC:
    lwz 3, 0x74(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x74(31)
    lfs 0, 0x418(31)
    lwz 12, 0x0(3)
    fadds 2, 0, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_803AC104:
    lwz 0, 0x440(31)
    cmpwi 0, 0x80
    .4byte 0x40820028 # bne .L_803AC134
    lwz 3, 0x70(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x70(31)
    lfs 2, 0x3f4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_803AC134:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

