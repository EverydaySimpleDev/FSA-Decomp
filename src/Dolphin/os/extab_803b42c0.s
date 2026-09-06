# fn_803B42C0 - helper (0x10b8)
.section extab, "a"
.balign 4
.global etb_8000F4F4
etb_8000F4F4:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_8000F4F4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F288
eti_8001F288:
    .4byte fn_803B42C0
    .4byte 0x000010B8
    .4byte etb_8000F4F4
.size eti_8001F288, 12

.text
.balign 4
.global fn_803B42C0

fn_803B42C0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    lis 4, lbl_80476208@ha
    lwz 0, 0x450(3)
    lis 3, 0x616e
    addi 31, 4, lbl_80476208@l
    li 5, 0x5072
    slwi 0, 0, 2
    addi 6, 3, 0x3132
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x30(28)
    lis 3, 0x616e
    addi 6, 3, 0x3232
    li 5, 0x5072
    lwz 0, 0x450(28)
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x34(28)
    lis 3, 0x616e
    addi 6, 3, 0x3332
    li 5, 0x5072
    lwz 0, 0x450(28)
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x38(28)
    lwz 3, 0x30(28)
    bl fn_80095FB4
    lwz 0, 0x450(28)
    lis 5, 0x6172
    lis 4, 0x4e64
    lfs 31, 0x4(3)
    slwi 0, 0, 2
    addi 6, 5, 0x3031
    add 3, 28, 0
    addi 5, 4, 0x6174
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    fsubs 0, 0, 31
    stfs 0, 0x42c(28)
    lwz 3, 0x30(28)
    bl fn_80095FB4
    lwz 0, 0x450(28)
    lis 5, 0x6172
    lis 4, 0x4e64
    lfs 31, 0x4(3)
    slwi 0, 0, 2
    addi 6, 5, 0x3231
    add 3, 28, 0
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
    stfs 0, 0x430(28)
    lwz 0, 0x450(28)
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x40(28)
    lis 3, 0x616e
    addi 6, 3, 0x3231
    li 5, 0x5072
    lwz 0, 0x450(28)
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x44(28)
    lis 3, 0x616e
    addi 6, 3, 0x3331
    li 5, 0x5072
    lwz 0, 0x450(28)
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x3
    mr 4, 28
    mr 5, 28
    stw 3, 0x48(28)
    mtctr 0
L_803B44B8:
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
    .4byte 0x4200FF74 # bdnz .L_803B44B8
    lwz 0, 0x450(28)
    lis 4, 0x6172
    lis 3, 0x4e64
    slwi 0, 0, 2
    addi 6, 4, 0x3031
    add 4, 28, 0
    addi 5, 3, 0x6174
    lwz 3, 0x10(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x50(28)
    lis 4, 0x6172
    lis 3, 0x4e64
    lwz 0, 0x450(28)
    addi 6, 4, 0x3132
    addi 5, 3, 0x6174
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x54(28)
    lis 4, 0x6172
    lis 3, 0x4e64
    lwz 0, 0x450(28)
    addi 6, 4, 0x3133
    addi 5, 3, 0x6174
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x58(28)
    lis 4, 0x6172
    lis 3, 0x4e64
    lwz 0, 0x450(28)
    addi 6, 4, 0x3231
    addi 5, 3, 0x6174
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x60(28)
    lis 4, 0x6172
    lis 3, 0x4e64
    lwz 0, 0x450(28)
    addi 6, 4, 0x3232
    addi 5, 3, 0x6174
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x64(28)
    lis 4, 0x6172
    lis 3, 0x4e64
    lwz 0, 0x450(28)
    addi 6, 4, 0x3233
    addi 5, 3, 0x6174
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x68(28)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3131
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xa8(28)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3132
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xb8(28)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3133
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xc8(28)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3134
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xd8(28)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3135
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xe8(28)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3131
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xf8(28)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3132
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x108(28)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3133
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x118(28)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3134
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x128(28)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3135
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x138(28)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3231
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xac(28)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3232
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xbc(28)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3233
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xcc(28)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3234
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xdc(28)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3235
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xec(28)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3231
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xfc(28)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3232
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x10c(28)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3233
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x11c(28)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3234
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x12c(28)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3235
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x13c(28)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3331
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xb0(28)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3332
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xc0(28)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3333
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xd0(28)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3334
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xe0(28)
    lis 4, 0x7265
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3335
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0xf0(28)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3331
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x100(28)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3332
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x110(28)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3333
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x120(28)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3334
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x130(28)
    lis 4, 0x726b
    lis 3, 0x5473
    lwz 0, 0x450(28)
    addi 6, 4, 0x3335
    addi 5, 3, 0x636f
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x140(28)
    lis 4, 0x6573
    lis 3, 0x50
    lwz 0, 0x450(28)
    addi 6, 4, 0x7431
    addi 5, 3, 0x6c74
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x148(28)
    lis 4, 0x7773
    lis 3, 0x50
    lwz 0, 0x450(28)
    addi 6, 4, 0x7432
    addi 5, 3, 0x6c74
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x14c(28)
    lis 4, 0x6573
    lis 3, 0x50
    lwz 0, 0x450(28)
    addi 6, 4, 0x7433
    addi 5, 3, 0x6c74
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x150(28)
    lis 4, 0x7374
    lis 3, 0x50
    lwz 0, 0x450(28)
    addi 6, 4, 0x3031
    addi 5, 3, 0x7270
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x158(28)
    lis 4, 0x7374
    lis 3, 0x50
    lwz 0, 0x450(28)
    addi 6, 4, 0x3032
    addi 5, 3, 0x7270
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x15c(28)
    lis 4, 0x7374
    lis 3, 0x50
    lwz 0, 0x450(28)
    addi 6, 4, 0x3033
    addi 5, 3, 0x7270
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x160(28)
    lis 4, 0x7461
    lis 3, 0x4e
    lwz 0, 0x450(28)
    addi 6, 4, 0x3035
    addi 5, 3, 0x6461
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x168(28)
    lis 5, 0x6c74
    lis 4, 0x50
    lwz 3, 0x1c(28)
    addi 6, 5, 0x6267
    addi 5, 4, 0x7273
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 3, 0x16c(28)
    mr 30, 28
    li 29, 0x0
L_803B4E34:
    lwz 3, 0xa8(30)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0xb8(30)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0xc8(30)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0xd8(30)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0xe8(30)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0xf8(30)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x108(30)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x118(30)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x128(30)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x138(30)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 4, 0x154(4)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0xa8(30)
    li 0, 0x0
    addi 29, 29, 0x1
    stb 0, 0xb0(3)
    cmpwi 29, 0x3
    lwz 3, 0xb8(30)
    stb 0, 0xb0(3)
    lwz 3, 0xc8(30)
    stb 0, 0xb0(3)
    lwz 3, 0xd8(30)
    stb 0, 0xb0(3)
    lwz 3, 0xf8(30)
    stb 0, 0xb0(3)
    lwz 3, 0x108(30)
    stb 0, 0xb0(3)
    lwz 3, 0x118(30)
    stb 0, 0xb0(3)
    lwz 3, 0x128(30)
    stb 0, 0xb0(3)
    lwz 3, 0x30(30)
    stb 0, 0xb0(3)
    lwz 3, 0x50(30)
    stb 0, 0xb0(3)
    lwz 3, 0x60(30)
    stb 0, 0xb0(3)
    lwz 3, 0x148(30)
    addi 30, 30, 0x4
    stb 0, 0xb0(3)
    .4byte 0x4180FE78 # blt .L_803B4E34
    lwz 0, 0x450(28)
    lis 3, 0x6d74
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    addi 6, 3, 0x3032
    slwi 0, 0, 2
    li 5, 0x546d
    add 3, 28, 0
    lwz 29, 0x154(4)
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 0, 0x450(28)
    lis 3, 0x6d74
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    addi 6, 3, 0x3031
    slwi 0, 0, 2
    li 5, 0x546d
    add 3, 28, 0
    lwz 29, 0x154(4)
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 0, 0x450(28)
    lis 3, 0x6d74
    addi 6, 3, 0x3032
    li 5, 0x546d
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xdd
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 0, 0x450(28)
    lis 3, 0x6d74
    addi 6, 3, 0x3031
    li 5, 0x546d
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xdd
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    li 30, 0x0
    addi 29, 31, 0x0
L_803B50E0:
    lwz 0, 0x450(28)
    lwz 5, 0x0(29)
    slwi 3, 0, 2
    lwz 6, 0x4(29)
    addi 0, 3, 0x10
    lwzx 3, 28, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 30, 0x4c9
    lbz 3, 0xb2(3)
    addi 30, 30, 0x1
    addi 29, 29, 0x8
    cmpwi 30, 0xd
    stbx 3, 28, 0
    .4byte 0x4180FFC0 # blt .L_803B50E0
    lwz 0, 0x450(28)
    lis 4, 0x776b
    lis 3, 0x50
    slwi 0, 0, 2
    addi 6, 4, 0x3032
    add 4, 28, 0
    addi 5, 3, 0x6d6d
    lwz 3, 0x10(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    addi 29, 31, 0x68
    li 30, 0x0
    stfs 0, 0x41c(28)
L_803B5168:
    lwz 0, 0x450(28)
    lwz 5, 0x0(29)
    slwi 3, 0, 2
    lwz 6, 0x4(29)
    addi 0, 3, 0x10
    lwzx 3, 28, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 30, 0x4d6
    lbz 3, 0xb2(3)
    addi 30, 30, 0x1
    addi 29, 29, 0x8
    cmpwi 30, 0x3
    stbx 3, 28, 0
    .4byte 0x4180FFC0 # blt .L_803B5168
    lwz 0, 0x450(28)
    lis 4, 0x6262
    lis 3, 0x5031
    slwi 0, 0, 2
    addi 6, 4, 0x3032
    add 4, 28, 0
    addi 5, 3, 0x6167
    lwz 3, 0x10(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    addi 29, 31, 0xc8
    li 30, 0x0
    stfs 0, 0x420(28)
L_803B51F0:
    lwz 0, 0x450(28)
    lwz 5, 0x0(29)
    slwi 3, 0, 2
    lwz 6, 0x4(29)
    addi 0, 3, 0x10
    lwzx 3, 28, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 30, 0x4d9
    lbz 3, 0xb2(3)
    addi 30, 30, 0x1
    addi 29, 29, 0x8
    cmpwi 30, 0x2
    stbx 3, 28, 0
    .4byte 0x4180FFC0 # blt .L_803B51F0
    lwz 0, 0x450(28)
    lis 3, 0x6f6b
    addi 6, 3, 0x3032
    li 5, 0x5031
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 4, 0x6762
    lis 3, 0x50
    stfs 0, 0x424(28)
    addi 6, 4, 0x3031
    addi 5, 3, 0x3161
    lwz 0, 0x450(28)
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 4, 0x7461
    lis 3, 0x4e
    stfs 0, 0x428(28)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6461
    lwz 0, 0x450(28)
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x7461
    stb 0, 0xb0(3)
    lis 3, 0x4e
    addi 6, 4, 0x3031
    lwz 0, 0x450(28)
    addi 5, 3, 0x6461
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x776b
    stb 0, 0xb0(3)
    lis 3, 0x50
    addi 6, 4, 0x3032
    lwz 0, 0x450(28)
    addi 5, 3, 0x6d6d
    slwi 0, 0, 2
    add 3, 28, 0
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

