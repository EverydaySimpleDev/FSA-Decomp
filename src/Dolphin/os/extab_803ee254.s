# fn_803EE254 - actor@lbl_804B0B00: constructor (0x1FA0, one of the largest
# ctors in this gap). Extremely string-format-heavy (fn_80095FB4 x49!,
# the highest count found in this gap) + 15 sub-object allocations
# (operator new x15) - strongly confirms this whole actor family is a
# text/string-formatting system (matching the earlier 60KB composite
# entity's hypothesis).
.section extab, "a"
.balign 4
.global etb_8000FD6C
etb_8000FD6C:
    .4byte 0x608A0000
    .4byte 0x00000118
    .4byte 0x00000058
    .4byte 0x0000014C
    .4byte 0x00000060
    .4byte 0x00000178
    .4byte 0x00000068
    .4byte 0x000001A4
    .4byte 0x00000070
    .4byte 0x000001D0
    .4byte 0x00000078
    .4byte 0x00000204
    .4byte 0x00000080
    .4byte 0x00000230
    .4byte 0x00000088
    .4byte 0x00001ED0
    .4byte 0x00000090
    .4byte 0x00001F00
    .4byte 0x00000098
    .4byte 0x00001F64
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
.size etb_8000FD6C, 168

.section extabindex, "a"
.balign 4
.global eti_8001FC84
eti_8001FC84:
    .4byte fn_803EE254
    .4byte 0x00001FA0
    .4byte etb_8000FD6C
.size eti_8001FC84, 12

.text
.balign 4
.global fn_803EE254

fn_803EE254:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stmw 20, 0x30(1)
    lis 5, lbl_804B0B00@ha
    lis 4, lbl_80529DEC@ha
    mr 31, 3
    lis 6, lbl_80477970@ha
    addi 0, 5, lbl_804B0B00@l
    li 5, 0x0
    stw 0, 0x0(3)
    addi 4, 4, lbl_80529DEC@l
    addi 30, 6, lbl_80477970@l
    stw 5, 0x1b4(3)
    lbz 0, 0x23c(4)
    stw 0, 0x1bc(3)
    lwz 0, 0x1bc(3)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_803EE2BC
    li 0, 0x1
    stw 0, 0x1b8(31)
    .4byte 0x48000008 # b .L_803EE2C0
L_803EE2BC:
    stw 5, 0x1b8(31)
L_803EE2C0:
    li 25, 0x0
    li 0, 0x2
    stw 25, 0x1d0(31)
    mr 24, 31
    mr 26, 31
    li 22, 0x0
    stb 25, 0x264(31)
    stb 25, 0x26b(31)
    stb 25, 0x26c(31)
    stw 0, 0x1d8(31)
    stw 0, 0x1d4(31)
    stw 25, 0x1dc(31)
L_803EE2F0:
    stw 25, 0x1e0(24)
    mr 3, 22
    bl fn_80403414
    stw 3, 0x1f0(24)
    mr 3, 22
    bl fn_804033D4
    stw 3, 0x200(24)
    mr 3, 22
    bl fn_8040336C
    stw 3, 0x210(24)
    addi 22, 22, 0x1
    cmpwi 22, 0x4
    stw 25, 0x220(24)
    stw 25, 0x1c0(24)
    addi 24, 24, 0x4
    sth 25, 0x254(26)
    addi 26, 26, 0x2
    .4byte 0x4180FFBC # blt .L_803EE2F0
    li 4, 0x0
    li 0, 0x4
    sth 4, 0x25e(31)
    li 3, 0x118
    sth 4, 0x25c(31)
    stb 4, 0x26e(31)
    stb 4, 0x26d(31)
    sth 4, 0x260(31)
    stw 0, 0x360(31)
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803EE36C
    bl fn_8009C4EC
L_803EE36C:
    stw 20, 0x4(31)
    lis 4, lbl_80529DEC@ha
    addi 25, 4, lbl_80529DEC@l
    addi 4, 30, 0x1028
    lwz 3, 0x4(31)
    lis 5, 0x110
    lwz 6, 0x28(25)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803EE3A0
    bl fn_8009C4EC
L_803EE3A0:
    stw 20, 0x8(31)
    addi 4, 30, 0x103c
    lis 5, 0x110
    lwz 3, 0x8(31)
    lwz 6, 0x28(25)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803EE3CC
    bl fn_8009C4EC
L_803EE3CC:
    stw 20, 0xc(31)
    addi 4, 30, 0x104c
    lis 5, 0x110
    lwz 3, 0xc(31)
    lwz 6, 0x28(25)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803EE3F8
    bl fn_8009C4EC
L_803EE3F8:
    stw 20, 0x10(31)
    addi 4, 30, 0x1060
    lis 5, 0x110
    lwz 3, 0x10(31)
    lwz 6, 0x28(25)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803EE424
    bl fn_8009C4EC
L_803EE424:
    stw 20, 0x14(31)
    addi 4, 30, 0x1070
    lis 5, 0x110
    lwz 3, 0x14(31)
    lwz 6, 0x28(25)
    bl fn_8009C69C
    li 22, 0x0
    mr 24, 31
L_803EE444:
    li 3, 0x118
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803EE458
    bl fn_8009C4EC
L_803EE458:
    stw 20, 0x18(24)
    addi 4, 30, 0x1080
    lis 5, 0x110
    lwz 3, 0x18(24)
    lwz 6, 0x28(25)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803EE484
    bl fn_8009C4EC
L_803EE484:
    stw 20, 0x28(24)
    addi 4, 30, 0x1098
    lis 5, 0x110
    lwz 3, 0x28(24)
    lwz 6, 0x28(25)
    bl fn_8009C69C
    addi 22, 22, 0x1
    addi 24, 24, 0x4
    cmpwi 22, 0x4
    .4byte 0x4180FF9C # blt .L_803EE444
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
    addi 4, 30, 0x10b0
    bl fn_804031C4
    lis 5, 0x5343
    mr 22, 3
    addi 4, 30, 0x10c8
    addi 3, 5, 0x524e
    bl fn_804031C4
    mr 24, 31
    mr 23, 3
    addi 29, 30, 0x960
    li 21, 0x0
    lis 28, 0x5f30
    lis 27, 0x4e55
    lis 26, 0x6179
    lis 25, 0x4e64
L_803EE520:
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
    lwz 3, 0x8(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    addi 21, 21, 0x1
    stb 0, 0xb0(3)
    cmpwi 21, 0x4
    addi 29, 29, 0x8
    stw 0, 0x230(24)
    stw 0, 0x240(24)
    addi 24, 24, 0x4
    .4byte 0x4180FF4C # blt .L_803EE520
    li 0, -0x1
    addi 29, 30, 0xb8
    sth 0, 0x250(31)
    mr 24, 29
    li 21, 0x0
    sth 0, 0x252(31)
L_803EE5F0:
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x26f
    lbz 4, 0xb2(3)
    addi 21, 21, 0x1
    addi 24, 24, 0x8
    cmpwi 21, 0x11
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803EE5F0
    addi 28, 30, 0x140
    mr 27, 31
    mr 26, 28
    li 21, 0x0
L_803EE638:
    mr 24, 26
    mr 25, 27
    li 22, 0x0
L_803EE644:
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
    stb 0, 0x280(25)
    addi 25, 25, 0x1
    .4byte 0x4180FFCC # blt .L_803EE644
    addi 21, 21, 0x1
    addi 27, 27, 0x6
    cmpwi 21, 0x4
    addi 26, 26, 0x30
    .4byte 0x4180FFAC # blt .L_803EE638
    addi 27, 30, 0x200
    li 21, 0x0
    mr 24, 27
L_803EE69C:
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x298
    lbz 4, 0xb2(3)
    addi 21, 21, 0x1
    addi 24, 24, 0x8
    cmpwi 21, 0x1d
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803EE69C
    addi 26, 30, 0x2e8
    li 21, 0x0
    mr 24, 26
L_803EE6E0:
    lwz 3, 0x4(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x2b5
    lbz 4, 0xb2(3)
    addi 21, 21, 0x1
    addi 24, 24, 0x8
    cmpwi 21, 0x16
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803EE6E0
    .4byte 0xCBE206D0 # lfd f31, lbl_80543670@sda21(r0)
    li 24, 0x0
    .4byte 0xC3C206C4 # lfs f30, lbl_80543664@sda21(r0)
    lis 25, 0x4330
L_803EE728:
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x26f
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 25, 0x18(1)
    lwz 12, 0x24(12)
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 29, 29, 0x8
    cmpwi 24, 0x11
    .4byte 0x4180FFA0 # blt .L_803EE728
    .4byte 0xCBE206D0 # lfd f31, lbl_80543670@sda21(r0)
    mr 22, 31
    .4byte 0xC3C206C4 # lfs f30, lbl_80543664@sda21(r0)
    li 21, 0x0
    lis 25, 0x4330
L_803EE7A0:
    mr 29, 22
    mr 23, 28
    li 24, 0x0
L_803EE7AC:
    lwz 3, 0x4(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x280(29)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    stw 25, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 23, 23, 0x8
    cmpwi 24, 0x6
    addi 29, 29, 0x1
    .4byte 0x4180FFA0 # blt .L_803EE7AC
    addi 21, 21, 0x1
    addi 28, 28, 0x30
    cmpwi 21, 0x4
    addi 22, 22, 0x6
    .4byte 0x4180FF80 # blt .L_803EE7A0
    .4byte 0xCBE206D0 # lfd f31, lbl_80543670@sda21(r0)
    li 24, 0x0
    .4byte 0xC3C206C4 # lfs f30, lbl_80543664@sda21(r0)
    lis 25, 0x4330
L_803EE834:
    lwz 3, 0x4(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x298
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 25, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 27, 27, 0x8
    cmpwi 24, 0x1d
    .4byte 0x4180FFA0 # blt .L_803EE834
    .4byte 0xCBE206D0 # lfd f31, lbl_80543670@sda21(r0)
    li 24, 0x0
    .4byte 0xC3C206C4 # lfs f30, lbl_80543664@sda21(r0)
    lis 25, 0x4330
L_803EE8A8:
    lwz 3, 0x4(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x2b5
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 25, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 26, 26, 0x8
    cmpwi 24, 0x16
    .4byte 0x4180FFA0 # blt .L_803EE8A8
    li 0, 0x9c
    lis 5, 0x726f
    stb 0, 0x268(31)
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
    stfs 0, 0x19c(31)
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
    stfs 0, 0x1a0(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6164
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x6262
    lis 4, 0x506d
    stfs 0, 0xf0(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6164
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x7062
    lis 4, 0x50
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    stfs 1, 0xf4(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6e6f
    stfs 0, 0xf8(31)
    stfs 0, 0xfc(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7062
    lis 4, 0x50
    stfs 0, 0x100(31)
    addi 6, 5, 0x3034
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
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    stfs 1, 0x110(31)
    addi 6, 5, 0x3038
    addi 5, 4, 0x6e6f
    stfs 0, 0x120(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7062
    lis 4, 0x50
    stfs 0, 0x104(31)
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
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    stfs 1, 0x114(31)
    addi 6, 5, 0x3132
    addi 5, 4, 0x6e6f
    stfs 0, 0x124(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7062
    lis 4, 0x50
    stfs 0, 0x108(31)
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
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    stfs 1, 0x118(31)
    addi 6, 5, 0x3136
    addi 5, 4, 0x6e6f
    stfs 0, 0x128(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7062
    lis 4, 0x50
    stfs 0, 0x10c(31)
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
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    stfs 1, 0x11c(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6461
    stfs 0, 0x12c(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7461
    lis 4, 0x4e
    stfs 0, 0x130(31)
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
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    stfs 1, 0x134(31)
    addi 6, 5, 0x3035
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
    stfs 0, 0x140(31)
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
    stfs 0, 0x144(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6461
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    addi 23, 30, 0x820
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    addi 24, 30, 0x8e0
    stfs 1, 0x148(31)
    li 21, 0x0
    stfs 0, 0x14c(31)
L_803EECBC:
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
L_803EECE8:
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
    .4byte 0x4180FFD4 # blt .L_803EECE8
    addi 21, 21, 0x1
    addi 24, 24, 0x20
    cmpwi 21, 0x4
    addi 23, 23, 0x8
    .4byte 0x4180FF94 # blt .L_803EECBC
    addi 26, 30, 0x398
    li 21, 0x0
    mr 22, 26
L_803EED38:
    lwz 3, 0x8(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x2cb
    lbz 4, 0xb2(3)
    addi 21, 21, 0x1
    addi 22, 22, 0x8
    cmpwi 21, 0xb
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803EED38
    addi 27, 30, 0x3f0
    li 21, 0x0
    mr 22, 27
L_803EED7C:
    lwz 3, 0x8(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x2d6
    lbz 4, 0xb2(3)
    addi 21, 21, 0x1
    addi 22, 22, 0x8
    cmpwi 21, 0x6
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803EED7C
    addi 28, 30, 0x420
    li 21, 0x0
    mr 22, 28
L_803EEDC0:
    lwz 3, 0x8(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 21, 0x2dc
    lbz 4, 0xb2(3)
    addi 21, 21, 0x1
    addi 22, 22, 0x8
    cmpwi 21, 0x22
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803EEDC0
    addi 29, 30, 0x530
    mr 25, 31
    mr 24, 29
    li 21, 0x0
L_803EEE08:
    mr 22, 24
    mr 23, 25
    li 20, 0x0
L_803EEE14:
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
    stb 0, 0x2fe(23)
    addi 23, 23, 0x1
    .4byte 0x4180FFCC # blt .L_803EEE14
    addi 21, 21, 0x1
    addi 25, 25, 0x9
    cmpwi 21, 0x4
    addi 24, 24, 0x48
    .4byte 0x4180FFAC # blt .L_803EEE08
    lwz 3, 0x8(31)
    lwz 5, 0x840(30)
    lwz 12, 0x0(3)
    lwz 6, 0x844(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x860(30)
    stb 0, 0x265(31)
    lwz 6, 0x864(30)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x880(30)
    stb 0, 0x266(31)
    lwz 6, 0x884(30)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    li 24, 0x0
    .4byte 0xCBE206D0 # lfd f31, lbl_80543670@sda21(r0)
    lis 25, 0x4330
    stb 0, 0x267(31)
    .4byte 0xC3C206C4 # lfs f30, lbl_80543664@sda21(r0)
L_803EEEDC:
    lwz 3, 0x8(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x2cb
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 25, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 26, 26, 0x8
    cmpwi 24, 0xb
    .4byte 0x4180FFA0 # blt .L_803EEEDC
    .4byte 0xCBE206D0 # lfd f31, lbl_80543670@sda21(r0)
    li 24, 0x0
    .4byte 0xC3C206C4 # lfs f30, lbl_80543664@sda21(r0)
    lis 26, 0x4330
L_803EEF50:
    lwz 3, 0x8(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x2d6
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 26, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 27, 27, 0x8
    cmpwi 24, 0x6
    .4byte 0x4180FFA0 # blt .L_803EEF50
    .4byte 0xCBE206D0 # lfd f31, lbl_80543670@sda21(r0)
    li 24, 0x0
    .4byte 0xC3C206C4 # lfs f30, lbl_80543664@sda21(r0)
    lis 26, 0x4330
L_803EEFC4:
    lwz 3, 0x8(31)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x2dc
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 26, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 28, 28, 0x8
    cmpwi 24, 0x22
    .4byte 0x4180FFA0 # blt .L_803EEFC4
    .4byte 0xCBE206D0 # lfd f31, lbl_80543670@sda21(r0)
    mr 25, 31
    .4byte 0xC3C206C4 # lfs f30, lbl_80543664@sda21(r0)
    li 20, 0x0
    lis 26, 0x4330
L_803EF03C:
    mr 22, 25
    mr 23, 29
    li 24, 0x0
L_803EF048:
    lwz 3, 0x8(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x2fe(22)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    stw 26, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 23, 23, 0x8
    cmpwi 24, 0x9
    addi 22, 22, 0x1
    .4byte 0x4180FFA0 # blt .L_803EF048
    addi 20, 20, 0x1
    addi 29, 29, 0x48
    cmpwi 20, 0x4
    addi 25, 25, 0x9
    .4byte 0x4180FF80 # blt .L_803EF03C
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
    stfs 0, 0x98(31)
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
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    stfs 1, 0x9c(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6461
    stfs 0, 0xa0(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7461
    lis 4, 0x4e
    stfs 0, 0xa4(31)
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
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    stfs 1, 0xa8(31)
    addi 6, 5, 0x3036
    addi 5, 4, 0x6461
    stfs 0, 0xac(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x7461
    lis 4, 0x4e
    stfs 0, 0xb0(31)
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
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    stfs 1, 0xb4(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6c6c
    stfs 0, 0xb8(31)
    stfs 0, 0xbc(31)
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
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    stfs 1, 0xd0(31)
    addi 6, 5, 0x3132
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
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    stfs 1, 0xd4(31)
    addi 6, 5, 0x3232
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
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    stfs 1, 0xd8(31)
    addi 6, 5, 0x3332
    addi 5, 4, 0x6c6c
    stfs 0, 0xe8(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x626b
    lis 4, 0x5070
    stfs 0, 0xcc(31)
    addi 6, 5, 0x3332
    addi 5, 4, 0x6c6c
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    addi 26, 30, 0x650
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    mr 22, 26
    stfs 1, 0xdc(31)
    li 20, 0x0
    stfs 0, 0xec(31)
L_803EF508:
    lwz 3, 0xc(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 20, 0x322
    lbz 4, 0xb2(3)
    addi 20, 20, 0x1
    addi 22, 22, 0x8
    cmpwi 20, 0x11
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803EF508
    addi 27, 30, 0x6d8
    mr 25, 31
    mr 24, 27
    li 20, 0x0
L_803EF550:
    mr 22, 24
    mr 23, 25
    li 21, 0x0
L_803EF55C:
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
    stb 0, 0x333(23)
    addi 23, 23, 0x1
    .4byte 0x4180FFCC # blt .L_803EF55C
    addi 20, 20, 0x1
    addi 25, 25, 0x5
    cmpwi 20, 0x3
    addi 24, 24, 0x28
    .4byte 0x4180FFAC # blt .L_803EF550
    addi 28, 30, 0x750
    li 20, 0x0
    mr 22, 28
L_803EF5B4:
    lwz 3, 0xc(31)
    lwz 5, 0x0(22)
    lwz 12, 0x0(3)
    lwz 6, 0x4(22)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 20, 0x342
    lbz 4, 0xb2(3)
    addi 20, 20, 0x1
    addi 22, 22, 0x8
    cmpwi 20, 0x1a
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_803EF5B4
    .4byte 0xCBE206D0 # lfd f31, lbl_80543670@sda21(r0)
    li 24, 0x0
    .4byte 0xC3C206C4 # lfs f30, lbl_80543664@sda21(r0)
    lis 29, 0x4330
L_803EF5FC:
    lwz 3, 0xc(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x322
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 29, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 26, 26, 0x8
    cmpwi 24, 0x11
    .4byte 0x4180FFA0 # blt .L_803EF5FC
    .4byte 0xCBE206D0 # lfd f31, lbl_80543670@sda21(r0)
    mr 25, 31
    .4byte 0xC3C206C4 # lfs f30, lbl_80543664@sda21(r0)
    li 20, 0x0
    lis 26, 0x4330
L_803EF674:
    mr 22, 25
    mr 23, 27
    li 24, 0x0
L_803EF680:
    lwz 3, 0xc(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0x333(22)
    lwz 12, 0x0(3)
    stw 0, 0x24(1)
    lwz 12, 0x24(12)
    stw 26, 0x20(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 31
    fmuls 0, 0, 30
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 23, 23, 0x8
    cmpwi 24, 0x5
    addi 22, 22, 0x1
    .4byte 0x4180FFA0 # blt .L_803EF680
    addi 20, 20, 0x1
    addi 27, 27, 0x28
    cmpwi 20, 0x3
    addi 25, 25, 0x5
    .4byte 0x4180FF80 # blt .L_803EF674
    .4byte 0xCBC206D0 # lfd f30, lbl_80543670@sda21(r0)
    li 24, 0x0
    .4byte 0xC3E206C4 # lfs f31, lbl_80543664@sda21(r0)
    lis 26, 0x4330
L_803EF708:
    lwz 3, 0xc(31)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 24, 0x342
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 26, 0x20(1)
    lwz 12, 0x24(12)
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 28, 28, 0x8
    cmpwi 24, 0x1a
    .4byte 0x4180FFA0 # blt .L_803EF708
    lwz 3, 0xc(31)
    lis 5, 0x6262
    lis 4, 0x506d
    lwz 12, 0x0(3)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6164
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x6262
    lis 4, 0x506d
    stfs 0, 0x15c(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6164
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x6162
    lis 4, 0x50
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    stfs 1, 0x160(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7374
    stfs 0, 0x164(31)
    stfs 0, 0xbc(31)
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
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
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
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
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
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
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
    .4byte 0xC00206C4 # lfs f0, lbl_80543664@sda21(r0)
    stfs 1, 0x194(31)
    li 0, 0x9c
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    stfs 0, 0x198(31)
    stb 0, 0x269(31)
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 5, 0x726f
    lis 4, 0x5073
    stfs 0, 0x1a4(31)
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
    stfs 0, 0x1a8(31)
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
    stfs 0, 0x150(31)
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
    stfs 0, 0x154(31)
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x6c65
    lis 4, 0x54
    stfs 0, 0x158(31)
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
    lis 5, 0x6162
    stb 0, 0xb0(3)
    lis 4, 0x4e64
    addi 6, 5, 0x3031
    lwz 3, 0x10(31)
    addi 5, 4, 0x6174
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
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
    stb 0, 0x26a(31)
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
    stfs 0, 0x1ac(31)
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
    stfs 0, 0x1b0(31)
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803EFF54
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803EFF54:
    stw 3, 0x64(31)
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
    lwz 3, 0x64(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803EFFA4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803EFFA4:
    stw 3, 0x68(31)
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
    lwz 3, 0x68(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803EFFF4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803EFFF4:
    stw 3, 0x6c(31)
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
    lwz 3, 0x6c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803F0044
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803F0044:
    stw 3, 0x70(31)
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
    lwz 3, 0x70(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803F0094
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803F0094:
    stw 3, 0x74(31)
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
    lwz 3, 0x74(31)
    bl fn_80402F04
    .4byte 0x80AD9318 # lwz r5, lbl_8053AED8@sda21(r0)
    lis 4, 0x5449
    addi 3, 4, 0x4d47
    addi 4, 30, 0xfb0
    lwz 0, 0x8(5)
    stw 0, 0x78(31)
    bl fn_804030C4
    mr 0, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    mr 4, 0
    bl fn_80440D78
    lis 5, 0x5449
    addi 4, 30, 0xfc4
    addi 3, 5, 0x4d47
    bl fn_804030C4
    mr 4, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440CE4
    li 3, 0x70
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_803F0124
    bl fn_804372C4
L_803F0124:
    lis 4, 0x5449
    stw 20, 0x5c(31)
    addi 3, 4, 0x4d47
    addi 4, 30, 0x10e0
    bl fn_804030C4
    mr 22, 3
    li 3, 0x168
    bl fn_80084370
    mr. 20, 3
    .4byte 0x4182000C # beq .L_803F0154
    mr 4, 22
    bl fn_80097800
L_803F0154:
    stw 20, 0x60(31)
    li 6, 0x0
    li 0, 0xff
    addi 4, 1, 0x14
    stw 6, 0xc(1)
    addi 5, 1, 0xc
    stw 0, 0x14(1)
    lwz 3, 0x60(31)
    stw 6, 0x8(1)
    lwz 12, 0x0(3)
    stw 0, 0x10(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 20, 0x0
    mr 22, 31
L_803F0194:
    li 3, 0x60
    bl fn_80084370
    mr. 21, 3
    .4byte 0x41820018 # beq .L_803F01B8
    extsb 4, 20
    li 5, 0x0
    li 6, 0x0
    li 7, 0x8
    bl fn_8045B46C
L_803F01B8:
    addi 20, 20, 0x1
    stw 21, 0x7c(22)
    cmpwi 20, 0x4
    addi 22, 22, 0x4
    .4byte 0x4180FFCC # blt .L_803F0194
    mr 3, 31
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lmw 20, 0x30(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

