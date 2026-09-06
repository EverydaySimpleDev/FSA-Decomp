# fn_803B6FD8 - helper (0xbb8) - string helper fn_80095FB4 x15 + operator-new x11 (fn_80084370)
.section extab, "a"
.balign 4
.global etb_8000F514
etb_8000F514:
    .4byte 0x20CA0000
    .4byte 0x00000184
    .4byte 0x00000060
    .4byte 0x000001B4
    .4byte 0x00000068
    .4byte 0x0000024C
    .4byte 0x00000070
    .4byte 0x0000027C
    .4byte 0x00000078
    .4byte 0x000002AC
    .4byte 0x00000080
    .4byte 0x00000344
    .4byte 0x00000088
    .4byte 0x00000374
    .4byte 0x00000090
    .4byte 0x000003A4
    .4byte 0x00000098
    .4byte 0x000004B0
    .4byte 0x000000A0
    .4byte 0x00000A6C
    .4byte 0x000000A8
    .4byte 0x00000AA0
    .4byte 0x000000B0
    .4byte 0x00000000
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001E
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
.size etb_8000F514, 184

.section extabindex, "a"
.balign 4
.global eti_8001F2B8
eti_8001F2B8:
    .4byte fn_803B6FD8
    .4byte 0x00000BB8
    .4byte etb_8000F514
.size eti_8001F2B8, 12

.text
.balign 4
.global fn_803B6FD8

fn_803B6FD8:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    lis 4, lbl_804AF9A0@ha
    lis 5, lbl_80476208@ha
    addi 0, 4, lbl_804AF9A0@l
    mr 31, 3
    lis 4, fn_8003B2CC@ha
    stw 0, 0x0(3)
    addi 30, 5, lbl_80476208@l
    addi 3, 31, 0x250
    addi 4, 4, fn_8003B2CC@l
    li 5, 0x0
    li 6, 0xc
    li 7, 0xa
    bl __construct_array
    lis 4, fn_8003B2CC@ha
    addi 3, 31, 0x2f0
    addi 4, 4, fn_8003B2CC@l
    li 5, 0x0
    li 6, 0xc
    li 7, 0x4
    bl __construct_array
    lis 4, InvalidateFourFields@ha
    addi 3, 31, 0x46c
    addi 4, 4, InvalidateFourFields@l
    li 5, 0x0
    li 6, 0x10
    li 7, 0x4
    bl __construct_array
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 3, 0x8(4)
    bl fn_80083A68
    .4byte 0x93ED91E0 # stw r31, lbl_8053ADA0@sda21(r0)
    li 0, 0x0
    li 3, 0x118
    stw 0, 0x1c8(31)
    stw 0, 0x1cc(31)
    stw 0, 0x1d0(31)
    stw 0, 0x1d4(31)
    stw 0, 0x1d8(31)
    stw 0, 0x1dc(31)
    stw 0, 0x1e0(31)
    stw 0, 0x1e4(31)
    stw 0, 0x1e8(31)
    stw 0, 0x1ec(31)
    stw 0, 0x1f0(31)
    stw 0, 0x1f4(31)
    stw 0, 0x1f8(31)
    stw 0, 0x1fc(31)
    stw 0, 0x200(31)
    stw 0, 0x204(31)
    stw 0, 0x208(31)
    stw 0, 0x20c(31)
    stw 0, 0x210(31)
    stw 0, 0x214(31)
    stw 0, 0x218(31)
    stw 0, 0x21c(31)
    stw 0, 0x220(31)
    stw 0, 0x224(31)
    stw 0, 0x228(31)
    stw 0, 0x22c(31)
    stw 0, 0x230(31)
    stw 0, 0x234(31)
    stw 0, 0x238(31)
    stw 0, 0x23c(31)
    stw 0, 0x188(31)
    stw 0, 0x198(31)
    stw 0, 0x1a8(31)
    stw 0, 0x1b8(31)
    stw 0, 0x18c(31)
    stw 0, 0x19c(31)
    stw 0, 0x1ac(31)
    stw 0, 0x1bc(31)
    stw 0, 0x190(31)
    stw 0, 0x1a0(31)
    stw 0, 0x1b0(31)
    stw 0, 0x1c0(31)
    stw 0, 0x194(31)
    stw 0, 0x1a4(31)
    stw 0, 0x1b4(31)
    stw 0, 0x1c4(31)
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_803B715C
    bl fn_8009C4EC
L_803B715C:
    stw 29, 0x4(31)
    addi 4, 30, 0x224
    lis 5, 0x110
    .4byte 0x80CD91A8 # lwz r6, lbl_8053AD68@sda21(r0)
    lwz 3, 0x4(31)
    lwz 6, 0x18(6)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_803B718C
    bl fn_8009C4EC
L_803B718C:
    stw 29, 0x10(31)
    addi 4, 30, 0x234
    lis 5, 0x110
    .4byte 0x80CD91A8 # lwz r6, lbl_8053AD68@sda21(r0)
    lwz 3, 0x10(31)
    lwz 6, 0x18(6)
    bl fn_8009C69C
    lwz 3, 0x10(31)
    lis 4, 0x6d74
    addi 6, 4, 0x3031
    li 5, 0x546d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 30, 0x248
    lhz 4, 0x132(4)
    crclr 6
    bl OSReport
    lwz 3, 0x10(31)
    lis 4, 0x6d74
    addi 6, 4, 0x3032
    li 5, 0x546d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 30, 0x258
    lhz 4, 0x132(4)
    crclr 6
    bl OSReport
    li 3, 0x118
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_803B7224
    bl fn_8009C4EC
L_803B7224:
    stw 29, 0x1c(31)
    addi 4, 30, 0x268
    lis 5, 0x110
    .4byte 0x80CD91A8 # lwz r6, lbl_8053AD68@sda21(r0)
    lwz 3, 0x1c(31)
    lwz 6, 0x18(6)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_803B7254
    bl fn_8009C4EC
L_803B7254:
    stw 29, 0x8(31)
    addi 4, 30, 0x278
    lis 5, 0x110
    .4byte 0x80CD91A8 # lwz r6, lbl_8053AD68@sda21(r0)
    lwz 3, 0x8(31)
    lwz 6, 0x18(6)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_803B7284
    bl fn_8009C4EC
L_803B7284:
    stw 29, 0x14(31)
    addi 4, 30, 0x288
    lis 5, 0x110
    .4byte 0x80CD91A8 # lwz r6, lbl_8053AD68@sda21(r0)
    lwz 3, 0x14(31)
    lwz 6, 0x18(6)
    bl fn_8009C69C
    lwz 3, 0x14(31)
    lis 4, 0x6d74
    addi 6, 4, 0x3031
    li 5, 0x546d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 30, 0x248
    lhz 4, 0x132(4)
    crclr 6
    bl OSReport
    lwz 3, 0x14(31)
    lis 4, 0x6d74
    addi 6, 4, 0x3032
    li 5, 0x546d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 30, 0x258
    lhz 4, 0x132(4)
    crclr 6
    bl OSReport
    li 3, 0x118
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_803B731C
    bl fn_8009C4EC
L_803B731C:
    stw 29, 0xc(31)
    addi 4, 30, 0x29c
    lis 5, 0x110
    .4byte 0x80CD91A8 # lwz r6, lbl_8053AD68@sda21(r0)
    lwz 3, 0xc(31)
    lwz 6, 0x18(6)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_803B734C
    bl fn_8009C4EC
L_803B734C:
    stw 29, 0x18(31)
    addi 4, 30, 0x2ac
    lis 5, 0x110
    .4byte 0x80CD91A8 # lwz r6, lbl_8053AD68@sda21(r0)
    lwz 3, 0x18(31)
    lwz 6, 0x18(6)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_803B737C
    bl fn_8009C4EC
L_803B737C:
    stw 29, 0x20(31)
    addi 4, 30, 0x2c0
    lis 5, 0x110
    .4byte 0x80CD91A8 # lwz r6, lbl_8053AD68@sda21(r0)
    lwz 3, 0x20(31)
    lwz 6, 0x18(6)
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
    addi 4, 30, 0x2d4
    bl fn_80403104
    bl fn_800A4994
    stw 3, 0x24(31)
    lwz 3, 0x4(31)
    lwz 4, 0x24(31)
    lwz 12, 0x0(3)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    lis 5, 0x5343
    addi 4, 30, 0x2e4
    addi 3, 5, 0x524e
    bl fn_80403104
    bl fn_800A4994
    stw 3, 0x28(31)
    lwz 3, 0x8(31)
    lwz 4, 0x28(31)
    lwz 12, 0x0(3)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    lis 5, 0x5343
    addi 4, 30, 0x2f4
    addi 3, 5, 0x524e
    bl fn_80403104
    bl fn_800A4994
    stw 3, 0x2c(31)
    lwz 3, 0xc(31)
    lwz 4, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    lis 5, 0x5449
    addi 4, 30, 0x304
    addi 3, 5, 0x4d47
    bl fn_804030C4
    mr 0, 3
    li 3, 0x168
    mr 29, 0
    bl fn_80084370
    mr. 30, 3
    .4byte 0x4182000C # beq .L_803B7488
    mr 4, 29
    bl fn_80097800
L_803B7488:
    stw 30, 0x170(31)
    li 6, 0x0
    li 0, 0xff
    addi 4, 1, 0x14
    stw 6, 0xc(1)
    addi 5, 1, 0xc
    stw 0, 0x14(1)
    lwz 3, 0x170(31)
    stw 6, 0x8(1)
    lwz 12, 0x0(3)
    stw 0, 0x10(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 5, 0x6573
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x7434
    addi 5, 4, 0x6c74
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 5, 0x7374
    lfs 0, 0x24(3)
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3034
    fsubs 29, 1, 0
    addi 5, 4, 0x7270
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3035
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x6573
    lwz 3, 0x4(31)
    lis 4, 0x50
    fadds 30, 0, 30
    addi 6, 5, 0x7434
    lwz 12, 0x0(3)
    addi 5, 4, 0x6c74
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3034
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x7374
    lwz 3, 0x4(31)
    lis 4, 0x50
    fadds 31, 0, 31
    addi 6, 5, 0x3034
    lwz 12, 0x0(3)
    addi 5, 4, 0x7270
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x626b
    lis 4, 0x5074
    .4byte 0xC0020448 # lfs f0, lbl_805433E8@sda21(r0)
    fadds 1, 1, 31
    addi 6, 5, 0x3035
    addi 5, 4, 0x746c
    fsubs 1, 1, 30
    fmadds 0, 29, 0, 1
    stfs 0, 0x3f0(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x7362
    lis 4, 0x5065
    stfs 0, 0x3f4(31)
    addi 6, 5, 0x3036
    addi 5, 4, 0x6d62
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x6862
    lis 4, 0x50
    stfs 0, 0x3f8(31)
    addi 6, 5, 0x3036
    addi 5, 4, 0x726d
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x7362
    lis 4, 0x506c
    stfs 0, 0x3fc(31)
    addi 6, 5, 0x3036
    addi 5, 4, 0x6c6f
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x626b
    lis 4, 0x5077
    stfs 0, 0x400(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x696e
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x626b
    lis 4, 0x5064
    stfs 0, 0x414(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x7277
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x626b
    lis 4, 0x50
    stfs 0, 0x418(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6c68
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x626b
    lis 4, 0x50
    stfs 0, 0x408(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6468
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x626b
    lis 4, 0x50
    stfs 0, 0x404(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x666f
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x626b
    lis 4, 0x50
    stfs 0, 0x40c(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6861
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x626b
    lis 4, 0x5074
    stfs 0, 0x410(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x746c
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x70(31)
    lis 5, 0x626b
    lis 4, 0x5064
    lwz 3, 0x20(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x7277
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x74(31)
    lis 5, 0x626b
    lis 4, 0x5077
    lwz 3, 0x20(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x696e
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x78(31)
    lis 4, 0x6e72
    addi 6, 4, 0x3031
    li 5, 0x5077
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x7c(31)
    lis 4, 0x6e72
    addi 6, 4, 0x3032
    li 5, 0x5077
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x80(31)
    lis 5, 0x7362
    lis 4, 0x5065
    lwz 3, 0x20(31)
    addi 6, 5, 0x3036
    addi 5, 4, 0x6d62
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x8c(31)
    lis 5, 0x6862
    lis 4, 0x50
    lwz 3, 0x20(31)
    addi 6, 5, 0x3036
    addi 5, 4, 0x726d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x90(31)
    lis 5, 0x7362
    lis 4, 0x506c
    lwz 3, 0x20(31)
    addi 6, 5, 0x3036
    addi 5, 4, 0x6c6f
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x94(31)
    lis 5, 0x626b
    lis 4, 0x50
    lwz 3, 0x20(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6c68
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x98(31)
    lis 5, 0x626b
    lis 4, 0x50
    lwz 3, 0x20(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6468
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x9c(31)
    lis 5, 0x626b
    lis 4, 0x50
    lwz 3, 0x20(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6861
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xa0(31)
    lis 5, 0x626b
    lis 4, 0x50
    lwz 3, 0x20(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x666f
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xa4(31)
    li 5, 0x1
    li 0, 0x0
    .4byte 0xC0020428 # lfs f0, lbl_805433C8@sda21(r0)
    lwz 4, 0x70(31)
    mr 30, 31
    li 29, 0x0
    stb 5, 0xb0(4)
    lwz 4, 0x74(31)
    stb 0, 0xb0(4)
    lwz 4, 0x78(31)
    stb 0, 0xb0(4)
    lwz 4, 0x7c(31)
    stb 0, 0xb0(4)
    lwz 4, 0x80(31)
    stb 0, 0xb0(4)
    lwz 4, 0x8c(31)
    stb 0, 0xb0(4)
    lwz 4, 0x90(31)
    stb 0, 0xb0(4)
    lwz 4, 0x94(31)
    stb 0, 0xb0(4)
    lwz 4, 0x98(31)
    stb 0, 0xb0(4)
    lwz 4, 0x9c(31)
    stb 0, 0xb0(4)
    lwz 4, 0xa4(31)
    stb 0, 0xb0(4)
    lwz 4, 0xa0(31)
    stb 0, 0xb0(4)
    stfs 0, 0x244(31)
    stfs 0, 0x248(31)
    stfs 0, 0x24c(31)
L_803B7A20:
    li 3, 0x60
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820018 # beq .L_803B7A44
    extsb 4, 29
    li 5, 0x0
    li 6, 0x0
    li 7, 0x8
    bl fn_8045B46C
L_803B7A44:
    addi 29, 29, 0x1
    stw 28, 0x174(30)
    cmpwi 29, 0x4
    addi 30, 30, 0x4
    .4byte 0x4180FFCC # blt .L_803B7A20
    li 3, 0x5c
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820014 # beq .L_803B7A78
    addi 4, 31, 0x244
    li 5, 0x0
    li 6, 0x8
    bl fn_804578F4
L_803B7A78:
    stw 28, 0x184(31)
    lis 4, lbl_80529DEC@ha
    .4byte 0xC0020428 # lfs f0, lbl_805433C8@sda21(r0)
    li 0, -0x1
    addi 5, 4, lbl_80529DEC@l
    stfs 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    stw 0, 0x2c8(31)
    stfs 0, 0x25c(31)
    stfs 0, 0x260(31)
    stfs 0, 0x264(31)
    stw 0, 0x2cc(31)
    stfs 0, 0x268(31)
    stfs 0, 0x26c(31)
    stfs 0, 0x270(31)
    stw 0, 0x2d0(31)
    stfs 0, 0x274(31)
    stfs 0, 0x278(31)
    stfs 0, 0x27c(31)
    stw 0, 0x2d4(31)
    stfs 0, 0x280(31)
    stfs 0, 0x284(31)
    stfs 0, 0x288(31)
    stw 0, 0x2d8(31)
    stfs 0, 0x28c(31)
    stfs 0, 0x290(31)
    stfs 0, 0x294(31)
    stw 0, 0x2dc(31)
    stfs 0, 0x298(31)
    stfs 0, 0x29c(31)
    stfs 0, 0x2a0(31)
    stw 0, 0x2e0(31)
    stfs 0, 0x2a4(31)
    stfs 0, 0x2a8(31)
    stfs 0, 0x2ac(31)
    stw 0, 0x2e4(31)
    stfs 0, 0x2b0(31)
    stfs 0, 0x2b4(31)
    stfs 0, 0x2b8(31)
    stw 0, 0x2e8(31)
    stfs 0, 0x2bc(31)
    stfs 0, 0x2c0(31)
    stfs 0, 0x2c4(31)
    stw 0, 0x2ec(31)
    lwz 0, 0x118(5)
    cmpwi 0, 0x9
    .4byte 0x40820020 # bne .L_803B7B54
    lwz 0, 0x11c(5)
    cmpwi 0, 0x3
    .4byte 0x40820014 # bne .L_803B7B54
    li 4, 0x7
    li 0, 0x3
    stw 4, 0x118(5)
    stw 0, 0x11c(5)
L_803B7B54:
    mr 3, 31
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 0, 0x64(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

