# fn_803D0264 - CONSTRUCTOR (0x2280, one of the largest ctors in this gap)
.section extab, "a"
.balign 4
.global etb_8000F914
etb_8000F914:
    .4byte 0x300A0000
    .4byte 0x000003B0
    .4byte 0x00000020
    .4byte 0x000003E4
    .4byte 0x00000028
    .4byte 0x0000049C
    .4byte 0x00000030
    .4byte 0x00000000
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
.size etb_8000F914, 56

.section extabindex, "a"
.balign 4
.global eti_8001F768
eti_8001F768:
    .4byte fn_803D0264
    .4byte 0x00002280
    .4byte etb_8000F914
.size eti_8001F768, 12

.text
.balign 4
.global fn_803D0264

fn_803D0264:
    stwu 1, -0x70(1)
    mflr 0
    lis 4, lbl_804AFF60@ha
    li 5, 0x0
    stw 0, 0x74(1)
    addi 0, 4, lbl_804AFF60@l
    li 6, 0x4
    li 7, 0x5
    stmw 26, 0x58(1)
    mr 31, 3
    lis 3, fn_8009711C@ha
    addi 4, 3, fn_8009711C@l
    lis 3, lbl_804765D0@ha
    addi 30, 3, lbl_804765D0@l
    addi 3, 31, 0xe8
    stw 0, 0x0(31)
    li 0, -0x1
    stw 0, 0xe0(31)
    stw 0, 0xe4(31)
    bl __construct_array
    lis 4, fn_8009711C@ha
    addi 3, 31, 0xfc
    addi 4, 4, fn_8009711C@l
    li 5, 0x0
    li 6, 0x4
    li 7, 0x5
    bl __construct_array
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x8(3)
    bl fn_80083A68
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 0, 0x0
    lis 3, lbl_8050EC80@ha
    li 27, 0x0
    addi 29, 3, lbl_8050EC80@l
    stb 0, 0xff(4)
    mr 28, 29
L_803D02FC:
    addi 3, 28, 0x20
    addi 4, 29, 0x280
    bl fn_803B950C
    addi 27, 27, 0x1
    addi 28, 28, 0xc8
    cmpwi 27, 0x3
    addi 29, 29, 0x9c4
    .4byte 0x4180FFE4 # blt .L_803D02FC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    bl fn_80403680
    lis 3, lbl_80529DEC@ha
    addi 4, 3, lbl_80529DEC@l
    lbz 0, 0x242(4)
    cmplwi 0, 0x0
    .4byte 0x40820210 # bne .L_803D0548
    li 0, 0x1
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 0, 0x242(4)
    lwz 3, 0x20(3)
    bl fn_802FF798
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 30, 0x888
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 30, 0x8a0
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x7000
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 30, 0x8b8
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 30, 0x8d0
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x4000
    lwz 3, 0x20(6)
    li 6, 0x2
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 30, 0x8b8
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x2
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 30, 0x8e0
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x3
    li 8, 0x0
    bl fn_802F9714
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4c20
    addi 5, 30, 0x8b8
    lwz 3, 0xa4(6)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x0
    li 7, 0x0
    lwz 3, 0x20(6)
    li 6, 0x3
    li 8, 0x0
    li 9, 0x0
    bl fn_802F93F4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x20(3)
    stb 0, 0x2364(3)
L_803D0548:
    .4byte 0x93ED91F0 # stw r31, lbl_8053ADB0@sda21(r0)
    li 7, 0x0
    lis 4, lbl_80529DEC@ha
    lis 3, lbl_8050EC80@ha
    stw 7, 0x80(31)
    addi 3, 3, lbl_8050EC80@l
    addi 6, 4, lbl_80529DEC@l
    li 5, 0x1
    stw 7, 0x7c(31)
    addi 4, 3, 0x20
    addi 3, 3, 0x280
    li 0, -0x1
    stw 7, 0x84(31)
    mr 28, 31
    li 27, 0x0
    lbz 6, 0x23b(6)
    stw 6, 0xa4(31)
    stw 7, 0xa0(31)
    stw 7, 0xa8(31)
    stb 7, 0x113(31)
    stw 7, 0xac(31)
    stb 5, 0x111(31)
    stb 5, 0x112(31)
    stb 5, 0x110(31)
    stb 7, 0x114(31)
    stw 4, 0x5c(31)
    stw 3, 0x60(31)
    stb 7, 0x115(31)
    stw 0, 0xb0(31)
    sth 7, 0xdc(31)
    stb 7, 0x116(31)
    stw 7, 0xb4(31)
    stb 7, 0x117(31)
    sth 7, 0xda(31)
    stb 7, 0x1a4(31)
    stb 7, 0x1a5(31)
    stb 7, 0x1a6(31)
L_803D05DC:
    mr 4, 27
    li 3, 0x0
    bl fn_803B8CAC
    addi 27, 27, 0x1
    clrlwi 0, 3, 24
    cmpwi 27, 0x8
    stw 0, 0xb8(28)
    addi 28, 28, 0x4
    .4byte 0x4180FFE0 # blt .L_803D05DC
    li 3, 0x118
    bl fn_80084370
    mr. 26, 3
    .4byte 0x41820008 # beq .L_803D0614
    bl fn_8009C4EC
L_803D0614:
    stw 26, 0x4(31)
    lis 3, lbl_80529DEC@ha
    addi 29, 3, lbl_80529DEC@l
    addi 4, 30, 0x8f0
    lwz 3, 0x4(31)
    lis 5, 0x110
    lwz 6, 0x30(29)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 26, 3
    .4byte 0x41820008 # beq .L_803D0648
    bl fn_8009C4EC
L_803D0648:
    stw 26, 0x8(31)
    addi 4, 30, 0x900
    lis 5, 0x110
    lwz 3, 0x8(31)
    lwz 6, 0x30(29)
    bl fn_8009C69C
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6363
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x9c
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6663
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x9c
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lis 3, 0x5449
    addi 4, 30, 0x918
    addi 3, 3, 0x4d47
    bl fn_804030C4
    mr 0, 3
    li 3, 0x168
    mr 27, 0
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_803D0700
    mr 4, 27
    bl fn_80097800
L_803D0700:
    stw 26, 0x10(31)
    li 6, 0x0
    li 0, 0xff
    addi 4, 1, 0x54
    stw 6, 0x4c(1)
    addi 5, 1, 0x4c
    stw 0, 0x54(1)
    lwz 3, 0x10(31)
    stw 6, 0x48(1)
    lwz 12, 0x0(3)
    stw 0, 0x50(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D0754
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D0754:
    stw 3, 0x14(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x4(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x14(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D07A4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D07A4:
    stw 3, 0x18(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x8(31)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x18(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D07F4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D07F4:
    stw 3, 0x1c(31)
    lis 5, 0x6162
    lis 4, 0x4e64
    lwz 3, 0x8(31)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6174
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x1c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D0844
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D0844:
    stw 3, 0x20(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x4(31)
    addi 6, 5, 0x3036
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x20(31)
    bl fn_80402F04
    mr 28, 31
    addi 29, 30, 0x6e0
    li 27, 0x0
L_803D0884:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D08A0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D08A0:
    stw 3, 0x24(28)
    lwz 5, 0x0(29)
    lwz 3, 0x8(31)
    lwz 6, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x24(28)
    bl fn_80402F04
    addi 27, 27, 0x1
    addi 29, 29, 0x8
    cmpwi 27, 0x4
    addi 28, 28, 0x4
    .4byte 0x4180FFA8 # blt .L_803D0884
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D08FC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D08FC:
    stw 3, 0x34(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 3, 0x8(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6363
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    bl fn_80402F04
    mr 28, 31
    addi 29, 30, 0x700
    addi 27, 30, 0x718
    li 26, 0x0
L_803D0940:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D095C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D095C:
    stw 3, 0x38(28)
    lwz 5, 0x0(29)
    lwz 3, 0x8(31)
    lwz 6, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(28)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D09A4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D09A4:
    stw 3, 0x44(28)
    lwz 5, 0x0(27)
    lwz 3, 0x8(31)
    lwz 6, 0x4(27)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(28)
    bl fn_80402F04
    addi 26, 26, 0x1
    addi 29, 29, 0x8
    cmpwi 26, 0x3
    addi 27, 27, 0x8
    addi 28, 28, 0x4
    .4byte 0x4180FF5C # blt .L_803D0940
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D0A04
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D0A04:
    stw 3, 0x50(31)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 3, 0x8(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6663
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D0A54
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D0A54:
    stw 3, 0x54(31)
    lis 5, 0x626b
    lis 4, 0x5066
    lwz 3, 0x8(31)
    addi 6, 5, 0x3033
    addi 5, 4, 0x7462
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x54(31)
    bl fn_80402F04
    .4byte 0x80AD9318 # lwz r5, lbl_8053AED8@sda21(r0)
    lis 3, 0x5449
    addi 3, 3, 0x4d47
    addi 4, 30, 0x928
    lwz 0, 0x8(5)
    stw 0, 0x58(31)
    bl fn_804030C4
    mr 4, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440D78
    lis 3, 0x5449
    addi 4, 30, 0x93c
    addi 3, 3, 0x4d47
    bl fn_804030C4
    mr 4, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440CE4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_803D0B08
    lwz 3, 0x8(31)
    lis 4, 0x6c69
    addi 6, 4, 0x3034
    li 5, 0x5062
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x4800002C # b .L_803D0B30
L_803D0B08:
    lwz 3, 0x8(31)
    lis 4, 0x6c69
    addi 6, 4, 0x3134
    li 5, 0x5062
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803D0B30:
    lwz 3, 0x4(31)
    lis 4, 0x6462
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6174
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5462
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x6476
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5461
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x6163
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5462
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x656c
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5464
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x6f70
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5463
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x7472
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5473
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x6461
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    lis 4, 0x54
    lwz 12, 0x0(3)
    addi 6, 5, 0x7465
    addi 5, 4, 0x6633
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x6633
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x6c76
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x3366
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x6972
    lwz 12, 0x0(3)
    li 5, 0x5466
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x6461
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    lis 4, 0x54
    lwz 12, 0x0(3)
    addi 6, 5, 0x7465
    addi 5, 4, 0x6632
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x6632
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x6c76
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x3266
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x6972
    lwz 12, 0x0(3)
    li 5, 0x5466
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x6461
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    lis 4, 0x54
    lwz 12, 0x0(3)
    addi 6, 5, 0x7465
    addi 5, 4, 0x6631
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x6631
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x6c76
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x3166
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x6972
    lwz 12, 0x0(3)
    li 5, 0x5466
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x6674
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 5, 0x7062
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x636f
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x44
    lwz 12, 0x0(4)
    lwz 12, 0x134(12)
    mtctr 12
    bctrl
    lbz 0, 0x44(1)
    lis 4, 0x7062
    lis 3, 0x50
    stb 0, 0xe4(31)
    addi 6, 4, 0x3031
    addi 5, 3, 0x636f
    lbz 0, 0x45(1)
    stb 0, 0xe5(31)
    lbz 0, 0x46(1)
    stb 0, 0xe6(31)
    lbz 0, 0x47(1)
    stb 0, 0xe7(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x40
    lwz 12, 0x0(4)
    lwz 12, 0x138(12)
    mtctr 12
    bctrl
    lbz 0, 0x40(1)
    lis 3, 0x3174
    addi 6, 3, 0x3031
    li 5, 0x5066
    stb 0, 0xe0(31)
    lbz 0, 0x41(1)
    stb 0, 0xe1(31)
    lbz 0, 0x42(1)
    stb 0, 0xe2(31)
    lbz 0, 0x43(1)
    stb 0, 0xe3(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x3c
    lwz 12, 0x0(4)
    lwz 12, 0x134(12)
    mtctr 12
    bctrl
    lbz 0, 0x3c(1)
    lis 3, 0x3174
    addi 6, 3, 0x3031
    li 5, 0x5066
    stb 0, 0xfc(31)
    lbz 0, 0x3d(1)
    stb 0, 0xfd(31)
    lbz 0, 0x3e(1)
    stb 0, 0xfe(31)
    lbz 0, 0x3f(1)
    stb 0, 0xff(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x38
    lwz 12, 0x0(4)
    lwz 12, 0x138(12)
    mtctr 12
    bctrl
    lbz 0, 0x38(1)
    lis 4, 0x7462
    lis 3, 0x50
    stb 0, 0xe8(31)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6631
    lbz 0, 0x39(1)
    stb 0, 0xe9(31)
    lbz 0, 0x3a(1)
    stb 0, 0xea(31)
    lbz 0, 0x3b(1)
    stb 0, 0xeb(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x34
    lwz 12, 0x0(4)
    lwz 12, 0x134(12)
    mtctr 12
    bctrl
    lbz 0, 0x34(1)
    lis 4, 0x7462
    lis 3, 0x50
    stb 0, 0x100(31)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6631
    lbz 0, 0x35(1)
    stb 0, 0x101(31)
    lbz 0, 0x36(1)
    stb 0, 0x102(31)
    lbz 0, 0x37(1)
    stb 0, 0x103(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x30
    lwz 12, 0x0(4)
    lwz 12, 0x138(12)
    mtctr 12
    bctrl
    lbz 0, 0x30(1)
    lis 4, 0x6262
    lis 3, 0x5066
    stb 0, 0xec(31)
    addi 6, 4, 0x3031
    addi 5, 3, 0x3174
    lbz 0, 0x31(1)
    stb 0, 0xed(31)
    lbz 0, 0x32(1)
    stb 0, 0xee(31)
    lbz 0, 0x33(1)
    stb 0, 0xef(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x2c
    lwz 12, 0x0(4)
    lwz 12, 0x134(12)
    mtctr 12
    bctrl
    lbz 0, 0x2c(1)
    lis 4, 0x6262
    lis 3, 0x5066
    stb 0, 0x104(31)
    addi 6, 4, 0x3031
    addi 5, 3, 0x3174
    lbz 0, 0x2d(1)
    stb 0, 0x105(31)
    lbz 0, 0x2e(1)
    stb 0, 0x106(31)
    lbz 0, 0x2f(1)
    stb 0, 0x107(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x28
    lwz 12, 0x0(4)
    lwz 12, 0x138(12)
    mtctr 12
    bctrl
    lbz 0, 0x28(1)
    lis 3, 0x3162
    addi 6, 3, 0x3031
    li 5, 0x5066
    stb 0, 0xf0(31)
    lbz 0, 0x29(1)
    stb 0, 0xf1(31)
    lbz 0, 0x2a(1)
    stb 0, 0xf2(31)
    lbz 0, 0x2b(1)
    stb 0, 0xf3(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x24
    lwz 12, 0x0(4)
    lwz 12, 0x134(12)
    mtctr 12
    bctrl
    lbz 0, 0x24(1)
    lis 3, 0x3162
    addi 6, 3, 0x3031
    li 5, 0x5066
    stb 0, 0x108(31)
    lbz 0, 0x25(1)
    stb 0, 0x109(31)
    lbz 0, 0x26(1)
    stb 0, 0x10a(31)
    lbz 0, 0x27(1)
    stb 0, 0x10b(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x20
    lwz 12, 0x0(4)
    lwz 12, 0x138(12)
    mtctr 12
    bctrl
    lbz 0, 0x20(1)
    lis 4, 0x6262
    lis 3, 0x50
    stb 0, 0xf4(31)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6631
    lbz 0, 0x21(1)
    stb 0, 0xf5(31)
    lbz 0, 0x22(1)
    stb 0, 0xf6(31)
    lbz 0, 0x23(1)
    stb 0, 0xf7(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x1c
    lwz 12, 0x0(4)
    lwz 12, 0x134(12)
    mtctr 12
    bctrl
    lbz 0, 0x1c(1)
    lis 4, 0x6262
    lis 3, 0x50
    stb 0, 0x10c(31)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6631
    lbz 0, 0x1d(1)
    stb 0, 0x10d(31)
    lbz 0, 0x1e(1)
    stb 0, 0x10e(31)
    lbz 0, 0x1f(1)
    stb 0, 0x10f(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x18
    lwz 12, 0x0(4)
    lwz 12, 0x138(12)
    mtctr 12
    bctrl
    lbz 0, 0x18(1)
    lis 3, 0x3162
    addi 6, 3, 0x3031
    li 5, 0x5066
    stb 0, 0xf8(31)
    lbz 0, 0x19(1)
    stb 0, 0xf9(31)
    lbz 0, 0x1a(1)
    stb 0, 0xfa(31)
    lbz 0, 0x1b(1)
    stb 0, 0xfb(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x14
    lwz 12, 0x0(4)
    lwz 12, 0x134(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x3162
    addi 6, 4, 0x3031
    li 5, 0x5066
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x10
    lwz 12, 0x0(4)
    lwz 12, 0x138(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x3162
    addi 6, 4, 0x3035
    li 5, 0x5066
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0xc
    lwz 12, 0x0(4)
    lwz 12, 0x134(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x3162
    addi 6, 4, 0x3035
    li 5, 0x5066
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    addi 3, 1, 0x8
    lwz 12, 0x0(4)
    lwz 12, 0x138(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x3174
    addi 6, 4, 0x3031
    li 5, 0x5066
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x7462
    lis 3, 0x50
    stb 0, 0x118(31)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6631
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x7462
    lis 3, 0x50
    stb 0, 0x119(31)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6631
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x7462
    lis 3, 0x50
    stb 0, 0x11a(31)
    addi 6, 4, 0x3033
    addi 5, 3, 0x6631
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x7462
    lis 3, 0x50
    stb 0, 0x11b(31)
    addi 6, 4, 0x3034
    addi 5, 3, 0x6631
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x7462
    lis 3, 0x50
    stb 0, 0x11c(31)
    addi 6, 4, 0x3035
    addi 5, 3, 0x6631
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6262
    lis 3, 0x5066
    stb 0, 0x11d(31)
    addi 6, 4, 0x3031
    addi 5, 3, 0x3174
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6262
    lis 3, 0x5066
    stb 0, 0x11e(31)
    addi 6, 4, 0x3032
    addi 5, 3, 0x3174
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6262
    lis 3, 0x5066
    stb 0, 0x11f(31)
    addi 6, 4, 0x3033
    addi 5, 3, 0x3174
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6262
    lis 3, 0x5066
    stb 0, 0x120(31)
    addi 6, 4, 0x3034
    addi 5, 3, 0x3174
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6262
    lis 3, 0x5066
    stb 0, 0x121(31)
    addi 6, 4, 0x3035
    addi 5, 3, 0x3174
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6262
    lis 3, 0x5066
    stb 0, 0x122(31)
    addi 6, 4, 0x3036
    addi 5, 3, 0x3174
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6262
    lis 3, 0x5066
    stb 0, 0x123(31)
    addi 6, 4, 0x3037
    addi 5, 3, 0x3174
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x3166
    addi 6, 3, 0x6972
    li 5, 0x5466
    stb 0, 0x124(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x6631
    addi 6, 3, 0x6c76
    li 5, 0x54
    stb 0, 0x125(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6461
    lis 3, 0x54
    stb 0, 0x126(31)
    addi 6, 4, 0x7465
    addi 5, 3, 0x6631
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x3162
    addi 6, 3, 0x3031
    li 5, 0x5066
    stb 0, 0x127(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x3162
    addi 6, 3, 0x3032
    li 5, 0x5066
    stb 0, 0x128(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x3162
    addi 6, 3, 0x3033
    li 5, 0x5066
    stb 0, 0x129(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x3162
    addi 6, 3, 0x3034
    li 5, 0x5066
    stb 0, 0x12a(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x3162
    addi 6, 3, 0x3035
    li 5, 0x5066
    stb 0, 0x12b(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6262
    lis 3, 0x50
    stb 0, 0x12c(31)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6631
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6262
    lis 3, 0x50
    stb 0, 0x12d(31)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6631
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6262
    lis 3, 0x50
    stb 0, 0x12e(31)
    addi 6, 4, 0x3033
    addi 5, 3, 0x6631
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6262
    lis 3, 0x50
    stb 0, 0x12f(31)
    addi 6, 4, 0x3034
    addi 5, 3, 0x6631
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6262
    lis 3, 0x50
    stb 0, 0x130(31)
    addi 6, 4, 0x3035
    addi 5, 3, 0x6631
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 27, 30, 0x48
    li 26, 0x0
    stb 0, 0x131(31)
L_803D18B8:
    lwz 3, 0x4(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 26, 0x132
    lbz 3, 0xb2(3)
    addi 26, 26, 0x1
    addi 27, 27, 0x8
    cmpwi 26, 0x51
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_803D18B8
    li 26, 0x0
    addi 27, 30, 0x2d0
L_803D18F8:
    lwz 3, 0x8(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 26, 0x183
    lbz 3, 0xb2(3)
    addi 26, 26, 0x1
    addi 27, 27, 0x8
    cmpwi 26, 0x13
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_803D18F8
    li 26, 0x0
    addi 27, 30, 0x368
L_803D1938:
    lwz 3, 0x4(31)
    lwz 5, 0x0(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 26, 0x196
    lbz 3, 0xb2(3)
    addi 26, 26, 0x1
    addi 27, 27, 0x8
    cmpwi 26, 0x9
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_803D1938
    lwz 3, 0x8(31)
    lis 5, 0x6362
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6261
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6362
    lis 3, 0x50
    stb 0, 0x19f(31)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6261
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6362
    lis 3, 0x50
    stb 0, 0x1a0(31)
    addi 6, 4, 0x3033
    addi 5, 3, 0x6261
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 4, 0x6362
    lis 3, 0x50
    stb 0, 0x1a1(31)
    addi 6, 4, 0x3034
    addi 5, 3, 0x6261
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0xb2(3)
    lis 3, 0x6476
    li 0, 0x0
    li 5, 0x5461
    stb 4, 0x1a2(31)
    addi 6, 3, 0x3031
    stb 0, 0x1a3(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xa4
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x4(31)
    lis 4, 0x6174
    addi 6, 4, 0x3031
    li 5, 0x5462
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xa5
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(31)
    lis 4, 0x7472
    addi 6, 4, 0x3031
    li 5, 0x5473
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x118
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(31)
    lis 4, 0x6f70
    addi 6, 4, 0x3031
    li 5, 0x5463
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x119
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(31)
    lis 4, 0x656c
    addi 6, 4, 0x3031
    li 5, 0x5464
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x11a
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(31)
    lis 4, 0x6163
    addi 6, 4, 0x3031
    li 5, 0x5462
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x11b
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    .4byte 0xC00204B8 # lfs f0, lbl_80543458@sda21(r0)
    lis 4, 0x7461
    lis 3, 0x4e
    stfs 0, 0x70(31)
    addi 6, 4, 0x3036
    addi 5, 3, 0x6461
    stfs 0, 0x64(31)
    stfs 0, 0x74(31)
    stfs 0, 0x68(31)
    stfs 0, 0x78(31)
    stfs 0, 0x6c(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x3b0(30)
    stb 0, 0xb0(3)
    lwz 6, 0x3b4(30)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    addi 4, 30, 0x3b0
    stb 0, 0xb0(3)
    lwz 5, 0x8(4)
    lwz 3, 0x4(31)
    lwz 6, 0xc(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3130
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3131
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3132
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3133
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3134
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3230
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3231
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3232
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3233
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3234
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3330
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3331
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3332
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3333
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3334
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3430
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3431
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3432
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3433
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3434
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3530
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3531
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3532
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3533
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3534
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3630
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3631
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3632
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3633
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3634
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3730
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3731
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3732
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3733
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7677
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3734
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x766c
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x766c
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3031
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6875
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3031
    lwz 3, 0x8(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6875
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6875
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3033
    lwz 3, 0x4(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6875
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3031
    lwz 3, 0x8(31)
    addi 5, 4, 0x6164
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 4, 0x6875
    lis 3, 0x50
    stfs 0, 0x88(31)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6164
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 4, 0x6875
    lis 3, 0x50
    stfs 0, 0x8c(31)
    addi 6, 4, 0x3033
    addi 5, 3, 0x6164
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 4, 0x6875
    lis 3, 0x50
    stfs 0, 0x90(31)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6164
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 4, 0x6875
    lis 3, 0x50
    stfs 0, 0x94(31)
    addi 6, 4, 0x3032
    addi 5, 3, 0x6164
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 4, 0x6875
    lis 3, 0x50
    stfs 0, 0x98(31)
    addi 6, 4, 0x3033
    addi 5, 3, 0x6164
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 4, 0x6875
    lis 3, 0x50
    stfs 0, 0x9c(31)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6164
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0xff
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 0, 0x0
    sth 0, 0xd8(31)
    sth 0, 0xda(31)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwz 4, 0x58(3)
    subis 0, 4, 0x100
    cmplwi 0, 0x1a
    .4byte 0x41820040 # beq .L_803D24A0
    lis 4, 0x100
    li 5, 0x0
    addi 4, 4, 0x1a
    li 6, 0x0
    bl fn_80458FF0
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x1a
    li 5, 0x0
    bl fn_80458408
    lis 3, lbl_80529DEC@ha
    li 0, 0x0
    addi 3, 3, lbl_80529DEC@l
    stb 0, 0x248(3)
    .4byte 0x48000030 # b .L_803D24CC
L_803D24A0:
    lis 4, lbl_80529DEC@ha
    addi 30, 4, lbl_80529DEC@l
    lbz 0, 0x248(30)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_803D24CC
    lis 4, 0x100
    li 5, 0x0
    addi 4, 4, 0x1a
    bl fn_80458408
    li 0, 0x0
    stb 0, 0x248(30)
L_803D24CC:
    mr 3, 31
    lmw 26, 0x58(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

