# fn_803B38E8 - helper (0x9d8)
.section extab, "a"
.balign 4
.global etb_8000F4EC
etb_8000F4EC:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000F4EC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F27C
eti_8001F27C:
    .4byte fn_803B38E8
    .4byte 0x000009D8
    .4byte etb_8000F4EC
.size eti_8001F27C, 12

.text
.balign 4
.global fn_803B38E8

fn_803B38E8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stfd 31, 0x10(1)
    psq_st 31, 0x18(1), 0, 0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lis 3, 0x616e
    lwz 0, 0x450(30)
    addi 6, 3, 0x3132
    li 5, 0x5072
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x30(30)
    lis 3, 0x616e
    addi 6, 3, 0x3232
    li 5, 0x5072
    lwz 0, 0x450(30)
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x34(30)
    lwz 3, 0x30(30)
    bl fn_80095FB4
    lwz 0, 0x450(30)
    lis 5, 0x6172
    lis 4, 0x4e64
    lfs 31, 0x4(3)
    slwi 0, 0, 2
    addi 6, 5, 0x3031
    add 3, 30, 0
    addi 5, 4, 0x6174
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    fsubs 0, 0, 31
    stfs 0, 0x42c(30)
    lwz 3, 0x30(30)
    bl fn_80095FB4
    lwz 0, 0x450(30)
    lis 5, 0x6172
    lis 4, 0x4e64
    lfs 31, 0x4(3)
    slwi 0, 0, 2
    addi 6, 5, 0x3231
    add 3, 30, 0
    addi 5, 4, 0x6174
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, 0x616e
    addi 6, 3, 0x3131
    li 5, 0x5072
    fsubs 0, 0, 31
    stfs 0, 0x430(30)
    lwz 0, 0x450(30)
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x40(30)
    lis 3, 0x616e
    addi 6, 3, 0x3231
    li 5, 0x5072
    lwz 0, 0x450(30)
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x2
    mr 4, 30
    mr 5, 30
    stw 3, 0x44(30)
    mtctr 0
L_803B3A70:
    lwz 3, 0x40(4)
    addi 4, 4, 0x4
    lbz 0, 0x150(3)
    stb 0, 0x46c(5)
    lbz 0, 0x151(3)
    stb 0, 0x46d(5)
    lbz 0, 0x152(3)
    stb 0, 0x46e(5)
    lbz 0, 0x153(3)
    stb 0, 0x46f(5)
    lbz 0, 0x154(3)
    stb 0, 0x470(5)
    lbz 0, 0x155(3)
    stb 0, 0x471(5)
    lbz 0, 0x156(3)
    stb 0, 0x472(5)
    lbz 0, 0x157(3)
    stb 0, 0x473(5)
    lbz 0, 0x158(3)
    stb 0, 0x474(5)
    lbz 0, 0x159(3)
    stb 0, 0x475(5)
    lbz 0, 0x15a(3)
    stb 0, 0x476(5)
    lbz 0, 0x15b(3)
    stb 0, 0x477(5)
    lbz 0, 0x15c(3)
    stb 0, 0x478(5)
    lbz 0, 0x15d(3)
    stb 0, 0x479(5)
    lbz 0, 0x15e(3)
    stb 0, 0x47a(5)
    lbz 0, 0x15f(3)
    stb 0, 0x47b(5)
    addi 5, 5, 0x10
    .4byte 0x4200FF74 # bdnz .L_803B3A70
    lwz 0, 0x450(30)
    lis 4, 0x6172
    lis 3, 0x4e64
    slwi 0, 0, 2
    addi 6, 4, 0x3031
    add 4, 30, 0
    addi 5, 3, 0x6174
    lwz 3, 0x10(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x50(30)
    lis 4, 0x6172
    lis 3, 0x4e64
    lwz 0, 0x450(30)
    addi 6, 4, 0x3132
    addi 5, 3, 0x6174
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x54(30)
    lis 4, 0x6172
    lis 3, 0x4e64
    lwz 0, 0x450(30)
    addi 6, 4, 0x3231
    addi 5, 3, 0x6174
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x60(30)
    lis 4, 0x6172
    lis 3, 0x4e64
    lwz 0, 0x450(30)
    addi 6, 4, 0x3232
    addi 5, 3, 0x6174
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x64(30)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3131
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xa8(30)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3132
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xb8(30)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3133
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xc8(30)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3134
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xd8(30)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3135
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xe8(30)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3131
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xf8(30)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3132
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x108(30)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3133
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x118(30)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3134
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x128(30)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3135
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x138(30)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3231
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xac(30)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3232
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xbc(30)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3233
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xcc(30)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3234
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xdc(30)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3235
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xec(30)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3231
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xfc(30)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3232
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x10c(30)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3233
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x11c(30)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3234
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x12c(30)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(30)
    addi 6, 4, 0x3235
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x13c(30)
    lis 4, 0x6573
    lis 3, 0x50
    lwz 0, 0x450(30)
    addi 6, 4, 0x7431
    addi 5, 3, 0x6c74
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x148(30)
    lis 4, 0x7773
    lis 3, 0x50
    lwz 0, 0x450(30)
    addi 6, 4, 0x7432
    addi 5, 3, 0x6c74
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x14c(30)
    lis 4, 0x7374
    lis 3, 0x50
    lwz 0, 0x450(30)
    addi 6, 4, 0x3031
    addi 5, 3, 0x7270
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x158(30)
    lis 4, 0x7374
    lis 3, 0x50
    lwz 0, 0x450(30)
    addi 6, 4, 0x3032
    addi 5, 3, 0x7270
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x15c(30)
    lis 4, 0x7461
    lis 3, 0x4e
    lwz 0, 0x450(30)
    addi 6, 4, 0x3035
    addi 5, 3, 0x6461
    slwi 0, 0, 2
    add 3, 30, 0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x168(30)
    lis 5, 0x6c74
    lis 4, 0x50
    lwz 3, 0x1c(30)
    addi 6, 5, 0x6267
    addi 5, 4, 0x7273
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x16c(30)
    mr 31, 30
    li 30, 0x0
L_803B4114:
    lwz 3, 0xa8(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0xb8(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0xc8(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0xd8(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0xe8(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0xf8(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x108(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x118(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x128(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x138(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0xa8(31)
    li 0, 0x0
    addi 30, 30, 0x1
    stb 0, 0xb0(3)
    cmpwi 30, 0x2
    lwz 3, 0xb8(31)
    stb 0, 0xb0(3)
    lwz 3, 0xc8(31)
    stb 0, 0xb0(3)
    lwz 3, 0xd8(31)
    stb 0, 0xb0(3)
    lwz 3, 0xf8(31)
    stb 0, 0xb0(3)
    lwz 3, 0x108(31)
    stb 0, 0xb0(3)
    lwz 3, 0x118(31)
    stb 0, 0xb0(3)
    lwz 3, 0x128(31)
    stb 0, 0xb0(3)
    lwz 3, 0x30(31)
    stb 0, 0xb0(3)
    lwz 3, 0x50(31)
    stb 0, 0xb0(3)
    lwz 3, 0x60(31)
    stb 0, 0xb0(3)
    lwz 3, 0x148(31)
    addi 31, 31, 0x4
    stb 0, 0xb0(3)
    .4byte 0x4180FE78 # blt .L_803B4114
    psq_l 31, 0x18(1), 0, 0
    lwz 0, 0x24(1)
    lfd 31, 0x10(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

