# fn_803FCBC4 - actor@lbl_804B0F10: constructor (0x1FD0)
# Nearly identical call-pattern to lbl_804B0B00's constructor (string
# format fn_80095FB4 x47, 15 sub-object allocations) - a sibling class in
# the same text/string-formatting family.
.section extab, "a"
.balign 4
.global etb_8000FF04
etb_8000FF04:
    .4byte 0x608A0000
    .4byte 0x000000FC
    .4byte 0x00000058
    .4byte 0x00000130
    .4byte 0x00000060
    .4byte 0x0000015C
    .4byte 0x00000068
    .4byte 0x00000188
    .4byte 0x00000070
    .4byte 0x000001B4
    .4byte 0x00000078
    .4byte 0x000001F0
    .4byte 0x00000080
    .4byte 0x0000021C
    .4byte 0x00000088
    .4byte 0x00001EF0
    .4byte 0x00000090
    .4byte 0x00001F20
    .4byte 0x00000098
    .4byte 0x00001F94
    .4byte 0x000000A0
    .4byte 0x00000000
    .4byte 0x8A800014
    .4byte dtor_80084580
    .4byte 0x8A800014
    .4byte dtor_80084580
    .4byte 0x8A800014
    .4byte dtor_80084580
    .4byte 0x8A800014
    .4byte dtor_80084580
    .4byte 0x8A800014
    .4byte dtor_80084580
    .4byte 0x8A800014
    .4byte dtor_80084580
    .4byte 0x8A800014
    .4byte dtor_80084580
    .4byte 0x8A800014
    .4byte dtor_80084580
    .4byte 0x8A800014
    .4byte dtor_80084580
    .4byte 0x8A800015
    .4byte dtor_80084580
.size etb_8000FF04, 168

.section extabindex, "a"
.balign 4
.global eti_8001FDF8
eti_8001FDF8:
    .4byte fn_803FCBC4
    .4byte 0x00001FD0
    .4byte etb_8000FF04
.size eti_8001FDF8, 12

.text
.balign 4
.global fn_803FCBC4

fn_803FCBC4:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stmw 20, 0x40(1)
    lis 4, lbl_804B0F10@ha
    mr 31, 3
    addi 0, 4, lbl_804B0F10@l
    lis 4, lbl_80529DEC@ha
    stw 0, 0x0(3)
    li 26, 0x0
    lis 5, lbl_80478A60@ha
    addi 4, 4, lbl_80529DEC@l
    stw 26, 0x1a4(3)
    mr 24, 31
    mr 27, 31
    addi 30, 5, lbl_80478A60@l
    stw 26, 0x1a8(3)
    li 22, 0x0
    li 25, 0x1
    lbz 0, 0x23d(4)
    stw 0, 0x1ac(3)
    stw 26, 0x1c0(3)
    stb 26, 0x252(3)
    stb 26, 0x25b(3)
    stb 26, 0x25c(3)
    stw 26, 0x1c8(3)
    stw 26, 0x1c4(3)
    stw 26, 0x1cc(3)
L_803FCC44:
    stw 26, 0x1d0(24)
    mr 3, 22
    bl fn_80403414
    stw 3, 0x1e0(24)
    mr 3, 22
    bl fn_804033D4
    stw 3, 0x1f0(24)
    mr 3, 22
    bl fn_8040336C
    stw 3, 0x200(24)
    addi 22, 22, 0x1
    cmpwi 22, 0x4
    stw 26, 0x210(24)
    stw 25, 0x1b0(24)
    addi 24, 24, 0x4
    sth 26, 0x240(27)
    addi 27, 27, 0x2
    .4byte 0x4180FFBC # blt .L_803FCC44
    li 4, 0x0
    li 0, 0x4
    sth 4, 0x248(31)
    li 3, 0x118
    sth 4, 0x24a(31)
    stb 4, 0x25e(31)
    stb 4, 0x25d(31)
    sth 4, 0x24c(31)
    stw 0, 0x350(31)
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803FCCC0
    bl fn_8009C4EC
L_803FCCC0:
    stw 20, 0x4(31)
    lis 4, lbl_80529DEC@ha
    addi 29, 4, lbl_80529DEC@l
    addi 4, 30, 0xf6c
    lwz 3, 0x4(31)
    lis 5, 0x110
    lwz 6, 0x28(29)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803FCCF4
    bl fn_8009C4EC
L_803FCCF4:
    stw 20, 0x8(31)
    addi 4, 30, 0xf80
    lis 5, 0x110
    lwz 3, 0x8(31)
    lwz 6, 0x28(29)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803FCD20
    bl fn_8009C4EC
L_803FCD20:
    stw 20, 0xc(31)
    addi 4, 30, 0xf90
    lis 5, 0x110
    lwz 3, 0xc(31)
    lwz 6, 0x28(29)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803FCD4C
    bl fn_8009C4EC
L_803FCD4C:
    stw 20, 0x10(31)
    addi 4, 30, 0xfa4
    lis 5, 0x110
    lwz 3, 0x10(31)
    lwz 6, 0x28(29)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803FCD78
    bl fn_8009C4EC
L_803FCD78:
    stw 20, 0x14(31)
    addi 4, 30, 0xfb4
    lis 5, 0x110
    lwz 3, 0x14(31)
    lwz 6, 0x28(29)
    bl fn_8009C69C
    mr 24, 31
    li 22, 0x0
    lis 26, 0x6161
    lis 25, 0x50
L_803FCDA0:
    li 3, 0x118
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803FCDB4
    bl fn_8009C4EC
L_803FCDB4:
    stw 20, 0x18(24)
    addi 4, 30, 0xfc4
    lis 5, 0x110
    lwz 3, 0x18(24)
    lwz 6, 0x28(29)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803FCDE0
    bl fn_8009C4EC
L_803FCDE0:
    stw 20, 0x28(24)
    addi 4, 30, 0xfdc
    lis 5, 0x110
    lwz 3, 0x28(24)
    lwz 6, 0x28(29)
    bl fn_8009C69C
    li 8, 0x82
    li 7, 0xa0
    li 4, 0x0
    li 0, 0xff
    stb 8, 0x18(1)
    addi 6, 26, 0x3030
    addi 5, 25, 0x6363
    stb 8, 0x19(1)
    stb 7, 0x1a(1)
    stb 4, 0x1b(1)
    lwz 4, 0x18(1)
    stb 8, 0x20(1)
    stb 8, 0x21(1)
    stb 7, 0x22(1)
    stb 0, 0x23(1)
    lwz 0, 0x20(1)
    stw 4, 0x1c(1)
    stw 0, 0x24(1)
    lwz 3, 0x28(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x24
    addi 5, 1, 0x1c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 24, 24, 0x4
    cmpwi 22, 0x4
    .4byte 0x4180FF28 # blt .L_803FCDA0
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
    addi 4, 30, 0xff4
    bl fn_804031C4
    lis 5, 0x5343
    mr 22, 3
    addi 4, 30, 0x100c
    addi 3, 5, 0x524e
    bl fn_804031C4
    mr 24, 31
    mr 23, 3
    addi 29, 30, 0x918
    li 21, 0x0
    lis 28, 0x5f30
    lis 27, 0x4e55
    lis 26, 0x6179
    lis 25, 0x4e64
L_803FCEF0:
    mr 3, 22
    bl fn_800A4994
    stw 3, 0x38(24)
    mr 3, 23
    bl fn_800A4994
    stw 3, 0x48(24)
    addi 6, 28, 0x3031
    addi 5, 27, 0x4c4c
    lwz 3, 0x18(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lwz 4, 0x38(24)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    lwz 3, 0x28(24)
    addi 6, 26, 0x3030
    addi 5, 25, 0x6174
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lwz 4, 0x48(24)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x0(29)
    stw 0, 0x220(24)
    lwz 6, 0x4(29)
    stw 0, 0x230(24)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 21, 21, 0x1
    li 0, 0x0
    cmpwi 21, 0x4
    stb 0, 0xb0(3)
    addi 24, 24, 0x4
    addi 29, 29, 0x8
    .4byte 0x4180FF48 # blt .L_803FCEF0
    li 0, -0x1
    addi 29, 30, 0xb8
    sth 0, 0x24e(31)
    mr 24, 29
    li 21, 0x0
    sth 0, 0x250(31)
L_803FCFC4:
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x25f
    lbz 4, 0xb2(3)
    addi 21, 21, 0x1
    addi 24, 24, 0x8
    cmpwi 21, 0x14
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803FCFC4
    addi 28, 30, 0x158
    mr 27, 31
    mr 26, 28
    li 21, 0x0
L_803FD00C:
    mr 24, 26
    mr 25, 27
    li 22, 0x0
L_803FD018:
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 22, 22, 0x1
    cmpwi 22, 0x6
    addi 24, 24, 0x8
    stb 0, 0x273(25)
    addi 25, 25, 0x1
    .4byte 0x4180FFCC # blt .L_803FD018
    addi 21, 21, 0x1
    addi 27, 27, 0x6
    cmpwi 21, 0x3
    addi 26, 26, 0x30
    .4byte 0x4180FFAC # blt .L_803FD00C
    addi 27, 30, 0x1e8
    li 21, 0x0
    mr 24, 27
L_803FD070:
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x285
    lbz 4, 0xb2(3)
    addi 21, 21, 0x1
    addi 24, 24, 0x8
    cmpwi 21, 0x18
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803FD070
    addi 26, 30, 0x2a8
    li 21, 0x0
    mr 24, 26
L_803FD0B4:
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x29d
    lbz 4, 0xb2(3)
    addi 21, 21, 0x1
    addi 24, 24, 0x8
    cmpwi 21, 0x12
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803FD0B4
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    li 24, 0x0
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    lis 25, 0x4330
L_803FD0FC:
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x25f
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 25, 0x28(1)
    lwz 12, 0x24(12)
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 4, 0x34(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 29, 29, 0x8
    cmpwi 24, 0x14
    .4byte 0x4180FFA0 # blt .L_803FD0FC
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    mr 22, 31
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    li 21, 0x0
    lis 25, 0x4330
L_803FD174:
    mr 29, 22
    mr 23, 28
    li 24, 0x0
L_803FD180:
    lwz 3, 0x4(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x273(29)
    lwz 12, 0x0(3)
    stw 0, 0x34(1)
    lwz 12, 0x24(12)
    stw 25, 0x30(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 23, 23, 0x8
    cmpwi 24, 0x6
    addi 29, 29, 0x1
    .4byte 0x4180FFA0 # blt .L_803FD180
    addi 21, 21, 0x1
    addi 28, 28, 0x30
    cmpwi 21, 0x4
    addi 22, 22, 0x6
    .4byte 0x4180FF80 # blt .L_803FD174
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    li 24, 0x0
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    lis 25, 0x4330
L_803FD208:
    lwz 3, 0x4(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x285
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 25, 0x30(1)
    lwz 12, 0x24(12)
    stw 0, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 27, 27, 0x8
    cmpwi 24, 0x18
    .4byte 0x4180FFA0 # blt .L_803FD208
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    li 24, 0x0
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    lis 25, 0x4330
L_803FD27C:
    lwz 3, 0x4(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x29d
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 25, 0x30(1)
    lwz 12, 0x24(12)
    stw 0, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 26, 26, 0x8
    cmpwi 24, 0x12
    .4byte 0x4180FFA0 # blt .L_803FD27C
    li 0, 0x9c
    lis 5, 0x726f
    stb 0, 0x258(31)
    lis 4, 0x5073
    addi 6, 5, 0x3032
    lwz 3, 0x4(31)
    addi 5, 4, 0x6375
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x726f
    lis 4, 0x5073
    stfs 0, 0xec(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x6262
    lis 4, 0x506d
    stfs 0, 0xf0(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6261
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x6262
    lis 4, 0x506d
    stfs 0, 0x108(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6261
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x7062
    lis 4, 0x50
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 1, 0x10c(31)
    addi 6, 5, 0x3038
    addi 5, 4, 0x6e6f
    stfs 0, 0x110(31)
    stfs 0, 0x114(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7062
    lis 4, 0x50
    stfs 0, 0x118(31)
    addi 6, 5, 0x3038
    addi 5, 4, 0x6e6f
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x7062
    lis 4, 0x50
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 1, 0x124(31)
    addi 6, 5, 0x3132
    addi 5, 4, 0x6e6f
    stfs 0, 0x130(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7062
    lis 4, 0x50
    stfs 0, 0x11c(31)
    addi 6, 5, 0x3132
    addi 5, 4, 0x6e6f
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x7062
    lis 4, 0x50
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 1, 0x128(31)
    addi 6, 5, 0x3136
    addi 5, 4, 0x6e6f
    stfs 0, 0x134(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7062
    lis 4, 0x50
    stfs 0, 0x120(31)
    addi 6, 5, 0x3136
    addi 5, 4, 0x6e6f
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x7461
    lis 4, 0x4e
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 1, 0x12c(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6461
    stfs 0, 0x138(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7461
    lis 4, 0x4e
    stfs 0, 0x13c(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6461
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x7461
    lis 4, 0x4e
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 1, 0x140(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6461
    stfs 0, 0x144(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7461
    lis 4, 0x4e
    stfs 0, 0x148(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6461
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x7461
    lis 4, 0x4e
    stfs 0, 0x14c(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6461
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7461
    lis 4, 0x4e
    stfs 0, 0x150(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6461
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    addi 23, 30, 0x7d8
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    addi 24, 30, 0x898
    stfs 1, 0x154(31)
    li 21, 0x0
    stfs 0, 0x158(31)
L_803FD628:
    lwz 3, 0x8(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 25, 0x0
    mr 22, 24
    stb 25, 0xb0(3)
    li 26, 0x0
L_803FD654:
    lwz 3, 0x8(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 26, 26, 0x1
    stb 25, 0xb0(3)
    cmpwi 26, 0x2
    addi 22, 22, 0x8
    .4byte 0x4180FFD4 # blt .L_803FD654
    addi 21, 21, 0x1
    addi 24, 24, 0x20
    cmpwi 21, 0x4
    addi 23, 23, 0x8
    .4byte 0x4180FF94 # blt .L_803FD628
    addi 26, 30, 0x338
    li 21, 0x0
    mr 22, 26
L_803FD6A4:
    lwz 3, 0x8(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x2af
    lbz 4, 0xb2(3)
    addi 21, 21, 0x1
    addi 22, 22, 0x8
    cmpwi 21, 0xb
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803FD6A4
    addi 27, 30, 0x390
    li 21, 0x0
    mr 22, 27
L_803FD6E8:
    lwz 3, 0x8(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x2ba
    lbz 4, 0xb2(3)
    addi 21, 21, 0x1
    addi 22, 22, 0x8
    cmpwi 21, 0x6
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803FD6E8
    addi 28, 30, 0x3c0
    li 21, 0x0
    mr 22, 28
L_803FD72C:
    lwz 3, 0x8(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x2c4
    lbz 4, 0xb2(3)
    addi 21, 21, 0x1
    addi 22, 22, 0x8
    cmpwi 21, 0x22
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803FD72C
    addi 29, 30, 0x4d0
    mr 25, 31
    mr 24, 29
    li 21, 0x0
L_803FD774:
    mr 22, 24
    mr 23, 25
    li 20, 0x0
L_803FD780:
    lwz 3, 0x8(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 20, 20, 0x1
    cmpwi 20, 0x9
    addi 22, 22, 0x8
    stb 0, 0x2ee(23)
    addi 23, 23, 0x1
    .4byte 0x4180FFCC # blt .L_803FD780
    addi 21, 21, 0x1
    addi 25, 25, 0x9
    cmpwi 21, 0x4
    addi 24, 24, 0x48
    .4byte 0x4180FFAC # blt .L_803FD774
    lwz 3, 0x8(31)
    lwz 5, 0x7f8(30)
    lwz 12, 0x0(3)
    lwz 6, 0x7fc(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x818(30)
    stb 0, 0x253(31)
    lwz 6, 0x81c(30)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x838(30)
    stb 0, 0x254(31)
    lwz 6, 0x83c(30)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    li 24, 0x0
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    lis 25, 0x4330
    stb 0, 0x255(31)
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
L_803FD848:
    lwz 3, 0x8(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x2af
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 25, 0x30(1)
    lwz 12, 0x24(12)
    stw 0, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 26, 26, 0x8
    cmpwi 24, 0xb
    .4byte 0x4180FFA0 # blt .L_803FD848
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    li 24, 0x0
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    lis 26, 0x4330
L_803FD8BC:
    lwz 3, 0x8(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x2ba
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 26, 0x30(1)
    lwz 12, 0x24(12)
    stw 0, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 27, 27, 0x8
    cmpwi 24, 0x6
    .4byte 0x4180FFA0 # blt .L_803FD8BC
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    li 24, 0x0
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    lis 26, 0x4330
L_803FD930:
    lwz 3, 0x8(31)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x2c4
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 26, 0x30(1)
    lwz 12, 0x24(12)
    stw 0, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 28, 28, 0x8
    cmpwi 24, 0x22
    .4byte 0x4180FFA0 # blt .L_803FD930
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    mr 25, 31
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    li 20, 0x0
    lis 26, 0x4330
L_803FD9A8:
    mr 22, 25
    mr 23, 29
    li 24, 0x0
L_803FD9B4:
    lwz 3, 0x8(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x2ee(22)
    lwz 12, 0x0(3)
    stw 0, 0x34(1)
    lwz 12, 0x24(12)
    stw 26, 0x30(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 23, 23, 0x8
    cmpwi 24, 0x9
    addi 22, 22, 0x1
    .4byte 0x4180FFA0 # blt .L_803FD9B4
    addi 20, 20, 0x1
    addi 29, 29, 0x48
    cmpwi 20, 0x4
    addi 25, 25, 0x9
    .4byte 0x4180FF80 # blt .L_803FD9A8
    lwz 3, 0x8(31)
    lis 4, 0x656e
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x5474
    lwz 24, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x656e
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5474
    lwz 24, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x6b67
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x5474
    lwz 24, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x6b67
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5474
    lwz 24, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x656e
    addi 6, 4, 0x3032
    li 5, 0x5474
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xa6
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(31)
    lis 4, 0x656e
    addi 6, 4, 0x3031
    li 5, 0x5474
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xa6
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7461
    lis 4, 0x4e
    stfs 0, 0x94(31)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6461
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x7461
    lis 4, 0x4e
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 1, 0x98(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6461
    stfs 0, 0x9c(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7461
    lis 4, 0x4e
    stfs 0, 0xa0(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6461
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x7461
    lis 4, 0x4e
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 1, 0xa4(31)
    addi 6, 5, 0x3036
    addi 5, 4, 0x6461
    stfs 0, 0xa8(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7461
    lis 4, 0x4e
    stfs 0, 0xac(31)
    addi 6, 5, 0x3036
    addi 5, 4, 0x6461
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x626b
    lis 4, 0x5070
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 1, 0xb0(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6c6c
    stfs 0, 0xb4(31)
    stfs 0, 0xb8(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x626b
    lis 4, 0x5070
    stfs 0, 0xbc(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6c6c
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x626b
    lis 4, 0x5070
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 1, 0xcc(31)
    addi 6, 5, 0x3132
    addi 5, 4, 0x6c6c
    stfs 0, 0xdc(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x626b
    lis 4, 0x5070
    stfs 0, 0xc0(31)
    addi 6, 5, 0x3132
    addi 5, 4, 0x6c6c
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x626b
    lis 4, 0x5070
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 1, 0xd0(31)
    addi 6, 5, 0x3232
    addi 5, 4, 0x6c6c
    stfs 0, 0xe0(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x626b
    lis 4, 0x5070
    stfs 0, 0xc4(31)
    addi 6, 5, 0x3232
    addi 5, 4, 0x6c6c
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x626b
    lis 4, 0x5070
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 1, 0xd4(31)
    addi 6, 5, 0x3332
    addi 5, 4, 0x6c6c
    stfs 0, 0xe4(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x626b
    lis 4, 0x5070
    stfs 0, 0xc8(31)
    addi 6, 5, 0x3332
    addi 5, 4, 0x6c6c
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    addi 26, 30, 0x5f0
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    mr 22, 26
    stfs 1, 0xd8(31)
    li 20, 0x0
    stfs 0, 0xe8(31)
L_803FDE74:
    lwz 3, 0xc(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 20, 0x312
    lbz 4, 0xb2(3)
    addi 20, 20, 0x1
    addi 22, 22, 0x8
    cmpwi 20, 0x14
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803FDE74
    addi 27, 30, 0x690
    mr 25, 31
    mr 24, 27
    li 20, 0x0
L_803FDEBC:
    mr 22, 24
    mr 23, 25
    li 21, 0x0
L_803FDEC8:
    lwz 3, 0xc(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 21, 21, 0x1
    cmpwi 21, 0x5
    addi 22, 22, 0x8
    stb 0, 0x326(23)
    addi 23, 23, 0x1
    .4byte 0x4180FFCC # blt .L_803FDEC8
    addi 20, 20, 0x1
    addi 25, 25, 0x5
    cmpwi 20, 0x3
    addi 24, 24, 0x28
    .4byte 0x4180FFAC # blt .L_803FDEBC
    addi 28, 30, 0x708
    li 20, 0x0
    mr 22, 28
L_803FDF20:
    lwz 3, 0xc(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 20, 0x335
    lbz 4, 0xb2(3)
    addi 20, 20, 0x1
    addi 22, 22, 0x8
    cmpwi 20, 0x1a
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803FDF20
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    li 24, 0x0
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    lis 29, 0x4330
L_803FDF68:
    lwz 3, 0xc(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x312
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 29, 0x30(1)
    lwz 12, 0x24(12)
    stw 0, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 26, 26, 0x8
    cmpwi 24, 0x14
    .4byte 0x4180FFA0 # blt .L_803FDF68
    .4byte 0xCBE20798 # lfd f31, lbl_80543738@sda21(r0)
    mr 25, 31
    .4byte 0xC3C2078C # lfs f30, lbl_8054372C@sda21(r0)
    li 20, 0x0
    lis 26, 0x4330
L_803FDFE0:
    mr 22, 25
    mr 23, 27
    li 24, 0x0
L_803FDFEC:
    lwz 3, 0xc(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x326(22)
    lwz 12, 0x0(3)
    stw 0, 0x34(1)
    lwz 12, 0x24(12)
    stw 26, 0x30(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 23, 23, 0x8
    cmpwi 24, 0x5
    addi 22, 22, 0x1
    .4byte 0x4180FFA0 # blt .L_803FDFEC
    addi 20, 20, 0x1
    addi 27, 27, 0x28
    cmpwi 20, 0x3
    addi 25, 25, 0x5
    .4byte 0x4180FF80 # blt .L_803FDFE0
    .4byte 0xCBC20798 # lfd f30, lbl_80543738@sda21(r0)
    li 24, 0x0
    .4byte 0xC3E2078C # lfs f31, lbl_8054372C@sda21(r0)
    lis 26, 0x4330
L_803FE074:
    lwz 3, 0xc(31)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x335
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 26, 0x30(1)
    lwz 12, 0x24(12)
    stw 0, 0x34(1)
    lfd 0, 0x30(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 28, 28, 0x8
    cmpwi 24, 0x1a
    .4byte 0x4180FFA0 # blt .L_803FE074
    lwz 3, 0xc(31)
    lis 5, 0x6262
    lis 4, 0x506d
    lwz 12, 0x0(3)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6261
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x6262
    lis 4, 0x506d
    stfs 0, 0x15c(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6261
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x6162
    lis 4, 0x50
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 1, 0x160(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7374
    stfs 0, 0x164(31)
    stfs 0, 0x168(31)
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x6162
    lis 4, 0x50
    stfs 0, 0x16c(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7374
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x6e62
    lis 4, 0x50
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 1, 0x178(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6861
    stfs 0, 0x184(31)
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x6e62
    lis 4, 0x50
    stfs 0, 0x170(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6861
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 4, 0x7562
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    addi 6, 4, 0x3034
    stfs 1, 0x17c(31)
    li 5, 0x5072
    stfs 0, 0x188(31)
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 4, 0x7562
    addi 6, 4, 0x3034
    li 5, 0x5072
    stfs 0, 0x174(31)
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x6b6b
    lis 4, 0x506c
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 1, 0x180(31)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6962
    stfs 0, 0x18c(31)
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x6b6b
    lis 4, 0x506c
    stfs 0, 0x190(31)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6962
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x726f
    lis 4, 0x5073
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    stfs 1, 0x194(31)
    li 0, 0x9c
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    stfs 0, 0x198(31)
    stb 0, 0x259(31)
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x726f
    lis 4, 0x5073
    stfs 0, 0xf4(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x6162
    lis 4, 0x50
    stfs 0, 0xf8(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7374
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x6e62
    lis 4, 0x50
    stfs 0, 0xfc(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6861
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 4, 0x7562
    addi 6, 4, 0x3034
    li 5, 0x5072
    stfs 0, 0x100(31)
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x6c65
    lis 4, 0x54
    stfs 0, 0x104(31)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7275
    lwz 3, 0xc(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 24, 0x154(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 4, 0x616e
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5468
    lwz 24, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 4, 0x7461
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5473
    lwz 24, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0xc(31)
    lis 5, 0x6c69
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x3170
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6c69
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3031
    lwz 3, 0xc(31)
    addi 5, 4, 0x3270
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6c69
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0xc(31)
    addi 5, 4, 0x3270
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6c69
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3031
    lwz 3, 0xc(31)
    addi 5, 4, 0x3370
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6c69
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0xc(31)
    addi 5, 4, 0x3370
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6c69
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0xc(31)
    addi 5, 4, 0x3370
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6c69
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3031
    lwz 3, 0xc(31)
    addi 5, 4, 0x3470
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6c69
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0xc(31)
    addi 5, 4, 0x3470
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6c69
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0xc(31)
    addi 5, 4, 0x3470
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6c69
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3034
    lwz 3, 0xc(31)
    addi 5, 4, 0x3470
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x6261
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x5067
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x6f6e
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x5063
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x7472
    stb 0, 0xb0(3)
    addi 6, 4, 0x3031
    li 5, 0x5473
    lwz 3, 0x10(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 24, 0x154(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lis 4, 0x7472
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x5473
    lwz 24, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lis 4, 0x7472
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3033
    lwz 12, 0x0(3)
    li 5, 0x5473
    lwz 24, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lis 4, 0x7472
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3034
    lwz 12, 0x0(3)
    li 5, 0x5473
    lwz 24, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lis 4, 0x7472
    addi 6, 4, 0x3031
    li 5, 0x5473
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xf5
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x10(31)
    lis 4, 0x7472
    addi 6, 4, 0x3032
    li 5, 0x5473
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xf5
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x10(31)
    lis 4, 0x7472
    addi 6, 4, 0x3033
    li 5, 0x5473
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xf5
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x10(31)
    lis 4, 0x7472
    addi 6, 4, 0x3034
    li 5, 0x5473
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xf5
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    li 0, 0x9c
    lis 5, 0x7572
    stb 0, 0x25a(31)
    lis 4, 0x5061
    addi 6, 5, 0x3032
    lwz 3, 0x10(31)
    addi 5, 4, 0x6363
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7572
    lis 4, 0x5061
    stfs 0, 0x19c(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6363
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    li 3, 0x2c
    stfs 0, 0x1a0(31)
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803FE8E4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803FE8E4:
    stw 3, 0x60(31)
    lis 5, 0x6262
    lis 4, 0x5074
    lwz 3, 0x10(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6861
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x60(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803FE934
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803FE934:
    stw 3, 0x64(31)
    lis 5, 0x7262
    lis 4, 0x50
    lwz 3, 0x10(31)
    addi 6, 5, 0x3134
    addi 5, 4, 0x7374
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x64(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803FE984
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803FE984:
    stw 3, 0x68(31)
    lis 5, 0x7262
    lis 4, 0x50
    lwz 3, 0x10(31)
    addi 6, 5, 0x3234
    addi 5, 4, 0x7374
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x68(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803FE9D4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803FE9D4:
    stw 3, 0x6c(31)
    lis 5, 0x7262
    lis 4, 0x50
    lwz 3, 0x10(31)
    addi 6, 5, 0x3334
    addi 5, 4, 0x7374
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x6c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803FEA24
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803FEA24:
    stw 3, 0x70(31)
    lis 5, 0x7262
    lis 4, 0x50
    lwz 3, 0x10(31)
    addi 6, 5, 0x3434
    addi 5, 4, 0x7374
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x70(31)
    bl fn_80402F04
    .4byte 0x80AD9318 # lwz r5, lbl_8053AED8@sda21(r0)
    lis 4, 0x5449
    addi 3, 4, 0x4d47
    addi 4, 30, 0x1024
    lwz 0, 0x8(5)
    stw 0, 0x74(31)
    bl fn_804030C4
    mr 0, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    mr 4, 0
    bl fn_80440D78
    lis 5, 0x5449
    addi 4, 30, 0x1038
    addi 3, 5, 0x4d47
    bl fn_804030C4
    mr 4, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440CE4
    li 3, 0x70
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803FEAB4
    bl fn_804372C4
L_803FEAB4:
    lis 4, 0x5449
    stw 20, 0x58(31)
    addi 3, 4, 0x4d47
    addi 4, 30, 0x104c
    bl fn_804030C4
    mr 22, 3
    li 3, 0x168
    bl fn_80084370
    mr. 20, 3
    .4byte 0x4182000C # beq .L_803FEAE4
    mr 4, 22
    bl fn_80097800
L_803FEAE4:
    stw 20, 0x5c(31)
    li 6, 0x0
    li 0, 0xff
    addi 4, 1, 0x14
    stw 6, 0xc(1)
    addi 5, 1, 0xc
    stw 0, 0x14(1)
    lwz 3, 0x5c(31)
    stw 6, 0x8(1)
    lwz 12, 0x0(3)
    stw 0, 0x10(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    .4byte 0xC002078C # lfs f0, lbl_8054372C@sda21(r0)
    mr 22, 31
    li 20, 0x0
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stfs 0, 0x90(31)
L_803FEB34:
    li 3, 0x60
    bl fn_80084370
    mr. 21, 3
    .4byte 0x41820018 # beq .L_803FEB58
    extsb 4, 20
    li 5, 0x0
    li 6, 0x0
    li 7, 0x8
    bl fn_8045B46C
L_803FEB58:
    addi 20, 20, 0x1
    stw 21, 0x78(22)
    cmpwi 20, 0x4
    addi 22, 22, 0x4
    .4byte 0x4180FFCC # blt .L_803FEB34
    mr 3, 31
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    lmw 20, 0x40(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

