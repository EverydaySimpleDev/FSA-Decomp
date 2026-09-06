# fn_80426DEC - actor@lbl_804B146C: constructor (0xD1C)
# Ctor attribution via contiguity+shape evidence (16x operator-new, ends
# exactly at the next static-init boundary), same as lbl_804B13D4's
# precedent - no directly-greppable vtable-install instruction found.
.section extab, "a"
.balign 4
.global etb_8001067C
etb_8001067C:
    .4byte 0x800A0000
    .4byte 0x000000C8
    .4byte 0x00000038
    .4byte 0x000000E0
    .4byte 0x00000040
    .4byte 0x000000F8
    .4byte 0x00000048
    .4byte 0x0000013C
    .4byte 0x00000050
    .4byte 0x00000168
    .4byte 0x00000058
    .4byte 0x000001A4
    .4byte 0x00000060
    .4byte 0x00000000
    .4byte 0x8A800010
    .4byte dtor_80084580
    .4byte 0x8A800010
    .4byte dtor_80084580
    .4byte 0x8A800010
    .4byte dtor_80084580
    .4byte 0x8A800014
    .4byte dtor_80084580
    .4byte 0x8A800014
    .4byte dtor_80084580
    .4byte 0x8A800010
    .4byte dtor_80084580
.size etb_8001067C, 104

.section extabindex, "a"
.balign 4
.global eti_800204E8
eti_800204E8:
    .4byte fn_80426DEC
    .4byte 0x00000D1C
    .4byte etb_8001067C
.size eti_800204E8, 12

.text
.balign 4
.global fn_80426DEC

fn_80426DEC:
    stwu 1, -0x60(1)
    mflr 0
    lis 4, lbl_804B1428@ha
    stw 0, 0x64(1)
    stmw 16, 0x20(1)
    addi 28, 4, lbl_804B1428@l
    mr 31, 3
    lis 3, lbl_8048E1B8@ha
    addi 0, 28, 0x44
    li 4, -0x1
    addi 27, 3, lbl_8048E1B8@l
    li 3, 0xd4
    stw 0, 0x0(31)
    li 0, 0x0
    stw 4, 0x210(31)
    stw 4, 0x214(31)
    stb 0, 0x25d(31)
    stb 0, 0x25c(31)
    stb 0, 0x25e(31)
    stb 0, 0x25f(31)
    stb 0, 0x260(31)
    stb 0, 0x261(31)
    .4byte 0x808D9310 # lwz r4, lbl_8053AED0@sda21(r0)
    lbz 0, 0x10e(4)
    ori 0, 0, 0x1
    stb 0, 0x10e(4)
    bl fn_80084370
    mr. 16, 3
    .4byte 0x41820058 # beq .L_80426EB4
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC0220AA0 # lfs f1, lbl_80543A40@sda21(r0)
    lwz 5, 0x4(5)
    stw 4, 0x10(1)
    fmr 2, 1
    lhz 0, 0x6(5)
    lhz 5, 0x4(5)
    xoris 0, 0, 0x8000
    stw 4, 0x18(1)
    xoris 4, 5, 0x8000
    .4byte 0xC8820AC0 # lfd f4, lbl_80543A60@sda21(r0)
    stw 4, 0x14(1)
    .4byte 0xC0A20AE8 # lfs f5, lbl_80543A88@sda21(r0)
    stw 0, 0x1c(1)
    lfd 3, 0x10(1)
    lfd 0, 0x18(1)
    fsubs 3, 3, 4
    .4byte 0xC0C20AEC # lfs f6, lbl_80543A8C@sda21(r0)
    fsubs 4, 0, 4
    bl fn_800937B0
L_80426EB4:
    stw 16, 0x4c(31)
    li 3, 0x10
    bl fn_80084370
    mr. 16, 3
    .4byte 0x41820008 # beq .L_80426ECC
    bl fn_80441778
L_80426ECC:
    stw 16, 0xf0(31)
    li 3, 0x118
    bl fn_80084370
    mr. 16, 3
    .4byte 0x41820008 # beq .L_80426EE4
    bl fn_8009C4EC
L_80426EE4:
    stw 16, 0x4(31)
    lis 3, lbl_80529DEC@ha
    addi 17, 3, lbl_80529DEC@l
    addi 4, 27, 0x106c
    lwz 3, 0x4(31)
    lis 5, 0x110
    lwz 6, 0x4c(17)
    bl fn_8009C69C
    lis 3, lbl_80529DEC@ha
    mr 18, 31
    addi 16, 3, lbl_80529DEC@l
    li 19, 0x0
L_80426F14:
    li 3, 0x118
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_80426F28
    bl fn_8009C4EC
L_80426F28:
    stw 20, 0x8(18)
    addi 4, 27, 0x107c
    lis 5, 0x110
    lwz 3, 0x8(18)
    lwz 6, 0x4c(17)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 20, 3
    .4byte 0x41820008 # beq .L_80426F54
    bl fn_8009C4EC
L_80426F54:
    stw 20, 0x2c(18)
    addi 4, 27, 0x108c
    lis 5, 0x110
    lwz 3, 0x2c(18)
    lwz 6, 0x20(16)
    bl fn_8009C69C
    addi 19, 19, 0x1
    addi 18, 18, 0x4
    cmpwi 19, 0x4
    .4byte 0x4180FF9C # blt .L_80426F14
    li 3, 0x118
    bl fn_80084370
    mr. 16, 3
    .4byte 0x41820008 # beq .L_80426F90
    bl fn_8009C4EC
L_80426F90:
    stw 16, 0x18(31)
    addi 4, 27, 0x109c
    lis 5, 0x110
    lwz 3, 0x18(31)
    lwz 6, 0x4c(17)
    bl fn_8009C69C
    lwz 3, 0x4(31)
    lis 5, 0x6c69
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6c69
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3031
    lwz 3, 0x4(31)
    addi 5, 4, 0x7032
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6c69
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3031
    lwz 3, 0x4(31)
    addi 5, 4, 0x7033
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x6c69
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3031
    lwz 3, 0x4(31)
    addi 5, 4, 0x7034
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x148(27)
    stb 0, 0xb0(3)
    lwz 6, 0x14c(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lfs 0, 0x20(3)
    lwz 5, 0xa28(27)
    fsubs 0, 1, 0
    lwz 6, 0xa2c(27)
    stfs 0, 0xf4(31)
    lwz 3, 0x4(31)
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
    lbz 0, 0xc(1)
    lwz 5, 0xa28(27)
    stb 0, 0x214(31)
    lwz 6, 0xa2c(27)
    lbz 0, 0xd(1)
    stb 0, 0x215(31)
    lbz 0, 0xe(1)
    stb 0, 0x216(31)
    lbz 0, 0xf(1)
    stb 0, 0x217(31)
    lwz 3, 0x4(31)
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
    lbz 0, 0x8(1)
    addi 29, 27, 0xd68
    mr 30, 31
    addi 18, 27, 0xda8
    stb 0, 0x210(31)
    mr 17, 29
    addi 19, 27, 0xdc8
    addi 20, 27, 0xde8
    lbz 0, 0x9(1)
    addi 21, 27, 0xe08
    addi 22, 27, 0xe28
    addi 23, 27, 0xe68
    stb 0, 0x211(31)
    addi 24, 27, 0xe88
    addi 25, 27, 0xea8
    addi 26, 27, 0xec8
    lbz 0, 0xa(1)
    li 16, 0x0
    stb 0, 0x212(31)
    lbz 0, 0xb(1)
    stb 0, 0x213(31)
L_80427160:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8042717C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8042717C:
    stw 3, 0x50(30)
    lwz 5, 0x0(17)
    lwz 3, 0x18(31)
    lwz 6, 0x4(17)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x50(30)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804271C4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804271C4:
    stw 3, 0x60(30)
    lwz 5, 0x0(18)
    lwz 3, 0x18(31)
    lwz 6, 0x4(18)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x60(30)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8042720C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8042720C:
    stw 3, 0x70(30)
    lwz 5, 0x0(19)
    lwz 3, 0x4(31)
    lwz 6, 0x4(19)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x70(30)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80427254
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80427254:
    stw 3, 0x80(30)
    lwz 5, 0x0(20)
    lwz 3, 0x4(31)
    lwz 6, 0x4(20)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x80(30)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8042729C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8042729C:
    stw 3, 0x90(30)
    lwz 5, 0x0(21)
    lwz 3, 0x4(31)
    lwz 6, 0x4(21)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x90(30)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804272E4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804272E4:
    stw 3, 0xa0(30)
    lwz 5, 0x0(22)
    lwz 3, 0x4(31)
    lwz 6, 0x4(22)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xa0(30)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8042732C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8042732C:
    stw 3, 0xb0(30)
    lwz 5, 0x0(23)
    lwz 3, 0x4(31)
    lwz 6, 0x4(23)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xb0(30)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80427374
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80427374:
    stw 3, 0xc0(30)
    lwz 5, 0x0(24)
    lwz 3, 0x4(31)
    lwz 6, 0x4(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xc0(30)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804273BC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804273BC:
    stw 3, 0xd0(30)
    lwz 5, 0x0(25)
    lwz 3, 0x4(31)
    lwz 6, 0x4(25)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xd0(30)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80427404
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80427404:
    stw 3, 0xe0(30)
    lwz 5, 0x0(26)
    lwz 3, 0x4(31)
    lwz 6, 0x4(26)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xe0(30)
    bl fn_80402F04
    addi 16, 16, 0x1
    addi 17, 17, 0x8
    cmpwi 16, 0x4
    addi 18, 18, 0x8
    addi 19, 19, 0x8
    addi 20, 20, 0x8
    addi 21, 21, 0x8
    addi 22, 22, 0x8
    addi 23, 23, 0x8
    addi 24, 24, 0x8
    addi 25, 25, 0x8
    addi 26, 26, 0x8
    addi 30, 30, 0x4
    .4byte 0x4180FCFC # blt .L_80427160
    lwz 3, 0x4(31)
    lwz 5, 0x148(27)
    lwz 12, 0x0(3)
    lwz 6, 0x14c(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 16, 27, 0x1c8
    li 17, 0x0
    stb 0, 0x218(31)
L_80427494:
    lwz 3, 0x4(31)
    lwz 5, 0x0(16)
    lwz 12, 0x0(3)
    lwz 6, 0x4(16)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 17, 0x219
    lbz 3, 0xb2(3)
    addi 17, 17, 0x1
    addi 16, 16, 0x8
    cmpwi 17, 0x3
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_80427494
    lwz 3, 0x4(31)
    lwz 5, 0x228(27)
    lwz 12, 0x0(3)
    lwz 6, 0x22c(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x328(27)
    stb 0, 0x21c(31)
    lwz 6, 0x32c(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x428(27)
    stb 0, 0x21d(31)
    lwz 6, 0x42c(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x528(27)
    stb 0, 0x21e(31)
    lwz 6, 0x52c(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 16, 27, 0x628
    addi 17, 27, 0x688
    li 19, 0x0
    stb 0, 0x21f(31)
L_80427568:
    lwz 3, 0x4(31)
    lwz 5, 0x0(16)
    lwz 12, 0x0(3)
    lwz 6, 0x4(16)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    add 18, 31, 19
    lwz 5, 0x0(17)
    stb 0, 0x220(18)
    lwz 6, 0x4(17)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 19, 19, 0x1
    cmpwi 19, 0x3
    addi 17, 17, 0x8
    stb 0, 0x223(18)
    addi 16, 16, 0x8
    .4byte 0x4180FFA4 # blt .L_80427568
    lwz 3, 0x4(31)
    lwz 5, 0x6e8(27)
    lwz 12, 0x0(3)
    lwz 6, 0x6ec(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x868(27)
    stb 0, 0x226(31)
    lwz 6, 0x86c(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0x9e8(27)
    stb 0, 0x227(31)
    lwz 6, 0x9ec(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 3, 27, 0x9e8
    lwz 5, 0x8(3)
    stb 0, 0x228(31)
    lwz 6, 0xc(3)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0xa28(27)
    stb 0, 0x229(31)
    lwz 6, 0xa2c(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0xac8(27)
    stb 0, 0x22a(31)
    lwz 6, 0xacc(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 16, 27, 0xb68
    li 17, 0x0
    stb 0, 0x22b(31)
L_804276AC:
    lwz 3, 0x4(31)
    lwz 5, 0x0(16)
    lwz 12, 0x0(3)
    lwz 6, 0x4(16)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 17, 0x22c
    lbz 3, 0xb2(3)
    addi 17, 17, 0x1
    addi 16, 16, 0x8
    cmpwi 17, 0x6
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_804276AC
    lwz 3, 0x18(31)
    lwz 5, 0xda8(27)
    lwz 12, 0x0(3)
    lwz 6, 0xdac(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0xdc8(27)
    stb 0, 0x232(31)
    lwz 6, 0xdcc(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0xc28(27)
    stb 0, 0x233(31)
    lwz 6, 0xc2c(27)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 3, 27, 0xc28
    lwz 5, 0x8(3)
    stb 0, 0x234(31)
    lwz 6, 0xc(3)
    lwz 3, 0x18(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0xe28(27)
    stb 0, 0x235(31)
    lwz 6, 0xe2c(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0xe48(27)
    stb 0, 0x236(31)
    lwz 6, 0xe4c(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0xec8(27)
    stb 0, 0x237(31)
    lwz 6, 0xecc(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0xee8(27)
    stb 0, 0x238(31)
    lwz 6, 0xeec(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0xf08(27)
    stb 0, 0x239(31)
    lwz 6, 0xf0c(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lwz 5, 0xf28(27)
    stb 0, 0x23a(31)
    lwz 6, 0xf2c(27)
    lwz 3, 0x4(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    addi 16, 27, 0xfa0
    li 17, 0x0
    stb 0, 0x23b(31)
L_80427858:
    lwz 3, 0x2c(31)
    lwz 5, 0x0(16)
    lwz 12, 0x0(3)
    lwz 6, 0x4(16)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 17, 0x247
    lbz 3, 0xb2(3)
    addi 17, 17, 0x1
    addi 16, 16, 0x8
    cmpwi 17, 0x6
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_80427858
    addi 20, 27, 0x228
    addi 21, 27, 0x328
    li 22, 0x0
    lis 16, 0x5449
L_804278A0:
    mr 18, 20
    mr 19, 21
    li 23, 0x0
L_804278AC:
    li 24, 0x0
    addi 17, 28, 0x0
L_804278B4:
    lwz 4, 0x0(17)
    addi 3, 16, 0x4d47
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(31)
    mr 25, 0
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 25
    .4byte 0xC0220AAC # lfs f1, lbl_80543A4C@sda21(r0)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 25
    .4byte 0xC0220AAC # lfs f1, lbl_80543A4C@sda21(r0)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    addi 24, 24, 0x1
    addi 17, 17, 0x4
    cmpwi 24, 0x3
    .4byte 0x4180FF78 # blt .L_804278B4
    addi 23, 23, 0x1
    addi 19, 19, 0x8
    cmpwi 23, 0x8
    addi 18, 18, 0x8
    .4byte 0x4180FF5C # blt .L_804278AC
    addi 22, 22, 0x1
    addi 21, 21, 0x40
    cmpwi 22, 0x4
    addi 20, 20, 0x40
    .4byte 0x4180FF3C # blt .L_804278A0
    addi 18, 27, 0xd88
    li 19, 0x0
    lis 16, 0x5449
L_80427974:
    addi 17, 28, 0x34
    li 20, 0x1
    addi 17, 17, 0x4
L_80427980:
    lwz 4, 0x0(17)
    addi 3, 16, 0x4d47
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x18(31)
    mr 21, 0
    lwz 5, 0x0(29)
    lwz 12, 0x0(3)
    lwz 6, 0x4(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 21
    .4byte 0xC0220AAC # lfs f1, lbl_80543A4C@sda21(r0)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x18(31)
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 21
    .4byte 0xC0220AAC # lfs f1, lbl_80543A4C@sda21(r0)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    addi 20, 20, 0x1
    addi 17, 17, 0x4
    cmpwi 20, 0x4
    .4byte 0x4180FF78 # blt .L_80427980
    addi 19, 19, 0x1
    addi 18, 18, 0x8
    cmpwi 19, 0x4
    addi 29, 29, 0x8
    .4byte 0x4180FF58 # blt .L_80427974
    mr 20, 31
    li 21, 0x0
    lis 16, 0x5449
L_80427A2C:
    addi 18, 27, 0xc68
    addi 19, 27, 0xce8
    li 22, 0x0
L_80427A38:
    li 23, 0x0
    addi 17, 28, 0x0
L_80427A40:
    lwz 4, 0x0(17)
    addi 3, 16, 0x4d47
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x8(20)
    mr 24, 0
    lwz 5, 0x0(18)
    lwz 12, 0x0(3)
    lwz 6, 0x4(18)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    .4byte 0xC0220AAC # lfs f1, lbl_80543A4C@sda21(r0)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(20)
    lwz 5, 0x0(19)
    lwz 12, 0x0(3)
    lwz 6, 0x4(19)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 24
    .4byte 0xC0220AAC # lfs f1, lbl_80543A4C@sda21(r0)
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    addi 23, 23, 0x1
    addi 17, 17, 0x4
    cmpwi 23, 0x3
    .4byte 0x4180FF78 # blt .L_80427A40
    addi 22, 22, 0x1
    addi 19, 19, 0x8
    cmpwi 22, 0x8
    addi 18, 18, 0x8
    .4byte 0x4180FF5C # blt .L_80427A38
    addi 21, 21, 0x1
    addi 20, 20, 0x4
    cmpwi 21, 0x4
    .4byte 0x4180FF40 # blt .L_80427A2C
    mr 3, 31
    lmw 16, 0x20(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

