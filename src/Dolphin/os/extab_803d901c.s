# fn_803D901C - actor@lbl_804B03D8: constructor (0x704)
# Allocates 13 sub-objects (operator new x13) - one of the more
# object-heavy constructors in this gap.
.section extab, "a"
.balign 4
.global etb_8000FAF4
etb_8000FAF4:
    .4byte 0x200A0000
    .4byte 0x0000005C
    .4byte 0x00000028
    .4byte 0x0000008C
    .4byte 0x00000030
    .4byte 0x000000D8
    .4byte 0x00000038
    .4byte 0x00000128
    .4byte 0x00000040
    .4byte 0x00000000
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
    .4byte 0x8A80001C
    .4byte dtor_80084580
.size etb_8000FAF4, 72

.section extabindex, "a"
.balign 4
.global eti_8001F9C0
eti_8001F9C0:
    .4byte fn_803D901C
    .4byte 0x00000704
    .4byte etb_8000FAF4
.size eti_8001F9C0, 12

.text
.balign 4
.global fn_803D901C

fn_803D901C:
    stwu 1, -0x40(1)
    mflr 0
    lis 4, lbl_80529DEC@ha
    lis 5, lbl_804B03D8@ha
    stw 0, 0x44(1)
    addi 0, 5, lbl_804B03D8@l
    addi 4, 4, lbl_80529DEC@l
    lis 6, lbl_80476F80@ha
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    addi 30, 6, lbl_80476F80@l
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    stw 0, 0x0(3)
    lwz 3, 0x8(4)
    bl fn_80083A68
    .4byte 0x93ED9200 # stw r31, lbl_8053ADC0@sda21(r0)
    li 3, 0x118
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_803D9078
    bl fn_8009C4EC
L_803D9078:
    stw 29, 0x4(31)
    addi 4, 30, 0x4d0
    lis 5, 0x110
    .4byte 0x80CD91A8 # lwz r6, lbl_8053AD68@sda21(r0)
    lwz 3, 0x4(31)
    lwz 6, 0x14(6)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_803D90A8
    bl fn_8009C4EC
L_803D90A8:
    stw 29, 0x8(31)
    addi 4, 30, 0x4dc
    lis 5, 0x110
    .4byte 0x80CD91A8 # lwz r6, lbl_8053AD68@sda21(r0)
    lwz 3, 0x8(31)
    lwz 6, 0x14(6)
    bl fn_8009C69C
    lis 5, 0x5449
    addi 4, 30, 0x4ec
    addi 3, 5, 0x4d47
    bl fn_804030C4
    mr 0, 3
    li 3, 0x168
    mr 29, 0
    bl fn_80084370
    mr. 28, 3
    .4byte 0x4182000C # beq .L_803D90F4
    mr 4, 29
    bl fn_80097800
L_803D90F4:
    stw 28, 0x1c(31)
    li 6, 0x0
    li 0, 0xff
    addi 4, 1, 0x24
    stw 6, 0x1c(1)
    addi 5, 1, 0x1c
    stw 0, 0x24(1)
    lwz 3, 0x1c(31)
    stw 6, 0x18(1)
    lwz 12, 0x0(3)
    stw 0, 0x20(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 3, 0x168
    bl fn_80084370
    mr. 28, 3
    .4byte 0x4182000C # beq .L_803D9144
    mr 4, 29
    bl fn_80097800
L_803D9144:
    stw 28, 0x20(31)
    li 6, 0x0
    li 0, 0xff
    addi 4, 1, 0x14
    stw 6, 0xc(1)
    addi 5, 1, 0xc
    stw 0, 0x14(1)
    lwz 3, 0x20(31)
    stw 6, 0x8(1)
    lwz 12, 0x0(3)
    stw 0, 0x10(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, 0x6e6f
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
    lis 4, 0x6573
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5479
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
    lis 4, 0x6573
    addi 6, 4, 0x3031
    li 5, 0x5479
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x10c
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x4(31)
    lis 4, 0x6e6f
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x10d
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D9280
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D9280:
    stw 3, 0x24(31)
    lis 5, 0x7362
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3034
    addi 5, 4, 0x7965
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
    .4byte 0x41820010 # beq .L_803D92D0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D92D0:
    stw 3, 0x28(31)
    lis 4, 0x6f62
    addi 6, 4, 0x3034
    li 5, 0x506e
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
    .4byte 0x41820010 # beq .L_803D931C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D931C:
    stw 3, 0x2c(31)
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
    lwz 3, 0x2c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D936C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D936C:
    stw 3, 0x30(31)
    lis 5, 0x626b
    lis 4, 0x5074
    lwz 3, 0x4(31)
    addi 6, 5, 0x3035
    addi 5, 4, 0x746c
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
    .4byte 0x41820010 # beq .L_803D93BC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D93BC:
    stw 3, 0x34(31)
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
    lwz 3, 0x34(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D940C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D940C:
    stw 3, 0x38(31)
    lis 4, 0x6c6b
    addi 6, 4, 0x3033
    li 5, 0x5062
    lwz 3, 0x4(31)
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
    .4byte 0x41820010 # beq .L_803D9458
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D9458:
    stw 3, 0x3c(31)
    lis 4, 0x6c6b
    addi 6, 4, 0x3032
    li 5, 0x5062
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x3c(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D94A4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D94A4:
    stw 3, 0x40(31)
    lis 4, 0x6c6b
    addi 6, 4, 0x3031
    li 5, 0x5062
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x40(31)
    bl fn_80402F04
    lwz 3, 0x4(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_803D951C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_803D951C:
    stw 3, 0x44(31)
    lis 4, 0x524f
    addi 6, 4, 0x4f54
    li 5, 0x0
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x44(31)
    bl fn_80402F04
    .4byte 0x808D9318 # lwz r4, lbl_8053AED8@sda21(r0)
    li 3, 0x4
    oris 3, 3, 0x4
    lwz 0, 0x8(4)
    stw 0, 0x48(31)
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
    addi 4, 30, 0x4fc
    bl fn_80403144
    stw 3, 0xc(31)
    lwz 3, 0xc(31)
    bl fn_800A4994
    stw 3, 0x10(31)
    lis 5, 0x616b
    lis 4, 0x50
    lwz 3, 0x8(31)
    addi 6, 5, 0x3030
    addi 5, 4, 0x306b
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lwz 4, 0x10(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    lis 5, 0x5343
    addi 4, 30, 0x50c
    addi 3, 5, 0x524e
    bl fn_80403144
    stw 3, 0x14(31)
    lwz 3, 0x14(31)
    bl fn_800A4994
    stw 3, 0x18(31)
    lwz 3, 0x8(31)
    lwz 4, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x70(12)
    mtctr 12
    bctrl
    li 7, 0x0
    .4byte 0xC0020594 # lfs f0, lbl_80543534@sda21(r0)
    stw 7, 0x4c(31)
    li 4, -0x1
    li 0, 0x2
    lwz 5, 0x0(30)
    stw 7, 0x50(31)
    lwz 6, 0x4(30)
    stw 7, 0x54(31)
    stfs 0, 0x58(31)
    stfs 0, 0x5c(31)
    stw 7, 0x60(31)
    stw 7, 0x64(31)
    sth 7, 0x74(31)
    sth 4, 0x68(31)
    sth 4, 0x6a(31)
    sth 7, 0x6c(31)
    sth 7, 0x6e(31)
    sth 7, 0x70(31)
    sth 7, 0x72(31)
    stb 0, 0x76(31)
    stb 7, 0x77(31)
    stb 7, 0x78(31)
    stb 7, 0x79(31)
    stb 7, 0x7a(31)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x200(30)
    stb 0, 0x7b(31)
    lwz 6, 0x204(30)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 5, 0x6172
    lis 4, 0x50
    stb 0, 0x7c(31)
    addi 6, 5, 0x6c69
    addi 5, 4, 0x7374
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 4, 0xb2(3)
    li 0, 0x0
    mr 3, 31
    stb 4, 0x7d(31)
    stb 0, 0x7e(31)
    stb 0, 0x7f(31)
    stb 0, 0x80(31)
    stb 0, 0x81(31)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

