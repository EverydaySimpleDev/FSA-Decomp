# fn_803AA8F8 - helper (0xb9c), called by the fused body blob
.section extab, "a"
.balign 4
.global etb_8000F3F4
etb_8000F3F4:
    .4byte 0x424A0000
    .4byte 0x00000000
.size etb_8000F3F4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F108
eti_8001F108:
    .4byte fn_803AA8F8
    .4byte 0x00000B9C
    .4byte etb_8000F3F4
.size eti_8001F108, 12

.text
.balign 4
.global fn_803AA8F8

fn_803AA8F8:
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
    stfd 25, 0x60(1)
    psq_st 25, 0x68(1), 0, 0
    stfd 24, 0x50(1)
    psq_st 24, 0x58(1), 0, 0
    stfd 23, 0x40(1)
    psq_st 23, 0x48(1), 0, 0
    stmw 24, 0x20(1)
    mr 27, 3
    lis 4, lbl_80476208@ha
    lbz 0, 0x4c1(3)
    addi 31, 4, lbl_80476208@l
    cmplwi 0, 0x21
    .4byte 0x41810828 # bgt .L_803AB18C
    lis 4, jumptable_804AF9C8@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804AF9C8@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 3, 0x440(27)
    subi 0, 3, 0x1
    stw 0, 0x440(27)
    lwz 0, 0x440(27)
    cmpwi 0, 0x0
    .4byte 0x408207F8 # bne .L_803AB18C
    li 0, 0x96
    stw 0, 0x440(27)
    lwz 0, 0x450(27)
    cmpwi 0, 0x2
    .4byte 0x408002A8 # bge .L_803AAC50
    slwi 0, 0, 2
    lis 5, 0x7461
    add 3, 27, 0
    lis 4, 0x4e
    lwz 3, 0x10(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x7461
    stb 0, 0xb0(3)
    lis 3, 0x4e
    addi 6, 4, 0x3032
    lwz 0, 0x450(27)
    addi 5, 3, 0x6461
    slwi 0, 0, 2
    add 3, 27, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x776b
    stb 0, 0xb0(3)
    lis 3, 0x50
    addi 6, 4, 0x3032
    lwz 0, 0x450(27)
    addi 5, 3, 0x6d6d
    slwi 0, 0, 2
    add 3, 27, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 0, 0x450(27)
    cmpwi 0, 0x2
    .4byte 0x40800088 # bge .L_803AAAE0
    .4byte 0xCB220418 # lfd f25, lbl_805433B8@sda21(r0)
    addi 25, 31, 0x0
    .4byte 0xC3020428 # lfs f24, lbl_805433C8@sda21(r0)
    li 28, 0x0
    lis 26, 0x4330
L_803AAA70:
    lwz 0, 0x450(27)
    lwz 5, 0x0(25)
    slwi 3, 0, 2
    lwz 6, 0x4(25)
    addi 0, 3, 0x10
    lwzx 3, 27, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 28, 0x4c9
    lwz 12, 0x0(3)
    lbzx 0, 27, 0
    stw 26, 0x8(1)
    lwz 12, 0x24(12)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 25
    fmuls 0, 0, 24
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    mtctr 12
    bctrl
    addi 28, 28, 0x1
    addi 25, 25, 0x8
    cmpwi 28, 0xd
    .4byte 0x4180FF94 # blt .L_803AAA70
L_803AAAE0:
    mr 28, 27
    addi 30, 31, 0x68
    addi 29, 31, 0xc8
    li 31, 0x0
    .4byte 0x48000148 # b .L_803AAC38
L_803AAAF4:
    lwz 0, 0x450(27)
    cmpwi 0, 0x2
    .4byte 0x40800088 # bge .L_803AAB84
    .4byte 0xCB220418 # lfd f25, lbl_805433B8@sda21(r0)
    mr 24, 30
    .4byte 0xC3020428 # lfs f24, lbl_805433C8@sda21(r0)
    li 25, 0x0
    lis 26, 0x4330
L_803AAB14:
    lwz 0, 0x450(27)
    lwz 5, 0x0(24)
    slwi 3, 0, 2
    lwz 6, 0x4(24)
    addi 0, 3, 0x10
    lwzx 3, 27, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 25, 0x4d6
    lwz 12, 0x0(3)
    lbzx 0, 27, 0
    stw 26, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 25
    fmuls 0, 0, 24
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 25, 25, 0x1
    addi 24, 24, 0x8
    cmpwi 25, 0x3
    .4byte 0x4180FF94 # blt .L_803AAB14
L_803AAB84:
    lwz 0, 0x450(27)
    cmpwi 0, 0x2
    .4byte 0x40800088 # bge .L_803AAC14
    .4byte 0xCB220418 # lfd f25, lbl_805433B8@sda21(r0)
    mr 24, 29
    .4byte 0xC3020428 # lfs f24, lbl_805433C8@sda21(r0)
    li 25, 0x0
    lis 26, 0x4330
L_803AABA4:
    lwz 0, 0x450(27)
    lwz 5, 0x0(24)
    slwi 3, 0, 2
    lwz 6, 0x4(24)
    addi 0, 3, 0x10
    lwzx 3, 27, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 25, 0x4d9
    lwz 12, 0x0(3)
    lbzx 0, 27, 0
    stw 26, 0x10(1)
    lwz 12, 0x24(12)
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 25
    fmuls 0, 0, 24
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 25, 25, 0x1
    addi 24, 24, 0x8
    cmpwi 25, 0x2
    .4byte 0x4180FF94 # blt .L_803AABA4
L_803AAC14:
    addi 0, 31, 0x4b8
    li 3, 0xff
    stbx 3, 27, 0
    li 0, 0x0
    addi 31, 31, 0x1
    addi 30, 30, 0x18
    sth 0, 0x460(28)
    addi 28, 28, 0x2
    addi 29, 29, 0x10
L_803AAC38:
    lwz 0, 0x454(27)
    cmpw 31, 0
    .4byte 0x4180FEB4 # blt .L_803AAAF4
    li 0, 0x2
    stb 0, 0x4c1(27)
    .4byte 0x48000540 # b .L_803AB18C
L_803AAC50:
    li 0, 0x8
    stb 0, 0x4c1(27)
    .4byte 0x48000534 # b .L_803AB18C
    bl fn_803B1B60
    .4byte 0x4800052C # b .L_803AB18C
    bl fn_803B14F8
    .4byte 0x48000524 # b .L_803AB18C
    bl fn_803B0FD4
    .4byte 0x4800051C # b .L_803AB18C
    bl fn_803B0978
    .4byte 0x48000514 # b .L_803AB18C
    bl fn_803B03E8
    .4byte 0x4800050C # b .L_803AB18C
    bl fn_803B0158
    .4byte 0x48000504 # b .L_803AB18C
    bl fn_803AFCF0
    .4byte 0x480004FC # b .L_803AB18C
    bl fn_803AFA78
    .4byte 0x480004F4 # b .L_803AB18C
    bl fn_803AF79C
    .4byte 0x480004EC # b .L_803AB18C
    bl fn_803AF604
    .4byte 0x480004E4 # b .L_803AB18C
    bl fn_803AF1B0
    .4byte 0x480004DC # b .L_803AB18C
    bl fn_803AEF08
    .4byte 0x480004D4 # b .L_803AB18C
    bl fn_803AEC78
    .4byte 0x480004CC # b .L_803AB18C
    bl fn_803AE810
    .4byte 0x480004C4 # b .L_803AB18C
    bl fn_803AE598
    .4byte 0x480004BC # b .L_803AB18C
    bl fn_803AE308
    .4byte 0x480004B4 # b .L_803AB18C
    bl fn_803ADE9C
    .4byte 0x480004AC # b .L_803AB18C
    bl fn_803ADC0C
    .4byte 0x480004A4 # b .L_803AB18C
    li 28, 0x0
    mr 24, 27
    mr 26, 28
    .4byte 0x48000058 # b .L_803AAD50
L_803AACFC:
    mr 3, 26
    bl fn_80403414
    bl fn_80403070
    lwz 4, 0x370(24)
    cmpw 4, 3
    .4byte 0x4080000C # bge .L_803AAD1C
    addi 0, 4, 0x2
    stw 0, 0x370(24)
L_803AAD1C:
    mr 3, 26
    bl fn_80403414
    bl fn_80403070
    lwz 0, 0x370(24)
    cmpw 0, 3
    .4byte 0x41800018 # blt .L_803AAD48
    mr 3, 26
    bl fn_80403414
    bl fn_80403070
    stw 3, 0x370(24)
    addi 28, 28, 0x1
L_803AAD48:
    addi 24, 24, 0x4
    addi 26, 26, 0x1
L_803AAD50:
    lwz 0, 0x454(27)
    cmpw 26, 0
    .4byte 0x4180FFA4 # blt .L_803AACFC
    cmpw 28, 0
    .4byte 0x41800058 # blt .L_803AADB8
    li 0, 0xff
    li 3, 0x0
    stb 0, 0x4c8(27)
    li 0, 0x96
    li 4, 0xf
    li 5, -0x1
    stw 3, 0x438(27)
    stw 0, 0x440(27)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    li 0, 0x0
    stw 0, 0x438(27)
    lwz 0, 0x450(27)
    cmpwi 0, 0x2
    .4byte 0x40800010 # bge .L_803AADAC
    li 0, 0x16
    stb 0, 0x4c1(27)
    .4byte 0x480003E4 # b .L_803AB18C
L_803AADAC:
    li 0, 0x1c
    stb 0, 0x4c1(27)
    .4byte 0x480003D8 # b .L_803AB18C
L_803AADB8:
    lwz 0, 0x438(27)
    cmpw 28, 0
    .4byte 0x41820018 # beq .L_803AADD8
    stw 28, 0x438(27)
    li 4, 0x10
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803AADD8:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0xe
    li 5, -0x1
    bl fn_80458880
    .4byte 0x480003A4 # b .L_803AB18C
    bl fn_803AD894
    .4byte 0x4800039C # b .L_803AB18C
    bl fn_803AD4B0
    .4byte 0x48000394 # b .L_803AB18C
    lwz 3, 0x440(27)
    subi 0, 3, 0x1
    stw 0, 0x440(27)
    lbz 3, 0x4dc(27)
    cmplwi 3, 0xfe
    .4byte 0x40800010 # bge .L_803AAE20
    addi 0, 3, 0x2
    stb 0, 0x4dc(27)
    .4byte 0x4800000C # b .L_803AAE28
L_803AAE20:
    li 0, 0xff
    stb 0, 0x4dc(27)
L_803AAE28:
    lwz 0, 0x440(27)
    cmpwi 0, 0x0
    .4byte 0x4082035C # bne .L_803AB18C
    li 3, 0x96
    li 0, 0x19
    stw 3, 0x440(27)
    stb 0, 0x4c1(27)
    .4byte 0x48000348 # b .L_803AB18C
    bl fn_803AD220
    .4byte 0x48000340 # b .L_803AB18C
    bl fn_803ACDA4
    .4byte 0x48000338 # b .L_803AB18C
    lwz 3, 0x440(27)
    subi 0, 3, 0x1
    stw 0, 0x440(27)
    lbz 3, 0x4dd(27)
    cmplwi 3, 0x1
    .4byte 0x40810010 # ble .L_803AAE7C
    subi 0, 3, 0x2
    stb 0, 0x4dd(27)
    .4byte 0x4800000C # b .L_803AAE84
L_803AAE7C:
    li 0, 0x0
    stb 0, 0x4dd(27)
L_803AAE84:
    lwz 0, 0x440(27)
    cmpwi 0, 0x95
    .4byte 0x408200C0 # bne .L_803AAF4C
    mr 24, 27
    mr 28, 27
    li 26, 0x0
    .4byte 0x3B2203F0 # li r25, lbl_80543390@sda21
    .4byte 0x480000A0 # b .L_803AAF40
L_803AAEA4:
    addi 0, 26, 0x4
    li 3, 0x1
    slw 0, 3, 0
    lbz 3, 0x4db(27)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820074 # beq .L_803AAF30
    lwz 0, 0x188(24)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_803AAEF8
    lhz 5, 0x0(25)
    addi 4, 28, 0x2f0
    .4byte 0xC0220434 # lfs f1, lbl_805433D4@sda21(r0)
    li 3, 0x0
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x188(24)
L_803AAEF8:
    lwz 0, 0x198(24)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_803AAF30
    .4byte 0xC0220434 # lfs f1, lbl_805433D4@sda21(r0)
    addi 4, 28, 0x2f0
    li 3, 0x0
    li 5, 0x475
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x198(24)
L_803AAF30:
    addi 24, 24, 0x4
    addi 25, 25, 0x2
    addi 28, 28, 0xc
    addi 26, 26, 0x1
L_803AAF40:
    lwz 0, 0x454(27)
    cmpw 26, 0
    .4byte 0x4180FF5C # blt .L_803AAEA4
L_803AAF4C:
    lwz 0, 0x440(27)
    cmpwi 0, 0x0
    .4byte 0x40820238 # bne .L_803AB18C
    mr 6, 27
    li 5, 0x0
    .4byte 0x4800006C # b .L_803AAFCC
L_803AAF64:
    lwz 7, 0x188(6)
    cmplwi 7, 0x0
    .4byte 0x41820020 # beq .L_803AAF8C
    lwz 4, 0xf4(7)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(7)
    stw 3, 0x24(7)
    stw 0, 0x188(6)
L_803AAF8C:
    lwz 7, 0x198(6)
    cmplwi 7, 0x0
    .4byte 0x41820020 # beq .L_803AAFB4
    lwz 4, 0xf4(7)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(7)
    stw 3, 0x24(7)
    stw 0, 0x198(6)
L_803AAFB4:
    li 3, 0x96
    li 0, 0x1c
    stw 3, 0x440(27)
    addi 6, 6, 0x4
    addi 5, 5, 0x1
    stb 0, 0x4c1(27)
L_803AAFCC:
    lwz 0, 0x454(27)
    cmpw 5, 0
    .4byte 0x4180FF90 # blt .L_803AAF64
    .4byte 0x480001B4 # b .L_803AB18C
    bl fn_803AC998
    .4byte 0x480001AC # b .L_803AB18C
    bl fn_803AC6FC
    .4byte 0x480001A4 # b .L_803AB18C
    bl fn_803AC154
    .4byte 0x4800019C # b .L_803AB18C
    lwz 3, 0x440(27)
    subi 0, 3, 0x1
    stw 0, 0x440(27)
    lwz 24, 0x440(27)
    cmpwi 24, 0x0
    .4byte 0x40820030 # bne .L_803AB038
    li 0, 0x96
    li 4, 0x2c
    stw 0, 0x440(27)
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
    li 3, 0x96
    li 0, 0x20
    stw 3, 0x440(27)
    stb 0, 0x4c1(27)
    .4byte 0x48000158 # b .L_803AB18C
L_803AB038:
    cmpwi 24, 0x8a
    .4byte 0x418000B0 # blt .L_803AB0EC
    subi 3, 24, 0x8a
    lis 0, 0x4330
    subfic 3, 3, 0xc
    stw 0, 0x10(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    stw 0, 0x14(1)
    .4byte 0xC0020468 # lfs f0, lbl_80543408@sda21(r0)
    lfd 1, 0x10(1)
    .4byte 0xC0620464 # lfs f3, lbl_80543404@sda21(r0)
    fsubs 1, 1, 2
    lwz 3, 0xa4(27)
    fdivs 0, 1, 0
    fmuls 24, 3, 0
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0xa4(27)
    lfs 0, 0x40c(27)
    lwz 12, 0x0(3)
    fadds 2, 0, 24
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 0, 0x440(27)
    cmpwi 0, 0x8a
    .4byte 0x408200E8 # bne .L_803AB18C
    lwz 3, 0xa4(27)
    li 4, 0x0
    li 0, 0x1
    stb 4, 0xb0(3)
    lwz 3, 0x70(27)
    stb 0, 0xb0(3)
    lwz 3, 0x70(27)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x70(27)
    lfs 0, 0x3f4(27)
    lwz 12, 0x0(3)
    fadds 2, 0, 24
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x480000A4 # b .L_803AB18C
L_803AB0EC:
    cmpwi 24, 0x80
    .4byte 0x4180009C # blt .L_803AB18C
    lwz 3, 0x70(27)
    bl fn_80095FB4
    subi 0, 24, 0x80
    lfs 1, 0x0(3)
    xoris 3, 0, 0x8000
    .4byte 0xC8620440 # lfd f3, lbl_805433E0@sda21(r0)
    lis 0, 0x4330
    stw 3, 0x14(1)
    lwz 3, 0x70(27)
    stw 0, 0x10(1)
    lwz 12, 0x0(3)
    lfd 2, 0x10(1)
    .4byte 0xC0020468 # lfs f0, lbl_80543408@sda21(r0)
    fsubs 2, 2, 3
    .4byte 0xC0620464 # lfs f3, lbl_80543404@sda21(r0)
    lfs 4, 0x3f4(27)
    lwz 12, 0x10(12)
    fdivs 0, 2, 0
    fmuls 0, 3, 0
    fadds 2, 4, 0
    mtctr 12
    bctrl
    lwz 0, 0x440(27)
    cmpwi 0, 0x80
    .4byte 0x40820038 # bne .L_803AB18C
    lwz 3, 0x70(27)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0xa4(27)
    lfs 2, 0x3f4(27)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x48000010 # b .L_803AB18C
    bl fn_803ABCEC
    .4byte 0x48000008 # b .L_803AB18C
    bl fn_803AB494
L_803AB18C:
    lis 3, lbl_8050DB0C@ha
    .4byte 0xC3A20448 # lfs f29, lbl_805433E8@sda21(r0)
    .4byte 0xC3C2042C # lfs f30, lbl_805433CC@sda21(r0)
    mr 28, 27
    .4byte 0xCBE20440 # lfd f31, lbl_805433E0@sda21(r0)
    mr 29, 27
    .4byte 0xC322045C # lfs f25, lbl_805433FC@sda21(r0)
    addi 31, 3, lbl_8050DB0C@l
    .4byte 0xC3420460 # lfs f26, lbl_80543400@sda21(r0)
    li 30, 0x0
    .4byte 0xC3620430 # lfs f27, lbl_805433D0@sda21(r0)
    lis 26, 0x4330
    .4byte 0xC3820428 # lfs f28, lbl_805433C8@sda21(r0)
    .4byte 0x48000264 # b .L_803AB424
L_803AB1C4:
    lwz 3, 0x350(28)
    lwz 0, 0x340(28)
    lwz 4, 0x360(28)
    add 0, 0, 3
    lwz 5, 0x370(28)
    add 0, 0, 4
    lwz 3, 0x320(28)
    add 0, 0, 5
    lwz 4, 0x380(28)
    add 0, 3, 0
    lwz 5, 0x3b0(28)
    subf 0, 4, 0
    lwz 3, 0x3a0(28)
    add 0, 0, 5
    add 0, 3, 0
    stw 0, 0x3e0(28)
    lwz 0, 0x3e0(28)
    cmpwi 0, -0x1388
    .4byte 0x4080000C # bge .L_803AB218
    li 0, -0x1388
    stw 0, 0x3e0(28)
L_803AB218:
    lwz 0, 0x3e0(28)
    cmpwi 0, -0x1f4
    .4byte 0x40800054 # bge .L_803AB274
    lwz 4, 0x434(27)
    lis 3, 0x4330
    lha 0, 0x2b0(31)
    xoris 4, 4, 0x8000
    stw 3, 0x10(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8620440 # lfd f3, lbl_805433E0@sda21(r0)
    stw 4, 0x14(1)
    .4byte 0xC042044C # lfs f2, lbl_805433EC@sda21(r0)
    lfd 0, 0x10(1)
    stw 0, 0xc(1)
    fsubs 1, 0, 3
    .4byte 0xC0020450 # lfs f0, lbl_805433F0@sda21(r0)
    stw 3, 0x8(1)
    fdivs 2, 2, 1
    lfd 1, 0x8(1)
    fsubs 1, 1, 3
    fmuls 1, 2, 1
    fdivs 24, 1, 0
    .4byte 0x480000C0 # b .L_803AB330
L_803AB274:
    cmpwi 0, 0xbb8
    .4byte 0x40810054 # ble .L_803AB2CC
    lwz 4, 0x434(27)
    lis 3, 0x4330
    lha 0, 0x2b0(31)
    xoris 4, 4, 0x8000
    stw 3, 0x10(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8620440 # lfd f3, lbl_805433E0@sda21(r0)
    stw 4, 0x14(1)
    .4byte 0xC0420454 # lfs f2, lbl_805433F4@sda21(r0)
    lfd 0, 0x10(1)
    stw 0, 0xc(1)
    fsubs 1, 0, 3
    .4byte 0xC0020450 # lfs f0, lbl_805433F0@sda21(r0)
    stw 3, 0x8(1)
    fdivs 2, 2, 1
    lfd 1, 0x8(1)
    fsubs 1, 1, 3
    fmuls 1, 2, 1
    fdivs 24, 1, 0
    .4byte 0x48000068 # b .L_803AB330
L_803AB2CC:
    lis 4, 0x4330
    xoris 3, 0, 0x8000
    lwz 0, 0x434(27)
    stw 3, 0xc(1)
    xoris 0, 0, 0x8000
    .4byte 0xC8820440 # lfd f4, lbl_805433E0@sda21(r0)
    stw 4, 0x8(1)
    lha 3, 0x2b0(31)
    lfd 0, 0x8(1)
    stw 0, 0x1c(1)
    xoris 0, 3, 0x8000
    fsubs 2, 0, 4
    .4byte 0xC0620458 # lfs f3, lbl_805433F8@sda21(r0)
    stw 4, 0x18(1)
    .4byte 0xC0020450 # lfs f0, lbl_805433F0@sda21(r0)
    lfd 1, 0x18(1)
    fmuls 2, 3, 2
    stw 0, 0x14(1)
    fsubs 1, 1, 4
    stw 4, 0x10(1)
    fdivs 1, 2, 1
    lfd 2, 0x10(1)
    fsubs 2, 2, 4
    fmuls 1, 2, 1
    fdivs 24, 1, 0
L_803AB330:
    lwz 3, 0x158(28)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x158(28)
    lfs 0, 0x3f0(27)
    lwz 12, 0x0(3)
    fsubs 2, 0, 24
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 0, 0x3e0(28)
    cmpwi 0, 0x270f
    .4byte 0x4081000C # ble .L_803AB36C
    li 0, 0x270f
    stw 0, 0x3e0(28)
L_803AB36C:
    lwz 3, 0x158(28)
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 4, 0x4(4)
    fsubs 23, 1, 0
    lhz 25, 0x4(4)
    bl fn_80095FB4
    lfs 24, 0x0(3)
    lwz 3, 0x168(27)
    bl fn_80095FB4
    lfs 0, 0x0(3)
    xoris 0, 25, 0x8000
    stw 0, 0x1c(1)
    fadds 0, 0, 24
    stw 26, 0x18(1)
    fmadds 1, 23, 29, 0
    lfd 0, 0x18(1)
    fsubs 0, 0, 31
    fmuls 1, 30, 1
    fdivs 0, 1, 0
    stfs 0, 0x2f0(29)
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lwz 3, 0x158(28)
    lwz 4, 0x4(4)
    lhz 25, 0x6(4)
    bl fn_80095FB4
    lfs 24, 0xc(3)
    lwz 3, 0x168(27)
    bl fn_80095FB4
    lfs 0, 0x4(3)
    xoris 0, 25, 0x8000
    stw 0, 0x14(1)
    addi 28, 28, 0x4
    fadds 0, 0, 24
    addi 30, 30, 0x1
    stw 26, 0x10(1)
    fsubs 1, 0, 25
    lfd 0, 0x10(1)
    fsubs 0, 0, 31
    fsubs 1, 1, 26
    fmuls 1, 27, 1
    fdivs 0, 1, 0
    stfs 0, 0x2f4(29)
    stfs 28, 0x2f8(29)
    addi 29, 29, 0xc
L_803AB424:
    lwz 0, 0x454(27)
    cmpw 30, 0
    .4byte 0x4180FD98 # blt .L_803AB1C4
    mr 3, 27
    bl fn_803B2FB0
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
    psq_l 25, 0x68(1), 0, 0
    lfd 25, 0x60(1)
    psq_l 24, 0x58(1), 0, 0
    lfd 24, 0x50(1)
    psq_l 23, 0x48(1), 0, 0
    lfd 23, 0x40(1)
    lmw 24, 0x20(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

