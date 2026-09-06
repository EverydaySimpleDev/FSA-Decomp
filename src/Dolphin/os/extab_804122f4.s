# fn_804122F4 - actor@lbl_804B1288: constructor (0x26A8, LARGEST ctor in
# this whole gap). Allocates 29 sub-objects (operator new x29), 18x
# fn_8017ECF4, string formatting (fn_80095FB4 x13), calls the bundled
# helper fn_8041499C 4 times.
.section extab, "a"
.balign 4
.global etb_800103F4
etb_800103F4:
    .4byte 0x508A0000
    .4byte 0x00000108
    .4byte 0x00000048
    .4byte 0x00000130
    .4byte 0x00000050
    .4byte 0x00000148
    .4byte 0x00000058
    .4byte 0x00000224
    .4byte 0x00000060
    .4byte 0x00000250
    .4byte 0x00000068
    .4byte 0x0000027C
    .4byte 0x00000070
    .4byte 0x00001764
    .4byte 0x00000078
    .4byte 0x00001798
    .4byte 0x00000080
    .4byte 0x00000000
    .4byte 0x8A800016
    .4byte dtor_80084580
    .4byte 0x8A800016
    .4byte dtor_80084580
    .4byte 0x8A800016
    .4byte dtor_80084580
    .4byte 0x8A800016
    .4byte dtor_80084580
    .4byte 0x8A800016
    .4byte dtor_80084580
    .4byte 0x8A800016
    .4byte dtor_80084580
    .4byte 0x8A800016
    .4byte dtor_80084580
    .4byte 0x8A800016
    .4byte dtor_80084580
.size etb_800103F4, 136

.section extabindex, "a"
.balign 4
.global eti_80020284
eti_80020284:
    .4byte fn_804122F4
    .4byte 0x000026A8
    .4byte etb_800103F4
.size eti_80020284, 12

.text
.balign 4
.global fn_804122F4

fn_804122F4:
    stwu 1, -0x110(1)
    mflr 0
    stw 0, 0x114(1)
    stfd 31, 0x100(1)
    psq_st 31, 0x108(1), 0, 0
    stfd 30, 0xf0(1)
    psq_st 30, 0xf8(1), 0, 0
    stmw 22, 0xc8(1)
    lis 4, lbl_804B1288@ha
    lis 5, lbl_8048C1F8@ha
    addi 0, 4, lbl_804B1288@l
    mr 31, 3
    lis 4, fn_8009711C@ha
    stw 0, 0x0(3)
    addi 29, 5, lbl_8048C1F8@l
    addi 3, 31, 0x310
    addi 4, 4, fn_8009711C@l
    li 5, 0x0
    li 6, 0x4
    li 7, 0x6
    bl __construct_array
    lis 4, fn_8009711C@ha
    addi 3, 31, 0x328
    addi 4, 4, fn_8009711C@l
    li 5, 0x0
    li 6, 0x4
    li 7, 0x6
    bl __construct_array
    lis 4, lbl_80529DEC@ha
    li 0, 0x0
    addi 28, 4, lbl_80529DEC@l
    .4byte 0x93ED9238 # stw r31, lbl_8053ADF8@sda21(r0)
    stb 0, 0x23f(28)
    stb 0, 0x40c(31)
    lwz 23, 0x8(28)
    mr 3, 23
    bl fn_80083A68
    xoris 4, 3, 0x8000
    lis 0, 0x4330
    stw 4, 0xbc(1)
    mr 3, 23
    .4byte 0xC8420908 # lfd f2, lbl_805438A8@sda21(r0)
    stw 0, 0xb8(1)
    .4byte 0xC00209FC # lfs f0, lbl_8054399C@sda21(r0)
    lfd 1, 0xb8(1)
    fsubs 1, 1, 2
    fmuls 30, 1, 0
    bl fn_80083A3C
    xoris 4, 3, 0x8000
    lis 0, 0x4330
    stw 4, 0xc4(1)
    fmr 2, 30
    .4byte 0xC8620908 # lfd f3, lbl_805438A8@sda21(r0)
    addi 3, 29, 0xa6c
    stw 0, 0xc0(1)
    .4byte 0xC00209FC # lfs f0, lbl_8054399C@sda21(r0)
    lfd 1, 0xc0(1)
    fsubs 1, 1, 3
    fmuls 1, 1, 0
    crset 6
    bl OSReport
    li 3, 0x50
    bl fn_80084370
    mr. 22, 3
    .4byte 0x41820008 # beq .L_804123FC
    bl fn_80444B68
L_804123FC:
    stw 22, 0x4(31)
    li 3, 0x2180
    bl fn_80084370
    mr. 22, 3
    .4byte 0x41820018 # beq .L_80412424
    lis 4, lbl_80529DEC@ha
    li 5, 0x0
    addi 4, 4, lbl_80529DEC@l
    lwz 4, 0x34(4)
    bl fn_803D58E0
L_80412424:
    stw 22, 0x8(31)
    li 3, 0x118
    bl fn_80084370
    mr. 22, 3
    .4byte 0x41820008 # beq .L_8041243C
    bl fn_8009C4EC
L_8041243C:
    stw 22, 0xc(31)
    lis 4, lbl_80529DEC@ha
    addi 23, 4, lbl_80529DEC@l
    .4byte 0x38820A00 # li r4, lbl_805439A0@sda21
    lwz 3, 0xc(31)
    lis 5, 0x110
    lwz 6, 0x34(23)
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
    lwz 4, 0x34(23)
    .4byte 0x38620A08 # li r3, lbl_805439A8@sda21
    bl fn_800832A0
    bl fn_800A4994
    stw 3, 0x1c(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0xc(31)
    addi 6, 5, 0x3038
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lwz 4, 0x1c(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    lwz 4, 0x34(23)
    .4byte 0x38620A10 # li r3, lbl_805439B0@sda21
    bl fn_800832A0
    bl fn_800A4994
    stw 3, 0x20(31)
    lwz 3, 0xc(31)
    lwz 4, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x64(12)
    mtctr 12
    bctrl
    li 3, 0x118
    bl fn_80084370
    mr. 22, 3
    .4byte 0x41820008 # beq .L_80412518
    bl fn_8009C4EC
L_80412518:
    stw 22, 0x10(31)
    addi 4, 29, 0xaac
    lis 5, 0x110
    lwz 3, 0x10(31)
    lwz 6, 0x34(23)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 22, 3
    .4byte 0x41820008 # beq .L_80412544
    bl fn_8009C4EC
L_80412544:
    stw 22, 0x14(31)
    addi 4, 29, 0xabc
    lis 5, 0x110
    lwz 3, 0x14(31)
    lwz 6, 0x34(23)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 22, 3
    .4byte 0x41820008 # beq .L_80412570
    bl fn_8009C4EC
L_80412570:
    stw 22, 0x18(31)
    lis 4, lbl_80529DEC@ha
    addi 6, 4, lbl_80529DEC@l
    addi 4, 29, 0xac8
    lwz 3, 0x18(31)
    lis 5, 0x110
    lwz 6, 0x20(6)
    bl fn_8009C69C
    lwz 3, 0x10(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3130
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x6c69
    stb 0, 0xb0(3)
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x6c69
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x6c69
    stb 0, 0xb0(3)
    addi 6, 4, 0x3033
    li 5, 0x50
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x6c69
    stb 0, 0xb0(3)
    addi 6, 4, 0x3034
    li 5, 0x50
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x6d73
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x6d73
    stb 0, 0xb0(3)
    addi 6, 4, 0x3033
    li 5, 0x50
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(4)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_804126EC
    lwz 3, 0x10(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3038
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000030 # b .L_80412718
L_804126EC:
    lwz 3, 0x10(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3038
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80412718:
    bl Table_GetSelfIndexedBit87
    cmpwi 3, 0x0
    .4byte 0x418201A0 # beq .L_804128C0
    lwz 3, 0x10(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    bl Table_GetSelfIndexedByte86
    lis 4, 0x6666
    clrlwi 0, 3, 24
    addi 4, 4, 0x6667
    mulhw 0, 4, 0
    srawi 0, 0, 2
    srwi 4, 0, 31
    add 23, 0, 4
    bl Table_GetSelfIndexedByte86
    lis 6, 0x6666
    lis 4, lbl_804B1260@ha
    clrlwi 7, 3, 24
    lis 5, 0x5449
    addi 6, 6, 0x6667
    slwi 0, 23, 2
    mulhw 6, 6, 7
    addi 4, 4, lbl_804B1260@l
    lwzx 4, 4, 0
    addi 3, 5, 0x4d47
    srawi 0, 6, 2
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0xa
    subf 24, 0, 7
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x10(31)
    lis 4, 0x736b
    li 5, 0x5066
    lwz 12, 0x0(3)
    mr 23, 0
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lis 4, 0x6673
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, lbl_804B1260@ha
    lis 5, 0x5449
    slwi 0, 24, 2
    addi 4, 4, lbl_804B1260@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 23, 3
    lwz 3, 0x10(31)
    lis 4, 0x736b
    li 5, 0x5066
    lwz 12, 0x0(3)
    addi 6, 4, 0x3032
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lis 4, 0x6673
    addi 6, 4, 0x3032
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    .4byte 0x48000030 # b .L_804128EC
L_804128C0:
    lwz 3, 0x10(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_804128EC:
    lwz 3, 0x10(31)
    lis 4, 0x6875
    addi 6, 4, 0x3031
    li 5, 0x5070
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x5070
    stb 0, 0xb0(3)
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x5070
    stb 0, 0xb0(3)
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x5070
    stb 0, 0xb0(3)
    addi 6, 4, 0x3033
    li 5, 0x0
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x5070
    stb 0, 0xb0(3)
    addi 6, 4, 0x3034
    li 5, 0x0
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x6c76
    stb 0, 0xb0(3)
    addi 6, 4, 0x3131
    li 5, 0x5474
    lwz 3, 0x10(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 23, 0x154(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lis 4, 0x6c76
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3132
    lwz 12, 0x0(3)
    li 5, 0x5474
    lwz 23, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lis 4, 0x6c76
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3133
    lwz 12, 0x0(3)
    li 5, 0x5474
    lwz 23, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lis 4, 0x6c76
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3134
    lwz 12, 0x0(3)
    li 5, 0x5474
    lwz 23, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    addi 26, 29, 0x460
    addi 25, 29, 0x20
    mr 24, 26
    li 27, 0x0
L_80412AB4:
    lwz 3, 0x10(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 23, 0x154(4)
    lwz 12, 0x3c(12)
    lwz 5, 0x10(24)
    lwz 6, 0x14(24)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lwz 5, 0x10(24)
    lwz 12, 0x0(3)
    lwz 6, 0x14(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lwz 4, 0x0(25)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    addi 27, 27, 0x1
    addi 25, 25, 0x4
    cmpwi 27, 0x8
    addi 24, 24, 0x18
    .4byte 0x4180FF84 # blt .L_80412AB4
    mr 24, 31
    addi 23, 29, 0x0
    li 25, 0x0
L_80412B40:
    lwz 4, 0x0(23)
    addi 3, 24, 0x474
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    addi 25, 25, 0x1
    addi 24, 24, 0x1e
    cmpwi 25, 0x8
    addi 23, 23, 0x4
    .4byte 0x4180FFD8 # blt .L_80412B40
    lwz 3, 0x18(31)
    lis 4, 0x6d74
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x546d
    lwz 23, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    lis 4, 0x6d74
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x546d
    lwz 23, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    addi 23, 29, 0x460
    lwz 5, 0x18(23)
    lwz 12, 0x0(3)
    lwz 6, 0x1c(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x0(3)
    lis 4, 0x6c76
    lwz 3, 0x10(31)
    addi 6, 4, 0x6375
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lwz 5, 0x18(23)
    fsubs 0, 0, 30
    lwz 6, 0x1c(23)
    stfs 0, 0x404(31)
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x4(3)
    lis 4, 0x6c76
    lwz 3, 0x10(31)
    addi 6, 4, 0x6375
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 4, 0x6c76
    addi 6, 4, 0x6375
    li 5, 0x50
    fsubs 0, 0, 30
    stfs 0, 0x408(31)
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lwz 5, 0x30(23)
    lwz 12, 0x0(3)
    lwz 6, 0x34(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x4(3)
    lwz 3, 0x10(31)
    lwz 5, 0x460(29)
    lwz 12, 0x0(3)
    lwz 6, 0x464(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lwz 3, 0x10(31)
    fadds 1, 0, 30
    .4byte 0xC0020928 # lfs f0, lbl_805438C8@sda21(r0)
    lwz 12, 0x0(3)
    lwz 5, 0x460(29)
    lwz 12, 0x3c(12)
    fmuls 31, 1, 0
    lwz 6, 0x464(29)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x0(3)
    lwz 3, 0x10(31)
    lwz 5, 0x18(23)
    lwz 12, 0x0(3)
    lwz 6, 0x1c(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 30
    fmr 2, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lwz 5, 0x8(23)
    lwz 12, 0x0(3)
    lwz 6, 0xc(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lwz 3, 0x10(31)
    lwz 5, 0x8(23)
    lwz 12, 0x0(3)
    lwz 6, 0xc(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x0(3)
    lwz 3, 0x10(31)
    lwz 5, 0x20(23)
    lwz 12, 0x0(3)
    lwz 6, 0x24(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 30
    fmr 2, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lwz 5, 0x10(23)
    lwz 12, 0x0(3)
    lwz 6, 0x14(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 30, 0x4(3)
    lwz 3, 0x10(31)
    lwz 5, 0x10(23)
    lwz 12, 0x0(3)
    lwz 6, 0x14(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lwz 3, 0x10(31)
    lwz 5, 0x28(23)
    lwz 12, 0x0(3)
    lwz 6, 0x2c(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 31
    fmr 2, 30
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    li 25, 0x0
    mr 24, 26
L_80412E70:
    lwz 3, 0x10(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lfs 0, 0x24(3)
    lwz 3, 0x10(31)
    fsubs 30, 1, 0
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 23, 3
    lwz 3, 0x10(31)
    lwz 5, 0x18(24)
    lwz 12, 0x0(3)
    lwz 6, 0x1c(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 2, 30
    lfs 1, 0x28(23)
    lfs 0, 0x20(23)
    lwz 12, 0x18(12)
    fsubs 1, 1, 0
    mtctr 12
    bctrl
    addi 25, 25, 0x1
    addi 24, 24, 0x8
    cmpwi 25, 0x3
    .4byte 0x4180FF70 # blt .L_80412E70
    mr 25, 31
    li 27, 0x0
L_80412F0C:
    mr 23, 25
    mr 24, 26
    li 30, 0x0
L_80412F18:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80412F34
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80412F34:
    stw 3, 0x28(23)
    lwz 5, 0x0(24)
    lwz 3, 0x10(31)
    lwz 6, 0x4(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x28(23)
    bl fn_80402F04
    addi 30, 30, 0x1
    addi 24, 24, 0x8
    cmpwi 30, 0x3
    addi 23, 23, 0x4
    .4byte 0x4180FFA8 # blt .L_80412F18
    addi 27, 27, 0x1
    addi 26, 26, 0x18
    cmpwi 27, 0x8
    addi 25, 25, 0x14
    .4byte 0x4180FF88 # blt .L_80412F0C
    mr 23, 31
    addi 24, 29, 0x520
    li 25, 0x0
L_80412F94:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80412FB0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80412FB0:
    stw 3, 0x278(23)
    lwz 5, 0x0(24)
    lwz 3, 0x10(31)
    lwz 6, 0x4(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x278(23)
    bl fn_80402F04
    li 26, 0x0
L_80412FE0:
    lwz 3, 0x278(23)
    li 4, 0x14
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    addi 26, 26, 0x1
    cmpwi 26, 0x14
    .4byte 0x4180FFE4 # blt .L_80412FE0
    addi 25, 25, 0x1
    addi 24, 24, 0x8
    cmpwi 25, 0xf
    addi 23, 23, 0x4
    .4byte 0x4180FF84 # blt .L_80412F94
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80413030
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80413030:
    stw 3, 0xc8(31)
    lis 5, 0x746d
    lis 4, 0x5074
    lwz 3, 0xc(31)
    addi 6, 5, 0x6170
    addi 5, 4, 0x6573
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xc8(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80413080
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80413080:
    stw 3, 0xcc(31)
    lis 4, 0x6f77
    addi 6, 4, 0x6572
    li 5, 0x5074
    lwz 3, 0xc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xcc(31)
    bl fn_80402F04
    lwz 4, 0xcc(31)
    li 0, 0x0
    li 3, 0x2c
    lwz 4, 0x4(4)
    stb 0, 0xb0(4)
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804130DC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804130DC:
    stw 3, 0xd0(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0xc(31)
    addi 6, 5, 0x3038
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xd0(31)
    bl fn_80402F04
    mr 23, 31
    addi 24, 29, 0x8d0
    li 25, 0x0
L_8041311C:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80413138
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80413138:
    stw 3, 0xd4(23)
    lwz 5, 0x0(24)
    lwz 3, 0xc(31)
    lwz 6, 0x4(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xd4(23)
    bl fn_80402F04
    addi 25, 25, 0x1
    addi 24, 24, 0x8
    cmpwi 25, 0x12
    addi 23, 23, 0x4
    .4byte 0x4180FFA8 # blt .L_8041311C
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80413194
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80413194:
    stw 3, 0x11c(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x10(31)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x11c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804131E4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804131E4:
    stw 3, 0x120(31)
    lis 5, 0x616e
    lis 4, 0x50
    lwz 3, 0x10(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x706c
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x120(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80413234
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80413234:
    stw 3, 0x124(31)
    lis 5, 0x616e
    lis 4, 0x50
    lwz 3, 0x10(31)
    addi 6, 5, 0x3031
    addi 5, 4, 0x706c
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x124(31)
    bl fn_80402F04
    addi 30, 29, 0x100
    mr 23, 31
    mr 24, 30
    li 25, 0x0
L_80413278:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80413294
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80413294:
    stw 3, 0x128(23)
    lwz 5, 0x0(24)
    lwz 3, 0x10(31)
    lwz 6, 0x4(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x128(23)
    bl fn_80402F04
    cmpwi 25, 0x2
    .4byte 0x41820124 # beq .L_804133E8
    cmpwi 25, 0x6
    .4byte 0x4182011C # beq .L_804133E8
    cmpwi 25, 0xa
    .4byte 0x41820114 # beq .L_804133E8
    cmpwi 25, 0xe
    .4byte 0x4182010C # beq .L_804133E8
    cmpwi 25, 0x12
    .4byte 0x41820104 # beq .L_804133E8
    cmpwi 25, 0x16
    .4byte 0x418200FC # beq .L_804133E8
    cmpwi 25, 0x1a
    .4byte 0x418200F4 # beq .L_804133E8
    cmpwi 25, 0x1d
    .4byte 0x418200EC # beq .L_804133E8
    addi 3, 1, 0xa8
    li 4, 0xff
    li 5, 0xff
    li 6, 0x78
    li 7, 0xff
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    addi 3, 1, 0xb0
    li 4, 0xff
    li 5, 0xff
    stw 0, 0xac(1)
    li 6, 0x78
    li 7, 0x0
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    lwz 5, 0x0(24)
    stw 0, 0xb4(1)
    lwz 6, 0x4(24)
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xb4
    addi 5, 1, 0xac
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    addi 3, 1, 0x98
    li 4, 0xff
    li 5, 0xff
    li 6, 0x78
    li 7, 0xff
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    addi 3, 1, 0xa0
    li 4, 0xff
    li 5, 0xff
    stw 0, 0x9c(1)
    li 6, 0x78
    li 7, 0x0
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    lwz 5, 0x8(24)
    stw 0, 0xa4(1)
    lwz 6, 0xc(24)
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0xa4
    addi 5, 1, 0x9c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
L_804133E8:
    addi 25, 25, 0x1
    addi 24, 24, 0x10
    cmpwi 25, 0x20
    addi 23, 23, 0x4
    .4byte 0x4180FE80 # blt .L_80413278
    lis 4, 0x5555
    mr 26, 31
    addi 27, 4, 0x5556
    addi 23, 29, 0x598
    li 25, 0x0
L_80413410:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8041342C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8041342C:
    mulhw 4, 27, 25
    stw 3, 0x1a8(26)
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    srwi 0, 4, 31
    add 4, 4, 0
    lwz 12, 0x3c(12)
    mulli 0, 4, 0x3
    subf 0, 0, 25
    mulli 4, 4, 0x18
    slwi 0, 0, 3
    add 0, 4, 0
    add 6, 23, 0
    lwz 5, 0x0(6)
    lwz 6, 0x4(6)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x1a8(26)
    bl fn_80402F04
    addi 25, 25, 0x1
    addi 26, 26, 0x4
    cmpwi 25, 0x18
    .4byte 0x4180FF88 # blt .L_80413410
    mr 23, 31
    addi 24, 29, 0x340
    li 25, 0x0
L_80413498:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804134B4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804134B4:
    stw 3, 0x208(23)
    lwz 5, 0x0(24)
    lwz 3, 0x10(31)
    lwz 6, 0x4(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x208(23)
    bl fn_80402F04
    addi 25, 25, 0x1
    addi 24, 24, 0x8
    cmpwi 25, 0x8
    addi 23, 23, 0x4
    .4byte 0x4180FFA8 # blt .L_80413498
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80413510
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80413510:
    stw 3, 0x228(31)
    lis 5, 0x6375
    lis 4, 0x50
    lwz 3, 0x10(31)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6c76
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x228(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80413560
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80413560:
    stw 3, 0x22c(31)
    lis 5, 0x6375
    lis 4, 0x50
    lwz 3, 0x10(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6c76
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x22c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804135B0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804135B0:
    stw 3, 0x230(31)
    lis 5, 0x6375
    lis 4, 0x50
    lwz 3, 0x10(31)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6c76
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x230(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80413600
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80413600:
    stw 3, 0x234(31)
    lis 5, 0x6375
    lis 4, 0x50
    lwz 3, 0x10(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6c76
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x234(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80413650
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80413650:
    stw 3, 0x238(31)
    lis 4, 0x6c76
    addi 6, 4, 0x7365
    li 5, 0x50
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x238(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8041369C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8041369C:
    stw 3, 0x23c(31)
    lis 4, 0x6d73
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x23c(31)
    bl fn_80402F04
    lis 4, lbl_804AF86C@ha
    mr 24, 31
    addi 23, 4, lbl_804AF86C@l
    li 25, 0x0
L_804136DC:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_804136F0
    stw 23, 0x0(3)
L_804136F0:
    addi 25, 25, 0x1
    stw 3, 0x240(24)
    cmpwi 25, 0xc
    addi 24, 24, 0x4
    .4byte 0x4180FFDC # blt .L_804136DC
    lwz 3, 0x18(31)
    lis 5, 0x776b
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6d6d
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x240(31)
    bl fn_80402F04
    lwz 3, 0x18(31)
    lis 5, 0x776b
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6d6d
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x244(31)
    bl fn_80402F04
    lwz 3, 0x18(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3039
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x248(31)
    bl fn_80402F04
    lwz 3, 0x18(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3038
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x24c(31)
    bl fn_80402F04
    lwz 3, 0x18(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3037
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x250(31)
    bl fn_80402F04
    lwz 3, 0x18(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3036
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x254(31)
    bl fn_80402F04
    lwz 3, 0x18(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3035
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x258(31)
    bl fn_80402F04
    lwz 3, 0x18(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3034
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x25c(31)
    bl fn_80402F04
    lwz 3, 0x18(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3033
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x260(31)
    bl fn_80402F04
    lwz 3, 0x18(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3032
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x264(31)
    bl fn_80402F04
    lwz 3, 0x18(31)
    lis 4, 0x6d77
    addi 6, 4, 0x3031
    li 5, 0x506d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x268(31)
    bl fn_80402F04
    lwz 3, 0x18(31)
    lis 4, 0x6d6d
    addi 6, 4, 0x7470
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x26c(31)
    bl fn_80402F04
    li 0, 0x0
    addi 4, 1, 0x94
    stw 0, 0x8c(1)
    addi 5, 1, 0x8c
    stw 0, 0x94(1)
    lwz 6, 0x26c(31)
    stw 0, 0x88(1)
    lwz 3, 0x4(6)
    stw 0, 0x90(1)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8041396C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8041396C:
    stw 3, 0x270(31)
    lis 4, 0x6d74
    addi 6, 4, 0x3031
    li 5, 0x546d
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x270(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804139B8
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804139B8:
    stw 3, 0x274(31)
    lis 4, 0x6d74
    addi 6, 4, 0x3032
    li 5, 0x546d
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x274(31)
    bl fn_80402F04
    li 0, 0x0
    mr 23, 31
    sth 0, 0x42a(31)
    li 24, 0x0
    sth 0, 0x42c(31)
    stb 0, 0x659(31)
    stb 0, 0x65a(31)
    stb 0, 0x5dc(31)
    stw 0, 0x390(31)
L_80413A0C:
    lwz 3, 0x240(23)
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    .4byte 0xC0420918 # lfs f2, lbl_805438B8@sda21(r0)
    bl fn_80402E08
    addi 24, 24, 0x1
    addi 23, 23, 0x4
    cmpwi 24, 0xc
    .4byte 0x4180FFE4 # blt .L_80413A0C
    li 24, 0x0
    mr 23, 31
L_80413A34:
    li 3, 0x60
    bl fn_80084370
    mr. 22, 3
    .4byte 0x41820018 # beq .L_80413A58
    extsb 4, 24
    li 5, 0x0
    li 6, 0x0
    li 7, 0x8
    bl fn_8045B46C
L_80413A58:
    addi 24, 24, 0x1
    stw 22, 0x2b8(23)
    cmpwi 24, 0x4
    addi 23, 23, 0x4
    .4byte 0x4180FFCC # blt .L_80413A34
    li 3, 0x5c
    bl fn_80084370
    mr. 22, 3
    .4byte 0x41820014 # beq .L_80413A8C
    li 4, 0x0
    li 5, 0x0
    li 6, 0x8
    bl fn_804578F4
L_80413A8C:
    lis 4, 0x5449
    stw 22, 0x2c8(31)
    addi 3, 4, 0x4d47
    addi 4, 29, 0xae0
    bl fn_80403184
    mr 23, 3
    lwz 3, 0x10(31)
    lis 5, 0x616e
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x706c
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    .4byte 0xC022091C # lfs f1, lbl_805438BC@sda21(r0)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lis 5, 0x5449
    addi 4, 29, 0xae0
    addi 3, 5, 0x4d47
    bl fn_80403184
    mr 23, 3
    lwz 3, 0x10(31)
    lis 5, 0x616e
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x706c
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    .4byte 0xC022091C # lfs f1, lbl_805438BC@sda21(r0)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lis 5, 0x5449
    addi 4, 29, 0xaec
    addi 3, 5, 0x4d47
    bl fn_80403184
    lwz 5, 0x23c(31)
    mr 4, 3
    .4byte 0xC022091C # lfs f1, lbl_805438BC@sda21(r0)
    lwz 3, 0x4(5)
    lwz 12, 0x0(3)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 4, 0x23c(31)
    .4byte 0xC022091C # lfs f1, lbl_805438BC@sda21(r0)
    lwz 3, 0x4(4)
    fmr 3, 1
    .4byte 0xC04208F8 # lfs f2, lbl_80543898@sda21(r0)
    lwz 12, 0x0(3)
    fmr 4, 1
    fmr 5, 1
    lwz 12, 0x104(12)
    fmr 6, 1
    fmr 7, 1
    fmr 8, 1
    mtctr 12
    bctrl
    .4byte 0x80AD9318 # lwz r5, lbl_8053AED8@sda21(r0)
    lis 4, 0x5449
    addi 3, 4, 0x4d47
    addi 4, 29, 0xb00
    lwz 0, 0x8(5)
    stw 0, 0x2b4(31)
    bl fn_804030C4
    mr 4, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440D78
    lis 5, 0x5449
    addi 4, 29, 0xb14
    addi 3, 5, 0x4d47
    bl fn_804030C4
    mr 4, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440CE4
    mr 25, 31
    mr 26, 31
    li 27, 0x0
L_80413BE8:
    mr 23, 25
    mr 24, 26
    li 22, 0x0
L_80413BF4:
    lwz 4, 0x28(23)
    addi 3, 1, 0x84
    lwz 4, 0x4(4)
    lwz 12, 0x0(4)
    lwz 12, 0x138(12)
    mtctr 12
    bctrl
    addi 3, 24, 0x310
    addi 4, 1, 0x84
    bl fn_8041499C
    lwz 4, 0x28(23)
    addi 3, 1, 0x80
    lwz 4, 0x4(4)
    lwz 12, 0x0(4)
    lwz 12, 0x134(12)
    mtctr 12
    bctrl
    addi 3, 24, 0x328
    addi 4, 1, 0x80
    bl fn_8041499C
    addi 22, 22, 0x1
    li 0, 0xff
    cmpwi 22, 0x2
    stb 0, 0x32b(24)
    addi 23, 23, 0x4
    addi 24, 24, 0x4
    .4byte 0x4180FF98 # blt .L_80413BF4
    addi 27, 27, 0x1
    addi 26, 26, 0xc
    cmpwi 27, 0x2
    addi 25, 25, 0x14
    .4byte 0x4180FF78 # blt .L_80413BE8
    mr 23, 31
    mr 24, 31
    li 22, 0x0
L_80413C80:
    lwz 4, 0x30(23)
    addi 3, 1, 0x7c
    lwz 4, 0x4(4)
    lwz 12, 0x0(4)
    lwz 12, 0xb4(12)
    mtctr 12
    bctrl
    addi 3, 24, 0x318
    addi 4, 1, 0x7c
    bl fn_8041499C
    lwz 4, 0x30(23)
    addi 3, 1, 0x78
    lwz 4, 0x4(4)
    lwz 12, 0x0(4)
    lwz 12, 0xb0(12)
    mtctr 12
    bctrl
    addi 3, 24, 0x330
    addi 4, 1, 0x78
    bl fn_8041499C
    addi 22, 22, 0x1
    addi 24, 24, 0xc
    cmpwi 22, 0x2
    addi 23, 23, 0x14
    .4byte 0x4180FFA0 # blt .L_80413C80
    lwz 3, 0x10(31)
    lis 5, 0x6e74
    lis 4, 0x5070
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6f69
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    mr 26, 31
    addi 25, 29, 0x420
    li 22, 0x0
    stb 0, 0x641(31)
L_80413D1C:
    mr 23, 25
    mr 24, 26
    li 27, 0x0
L_80413D28:
    lwz 3, 0x10(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lwz 5, 0x0(23)
    stfs 0, 0x3bc(24)
    lwz 6, 0x4(23)
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    addi 27, 27, 0x1
    cmpwi 27, 0x2
    addi 23, 23, 0x8
    stfs 0, 0x3dc(24)
    addi 24, 24, 0x4
    .4byte 0x4180FFA0 # blt .L_80413D28
    addi 22, 22, 0x1
    addi 26, 26, 0x8
    cmpwi 22, 0x4
    addi 25, 25, 0x10
    .4byte 0x4180FF80 # blt .L_80413D1C
    li 22, 0x0
    addi 23, 29, 0x380
L_80413DA8:
    lwz 3, 0x10(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x64b
    lbz 4, 0xb2(3)
    addi 22, 22, 0x1
    addi 23, 23, 0x8
    cmpwi 22, 0xb
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_80413DA8
    li 22, 0x0
    addi 23, 29, 0x3d8
L_80413DE8:
    lwz 3, 0x14(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 22, 0x642
    lbz 4, 0xb2(3)
    addi 22, 22, 0x1
    addi 23, 23, 0x8
    cmpwi 22, 0x9
    stbx 4, 31, 0
    .4byte 0x4180FFCC # blt .L_80413DE8
    li 0, 0xff
    lis 4, lbl_80529DEC@ha
    stb 0, 0x65b(31)
    li 7, 0x0
    addi 6, 4, lbl_80529DEC@l
    .4byte 0xC022091C # lfs f1, lbl_805438BC@sda21(r0)
    stw 7, 0x2cc(31)
    li 4, -0x1
    .4byte 0xC00208F8 # lfs f0, lbl_80543898@sda21(r0)
    li 0, 0x10
    stw 7, 0x2dc(31)
    stw 7, 0x2f8(31)
    stw 7, 0x2d0(31)
    stw 7, 0x2e0(31)
    stw 7, 0x2fc(31)
    stw 7, 0x2d4(31)
    stw 7, 0x2e4(31)
    stw 7, 0x300(31)
    stw 7, 0x2d8(31)
    stw 7, 0x2e8(31)
    stw 7, 0x304(31)
    stw 7, 0x2ec(31)
    stw 7, 0x2f0(31)
    stw 7, 0x2f4(31)
    stw 7, 0x30c(31)
    stw 7, 0x308(31)
    lwz 5, 0x11c(6)
    stw 5, 0x348(31)
    lwz 5, 0x118(6)
    stw 5, 0x340(31)
    stb 7, 0x438(31)
    stb 7, 0x456(31)
    stfs 1, 0x3a8(31)
    stfs 0, 0x3b0(31)
    stfs 0, 0x3ac(31)
    stfs 0, 0x3b8(31)
    stfs 0, 0x3b4(31)
    stfs 0, 0x400(31)
    stfs 0, 0x3fc(31)
    stb 7, 0x65c(31)
    sth 7, 0x420(31)
    sth 7, 0x422(31)
    sth 7, 0x424(31)
    sth 7, 0x426(31)
    sth 7, 0x428(31)
    stw 7, 0x378(31)
    stw 7, 0x37c(31)
    stw 7, 0x364(31)
    stw 4, 0x368(31)
    stw 4, 0x36c(31)
    stw 7, 0x370(31)
    stw 7, 0x374(31)
    stfs 1, 0x3a8(31)
    stb 7, 0x640(31)
    sth 7, 0x41e(31)
    stw 7, 0x358(31)
    stw 7, 0x35c(31)
    stw 7, 0x380(31)
    stw 7, 0x38c(31)
    stw 7, 0x384(31)
    stw 4, 0x388(31)
    sth 7, 0x41e(31)
    stw 0, 0x360(31)
    sth 7, 0x42e(31)
    stfs 0, 0x394(31)
    stfs 0, 0x398(31)
    stfs 0, 0x39c(31)
    stfs 0, 0x3a0(31)
    stfs 0, 0x3a4(31)
    stw 7, 0x350(31)
    lwz 0, 0x350(31)
    stw 0, 0x354(31)
    sth 7, 0x40e(31)
    sth 7, 0x410(31)
    sth 7, 0x412(31)
    sth 7, 0x414(31)
    sth 7, 0x416(31)
    sth 7, 0x418(31)
    sth 7, 0x41a(31)
    sth 7, 0x41c(31)
    stb 7, 0x640(31)
    stb 7, 0x661(31)
    stb 7, 0x65f(31)
    stb 7, 0x660(31)
    sth 7, 0x430(31)
    stb 7, 0x662(31)
    stb 7, 0x663(31)
    stb 7, 0x664(31)
    sth 7, 0x432(31)
    sth 7, 0x436(31)
    sth 7, 0x434(31)
    stb 7, 0x665(31)
    stb 7, 0x65d(31)
    stb 7, 0x65e(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(4)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80413FB0
    stb 7, 0x656(31)
    .4byte 0x4800000C # b .L_80413FB8
L_80413FB0:
    li 0, 0x1
    stb 0, 0x656(31)
L_80413FB8:
    li 27, 0x0
    stb 27, 0x657(31)
    stb 27, 0x658(31)
    lbz 0, 0x23f(28)
    cmplwi 0, 0x0
    .4byte 0x40820130 # bne .L_804140FC
    li 25, 0x0
    li 24, 0x0
L_80413FD8:
    li 23, 0x0
    mr 26, 27
L_80413FE0:
    cmpwi 24, 0x0
    .4byte 0x4082000C # bne .L_80413FF0
    cmpwi 23, 0x2
    .4byte 0x41820074 # beq .L_80414060
L_80413FF0:
    cmpwi 24, 0x1
    .4byte 0x4082000C # bne .L_80414000
    cmpwi 23, 0x2
    .4byte 0x41820064 # beq .L_80414060
L_80414000:
    cmpwi 24, 0x2
    .4byte 0x4082000C # bne .L_80414010
    cmpwi 23, 0x2
    .4byte 0x41820054 # beq .L_80414060
L_80414010:
    cmpwi 24, 0x3
    .4byte 0x4082000C # bne .L_80414020
    cmpwi 23, 0x2
    .4byte 0x41820044 # beq .L_80414060
L_80414020:
    cmpwi 24, 0x4
    .4byte 0x4082000C # bne .L_80414030
    cmpwi 23, 0x2
    .4byte 0x41820034 # beq .L_80414060
L_80414030:
    cmpwi 24, 0x5
    .4byte 0x4082000C # bne .L_80414040
    cmpwi 23, 0x2
    .4byte 0x41820024 # beq .L_80414060
L_80414040:
    cmpwi 24, 0x6
    .4byte 0x4082000C # bne .L_80414050
    cmpwi 23, 0x2
    .4byte 0x41820014 # beq .L_80414060
L_80414050:
    cmpwi 24, 0x7
    .4byte 0x40820038 # bne .L_8041408C
    cmpwi 23, 0x1
    .4byte 0x40820030 # bne .L_8041408C
L_80414060:
    mr 3, 31
    mr 4, 24
    bl fn_804045F8
    cmpwi 3, 0x0
    .4byte 0x41820068 # beq .L_804140D8
    li 0, 0x1
    lwz 4, 0x38c(31)
    slw 0, 0, 26
    or 0, 4, 0
    stw 0, 0x38c(31)
    .4byte 0x48000050 # b .L_804140D8
L_8041408C:
    mr 3, 24
    mr 4, 23
    bl fn_8019CE40
    cmpwi 3, 0x0
    .4byte 0x4182001C # beq .L_804140B8
    li 0, 0x1
    lwz 4, 0x38c(31)
    slw 0, 0, 26
    or 0, 4, 0
    stw 0, 0x38c(31)
    .4byte 0x48000024 # b .L_804140D8
L_804140B8:
    clrlwi. 0, 25, 24
    .4byte 0x4082001C # bne .L_804140D8
    li 0, 0x1
    lwz 4, 0x38c(31)
    slw 0, 0, 26
    li 25, 0x1
    or 0, 4, 0
    stw 0, 0x38c(31)
L_804140D8:
    addi 23, 23, 0x1
    addi 26, 26, 0x1
    cmpwi 23, 0x4
    .4byte 0x4180FEFC # blt .L_80413FE0
    addi 24, 24, 0x1
    addi 27, 27, 0x4
    cmpwi 24, 0x8
    .4byte 0x4180FEE4 # blt .L_80413FD8
    .4byte 0x4800000C # b .L_80414104
L_804140FC:
    li 0, -0x1
    stw 0, 0x38c(31)
L_80414104:
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    lwz 3, 0xc8(31)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC022091C # lfs f1, lbl_805438BC@sda21(r0)
    lwz 3, 0xc8(31)
    fmr 2, 1
    bl fn_80402CE0
    lwz 4, 0xc8(31)
    lwz 3, 0x4(4)
    lbz 4, 0x28(4)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 4, 0xc8(31)
    li 0, 0x0
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    sth 0, 0x20(4)
    fmr 2, 1
    lwz 4, 0xc8(31)
    sth 0, 0x22(4)
    lwz 4, 0xc8(31)
    sth 0, 0x24(4)
    lwz 4, 0xc8(31)
    sth 0, 0x26(4)
    lwz 3, 0xcc(31)
    bl fn_80402E08
    .4byte 0xC022091C # lfs f1, lbl_805438BC@sda21(r0)
    lwz 3, 0xcc(31)
    fmr 2, 1
    bl fn_80402CE0
    lwz 4, 0xcc(31)
    lwz 3, 0x4(4)
    lbz 4, 0x28(4)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 4, 0xcc(31)
    li 0, 0x0
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    sth 0, 0x20(4)
    fmr 2, 1
    lwz 4, 0xcc(31)
    sth 0, 0x22(4)
    lwz 4, 0xcc(31)
    sth 0, 0x24(4)
    lwz 4, 0xcc(31)
    sth 0, 0x26(4)
    lwz 3, 0xd0(31)
    bl fn_80402E08
    .4byte 0xC022091C # lfs f1, lbl_805438BC@sda21(r0)
    lwz 3, 0xd0(31)
    fmr 2, 1
    bl fn_80402CE0
    lwz 4, 0xd0(31)
    lwz 3, 0x4(4)
    lbz 4, 0x28(4)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 4, 0xd0(31)
    li 0, 0x0
    mr 26, 31
    li 23, 0x0
    sth 0, 0x20(4)
    lwz 4, 0xd0(31)
    sth 0, 0x22(4)
    lwz 4, 0xd0(31)
    sth 0, 0x24(4)
    lwz 4, 0xd0(31)
    sth 0, 0x26(4)
L_8041422C:
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    lwz 3, 0xd4(26)
    fmr 2, 1
    bl fn_80402E08
    .4byte 0xC022091C # lfs f1, lbl_805438BC@sda21(r0)
    lwz 3, 0xd4(26)
    fmr 2, 1
    bl fn_80402CE0
    lwz 4, 0xd4(26)
    lwz 3, 0x4(4)
    lbz 4, 0x28(4)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 4, 0xd4(26)
    li 0, 0x0
    addi 23, 23, 0x1
    sth 0, 0x20(4)
    cmpwi 23, 0x12
    lwz 4, 0xd4(26)
    sth 0, 0x22(4)
    lwz 4, 0xd4(26)
    sth 0, 0x24(4)
    lwz 4, 0xd4(26)
    addi 26, 26, 0x4
    sth 0, 0x26(4)
    .4byte 0x4180FF94 # blt .L_8041422C
    lwz 3, 0x11c(31)
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    .4byte 0xC0420900 # lfs f2, lbl_805438A0@sda21(r0)
    bl fn_80402E08
    lwz 4, 0x11c(31)
    li 0, 0x0
    .4byte 0xC022091C # lfs f1, lbl_805438BC@sda21(r0)
    mr 3, 31
    sth 0, 0x22(4)
    bl fn_80411A94
    lbz 0, 0x23f(28)
    cmplwi 0, 0x0
    .4byte 0x40820094 # bne .L_80414360
    lwz 0, 0x38c(31)
    rlwinm. 0, 0, 0, 27, 27
    .4byte 0x40820088 # bne .L_80414360
    li 22, 0x0
    mr 25, 31
L_804142E4:
    lwz 4, 0x228(25)
    li 23, 0x0
    mr 24, 25
    li 26, 0x0
    lwz 4, 0x4(4)
    stb 23, 0xb0(4)
    lwz 4, 0x22c(25)
    lwz 4, 0x4(4)
    stb 23, 0xb0(4)
L_80414308:
    lwz 4, 0x228(24)
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    sth 23, 0x22(4)
    .4byte 0xC0420920 # lfs f2, lbl_805438C0@sda21(r0)
    lwz 3, 0x228(24)
    bl fn_80402E08
    addi 26, 26, 0x1
    addi 24, 24, 0x4
    cmpwi 26, 0x2
    .4byte 0x4180FFDC # blt .L_80414308
    addi 22, 22, 0x1
    addi 25, 25, 0x8
    cmpwi 22, 0x2
    .4byte 0x4180FFA8 # blt .L_804142E4
    lwz 4, 0x238(31)
    li 0, 0x0
    lwz 4, 0x4(4)
    stb 0, 0xb0(4)
    lwz 4, 0x23c(31)
    lwz 4, 0x4(4)
    stb 0, 0xb0(4)
    .4byte 0x48000088 # b .L_804143E4
L_80414360:
    li 22, 0x0
    mr 25, 31
L_80414368:
    lwz 4, 0x228(25)
    li 0, 0x1
    li 23, 0x0
    mr 24, 25
    lwz 4, 0x4(4)
    li 26, 0x0
    stb 0, 0xb0(4)
    lwz 4, 0x22c(25)
    lwz 4, 0x4(4)
    stb 23, 0xb0(4)
L_80414390:
    lwz 4, 0x228(24)
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    sth 23, 0x22(4)
    .4byte 0xC0420920 # lfs f2, lbl_805438C0@sda21(r0)
    lwz 3, 0x228(24)
    bl fn_80402E08
    addi 26, 26, 0x1
    addi 24, 24, 0x4
    cmpwi 26, 0x2
    .4byte 0x4180FFDC # blt .L_80414390
    addi 22, 22, 0x1
    addi 25, 25, 0x8
    cmpwi 22, 0x2
    .4byte 0x4180FFA4 # blt .L_80414368
    lwz 4, 0x238(31)
    li 0, 0x1
    lwz 4, 0x4(4)
    stb 0, 0xb0(4)
    lwz 4, 0x23c(31)
    lwz 4, 0x4(4)
    stb 0, 0xb0(4)
L_804143E4:
    lwz 4, 0x238(31)
    li 0, 0x0
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    sth 0, 0x22(4)
    .4byte 0xC0420920 # lfs f2, lbl_805438C0@sda21(r0)
    lwz 3, 0x238(31)
    bl fn_80402E08
    lwz 4, 0x23c(31)
    li 0, 0x0
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    sth 0, 0x22(4)
    .4byte 0xC0420920 # lfs f2, lbl_805438C0@sda21(r0)
    lwz 3, 0x23c(31)
    bl fn_80402E08
L_8041441C:
    lwz 3, 0x120(31)
    li 4, 0xf
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    li 5, 0x0
    .4byte 0xC04208FC # lfs f2, lbl_8054389C@sda21(r0)
    bl fn_80402940
    mr 23, 3
    mr 24, 31
    li 22, 0x0
L_80414440:
    lwz 3, 0x120(24)
    li 4, 0xf
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    addi 22, 22, 0x1
    addi 24, 24, 0x4
    cmpwi 22, 0x2
    .4byte 0x4180FFE0 # blt .L_80414440
    clrlwi. 0, 23, 24
    .4byte 0x4182FFB4 # beq .L_8041441C
    li 22, 0x0
    addi 23, 29, 0xc0
L_80414474:
    lwz 3, 0xc(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 23, 23, 0x8
    cmpwi 22, 0x8
    .4byte 0x4180FFC4 # blt .L_80414474
    lwz 3, 0x2b4(31)
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    .4byte 0xC04208FC # lfs f2, lbl_8054389C@sda21(r0)
    bl fn_80402E08
    lwz 4, 0x2b4(31)
    li 0, 0x0
    mr 23, 31
    li 22, 0x0
    sth 0, 0x22(4)
L_804144D8:
    lwz 5, 0x128(23)
    li 0, 0x0
    li 4, 0x0
    sth 0, 0x26(5)
    lwz 5, 0x128(23)
    lwz 3, 0x4(5)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(31)
    lwz 5, 0x8(30)
    lwz 12, 0x0(3)
    lwz 6, 0xc(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x128(23)
    lbz 5, 0x641(31)
    bl fn_804023D0
    addi 22, 22, 0x1
    addi 30, 30, 0x10
    cmpwi 22, 0x20
    addi 23, 23, 0x4
    .4byte 0x4180FF9C # blt .L_804144D8
    mr 24, 31
    li 22, 0x0
    li 23, 0x0
L_8041454C:
    lwz 5, 0x1a8(24)
    li 4, 0x0
    sth 23, 0x26(5)
    lwz 5, 0x1a8(24)
    lwz 3, 0x4(5)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 24, 24, 0x4
    cmpwi 22, 0x18
    .4byte 0x4180FFD0 # blt .L_8041454C
    mr 24, 31
    li 22, 0x0
    li 23, 0x0
L_8041458C:
    lwz 5, 0x208(24)
    li 4, 0x0
    sth 23, 0x26(5)
    lwz 5, 0x208(24)
    lwz 3, 0x4(5)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    addi 22, 22, 0x1
    addi 24, 24, 0x4
    cmpwi 22, 0x8
    .4byte 0x4180FFD0 # blt .L_8041458C
    li 3, 0x7
    bl fn_803B8EBC
    clrlwi. 0, 3, 24
    .4byte 0x40820350 # bne .L_8041491C
    addi 3, 1, 0x68
    li 4, 0x14
    li 5, 0x32
    li 6, 0x64
    li 7, 0xff
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    addi 3, 1, 0x70
    li 4, 0x14
    li 5, 0x32
    stw 0, 0x6c(1)
    li 6, 0x64
    li 7, 0xff
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    lis 4, 0x5073
    addi 6, 4, 0x6b79
    li 5, 0x0
    stw 0, 0x74(1)
    lwz 3, 0x14(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x74
    addi 5, 1, 0x6c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    addi 3, 1, 0x58
    li 4, 0x0
    li 5, 0x1e
    li 6, 0x5a
    li 7, 0xff
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    addi 3, 1, 0x60
    li 4, 0x0
    li 5, 0x1e
    stw 0, 0x5c(1)
    li 6, 0x5a
    li 7, 0x0
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    lis 4, 0x6c6f
    addi 6, 4, 0x3031
    li 5, 0x5063
    stw 0, 0x64(1)
    lwz 3, 0x14(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x64
    addi 5, 1, 0x5c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    addi 3, 1, 0x48
    li 4, 0x28
    li 5, 0x5a
    li 6, 0xaa
    li 7, 0xff
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    addi 3, 1, 0x50
    li 4, 0x28
    li 5, 0x5a
    stw 0, 0x4c(1)
    li 6, 0xaa
    li 7, 0x0
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    lis 4, 0x6c6f
    addi 6, 4, 0x3032
    li 5, 0x5063
    stw 0, 0x54(1)
    lwz 3, 0x14(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x54
    addi 5, 1, 0x4c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    addi 3, 1, 0x38
    li 4, 0x28
    li 5, 0x64
    li 6, 0xbe
    li 7, 0xff
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    addi 3, 1, 0x40
    li 4, 0x28
    li 5, 0x64
    stw 0, 0x3c(1)
    li 6, 0xbe
    li 7, 0x0
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    lis 4, 0x6c6f
    addi 6, 4, 0x3033
    li 5, 0x5063
    stw 0, 0x44(1)
    lwz 3, 0x14(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x44
    addi 5, 1, 0x3c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    addi 3, 1, 0x28
    li 4, 0x28
    li 5, 0x60
    li 6, 0xc8
    li 7, 0xff
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    addi 3, 1, 0x30
    li 4, 0x28
    li 5, 0x60
    stw 0, 0x2c(1)
    li 6, 0xc8
    li 7, 0x0
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    lis 4, 0x6c6f
    addi 6, 4, 0x3034
    li 5, 0x5063
    stw 0, 0x34(1)
    lwz 3, 0x14(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x34
    addi 5, 1, 0x2c
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    addi 3, 1, 0x18
    li 4, 0x1e
    li 5, 0x48
    li 6, 0x8b
    li 7, 0xff
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    addi 3, 1, 0x20
    li 4, 0x0
    li 5, 0x0
    stw 0, 0x1c(1)
    li 6, 0x0
    li 7, 0x0
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    lis 5, 0x7074
    lis 4, 0x50
    stw 0, 0x24(1)
    addi 6, 5, 0x6f75
    addi 5, 4, 0x6d61
    lwz 3, 0x14(31)
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
    addi 3, 1, 0x8
    li 4, 0x64
    li 5, 0xc8
    li 6, 0xff
    li 7, 0xff
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    addi 3, 1, 0x10
    li 4, 0x0
    li 5, 0x0
    stw 0, 0xc(1)
    li 6, 0x1e
    li 7, 0x0
    bl fn_8017ECF4
    lwz 0, 0x0(3)
    lis 4, 0x6170
    addi 6, 4, 0x6361
    li 5, 0x506d
    stw 0, 0x14(1)
    lwz 3, 0x14(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x14
    addi 5, 1, 0xc
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
L_8041491C:
    .4byte 0xC02208F8 # lfs f1, lbl_80543898@sda21(r0)
    mr 3, 31
    bl fn_80408F38
    lis 4, lbl_80529DEC@ha
    addi 23, 4, lbl_80529DEC@l
    lwz 24, 0x1c0(23)
    cmpwi 24, 0x0
    .4byte 0x41820030 # beq .L_80414968
    lwz 3, 0x8(28)
    bl fn_80083A68
    cmpw 24, 3
    .4byte 0x41820020 # beq .L_80414968
    lwz 24, 0x1c0(23)
    lwz 3, 0x8(28)
    bl fn_80083A68
    subf 4, 3, 24
    addi 3, 29, 0xb28
    crclr 6
    bl OSReport
L_80414968:
    lwz 3, 0x8(28)
    bl fn_80083A68
    stw 3, 0x1c0(23)
    mr 3, 31
    psq_l 31, 0x108(1), 0, 0
    lfd 31, 0x100(1)
    psq_l 30, 0xf8(1), 0, 0
    lfd 30, 0xf0(1)
    lmw 22, 0xc8(1)
    lwz 0, 0x114(1)
    mtlr 0
    addi 1, 1, 0x110
    blr

