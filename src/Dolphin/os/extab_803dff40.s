# fn_803DFF40 - actor@lbl_804B0688: constructor (0x12E4, one of the largest
# ctors in this gap). Allocates 21 sub-objects (operator new x21), heavy
# string formatting (strcpy x4 + fn_80095FB4 x8) - part of the same
# text/string-formatting family as the earlier composite entity.
.section extab, "a"
.balign 4
.global etb_8000FC0C
etb_8000FC0C:
    .4byte 0x208A0000
    .4byte 0x00000294
    .4byte 0x00000030
    .4byte 0x000002AC
    .4byte 0x00000038
    .4byte 0x000002C4
    .4byte 0x00000040
    .4byte 0x000002F8
    .4byte 0x00000048
    .4byte 0x00000914
    .4byte 0x00000050
    .4byte 0x00000000
    .4byte 0x8A80001C
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
.size etb_8000FC0C, 88

.section extabindex, "a"
.balign 4
.global eti_8001FAEC
eti_8001FAEC:
    .4byte fn_803DFF40
    .4byte 0x000012E4
    .4byte etb_8000FC0C
.size eti_8001FAEC, 12

.text
.balign 4
.global fn_803DFF40

fn_803DFF40:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    lis 5, lbl_804B0688@ha
    lis 4, lbl_80529DEC@ha
    mr 31, 3
    lis 6, lbl_804774C8@ha
    addi 0, 5, lbl_804B0688@l
    addi 3, 4, lbl_80529DEC@l
    stw 0, 0x0(31)
    addi 30, 6, lbl_804774C8@l
    lwz 3, 0x8(3)
    bl fn_80083A68
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x2c(3)
    bl fn_80158B3C
    lis 3, lbl_80529DEC@ha
    addi 4, 3, lbl_80529DEC@l
    lbz 0, 0x242(4)
    cmplwi 0, 0x0
    .4byte 0x40820210 # bne .L_803E01C0
    li 0, 0x1
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 0, 0x242(4)
    lwz 3, 0x20(3)
    bl fn_802FF798
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x5343
    addi 4, 3, 0x4820
    addi 5, 30, 0x3e4
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
    addi 5, 30, 0x3fc
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
    addi 5, 30, 0x414
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
    addi 5, 30, 0x42c
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
    addi 5, 30, 0x414
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
    addi 5, 30, 0x43c
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
    addi 5, 30, 0x414
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
L_803E01C0:
    li 3, 0x84
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820008 # beq .L_803E01D4
    bl fn_803A7898
L_803E01D4:
    stw 28, 0x60(31)
    li 3, 0x1c
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820008 # beq .L_803E01EC
    bl fn_80428030
L_803E01EC:
    stw 28, 0x64(31)
    li 3, 0x118
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820008 # beq .L_803E0204
    bl fn_8009C4EC
L_803E0204:
    stw 28, 0x4(31)
    lis 3, lbl_80529DEC@ha
    addi 28, 3, lbl_80529DEC@l
    addi 4, 30, 0x44c
    lwz 3, 0x4(31)
    lis 5, 0x110
    lwz 6, 0x2c(28)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_803E0238
    bl fn_8009C4EC
L_803E0238:
    stw 29, 0x8(31)
    addi 4, 30, 0x45c
    lis 5, 0x110
    lwz 3, 0x8(31)
    lwz 6, 0x2c(28)
    bl fn_8009C69C
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803E026C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E026C:
    stw 3, 0x14(31)
    lis 3, 0x6f76
    addi 6, 3, 0x3031
    li 5, 0x506d
    lwz 3, 0x8(31)
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
    .4byte 0x41820010 # beq .L_803E02B8
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E02B8:
    stw 3, 0x18(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x4(31)
    addi 6, 5, 0x3038
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
    .4byte 0x41820010 # beq .L_803E0308
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E0308:
    stw 3, 0x1c(31)
    lis 5, 0x636f
    lis 4, 0x57
    lwz 3, 0x4(31)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6762
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
    .4byte 0x41820010 # beq .L_803E0358
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E0358:
    stw 3, 0x20(31)
    lis 3, 0x6f70
    addi 6, 3, 0x3031
    li 5, 0x576e
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x20(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803E03A4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E03A4:
    stw 3, 0x24(31)
    lis 5, 0x7062
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3039
    addi 5, 4, 0x6578
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x24(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803E03F4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E03F4:
    stw 3, 0x28(31)
    lis 3, 0x6f70
    addi 6, 3, 0x3032
    li 5, 0x576e
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x28(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803E0440
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E0440:
    stw 3, 0x2c(31)
    lis 5, 0x636f
    lis 4, 0x57
    lwz 3, 0x4(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6762
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x2c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803E0490
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E0490:
    stw 3, 0x30(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x4(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x30(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803E04E0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E04E0:
    stw 3, 0x34(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x4(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803E0530
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E0530:
    stw 3, 0x38(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x4(31)
    addi 6, 5, 0x3033
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x38(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803E0580
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E0580:
    stw 3, 0x40(31)
    lis 5, 0x726f
    lis 4, 0x5073
    lwz 3, 0x4(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6375
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x40(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803E05D0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E05D0:
    stw 3, 0x44(31)
    lis 5, 0x7268
    lis 4, 0x5073
    lwz 3, 0x4(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6375
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    bl fn_80402F04
    lwz 3, 0x4(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x4(3)
    lis 5, 0x7273
    lwz 3, 0x4(31)
    lis 4, 0x5073
    .4byte 0xC0020648 # lfs f0, lbl_805435E8@sda21(r0)
    addi 6, 5, 0x3035
    lwz 12, 0x0(3)
    addi 5, 4, 0x6375
    fadds 30, 0, 1
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 5, 0x7273
    lwz 3, 0x4(31)
    lis 4, 0x5073
    addi 6, 5, 0x3035
    lwz 12, 0x0(3)
    addi 5, 4, 0x6375
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 31
    fmr 2, 30
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803E06BC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E06BC:
    stw 3, 0x48(31)
    lis 5, 0x7273
    lis 4, 0x5073
    lwz 3, 0x4(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6375
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x48(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803E070C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E070C:
    stw 3, 0x50(31)
    lis 5, 0x7262
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7374
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
    .4byte 0x41820010 # beq .L_803E075C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E075C:
    stw 3, 0x54(31)
    lis 5, 0x6362
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x6261
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x54(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803E07AC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803E07AC:
    stw 3, 0x58(31)
    lis 5, 0x7572
    lis 4, 0x5061
    lwz 3, 0x4(31)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6363
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x58(31)
    bl fn_80402F04
    .4byte 0x80AD9318 # lwz r5, lbl_8053AED8@sda21(r0)
    lis 3, 0x5449
    addi 3, 3, 0x4d47
    addi 4, 30, 0x470
    lwz 0, 0x8(5)
    stw 0, 0x5c(31)
    bl fn_804030C4
    mr 0, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    mr 4, 0
    bl fn_80440D78
    lis 3, 0x5449
    addi 4, 30, 0x484
    addi 3, 3, 0x4d47
    bl fn_804030C4
    mr 4, 3
    .4byte 0x806D9318 # lwz r3, lbl_8053AED8@sda21(r0)
    bl fn_80440CE4
    lis 3, 0x5449
    addi 4, 30, 0x498
    addi 3, 3, 0x4d47
    bl fn_804030C4
    mr 28, 3
    li 3, 0x168
    bl fn_80084370
    mr. 29, 3
    .4byte 0x4182000C # beq .L_803E0854
    mr 4, 28
    bl fn_80097800
L_803E0854:
    stw 29, 0x10(31)
    li 6, 0x0
    li 0, 0xff
    addi 4, 1, 0x14
    stw 6, 0xc(1)
    addi 5, 1, 0xc
    stw 0, 0x14(1)
    lwz 3, 0x10(31)
    stw 6, 0x8(1)
    lwz 12, 0x0(3)
    stw 0, 0x10(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 0, 0x9c
    lis 3, 0x6762
    stb 0, 0xa2(31)
    addi 6, 3, 0x3031
    li 5, 0x5461
    lwz 3, 0x4(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 28, 0x154(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6762
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x5461
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6762
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3033
    lwz 12, 0x0(3)
    li 5, 0x5461
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6762
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3034
    lwz 12, 0x0(3)
    li 5, 0x5461
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6f70
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x546e
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6f70
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x546e
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6f70
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3033
    lwz 12, 0x0(3)
    li 5, 0x546e
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6f70
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3034
    lwz 12, 0x0(3)
    li 5, 0x546e
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6f70
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3035
    lwz 12, 0x0(3)
    li 5, 0x546e
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6f70
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3036
    lwz 12, 0x0(3)
    li 5, 0x546e
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x7870
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5465
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6163
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5462
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x7472
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5473
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
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
    lwz 3, 0x4(31)
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
    lwz 3, 0x4(31)
    lis 4, 0x6f70
    addi 6, 4, 0x3033
    li 5, 0x546e
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x93
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x4(31)
    lis 4, 0x6f70
    addi 6, 4, 0x3034
    li 5, 0x546e
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x93
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x4(31)
    lis 4, 0x6f70
    addi 6, 4, 0x3035
    li 5, 0x546e
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xf4
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x4(31)
    lis 4, 0x6f70
    addi 6, 4, 0x3036
    li 5, 0x546e
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0xf4
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x4(31)
    lis 4, 0x6762
    addi 6, 4, 0x3031
    li 5, 0x5461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    .4byte 0x3882069C # li r4, lbl_8054363C@sda21
    bl strcpy
    lwz 3, 0x4(31)
    lis 4, 0x6762
    addi 6, 4, 0x3032
    li 5, 0x5461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    .4byte 0x3882069C # li r4, lbl_8054363C@sda21
    bl strcpy
    lwz 3, 0x4(31)
    lis 4, 0x6762
    addi 6, 4, 0x3033
    li 5, 0x5461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    .4byte 0x3882069C # li r4, lbl_8054363C@sda21
    bl strcpy
    lwz 3, 0x4(31)
    lis 4, 0x6762
    addi 6, 4, 0x3034
    li 5, 0x5461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    .4byte 0x3882069C # li r4, lbl_8054363C@sda21
    bl strcpy
    lwz 3, 0x4(31)
    lis 5, 0x6262
    lis 4, 0x506d
    lwz 12, 0x0(3)
    addi 6, 5, 0x3037
    addi 5, 4, 0x6164
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3032
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x6262
    lwz 3, 0x4(31)
    lis 4, 0x506d
    fadds 31, 0, 31
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6164
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 4, 0x6262
    lis 3, 0x506d
    fadds 0, 0, 31
    addi 6, 4, 0x3037
    addi 5, 3, 0x6261
    stfs 0, 0x6c(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 5, 0x7461
    lwz 3, 0x4(31)
    lis 4, 0x4e
    addi 6, 5, 0x3033
    lwz 12, 0x0(3)
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 5, 0x6262
    lwz 3, 0x4(31)
    lis 4, 0x506d
    fadds 31, 0, 31
    addi 6, 5, 0x3031
    lwz 12, 0x0(3)
    addi 5, 4, 0x6261
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, 0x696d
    addi 6, 3, 0x3031
    li 5, 0x50
    fadds 0, 0, 31
    stfs 0, 0x70(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x696d
    addi 6, 3, 0x3032
    li 5, 0x50
    stb 0, 0x11a(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x696d
    addi 6, 3, 0x3131
    li 5, 0x50
    stb 0, 0x11b(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x696d
    addi 6, 3, 0x3132
    li 5, 0x50
    stb 0, 0x11c(31)
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0xb2(3)
    lis 3, lbl_80529DEC@ha
    li 0, 0x0
    .4byte 0xC0020664 # lfs f0, lbl_80543604@sda21(r0)
    stb 4, 0x11d(31)
    addi 4, 3, lbl_80529DEC@l
    li 3, 0x3c
    addi 29, 30, 0x0
    lwz 5, 0x14(31)
    li 28, 0x0
    lwz 5, 0x4(5)
    stb 0, 0xb0(5)
    lwz 5, 0x18(31)
    lwz 5, 0x4(5)
    stb 0, 0xb0(5)
    lwz 5, 0x1c(31)
    lwz 5, 0x4(5)
    stb 0, 0xb0(5)
    lwz 5, 0x20(31)
    lwz 5, 0x4(5)
    stb 0, 0xb0(5)
    lwz 5, 0x24(31)
    lwz 5, 0x4(5)
    stb 0, 0xb0(5)
    lwz 5, 0x28(31)
    lwz 5, 0x4(5)
    stb 0, 0xb0(5)
    lwz 5, 0x2c(31)
    lwz 5, 0x4(5)
    stb 0, 0xb0(5)
    lwz 5, 0x50(31)
    lwz 5, 0x4(5)
    stb 0, 0xb0(5)
    lwz 5, 0x54(31)
    lwz 5, 0x4(5)
    stb 0, 0xb0(5)
    lwz 5, 0x58(31)
    lwz 5, 0x4(5)
    stb 0, 0xb0(5)
    stw 0, 0x84(31)
    lbz 4, 0x23a(4)
    stb 4, 0x9e(31)
    lbz 4, 0x9e(31)
    stb 4, 0x9f(31)
    stw 0, 0x80(31)
    stw 0, 0x88(31)
    stfs 0, 0x7c(31)
    stfs 0, 0x78(31)
    sth 0, 0x9a(31)
    sth 3, 0x98(31)
    stb 0, 0xa0(31)
    stb 0, 0xa1(31)
L_803E1028:
    cmpwi 28, 0x0
    .4byte 0x40820030 # bne .L_803E105C
    lwz 3, 0x8(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 3, 0xb2(3)
    addi 0, 28, 0xa3
    stbx 3, 31, 0
    .4byte 0x4800002C # b .L_803E1084
L_803E105C:
    lwz 3, 0x4(31)
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 3, 0xb2(3)
    addi 0, 28, 0xa3
    stbx 3, 31, 0
L_803E1084:
    addi 28, 28, 0x1
    addi 29, 29, 0x8
    cmpwi 28, 0x32
    .4byte 0x4180FF98 # blt .L_803E1028
    li 29, 0x0
    addi 28, 30, 0x190
L_803E109C:
    lwz 3, 0x4(31)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 29, 0xd5
    lbz 3, 0xb2(3)
    addi 29, 29, 0x1
    addi 28, 28, 0x8
    cmpwi 29, 0x6
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_803E109C
    li 29, 0x0
    addi 28, 30, 0x1c0
L_803E10DC:
    lwz 3, 0x4(31)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 29, 0xdb
    lbz 3, 0xb2(3)
    addi 29, 29, 0x1
    addi 28, 28, 0x8
    cmpwi 29, 0x11
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_803E10DC
    li 29, 0x0
    addi 28, 30, 0x248
L_803E111C:
    lwz 3, 0x4(31)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 29, 0xec
    lbz 3, 0xb2(3)
    addi 29, 29, 0x1
    addi 28, 28, 0x8
    cmpwi 29, 0x14
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_803E111C
    li 29, 0x0
    addi 28, 30, 0x368
L_803E115C:
    lwz 3, 0x4(31)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 29, 0x110
    lbz 3, 0xb2(3)
    addi 29, 29, 0x1
    addi 28, 28, 0x8
    cmpwi 29, 0x5
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_803E115C
    li 29, 0x0
    addi 28, 30, 0x390
L_803E119C:
    lwz 3, 0x4(31)
    lwz 5, 0x0(28)
    lwz 12, 0x0(3)
    lwz 6, 0x4(28)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 29, 0x115
    lbz 3, 0xb2(3)
    addi 29, 29, 0x1
    addi 28, 28, 0x8
    cmpwi 29, 0x5
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_803E119C
    li 0, 0x1
    .4byte 0xC0220664 # lfs f1, lbl_80543604@sda21(r0)
    stw 0, 0x94(31)
    mr 3, 31
    lbz 4, 0x9e(31)
    bl fn_803DAC58
    .4byte 0x93ED9210 # stw r31, lbl_8053ADD0@sda21(r0)
    mr 3, 31
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 0, 0x54(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

