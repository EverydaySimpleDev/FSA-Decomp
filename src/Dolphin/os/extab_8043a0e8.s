# 901KB-gap non-actor manager block: 24 functions, 14,960 bytes.
# Fully contiguous at the extab AND extabindex level with neighboring
# pre-existing entries (zero gap on either side). Deliberately left
# unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80010DD4
etb_80010DD4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80010DD4, 8

.global etb_80010DDC
etb_80010DDC:
    .4byte 0x18880000
    .4byte 0x00000000
.size etb_80010DDC, 8

.global etb_80010DE4
etb_80010DE4:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80010DE4, 8

.global etb_80010DEC
etb_80010DEC:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010DEC, 8

.global etb_80010DF4
etb_80010DF4:
    .4byte 0x388A0000
    .4byte 0x00000000
.size etb_80010DF4, 8

.global etb_80010DFC
etb_80010DFC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80010DFC, 8

.global etb_80010E04
etb_80010E04:
    .4byte 0x28CA0000
    .4byte 0x00000000
.size etb_80010E04, 8

.global etb_80010E0C
etb_80010E0C:
    .4byte 0x394A0000
    .4byte 0x00000000
.size etb_80010E0C, 8

.global etb_80010E14
etb_80010E14:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80010E14, 8

.global etb_80010E1C
etb_80010E1C:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_80010E1C, 8

.global etb_80010E24
etb_80010E24:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_80010E24, 8

.global etb_80010E2C
etb_80010E2C:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_80010E2C, 8

.global etb_80010E34
etb_80010E34:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80010E34, 8

.global etb_80010E3C
etb_80010E3C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80010E3C, 8

.global etb_80010E44
etb_80010E44:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010E44, 8

.global etb_80010E4C
etb_80010E4C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010E4C, 8

.global etb_80010E54
etb_80010E54:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010E54, 8

.global etb_80010E5C
etb_80010E5C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80010E5C, 8

.global etb_80010E64
etb_80010E64:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010E64, 8

.global etb_80010E6C
etb_80010E6C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80010E6C, 8

.global etb_80010E74
etb_80010E74:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80010E74, 8

.section extabindex, "a"
.balign 4
.global eti_80020E30
eti_80020E30:
    .4byte fn_8043A208
    .4byte 0x00000060
    .4byte etb_80010DD4
.size eti_80020E30, 12

.global eti_80020E3C
eti_80020E3C:
    .4byte fn_8043A268
    .4byte 0x000001E8
    .4byte etb_80010DDC
.size eti_80020E3C, 12

.global eti_80020E48
eti_80020E48:
    .4byte fn_8043A450
    .4byte 0x000001B8
    .4byte etb_80010DE4
.size eti_80020E48, 12

.global eti_80020E54
eti_80020E54:
    .4byte fn_8043A608
    .4byte 0x00000030
    .4byte etb_80010DEC
.size eti_80020E54, 12

.global eti_80020E60
eti_80020E60:
    .4byte fn_8043A638
    .4byte 0x00000594
    .4byte etb_80010DF4
.size eti_80020E60, 12

.global eti_80020E6C
eti_80020E6C:
    .4byte fn_8043ABCC
    .4byte 0x00000118
    .4byte etb_80010DFC
.size eti_80020E6C, 12

.global eti_80020E78
eti_80020E78:
    .4byte fn_8043ACE4
    .4byte 0x00000EA0
    .4byte etb_80010E04
.size eti_80020E78, 12

.global eti_80020E84
eti_80020E84:
    .4byte fn_8043BB84
    .4byte 0x00000FA0
    .4byte etb_80010E0C
.size eti_80020E84, 12

.global eti_80020E90
eti_80020E90:
    .4byte fn_8043CB24
    .4byte 0x0000027C
    .4byte etb_80010E14
.size eti_80020E90, 12

.global eti_80020E9C
eti_80020E9C:
    .4byte fn_8043CDA0
    .4byte 0x00000100
    .4byte etb_80010E1C
.size eti_80020E9C, 12

.global eti_80020EA8
eti_80020EA8:
    .4byte fn_8043CF40
    .4byte 0x000000F4
    .4byte etb_80010E24
.size eti_80020EA8, 12

.global eti_80020EB4
eti_80020EB4:
    .4byte fn_8043D034
    .4byte 0x00000368
    .4byte etb_80010E2C
.size eti_80020EB4, 12

.global eti_80020EC0
eti_80020EC0:
    .4byte fn_8043D39C
    .4byte 0x00000178
    .4byte etb_80010E34
.size eti_80020EC0, 12

.global eti_80020ECC
eti_80020ECC:
    .4byte fn_8043D514
    .4byte 0x00000068
    .4byte etb_80010E3C
.size eti_80020ECC, 12

.global eti_80020ED8
eti_80020ED8:
    .4byte fn_8043D57C
    .4byte 0x00000074
    .4byte etb_80010E44
.size eti_80020ED8, 12

.global eti_80020EE4
eti_80020EE4:
    .4byte fn_8043D5F0
    .4byte 0x00000054
    .4byte etb_80010E4C
.size eti_80020EE4, 12

.global eti_80020EF0
eti_80020EF0:
    .4byte fn_8043D644
    .4byte 0x00000038
    .4byte etb_80010E54
.size eti_80020EF0, 12

.global eti_80020EFC
eti_80020EFC:
    .4byte fn_8043D67C
    .4byte 0x000001B8
    .4byte etb_80010E5C
.size eti_80020EFC, 12

.global eti_80020F08
eti_80020F08:
    .4byte fn_8043D834
    .4byte 0x00000040
    .4byte etb_80010E64
.size eti_80020F08, 12

.global eti_80020F14
eti_80020F14:
    .4byte fn_8043D874
    .4byte 0x00000040
    .4byte etb_80010E6C
.size eti_80020F14, 12

.global eti_80020F20
eti_80020F20:
    .4byte fn_8043D8B4
    .4byte 0x000002A4
    .4byte etb_80010E74
.size eti_80020F20, 12

.text
.balign 4
.global fn_8043A0E8
.global fn_8043A170
.global fn_8043A208
.global fn_8043A268
.global fn_8043A450
.global fn_8043A608
.global fn_8043A638
.global fn_8043ABCC
.global fn_8043ACE4
.global fn_8043BB84
.global fn_8043CB24
.global fn_8043CDA0
.global fn_8043CEA0
.global fn_8043CF40
.global fn_8043D034
.global fn_8043D39C
.global fn_8043D514
.global fn_8043D57C
.global fn_8043D5F0
.global fn_8043D644
.global fn_8043D67C
.global fn_8043D834
.global fn_8043D874
.global fn_8043D8B4

fn_8043A0E8:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x4182004C # beq .L_8043A140
    lis 4, lbl_8050EC80@ha
    addi 4, 4, lbl_8050EC80@l
    lwz 0, 0x10(4)
    mulli 0, 0, 0xc8
    add 4, 4, 0
    lwz 0, 0x28(4)
    clrlwi. 0, 0, 31
    .4byte 0x4082002C # bne .L_8043A140
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x118(4)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8043A140
    lwz 0, 0x11c(4)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8043A140
    clrlwi. 0, 3, 24
    beqlr
L_8043A140:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x118(3)
    cmpwi 0, 0xa
    .4byte 0x40820010 # bne .L_8043A160
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    beqlr
L_8043A160:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 0, 0xf
    stb 0, 0xdd(3)
    blr

fn_8043A170:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(5)
    cmplwi 0, 0x0
    .4byte 0x4182004C # beq .L_8043A1C8
    lis 5, lbl_8050EC80@ha
    addi 5, 5, lbl_8050EC80@l
    lwz 0, 0x10(5)
    mulli 0, 0, 0xc8
    add 5, 5, 0
    lwz 0, 0x28(5)
    clrlwi. 0, 0, 31
    .4byte 0x4082002C # bne .L_8043A1C8
    lis 5, lbl_80529DEC@ha
    addi 5, 5, lbl_80529DEC@l
    lwz 0, 0x118(5)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8043A1C8
    lwz 0, 0x11c(5)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8043A1C8
    clrlwi. 0, 4, 24
    beqlr
L_8043A1C8:
    lis 4, lbl_80529DEC@ha
    addi 4, 4, lbl_80529DEC@l
    lwz 0, 0x118(4)
    cmpwi 0, 0xa
    .4byte 0x40820010 # bne .L_8043A1E8
    lwz 0, 0x11c(4)
    cmpwi 0, 0x2
    beqlr
L_8043A1E8:
    .4byte 0x808D9310 # lwz r4, lbl_8053AED0@sda21(r0)
    li 0, 0x1
    slw 0, 0, 3
    lbz 3, 0xdd(4)
    clrlwi 0, 0, 24
    or 0, 3, 0
    stb 0, 0xdd(4)
    blr

fn_8043A208:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x10(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_8043A254
    stfs 1, 0x1c0(31)
    stfs 2, 0x1c4(31)
    stfs 3, 0x1c8(31)
    stfs 4, 0x1cc(31)
    lwz 3, 0x10(31)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0x254(31)
L_8043A254:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8043A268:
    stwu 1, -0x30(1)
    mflr 0
    cmpwi 4, 0x0
    stw 0, 0x34(1)
    stfd 31, 0x28(1)
    fmr 31, 2
    stfd 30, 0x20(1)
    fmr 30, 1
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    .4byte 0x4082000C # bne .L_8043A2A8
    cmpwi 5, 0x2
    .4byte 0x41820188 # beq .L_8043A42C
L_8043A2A8:
    cmpwi 4, 0x1
    .4byte 0x4082000C # bne .L_8043A2B8
    cmpwi 5, 0x2
    .4byte 0x41820178 # beq .L_8043A42C
L_8043A2B8:
    cmpwi 4, 0x2
    .4byte 0x4082000C # bne .L_8043A2C8
    cmpwi 5, 0x2
    .4byte 0x41820168 # beq .L_8043A42C
L_8043A2C8:
    cmpwi 4, 0x3
    .4byte 0x4082000C # bne .L_8043A2D8
    cmpwi 5, 0x2
    .4byte 0x41820158 # beq .L_8043A42C
L_8043A2D8:
    cmpwi 4, 0x4
    .4byte 0x4082000C # bne .L_8043A2E8
    cmpwi 5, 0x2
    .4byte 0x41820148 # beq .L_8043A42C
L_8043A2E8:
    cmpwi 4, 0x5
    .4byte 0x4082000C # bne .L_8043A2F8
    cmpwi 5, 0x2
    .4byte 0x41820138 # beq .L_8043A42C
L_8043A2F8:
    cmpwi 4, 0x6
    .4byte 0x4082000C # bne .L_8043A308
    cmpwi 5, 0x2
    .4byte 0x41820128 # beq .L_8043A42C
L_8043A308:
    cmpwi 4, 0x7
    .4byte 0x40820010 # bne .L_8043A31C
    cmpwi 5, 0x1
    .4byte 0x40820008 # bne .L_8043A31C
    .4byte 0x48000114 # b .L_8043A42C
L_8043A31C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820104 # beq .L_8043A42C
    cmpwi 4, 0x8
    .4byte 0x408000FC # bge .L_8043A42C
    cmpwi 5, 0x4
    .4byte 0x408000F4 # bge .L_8043A42C
    slwi 0, 4, 2
    add. 0, 5, 0
    .4byte 0x41820028 # beq .L_8043A36C
    lis 3, lbl_804B1820@ha
    lis 5, 0x5449
    slwi 0, 0, 2
    addi 4, 3, lbl_804B1820@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804032E8
    mr 29, 3
    .4byte 0x48000024 # b .L_8043A38C
L_8043A36C:
    lis 3, lbl_804B1820@ha
    lis 5, 0x5449
    slwi 0, 0, 2
    addi 4, 3, lbl_804B1820@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 29, 3
L_8043A38C:
    lwz 3, 0x8(30)
    lis 4, 0x3031
    addi 6, 4, 0x3031
    li 5, 0x5077
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(30)
    lis 4, 0x3031
    addi 6, 4, 0x3031
    li 5, 0x5077
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x6466
    stb 0, 0xb0(3)
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 3, 0x8(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0x1
    stb 4, 0xb0(3)
    sth 0, 0x106(30)
    stb 0, 0x10d(30)
    stfs 30, 0xf4(30)
    stfs 31, 0xf8(30)
    sth 31, 0x108(30)
L_8043A42C:
    lwz 0, 0x34(1)
    lfd 31, 0x28(1)
    lfd 30, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8043A450:
    stwu 1, -0x10(1)
    mflr 0
    cmpwi 4, 0x0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    .4byte 0x4082000C # bne .L_8043A478
    cmpwi 5, 0x2
    .4byte 0x4182017C # beq .L_8043A5F0
L_8043A478:
    cmpwi 4, 0x1
    .4byte 0x4082000C # bne .L_8043A488
    cmpwi 5, 0x2
    .4byte 0x4182016C # beq .L_8043A5F0
L_8043A488:
    cmpwi 4, 0x2
    .4byte 0x4082000C # bne .L_8043A498
    cmpwi 5, 0x2
    .4byte 0x4182015C # beq .L_8043A5F0
L_8043A498:
    cmpwi 4, 0x3
    .4byte 0x4082000C # bne .L_8043A4A8
    cmpwi 5, 0x2
    .4byte 0x4182014C # beq .L_8043A5F0
L_8043A4A8:
    cmpwi 4, 0x4
    .4byte 0x4082000C # bne .L_8043A4B8
    cmpwi 5, 0x2
    .4byte 0x4182013C # beq .L_8043A5F0
L_8043A4B8:
    cmpwi 4, 0x5
    .4byte 0x4082000C # bne .L_8043A4C8
    cmpwi 5, 0x2
    .4byte 0x4182012C # beq .L_8043A5F0
L_8043A4C8:
    cmpwi 4, 0x6
    .4byte 0x4082000C # bne .L_8043A4D8
    cmpwi 5, 0x2
    .4byte 0x4182011C # beq .L_8043A5F0
L_8043A4D8:
    cmpwi 4, 0x7
    .4byte 0x40820010 # bne .L_8043A4EC
    cmpwi 5, 0x1
    .4byte 0x40820008 # bne .L_8043A4EC
    .4byte 0x48000108 # b .L_8043A5F0
L_8043A4EC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x418200F8 # beq .L_8043A5F0
    cmpwi 4, 0x8
    .4byte 0x408000F0 # bge .L_8043A5F0
    cmpwi 5, 0x4
    .4byte 0x408000E8 # bge .L_8043A5F0
    slwi 0, 4, 2
    add. 0, 5, 0
    .4byte 0x41820028 # beq .L_8043A53C
    lis 3, lbl_804B1820@ha
    lis 5, 0x5449
    slwi 0, 0, 2
    addi 4, 3, lbl_804B1820@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804032E8
    mr 30, 3
    .4byte 0x48000024 # b .L_8043A55C
L_8043A53C:
    lis 3, lbl_804B1820@ha
    lis 5, 0x5449
    slwi 0, 0, 2
    addi 4, 3, lbl_804B1820@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 30, 3
L_8043A55C:
    lwz 3, 0x8(31)
    lis 4, 0x3031
    addi 6, 4, 0x3031
    li 5, 0x5077
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x3031
    addi 6, 4, 0x3031
    li 5, 0x5077
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x6466
    stb 0, 0xb0(3)
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0x1
    stb 4, 0xb0(3)
    sth 0, 0x106(31)
    stb 4, 0x10d(31)
L_8043A5F0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8043A608:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80529DEC@ha
    stw 0, 0x14(1)
    addi 5, 4, lbl_80529DEC@l
    lwz 4, 0x118(5)
    lwz 5, 0x11c(5)
    bl fn_8043A450
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8043A638:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stmw 25, 0x24(1)
    mr 27, 3
    .4byte 0xC3E20CE8 # lfs f31, lbl_80543C88@sda21(r0)
    lha 0, 0x106(3)
    lis 3, lbl_8050DB0C@ha
    addi 4, 3, lbl_8050DB0C@l
    fmr 30, 31
    cmpwi 0, 0x0
    lha 30, 0x22a(4)
    lha 29, 0x22c(4)
    lha 28, 0x22e(4)
    .4byte 0x41820528 # beq .L_8043ABA8
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x1
    stb 0, 0xdc(3)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x2
    stb 0, 0xdc(3)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x4
    stb 0, 0xdc(3)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x8
    stb 0, 0xdc(3)
    lbz 0, 0x10d(27)
    cmplwi 0, 0x0
    .4byte 0x408202A0 # bne .L_8043A96C
    lha 3, 0x2e6(4)
    lha 26, 0x106(27)
    addi 0, 3, 0x50
    extsh 31, 0
    cmpw 26, 31
    .4byte 0x4080003C # bge .L_8043A720
    lwz 3, 0x8(27)
    lis 4, 0x6466
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800011C # b .L_8043A838
L_8043A720:
    add 0, 31, 30
    cmpw 26, 0
    .4byte 0x41810084 # bgt .L_8043A7AC
    lwz 3, 0x8(27)
    lis 4, 0x6466
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    subf 0, 31, 26
    lis 4, 0x4330
    xoris 5, 0, 0x8000
    xoris 0, 30, 0x8000
    stw 5, 0xc(1)
    lwz 12, 0x0(3)
    stw 4, 0x8(1)
    .4byte 0xC8420CF8 # lfd f2, lbl_80543C98@sda21(r0)
    lfd 0, 0x8(1)
    stw 0, 0x14(1)
    fsubs 1, 0, 2
    .4byte 0xC0620CEC # lfs f3, lbl_80543C8C@sda21(r0)
    stw 4, 0x10(1)
    lwz 12, 0x24(12)
    lfd 0, 0x10(1)
    fsubs 0, 0, 2
    fdivs 0, 1, 0
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    .4byte 0x48000090 # b .L_8043A838
L_8043A7AC:
    add 25, 29, 0
    cmpw 26, 25
    .4byte 0x40810084 # ble .L_8043A838
    lwz 3, 0x8(27)
    lis 4, 0x6466
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    add 0, 28, 25
    lis 4, 0x4330
    subf 5, 26, 0
    xoris 0, 28, 0x8000
    xoris 5, 5, 0x8000
    lwz 12, 0x0(3)
    stw 5, 0x1c(1)
    .4byte 0xC8420CF8 # lfd f2, lbl_80543C98@sda21(r0)
    stw 4, 0x18(1)
    .4byte 0xC0620CEC # lfs f3, lbl_80543C8C@sda21(r0)
    lfd 0, 0x18(1)
    stw 0, 0x14(1)
    fsubs 1, 0, 2
    lwz 12, 0x24(12)
    stw 4, 0x10(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 2
    fdivs 0, 1, 0
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
L_8043A838:
    lwz 3, 0x8(27)
    lis 4, 0x6466
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 26, 3
    lwz 3, 0x8(27)
    lis 4, 0x3031
    li 5, 0x5077
    lwz 12, 0x0(3)
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lbz 4, 0xb2(26)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    add 0, 30, 29
    lha 3, 0x106(27)
    add 0, 0, 28
    add 0, 31, 0
    cmpw 3, 0
    .4byte 0x40800010 # bge .L_8043A8B4
    addi 0, 3, 0x1
    sth 0, 0x106(27)
    .4byte 0x4800000C # b .L_8043A8BC
L_8043A8B4:
    li 0, 0x0
    sth 0, 0x106(27)
L_8043A8BC:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x118(3)
    cmpwi 0, 0x8
    .4byte 0x40820014 # bne .L_8043A8E0
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x40820008 # bne .L_8043A8E0
    .4byte 0xC3C20CF0 # lfs f30, lbl_80543C90@sda21(r0)
L_8043A8E0:
    lis 3, lbl_8050DB0C@ha
    lis 7, 0x4330
    addi 6, 3, lbl_8050DB0C@l
    lwz 3, 0x8(27)
    lha 5, 0x2e2(6)
    lis 4, 0x3031
    lha 0, 0x2e4(6)
    addi 6, 4, 0x3031
    xoris 4, 5, 0x8000
    lwz 12, 0x0(3)
    xoris 0, 0, 0x8000
    stw 4, 0x1c(1)
    .4byte 0xC8420CF8 # lfd f2, lbl_80543C98@sda21(r0)
    li 5, 0x5077
    stw 7, 0x18(1)
    lwz 12, 0x3c(12)
    lfd 0, 0x18(1)
    stw 0, 0x14(1)
    fsubs 1, 0, 2
    stw 7, 0x10(1)
    lfd 0, 0x10(1)
    fadds 31, 31, 1
    fsubs 0, 0, 2
    fadds 30, 30, 0
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xec(27)
    lfs 0, 0xf0(27)
    lwz 12, 0x10(12)
    fadds 1, 1, 31
    fadds 2, 0, 30
    mtctr 12
    bctrl
    .4byte 0x48000220 # b .L_8043AB88
L_8043A96C:
    lha 25, 0x106(27)
    lha 31, 0x108(27)
    cmpwi 25, 0x14
    .4byte 0x4080003C # bge .L_8043A9B4
    lwz 3, 0x8(27)
    lis 4, 0x6466
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    li 4, 0x0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800011C # b .L_8043AACC
L_8043A9B4:
    addi 0, 30, 0x14
    cmpw 25, 0
    .4byte 0x41810084 # bgt .L_8043AA40
    lwz 3, 0x8(27)
    lis 4, 0x6466
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    subi 0, 25, 0x14
    lis 4, 0x4330
    xoris 5, 0, 0x8000
    xoris 0, 30, 0x8000
    stw 5, 0x1c(1)
    lwz 12, 0x0(3)
    stw 4, 0x18(1)
    .4byte 0xC8420CF8 # lfd f2, lbl_80543C98@sda21(r0)
    lfd 0, 0x18(1)
    stw 0, 0x14(1)
    fsubs 1, 0, 2
    .4byte 0xC0620CEC # lfs f3, lbl_80543C8C@sda21(r0)
    stw 4, 0x10(1)
    lwz 12, 0x24(12)
    lfd 0, 0x10(1)
    fsubs 0, 0, 2
    fdivs 0, 1, 0
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    .4byte 0x48000090 # b .L_8043AACC
L_8043AA40:
    add 26, 31, 0
    cmpw 25, 26
    .4byte 0x40810084 # ble .L_8043AACC
    lwz 3, 0x8(27)
    lis 4, 0x6466
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    add 0, 28, 26
    lis 4, 0x4330
    subf 5, 25, 0
    xoris 0, 28, 0x8000
    xoris 5, 5, 0x8000
    lwz 12, 0x0(3)
    stw 5, 0x1c(1)
    .4byte 0xC8420CF8 # lfd f2, lbl_80543C98@sda21(r0)
    stw 4, 0x18(1)
    .4byte 0xC0620CEC # lfs f3, lbl_80543C8C@sda21(r0)
    lfd 0, 0x18(1)
    stw 0, 0x14(1)
    fsubs 1, 0, 2
    lwz 12, 0x24(12)
    stw 4, 0x10(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 2
    fdivs 0, 1, 0
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
L_8043AACC:
    lwz 3, 0x8(27)
    lis 4, 0x6466
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 29, 3
    lwz 3, 0x8(27)
    lis 4, 0x3031
    li 5, 0x5077
    lwz 12, 0x0(3)
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lbz 4, 0xb2(29)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    add 0, 30, 31
    lha 4, 0x106(27)
    add 3, 0, 28
    addi 0, 3, 0x14
    cmpw 4, 0
    .4byte 0x40800010 # bge .L_8043AB48
    addi 0, 4, 0x1
    sth 0, 0x106(27)
    .4byte 0x4800000C # b .L_8043AB50
L_8043AB48:
    li 0, 0x0
    sth 0, 0x106(27)
L_8043AB50:
    lwz 3, 0x8(27)
    lis 4, 0x3031
    addi 6, 4, 0x3031
    li 5, 0x5077
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0xf4(27)
    lwz 12, 0x10(12)
    lfs 2, 0xf8(27)
    mtctr 12
    bctrl
L_8043AB88:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220CE8 # lfs f1, lbl_80543C88@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x8(27)
    lwz 4, 0x10(4)
    bl fn_8009D340
L_8043ABA8:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lmw 25, 0x24(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8043ABCC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    srawi 0, 4, 31
    andc 0, 4, 0
    stw 31, 0xc(1)
    cmpwi 0, 0x1
    mr 31, 3
    stw 30, 0x8(1)
    .4byte 0x41820028 # beq .L_8043AC18
    lis 3, lbl_804B1900@ha
    lis 5, 0x5449
    slwi 0, 0, 2
    addi 4, 3, lbl_804B1900@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804032E8
    mr 30, 3
    .4byte 0x48000024 # b .L_8043AC38
L_8043AC18:
    lis 3, lbl_804B1900@ha
    lis 5, 0x5449
    slwi 0, 0, 2
    addi 4, 3, lbl_804B1900@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 30, 3
L_8043AC38:
    lwz 3, 0x8(31)
    lis 4, 0x6466
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    lis 4, 0x6466
    addi 6, 4, 0x3031
    li 5, 0x50
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 4, 0x3031
    stb 0, 0xb0(3)
    addi 6, 4, 0x3031
    li 5, 0x5077
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 0, 0x1
    stb 4, 0xb0(3)
    sth 0, 0x106(31)
    stb 4, 0x10d(31)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8043ACE4:
    stwu 1, -0x1f0(1)
    mflr 0
    stw 0, 0x1f4(1)
    stfd 31, 0x1e0(1)
    psq_st 31, 0x1e8(1), 0, 0
    stfd 30, 0x1d0(1)
    psq_st 30, 0x1d8(1), 0, 0
    stfd 29, 0x1c0(1)
    psq_st 29, 0x1c8(1), 0, 0
    stmw 27, 0x1ac(1)
    .4byte 0x880D9315 # lbz r0, lbl_8053AED5@sda21(r0)
    mr 27, 3
    extsb. 0, 0
    .4byte 0x4082008C # bne .L_8043ADA4
    li 9, 0xff
    li 12, 0xf2
    li 11, 0x49
    li 10, 0x12
    li 4, 0xd8
    li 3, 0xa1
    lis 5, lbl_8052C5F0@ha
    stb 12, 0x194(1)
    li 0, 0x1
    stb 11, 0x195(1)
    addi 8, 5, lbl_8052C5F0@l
    stb 10, 0x196(1)
    stb 9, 0x197(1)
    lwz 7, 0x194(1)
    stb 12, 0x190(1)
    stb 11, 0x191(1)
    stb 10, 0x192(1)
    stb 9, 0x193(1)
    lwz 6, 0x190(1)
    stb 12, 0x18c(1)
    stb 11, 0x18d(1)
    stb 10, 0x18e(1)
    stb 9, 0x18f(1)
    lwz 5, 0x18c(1)
    stb 4, 0x188(1)
    stb 9, 0x189(1)
    stb 3, 0x18a(1)
    stb 9, 0x18b(1)
    lwz 3, 0x188(1)
    stw 7, 0x0(8)
    stw 6, 0x4(8)
    stw 5, 0x8(8)
    stw 3, 0xc(8)
    .4byte 0x980D9315 # stb r0, lbl_8053AED5@sda21(r0)
L_8043ADA4:
    lbz 0, 0x253(27)
    cmplwi 0, 0x0
    .4byte 0x41820DAC # beq .L_8043BB58
    .4byte 0xCBC20D10 # lfd f30, lbl_80543CB0@sda21(r0)
    mr 30, 27
    .4byte 0xC3E20CEC # lfs f31, lbl_80543C8C@sda21(r0)
    li 28, 0x0
    lis 31, 0x4330
    .4byte 0x48000D80 # b .L_8043BB44
L_8043ADC8:
    addi 29, 28, 0x24e
    stw 31, 0x198(1)
    lbzx 0, 27, 29
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stw 0, 0x19c(1)
    lfd 0, 0x198(1)
    fsubs 0, 0, 30
    fdivs 29, 0, 31
    bl fn_8013B490
    lwz 0, 0x1d0(30)
    cmpwi 0, 0x3
    .4byte 0x418206D0 # beq .L_8043B4C4
    .4byte 0x40800014 # bge .L_8043AE0C
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_8043AE18
    .4byte 0x4080036C # bge .L_8043B170
    .4byte 0x48000D34 # b .L_8043BB3C
L_8043AE0C:
    cmpwi 0, 0x5
    .4byte 0x40800D2C # bge .L_8043BB3C
    .4byte 0x480009EC # b .L_8043B800
L_8043AE18:
    li 6, 0x0
    li 0, 0xff
    stb 6, 0x178(1)
    addi 4, 1, 0x184
    addi 5, 1, 0x17c
    stb 6, 0x179(1)
    stb 6, 0x17a(1)
    stb 0, 0x17b(1)
    lwz 3, 0x178(1)
    stb 6, 0x180(1)
    stb 6, 0x181(1)
    stb 6, 0x182(1)
    stb 6, 0x183(1)
    lwz 0, 0x180(1)
    stw 3, 0x17c(1)
    stw 0, 0x184(1)
    lwz 3, 0x280(27)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 6, 0xff
    .4byte 0xC0020D00 # lfs f0, lbl_80543CA0@sda21(r0)
    stb 6, 0x170(1)
    fmuls 0, 0, 29
    lwz 3, 0x280(27)
    stb 6, 0x171(1)
    stb 6, 0x172(1)
    fctiwz 0, 0
    stb 6, 0x173(1)
    lwz 0, 0x170(1)
    stb 6, 0x168(1)
    stw 0, 0x174(1)
    lbz 4, 0x174(1)
    stb 6, 0x169(1)
    lbz 0, 0x175(1)
    stb 4, 0x150(3)
    lbz 4, 0x176(1)
    stb 0, 0x151(3)
    lbz 0, 0x177(1)
    stb 4, 0x152(3)
    stb 6, 0x16a(1)
    stb 6, 0x16b(1)
    lwz 4, 0x168(1)
    stb 0, 0x153(3)
    stw 4, 0x16c(1)
    lbz 4, 0x16c(1)
    stb 6, 0x160(1)
    lbz 0, 0x16d(1)
    stb 4, 0x154(3)
    lbz 4, 0x16e(1)
    stb 0, 0x155(3)
    lbz 0, 0x16f(1)
    stb 4, 0x156(3)
    stb 6, 0x161(1)
    stb 6, 0x162(1)
    stb 6, 0x163(1)
    lwz 4, 0x160(1)
    stfd 0, 0x198(1)
    stw 4, 0x164(1)
    lwz 4, 0x19c(1)
    stb 0, 0x157(3)
    lbz 5, 0x164(1)
    stb 6, 0x158(1)
    lbz 0, 0x165(1)
    stb 5, 0x158(3)
    lbz 5, 0x166(1)
    stb 0, 0x159(3)
    lbz 0, 0x167(1)
    stb 5, 0x15a(3)
    stb 6, 0x159(1)
    stb 6, 0x15a(1)
    stb 6, 0x15b(1)
    lwz 5, 0x158(1)
    stb 0, 0x15b(3)
    stw 5, 0x15c(1)
    lbz 5, 0x15c(1)
    lbz 0, 0x15d(1)
    stb 5, 0x15c(3)
    lbz 5, 0x15e(1)
    stb 0, 0x15d(3)
    lbz 0, 0x15f(1)
    stb 5, 0x15e(3)
    stb 0, 0x15f(3)
    lwz 3, 0x280(27)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x280(27)
    li 4, 0x0
    .4byte 0xC0220D04 # lfs f1, lbl_80543CA4@sda21(r0)
    li 5, 0x0
    lfs 0, 0x1b0(30)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    .4byte 0xC0420D08 # lfs f2, lbl_80543CA8@sda21(r0)
    lfs 1, 0x190(30)
    lfs 0, 0x1a0(30)
    fadds 1, 2, 1
    lwz 12, 0xec(12)
    fmr 4, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    li 3, 0xff
    li 0, 0x0
    stb 3, 0x148(1)
    addi 4, 1, 0x154
    addi 5, 1, 0x14c
    stb 3, 0x149(1)
    stb 3, 0x14a(1)
    stb 3, 0x14b(1)
    lwz 3, 0x148(1)
    stb 0, 0x150(1)
    stb 0, 0x151(1)
    stb 0, 0x152(1)
    stb 0, 0x153(1)
    lwz 0, 0x150(1)
    stw 3, 0x14c(1)
    stw 0, 0x154(1)
    lwz 3, 0x280(27)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 4, 0xff
    li 10, 0x12
    li 12, 0xb9
    stb 10, 0x141(1)
    li 7, 0xd8
    li 9, 0x3a
    stb 12, 0x140(1)
    li 8, 0x16
    li 11, 0x54
    li 3, 0x9d
    stb 10, 0x142(1)
    li 0, 0x10
    lwz 5, 0x280(27)
    stb 4, 0x143(1)
    lwz 6, 0x140(1)
    stb 7, 0x138(1)
    stw 6, 0x144(1)
    lbz 7, 0x144(1)
    stb 9, 0x139(1)
    lbz 6, 0x145(1)
    stb 7, 0x150(5)
    lbz 7, 0x146(1)
    stb 6, 0x151(5)
    lbz 6, 0x147(1)
    stb 7, 0x152(5)
    stb 8, 0x13a(1)
    stb 4, 0x13b(1)
    lwz 7, 0x138(1)
    stb 6, 0x153(5)
    stw 7, 0x13c(1)
    lbz 7, 0x13c(1)
    stb 12, 0x130(1)
    lbz 6, 0x13d(1)
    stb 7, 0x154(5)
    lbz 7, 0x13e(1)
    stb 6, 0x155(5)
    lbz 6, 0x13f(1)
    stb 7, 0x156(5)
    stb 11, 0x131(1)
    stb 10, 0x132(1)
    stb 4, 0x133(1)
    lwz 7, 0x130(1)
    stb 6, 0x157(5)
    stw 7, 0x134(1)
    lbz 7, 0x134(1)
    stb 4, 0x128(1)
    lbz 6, 0x135(1)
    stb 7, 0x158(5)
    lbz 7, 0x136(1)
    stb 6, 0x159(5)
    lbz 6, 0x137(1)
    stb 7, 0x15a(5)
    stb 3, 0x129(1)
    stb 0, 0x12a(1)
    stb 4, 0x12b(1)
    lwz 0, 0x128(1)
    stb 6, 0x15b(5)
    stw 0, 0x12c(1)
    lbz 3, 0x12c(1)
    lbz 0, 0x12d(1)
    stb 3, 0x15c(5)
    lbz 3, 0x12e(1)
    stb 0, 0x15d(5)
    lbz 0, 0x12f(1)
    stb 3, 0x15e(5)
    stb 0, 0x15f(5)
    lwz 3, 0x280(27)
    lbzx 4, 27, 29
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x280(27)
    li 4, 0x0
    .4byte 0xC0220D04 # lfs f1, lbl_80543CA4@sda21(r0)
    li 5, 0x0
    lfs 0, 0x1b0(30)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    lfs 1, 0x190(30)
    lwz 12, 0xec(12)
    lfs 2, 0x1a0(30)
    fmr 4, 3
    mtctr 12
    bctrl
    .4byte 0x480009D0 # b .L_8043BB3C
L_8043B170:
    li 6, 0x0
    li 0, 0xff
    stb 6, 0x118(1)
    addi 4, 1, 0x124
    addi 5, 1, 0x11c
    stb 6, 0x119(1)
    stb 6, 0x11a(1)
    stb 0, 0x11b(1)
    lwz 3, 0x118(1)
    stb 6, 0x120(1)
    stb 6, 0x121(1)
    stb 6, 0x122(1)
    stb 6, 0x123(1)
    lwz 0, 0x120(1)
    stw 3, 0x11c(1)
    stw 0, 0x124(1)
    lwz 3, 0x284(27)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 6, 0xff
    .4byte 0xC0020D00 # lfs f0, lbl_80543CA0@sda21(r0)
    stb 6, 0x110(1)
    fmuls 0, 0, 29
    lwz 3, 0x284(27)
    stb 6, 0x111(1)
    stb 6, 0x112(1)
    fctiwz 0, 0
    stb 6, 0x113(1)
    lwz 0, 0x110(1)
    stb 6, 0x108(1)
    stw 0, 0x114(1)
    lbz 4, 0x114(1)
    stb 6, 0x109(1)
    lbz 0, 0x115(1)
    stb 4, 0x150(3)
    lbz 4, 0x116(1)
    stb 0, 0x151(3)
    lbz 0, 0x117(1)
    stb 4, 0x152(3)
    stb 6, 0x10a(1)
    stb 6, 0x10b(1)
    lwz 4, 0x108(1)
    stb 0, 0x153(3)
    stw 4, 0x10c(1)
    lbz 4, 0x10c(1)
    stb 6, 0x100(1)
    lbz 0, 0x10d(1)
    stb 4, 0x154(3)
    lbz 4, 0x10e(1)
    stb 0, 0x155(3)
    lbz 0, 0x10f(1)
    stb 4, 0x156(3)
    stb 6, 0x101(1)
    stb 6, 0x102(1)
    stb 6, 0x103(1)
    lwz 4, 0x100(1)
    stfd 0, 0x198(1)
    stw 4, 0x104(1)
    lwz 4, 0x19c(1)
    stb 0, 0x157(3)
    lbz 5, 0x104(1)
    stb 6, 0xf8(1)
    lbz 0, 0x105(1)
    stb 5, 0x158(3)
    lbz 5, 0x106(1)
    stb 0, 0x159(3)
    lbz 0, 0x107(1)
    stb 5, 0x15a(3)
    stb 6, 0xf9(1)
    stb 6, 0xfa(1)
    stb 6, 0xfb(1)
    lwz 5, 0xf8(1)
    stb 0, 0x15b(3)
    stw 5, 0xfc(1)
    lbz 5, 0xfc(1)
    lbz 0, 0xfd(1)
    stb 5, 0x15c(3)
    lbz 5, 0xfe(1)
    stb 0, 0x15d(3)
    lbz 0, 0xff(1)
    stb 5, 0x15e(3)
    stb 0, 0x15f(3)
    lwz 3, 0x284(27)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x284(27)
    li 4, 0x0
    .4byte 0xC0220D04 # lfs f1, lbl_80543CA4@sda21(r0)
    li 5, 0x0
    lfs 0, 0x1b0(30)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    .4byte 0xC0420D08 # lfs f2, lbl_80543CA8@sda21(r0)
    lfs 1, 0x190(30)
    lfs 0, 0x1a0(30)
    fadds 1, 2, 1
    lwz 12, 0xec(12)
    fmr 4, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    li 3, 0xff
    li 0, 0x0
    stb 3, 0xe8(1)
    addi 4, 1, 0xf4
    addi 5, 1, 0xec
    stb 3, 0xe9(1)
    stb 3, 0xea(1)
    stb 3, 0xeb(1)
    lwz 3, 0xe8(1)
    stb 0, 0xf0(1)
    stb 0, 0xf1(1)
    stb 0, 0xf2(1)
    stb 0, 0xf3(1)
    lwz 0, 0xf0(1)
    stw 3, 0xec(1)
    stw 0, 0xf4(1)
    lwz 3, 0x284(27)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 11, 0xff
    li 9, 0xf2
    li 6, 0x48
    li 5, 0x9
    stb 9, 0xe0(1)
    li 8, 0xab
    li 7, 0x24
    li 12, 0xfc
    stb 6, 0xe1(1)
    li 10, 0x21
    lwz 3, 0x284(27)
    stb 5, 0xe2(1)
    stb 11, 0xe3(1)
    lwz 0, 0xe0(1)
    stb 9, 0xd8(1)
    stw 0, 0xe4(1)
    lbz 4, 0xe4(1)
    stb 6, 0xd9(1)
    lbz 0, 0xe5(1)
    stb 4, 0x150(3)
    lbz 4, 0xe6(1)
    stb 0, 0x151(3)
    lbz 0, 0xe7(1)
    stb 4, 0x152(3)
    stb 5, 0xda(1)
    stb 11, 0xdb(1)
    lwz 4, 0xd8(1)
    stb 0, 0x153(3)
    stw 4, 0xdc(1)
    lbz 4, 0xdc(1)
    stb 9, 0xd0(1)
    lbz 0, 0xdd(1)
    stb 4, 0x154(3)
    lbz 4, 0xde(1)
    stb 0, 0x155(3)
    lbz 0, 0xdf(1)
    stb 4, 0x156(3)
    stb 8, 0xd1(1)
    stb 7, 0xd2(1)
    stb 11, 0xd3(1)
    lwz 4, 0xd0(1)
    stb 0, 0x157(3)
    stw 4, 0xd4(1)
    lbz 4, 0xd4(1)
    stb 12, 0xc8(1)
    lbz 0, 0xd5(1)
    stb 4, 0x158(3)
    lbz 4, 0xd6(1)
    stb 0, 0x159(3)
    lbz 0, 0xd7(1)
    stb 4, 0x15a(3)
    stb 11, 0xc9(1)
    stb 10, 0xca(1)
    stb 11, 0xcb(1)
    lwz 4, 0xc8(1)
    stb 0, 0x15b(3)
    stw 4, 0xcc(1)
    lbz 4, 0xcc(1)
    lbz 0, 0xcd(1)
    stb 4, 0x15c(3)
    lbz 4, 0xce(1)
    stb 0, 0x15d(3)
    lbz 0, 0xcf(1)
    stb 4, 0x15e(3)
    stb 0, 0x15f(3)
    lwz 3, 0x284(27)
    lbzx 4, 27, 29
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x284(27)
    li 4, 0x0
    .4byte 0xC0220D04 # lfs f1, lbl_80543CA4@sda21(r0)
    li 5, 0x0
    lfs 0, 0x1b0(30)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    lfs 1, 0x190(30)
    lwz 12, 0xec(12)
    lfs 2, 0x1a0(30)
    fmr 4, 3
    mtctr 12
    bctrl
    .4byte 0x4800067C # b .L_8043BB3C
L_8043B4C4:
    li 6, 0x0
    li 0, 0xff
    stb 6, 0xb8(1)
    addi 4, 1, 0xc4
    addi 5, 1, 0xbc
    stb 6, 0xb9(1)
    stb 6, 0xba(1)
    stb 0, 0xbb(1)
    lwz 3, 0xb8(1)
    stb 6, 0xc0(1)
    stb 6, 0xc1(1)
    stb 6, 0xc2(1)
    stb 6, 0xc3(1)
    lwz 0, 0xc0(1)
    stw 3, 0xbc(1)
    stw 0, 0xc4(1)
    lwz 3, 0x288(27)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 6, 0xff
    .4byte 0xC0020D00 # lfs f0, lbl_80543CA0@sda21(r0)
    stb 6, 0xb0(1)
    fmuls 0, 0, 29
    lwz 3, 0x288(27)
    stb 6, 0xb1(1)
    stb 6, 0xb2(1)
    fctiwz 0, 0
    stb 6, 0xb3(1)
    lwz 0, 0xb0(1)
    stb 6, 0xa8(1)
    stw 0, 0xb4(1)
    lbz 4, 0xb4(1)
    stb 6, 0xa9(1)
    lbz 0, 0xb5(1)
    stb 4, 0x150(3)
    lbz 4, 0xb6(1)
    stb 0, 0x151(3)
    lbz 0, 0xb7(1)
    stb 4, 0x152(3)
    stb 6, 0xaa(1)
    stb 6, 0xab(1)
    lwz 4, 0xa8(1)
    stb 0, 0x153(3)
    stw 4, 0xac(1)
    lbz 4, 0xac(1)
    stb 6, 0xa0(1)
    lbz 0, 0xad(1)
    stb 4, 0x154(3)
    lbz 4, 0xae(1)
    stb 0, 0x155(3)
    lbz 0, 0xaf(1)
    stb 4, 0x156(3)
    stb 6, 0xa1(1)
    stb 6, 0xa2(1)
    stb 6, 0xa3(1)
    lwz 4, 0xa0(1)
    stfd 0, 0x198(1)
    stw 4, 0xa4(1)
    lwz 4, 0x19c(1)
    stb 0, 0x157(3)
    lbz 5, 0xa4(1)
    stb 6, 0x98(1)
    lbz 0, 0xa5(1)
    stb 5, 0x158(3)
    lbz 5, 0xa6(1)
    stb 0, 0x159(3)
    lbz 0, 0xa7(1)
    stb 5, 0x15a(3)
    stb 6, 0x99(1)
    stb 6, 0x9a(1)
    stb 6, 0x9b(1)
    lwz 5, 0x98(1)
    stb 0, 0x15b(3)
    stw 5, 0x9c(1)
    lbz 5, 0x9c(1)
    lbz 0, 0x9d(1)
    stb 5, 0x15c(3)
    lbz 5, 0x9e(1)
    stb 0, 0x15d(3)
    lbz 0, 0x9f(1)
    stb 5, 0x15e(3)
    stb 0, 0x15f(3)
    lwz 3, 0x288(27)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x288(27)
    li 4, 0x0
    .4byte 0xC0220D04 # lfs f1, lbl_80543CA4@sda21(r0)
    li 5, 0x0
    lfs 0, 0x1b0(30)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    .4byte 0xC0420D08 # lfs f2, lbl_80543CA8@sda21(r0)
    lfs 1, 0x190(30)
    lfs 0, 0x1a0(30)
    fadds 1, 2, 1
    lwz 12, 0xec(12)
    fmr 4, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    li 0, 0x0
    li 6, 0xff
    li 3, 0x77
    stb 6, 0x88(1)
    addi 4, 1, 0x94
    addi 5, 1, 0x8c
    stb 6, 0x89(1)
    stb 3, 0x8a(1)
    stb 6, 0x8b(1)
    lwz 3, 0x88(1)
    stb 0, 0x90(1)
    stb 0, 0x91(1)
    stb 0, 0x92(1)
    stb 0, 0x93(1)
    lwz 0, 0x90(1)
    stw 3, 0x8c(1)
    stw 0, 0x94(1)
    lwz 3, 0x288(27)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 4, 0xff
    lwz 5, 0x288(27)
    stb 4, 0x80(1)
    stb 4, 0x81(1)
    stb 4, 0x82(1)
    stb 4, 0x83(1)
    lwz 0, 0x80(1)
    stb 4, 0x78(1)
    stw 0, 0x84(1)
    lbz 3, 0x84(1)
    stb 4, 0x79(1)
    lbz 0, 0x85(1)
    stb 3, 0x150(5)
    lbz 3, 0x86(1)
    stb 0, 0x151(5)
    lbz 0, 0x87(1)
    stb 3, 0x152(5)
    stb 4, 0x7a(1)
    stb 4, 0x7b(1)
    lwz 3, 0x78(1)
    stb 0, 0x153(5)
    stw 3, 0x7c(1)
    lbz 3, 0x7c(1)
    stb 4, 0x70(1)
    lbz 0, 0x7d(1)
    stb 3, 0x154(5)
    lbz 3, 0x7e(1)
    stb 0, 0x155(5)
    lbz 0, 0x7f(1)
    stb 3, 0x156(5)
    stb 4, 0x71(1)
    stb 4, 0x72(1)
    stb 4, 0x73(1)
    lwz 3, 0x70(1)
    stb 0, 0x157(5)
    stw 3, 0x74(1)
    lbz 3, 0x74(1)
    stb 4, 0x68(1)
    lbz 0, 0x75(1)
    stb 3, 0x158(5)
    lbz 3, 0x76(1)
    stb 0, 0x159(5)
    lbz 0, 0x77(1)
    stb 3, 0x15a(5)
    stb 4, 0x69(1)
    stb 4, 0x6a(1)
    stb 4, 0x6b(1)
    lwz 3, 0x68(1)
    stb 0, 0x15b(5)
    stw 3, 0x6c(1)
    lbz 3, 0x6c(1)
    lbz 0, 0x6d(1)
    stb 3, 0x15c(5)
    lbz 3, 0x6e(1)
    stb 0, 0x15d(5)
    lbz 0, 0x6f(1)
    stb 3, 0x15e(5)
    stb 0, 0x15f(5)
    lwz 3, 0x288(27)
    lbzx 4, 27, 29
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x288(27)
    li 4, 0x0
    .4byte 0xC0220D04 # lfs f1, lbl_80543CA4@sda21(r0)
    li 5, 0x0
    lfs 0, 0x1b0(30)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    lfs 1, 0x190(30)
    lwz 12, 0xec(12)
    lfs 2, 0x1a0(30)
    fmr 4, 3
    mtctr 12
    bctrl
    .4byte 0x48000340 # b .L_8043BB3C
L_8043B800:
    li 6, 0x0
    li 0, 0xff
    stb 6, 0x58(1)
    addi 4, 1, 0x64
    addi 5, 1, 0x5c
    stb 6, 0x59(1)
    stb 6, 0x5a(1)
    stb 0, 0x5b(1)
    lwz 3, 0x58(1)
    stb 6, 0x60(1)
    stb 6, 0x61(1)
    stb 6, 0x62(1)
    stb 6, 0x63(1)
    lwz 0, 0x60(1)
    stw 3, 0x5c(1)
    stw 0, 0x64(1)
    lwz 3, 0x28c(27)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 6, 0xff
    .4byte 0xC0020D00 # lfs f0, lbl_80543CA0@sda21(r0)
    stb 6, 0x50(1)
    fmuls 0, 0, 29
    lwz 3, 0x28c(27)
    stb 6, 0x51(1)
    stb 6, 0x52(1)
    fctiwz 0, 0
    stb 6, 0x53(1)
    lwz 0, 0x50(1)
    stb 6, 0x48(1)
    stw 0, 0x54(1)
    lbz 4, 0x54(1)
    stb 6, 0x49(1)
    lbz 0, 0x55(1)
    stb 4, 0x150(3)
    lbz 4, 0x56(1)
    stb 0, 0x151(3)
    lbz 0, 0x57(1)
    stb 4, 0x152(3)
    stb 6, 0x4a(1)
    stb 6, 0x4b(1)
    lwz 4, 0x48(1)
    stb 0, 0x153(3)
    stw 4, 0x4c(1)
    lbz 4, 0x4c(1)
    stb 6, 0x40(1)
    lbz 0, 0x4d(1)
    stb 4, 0x154(3)
    lbz 4, 0x4e(1)
    stb 0, 0x155(3)
    lbz 0, 0x4f(1)
    stb 4, 0x156(3)
    stb 6, 0x41(1)
    stb 6, 0x42(1)
    stb 6, 0x43(1)
    lwz 4, 0x40(1)
    stfd 0, 0x198(1)
    stw 4, 0x44(1)
    lwz 4, 0x19c(1)
    stb 0, 0x157(3)
    lbz 5, 0x44(1)
    stb 6, 0x38(1)
    lbz 0, 0x45(1)
    stb 5, 0x158(3)
    lbz 5, 0x46(1)
    stb 0, 0x159(3)
    lbz 0, 0x47(1)
    stb 5, 0x15a(3)
    stb 6, 0x39(1)
    stb 6, 0x3a(1)
    stb 6, 0x3b(1)
    lwz 5, 0x38(1)
    stb 0, 0x15b(3)
    stw 5, 0x3c(1)
    lbz 5, 0x3c(1)
    lbz 0, 0x3d(1)
    stb 5, 0x15c(3)
    lbz 5, 0x3e(1)
    stb 0, 0x15d(3)
    lbz 0, 0x3f(1)
    stb 5, 0x15e(3)
    stb 0, 0x15f(3)
    lwz 3, 0x28c(27)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x28c(27)
    li 4, 0x0
    .4byte 0xC0220D04 # lfs f1, lbl_80543CA4@sda21(r0)
    li 5, 0x0
    lfs 0, 0x1b0(30)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    .4byte 0xC0420D08 # lfs f2, lbl_80543CA8@sda21(r0)
    lfs 1, 0x190(30)
    lfs 0, 0x1a0(30)
    fadds 1, 2, 1
    lwz 12, 0xec(12)
    fmr 4, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    li 0, 0x0
    li 6, 0xff
    li 4, 0xd8
    li 3, 0xa1
    stb 4, 0x28(1)
    addi 4, 1, 0x34
    addi 5, 1, 0x2c
    stb 6, 0x29(1)
    stb 3, 0x2a(1)
    stb 6, 0x2b(1)
    lwz 3, 0x28(1)
    stb 0, 0x30(1)
    stb 0, 0x31(1)
    stb 0, 0x32(1)
    stb 0, 0x33(1)
    lwz 0, 0x30(1)
    stw 3, 0x2c(1)
    stw 0, 0x34(1)
    lwz 3, 0x28c(27)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    li 4, 0xff
    lwz 5, 0x28c(27)
    stb 4, 0x20(1)
    stb 4, 0x21(1)
    stb 4, 0x22(1)
    stb 4, 0x23(1)
    lwz 0, 0x20(1)
    stb 4, 0x18(1)
    stw 0, 0x24(1)
    lbz 3, 0x24(1)
    stb 4, 0x19(1)
    lbz 0, 0x25(1)
    stb 3, 0x150(5)
    lbz 3, 0x26(1)
    stb 0, 0x151(5)
    lbz 0, 0x27(1)
    stb 3, 0x152(5)
    stb 4, 0x1a(1)
    stb 4, 0x1b(1)
    lwz 3, 0x18(1)
    stb 0, 0x153(5)
    stw 3, 0x1c(1)
    lbz 3, 0x1c(1)
    stb 4, 0x10(1)
    lbz 0, 0x1d(1)
    stb 3, 0x154(5)
    lbz 3, 0x1e(1)
    stb 0, 0x155(5)
    lbz 0, 0x1f(1)
    stb 3, 0x156(5)
    stb 4, 0x11(1)
    stb 4, 0x12(1)
    stb 4, 0x13(1)
    lwz 3, 0x10(1)
    stb 0, 0x157(5)
    stw 3, 0x14(1)
    lbz 3, 0x14(1)
    stb 4, 0x8(1)
    lbz 0, 0x15(1)
    stb 3, 0x158(5)
    lbz 3, 0x16(1)
    stb 0, 0x159(5)
    lbz 0, 0x17(1)
    stb 3, 0x15a(5)
    stb 4, 0x9(1)
    stb 4, 0xa(1)
    stb 4, 0xb(1)
    lwz 3, 0x8(1)
    stb 0, 0x15b(5)
    stw 3, 0xc(1)
    lbz 3, 0xc(1)
    lbz 0, 0xd(1)
    stb 3, 0x15c(5)
    lbz 3, 0xe(1)
    stb 0, 0x15d(5)
    lbz 0, 0xf(1)
    stb 3, 0x15e(5)
    stb 0, 0x15f(5)
    lwz 3, 0x28c(27)
    lbzx 4, 27, 29
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x28c(27)
    li 4, 0x0
    .4byte 0xC0220D04 # lfs f1, lbl_80543CA4@sda21(r0)
    li 5, 0x0
    lfs 0, 0x1b0(30)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    lfs 1, 0x190(30)
    lwz 12, 0xec(12)
    lfs 2, 0x1a0(30)
    fmr 4, 3
    mtctr 12
    bctrl
L_8043BB3C:
    addi 30, 30, 0x4
    addi 28, 28, 0x1
L_8043BB44:
    lbz 0, 0x253(27)
    cmpw 28, 0
    .4byte 0x4180F27C # blt .L_8043ADC8
    li 0, 0x0
    stb 0, 0x253(27)
L_8043BB58:
    psq_l 31, 0x1e8(1), 0, 0
    lfd 31, 0x1e0(1)
    psq_l 30, 0x1d8(1), 0, 0
    lfd 30, 0x1d0(1)
    psq_l 29, 0x1c8(1), 0, 0
    lfd 29, 0x1c0(1)
    lmw 27, 0x1ac(1)
    lwz 0, 0x1f4(1)
    mtlr 0
    addi 1, 1, 0x1f0
    blr

fn_8043BB84:
    stwu 1, -0x1b0(1)
    mflr 0
    stw 0, 0x1b4(1)
    stfd 31, 0x1a0(1)
    psq_st 31, 0x1a8(1), 0, 0
    stfd 30, 0x190(1)
    psq_st 30, 0x198(1), 0, 0
    stfd 29, 0x180(1)
    psq_st 29, 0x188(1), 0, 0
    stfd 28, 0x170(1)
    psq_st 28, 0x178(1), 0, 0
    stfd 27, 0x160(1)
    psq_st 27, 0x168(1), 0, 0
    stmw 25, 0x144(1)
    .4byte 0x880D9314 # lbz r0, lbl_8053AED4@sda21(r0)
    mr 25, 3
    extsb. 0, 0
    .4byte 0x408200D0 # bne .L_8043BC98
    li 28, 0xff
    li 26, 0x0
    li 6, 0xe1
    li 27, 0xd2
    li 10, 0xb4
    li 9, 0xfa
    li 8, 0x64
    li 7, 0x32
    li 5, 0x6e
    li 4, 0xf0
    li 3, 0x82
    lis 11, lbl_8052C5D8@ha
    li 0, 0x1
    stb 28, 0x134(1)
    addi 12, 11, lbl_8052C5D8@l
    stb 27, 0x135(1)
    stb 26, 0x136(1)
    stb 28, 0x137(1)
    lwz 11, 0x134(1)
    stb 10, 0x130(1)
    stb 28, 0x131(1)
    stb 26, 0x132(1)
    stb 28, 0x133(1)
    lwz 10, 0x130(1)
    stb 9, 0x12c(1)
    stb 8, 0x12d(1)
    stb 7, 0x12e(1)
    stb 28, 0x12f(1)
    lwz 7, 0x12c(1)
    stb 5, 0x128(1)
    stb 6, 0x129(1)
    stb 4, 0x12a(1)
    stb 28, 0x12b(1)
    lwz 5, 0x128(1)
    stb 6, 0x124(1)
    stb 3, 0x125(1)
    stb 28, 0x126(1)
    stb 28, 0x127(1)
    lwz 4, 0x124(1)
    stb 28, 0x120(1)
    stb 28, 0x121(1)
    stb 28, 0x122(1)
    stb 28, 0x123(1)
    lwz 3, 0x120(1)
    stw 11, 0x0(12)
    stw 10, 0x4(12)
    stw 7, 0x8(12)
    stw 5, 0xc(12)
    stw 4, 0x10(12)
    stw 3, 0x14(12)
    .4byte 0x980D9314 # stb r0, lbl_8053AED4@sda21(r0)
L_8043BC98:
    lbz 0, 0x252(25)
    cmplwi 0, 0x0
    .4byte 0x41820E48 # beq .L_8043CAE8
    .4byte 0xC3C20D20 # lfs f30, lbl_80543CC0@sda21(r0)
    mr 29, 25
    .4byte 0xCBA20D10 # lfd f29, lbl_80543CB0@sda21(r0)
    li 27, 0x0
    .4byte 0xC3820CEC # lfs f28, lbl_80543C8C@sda21(r0)
    lis 31, 0x4330
    .4byte 0xC3620D00 # lfs f27, lbl_80543CA0@sda21(r0)
    .4byte 0x48000E14 # b .L_8043CAD4
L_8043BCC4:
    add 28, 25, 27
    stw 31, 0x138(1)
    lbz 0, 0x244(28)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stw 0, 0x13c(1)
    lfd 0, 0x138(1)
    fsubs 0, 0, 29
    fdivs 31, 0, 28
    bl fn_8013B490
    fmuls 31, 27, 31
    mr 30, 28
    li 26, 0x0
L_8043BCF4:
    lbz 0, 0x1f4(30)
    cmplwi 0, 0x9
    .4byte 0x41810DB0 # bgt .L_8043CAAC
    lis 3, jumptable_804B192C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804B192C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 6, 0x0
    li 0, 0xff
    stb 6, 0x110(1)
    addi 4, 1, 0x11c
    addi 5, 1, 0x114
    stb 6, 0x111(1)
    stb 6, 0x112(1)
    stb 0, 0x113(1)
    lwz 3, 0x110(1)
    stb 6, 0x118(1)
    stb 6, 0x119(1)
    stb 6, 0x11a(1)
    stb 6, 0x11b(1)
    lwz 0, 0x118(1)
    stw 3, 0x114(1)
    stw 0, 0x11c(1)
    lwz 3, 0x258(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x258(25)
    fctiwz 0, 31
    lwz 12, 0x0(3)
    stfd 0, 0x138(1)
    lwz 12, 0x24(12)
    lwz 4, 0x13c(1)
    mtctr 12
    bctrl
    lwz 3, 0x258(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    .4byte 0xC0420D08 # lfs f2, lbl_80543CA8@sda21(r0)
    lfs 1, 0x118(29)
    lfs 0, 0x140(29)
    fadds 1, 2, 1
    lwz 12, 0xec(12)
    fmr 4, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    li 0, 0x0
    lbz 4, 0x23a(28)
    lis 3, lbl_8052C5D8@ha
    stb 0, 0x108(1)
    slwi 5, 4, 2
    addi 4, 1, 0x10c
    addi 3, 3, lbl_8052C5D8@l
    stb 0, 0x109(1)
    lwzx 3, 3, 5
    addi 5, 1, 0x104
    stb 0, 0x10a(1)
    stb 0, 0x10b(1)
    lwz 0, 0x108(1)
    stw 3, 0x104(1)
    stw 0, 0x10c(1)
    lwz 3, 0x258(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x258(25)
    lbz 4, 0x244(28)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x258(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    lfs 1, 0x118(29)
    lwz 12, 0xec(12)
    lfs 2, 0x140(29)
    fmr 4, 3
    mtctr 12
    bctrl
    .4byte 0x48000C3C # b .L_8043CAAC
    li 6, 0x0
    li 0, 0xff
    stb 6, 0xf4(1)
    addi 4, 1, 0x100
    addi 5, 1, 0xf8
    stb 6, 0xf5(1)
    stb 6, 0xf6(1)
    stb 0, 0xf7(1)
    lwz 3, 0xf4(1)
    stb 6, 0xfc(1)
    stb 6, 0xfd(1)
    stb 6, 0xfe(1)
    stb 6, 0xff(1)
    lwz 0, 0xfc(1)
    stw 3, 0xf8(1)
    stw 0, 0x100(1)
    lwz 3, 0x25c(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x25c(25)
    fctiwz 0, 31
    lwz 12, 0x0(3)
    stfd 0, 0x138(1)
    lwz 12, 0x24(12)
    lwz 4, 0x13c(1)
    mtctr 12
    bctrl
    lwz 3, 0x25c(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    .4byte 0xC0420D08 # lfs f2, lbl_80543CA8@sda21(r0)
    lfs 1, 0x118(29)
    lfs 0, 0x140(29)
    fadds 1, 2, 1
    lwz 12, 0xec(12)
    fmr 4, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    li 0, 0x0
    lbz 4, 0x23a(28)
    lis 3, lbl_8052C5D8@ha
    stb 0, 0xec(1)
    slwi 5, 4, 2
    addi 4, 1, 0xf0
    addi 3, 3, lbl_8052C5D8@l
    stb 0, 0xed(1)
    lwzx 3, 3, 5
    addi 5, 1, 0xe8
    stb 0, 0xee(1)
    stb 0, 0xef(1)
    lwz 0, 0xec(1)
    stw 3, 0xe8(1)
    stw 0, 0xf0(1)
    lwz 3, 0x25c(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x25c(25)
    lbz 4, 0x244(28)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x25c(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    lfs 1, 0x118(29)
    lwz 12, 0xec(12)
    lfs 2, 0x140(29)
    fmr 4, 3
    mtctr 12
    bctrl
    .4byte 0x48000AE0 # b .L_8043CAAC
    li 6, 0x0
    li 0, 0xff
    stb 6, 0xd8(1)
    addi 4, 1, 0xe4
    addi 5, 1, 0xdc
    stb 6, 0xd9(1)
    stb 6, 0xda(1)
    stb 0, 0xdb(1)
    lwz 3, 0xd8(1)
    stb 6, 0xe0(1)
    stb 6, 0xe1(1)
    stb 6, 0xe2(1)
    stb 6, 0xe3(1)
    lwz 0, 0xe0(1)
    stw 3, 0xdc(1)
    stw 0, 0xe4(1)
    lwz 3, 0x260(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x260(25)
    fctiwz 0, 31
    lwz 12, 0x0(3)
    stfd 0, 0x138(1)
    lwz 12, 0x24(12)
    lwz 4, 0x13c(1)
    mtctr 12
    bctrl
    lwz 3, 0x260(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    .4byte 0xC0420D08 # lfs f2, lbl_80543CA8@sda21(r0)
    lfs 1, 0x118(29)
    lfs 0, 0x140(29)
    fadds 1, 2, 1
    lwz 12, 0xec(12)
    fmr 4, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    li 0, 0x0
    lbz 4, 0x23a(28)
    lis 3, lbl_8052C5D8@ha
    stb 0, 0xd0(1)
    slwi 5, 4, 2
    addi 4, 1, 0xd4
    addi 3, 3, lbl_8052C5D8@l
    stb 0, 0xd1(1)
    lwzx 3, 3, 5
    addi 5, 1, 0xcc
    stb 0, 0xd2(1)
    stb 0, 0xd3(1)
    lwz 0, 0xd0(1)
    stw 3, 0xcc(1)
    stw 0, 0xd4(1)
    lwz 3, 0x260(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x260(25)
    lbz 4, 0x244(28)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x260(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    lfs 1, 0x118(29)
    lwz 12, 0xec(12)
    lfs 2, 0x140(29)
    fmr 4, 3
    mtctr 12
    bctrl
    .4byte 0x48000984 # b .L_8043CAAC
    li 6, 0x0
    li 0, 0xff
    stb 6, 0xbc(1)
    addi 4, 1, 0xc8
    addi 5, 1, 0xc0
    stb 6, 0xbd(1)
    stb 6, 0xbe(1)
    stb 0, 0xbf(1)
    lwz 3, 0xbc(1)
    stb 6, 0xc4(1)
    stb 6, 0xc5(1)
    stb 6, 0xc6(1)
    stb 6, 0xc7(1)
    lwz 0, 0xc4(1)
    stw 3, 0xc0(1)
    stw 0, 0xc8(1)
    lwz 3, 0x264(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x264(25)
    fctiwz 0, 31
    lwz 12, 0x0(3)
    stfd 0, 0x138(1)
    lwz 12, 0x24(12)
    lwz 4, 0x13c(1)
    mtctr 12
    bctrl
    lwz 3, 0x264(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    .4byte 0xC0420D08 # lfs f2, lbl_80543CA8@sda21(r0)
    lfs 1, 0x118(29)
    lfs 0, 0x140(29)
    fadds 1, 2, 1
    lwz 12, 0xec(12)
    fmr 4, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    li 0, 0x0
    lbz 4, 0x23a(28)
    lis 3, lbl_8052C5D8@ha
    stb 0, 0xb4(1)
    slwi 5, 4, 2
    addi 4, 1, 0xb8
    addi 3, 3, lbl_8052C5D8@l
    stb 0, 0xb5(1)
    lwzx 3, 3, 5
    addi 5, 1, 0xb0
    stb 0, 0xb6(1)
    stb 0, 0xb7(1)
    lwz 0, 0xb4(1)
    stw 3, 0xb0(1)
    stw 0, 0xb8(1)
    lwz 3, 0x264(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x264(25)
    lbz 4, 0x244(28)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x264(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    lfs 1, 0x118(29)
    lwz 12, 0xec(12)
    lfs 2, 0x140(29)
    fmr 4, 3
    mtctr 12
    bctrl
    .4byte 0x48000828 # b .L_8043CAAC
    li 6, 0x0
    li 0, 0xff
    stb 6, 0xa0(1)
    addi 4, 1, 0xac
    addi 5, 1, 0xa4
    stb 6, 0xa1(1)
    stb 6, 0xa2(1)
    stb 0, 0xa3(1)
    lwz 3, 0xa0(1)
    stb 6, 0xa8(1)
    stb 6, 0xa9(1)
    stb 6, 0xaa(1)
    stb 6, 0xab(1)
    lwz 0, 0xa8(1)
    stw 3, 0xa4(1)
    stw 0, 0xac(1)
    lwz 3, 0x268(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x268(25)
    fctiwz 0, 31
    lwz 12, 0x0(3)
    stfd 0, 0x138(1)
    lwz 12, 0x24(12)
    lwz 4, 0x13c(1)
    mtctr 12
    bctrl
    lwz 3, 0x268(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    .4byte 0xC0420D08 # lfs f2, lbl_80543CA8@sda21(r0)
    lfs 1, 0x118(29)
    lfs 0, 0x140(29)
    fadds 1, 2, 1
    lwz 12, 0xec(12)
    fmr 4, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    li 0, 0x0
    lbz 4, 0x23a(28)
    lis 3, lbl_8052C5D8@ha
    stb 0, 0x98(1)
    slwi 5, 4, 2
    addi 4, 1, 0x9c
    addi 3, 3, lbl_8052C5D8@l
    stb 0, 0x99(1)
    lwzx 3, 3, 5
    addi 5, 1, 0x94
    stb 0, 0x9a(1)
    stb 0, 0x9b(1)
    lwz 0, 0x98(1)
    stw 3, 0x94(1)
    stw 0, 0x9c(1)
    lwz 3, 0x268(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x268(25)
    lbz 4, 0x244(28)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x268(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    lfs 1, 0x118(29)
    lwz 12, 0xec(12)
    lfs 2, 0x140(29)
    fmr 4, 3
    mtctr 12
    bctrl
    .4byte 0x480006CC # b .L_8043CAAC
    li 6, 0x0
    li 0, 0xff
    stb 6, 0x84(1)
    addi 4, 1, 0x90
    addi 5, 1, 0x88
    stb 6, 0x85(1)
    stb 6, 0x86(1)
    stb 0, 0x87(1)
    lwz 3, 0x84(1)
    stb 6, 0x8c(1)
    stb 6, 0x8d(1)
    stb 6, 0x8e(1)
    stb 6, 0x8f(1)
    lwz 0, 0x8c(1)
    stw 3, 0x88(1)
    stw 0, 0x90(1)
    lwz 3, 0x26c(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x26c(25)
    fctiwz 0, 31
    lwz 12, 0x0(3)
    stfd 0, 0x138(1)
    lwz 12, 0x24(12)
    lwz 4, 0x13c(1)
    mtctr 12
    bctrl
    lwz 3, 0x26c(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    .4byte 0xC0420D08 # lfs f2, lbl_80543CA8@sda21(r0)
    lfs 1, 0x118(29)
    lfs 0, 0x140(29)
    fadds 1, 2, 1
    lwz 12, 0xec(12)
    fmr 4, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    li 0, 0x0
    lbz 4, 0x23a(28)
    lis 3, lbl_8052C5D8@ha
    stb 0, 0x7c(1)
    slwi 5, 4, 2
    addi 4, 1, 0x80
    addi 3, 3, lbl_8052C5D8@l
    stb 0, 0x7d(1)
    lwzx 3, 3, 5
    addi 5, 1, 0x78
    stb 0, 0x7e(1)
    stb 0, 0x7f(1)
    lwz 0, 0x7c(1)
    stw 3, 0x78(1)
    stw 0, 0x80(1)
    lwz 3, 0x26c(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x26c(25)
    lbz 4, 0x244(28)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x26c(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    lfs 1, 0x118(29)
    lwz 12, 0xec(12)
    lfs 2, 0x140(29)
    fmr 4, 3
    mtctr 12
    bctrl
    .4byte 0x48000570 # b .L_8043CAAC
    li 6, 0x0
    li 0, 0xff
    stb 6, 0x68(1)
    addi 4, 1, 0x74
    addi 5, 1, 0x6c
    stb 6, 0x69(1)
    stb 6, 0x6a(1)
    stb 0, 0x6b(1)
    lwz 3, 0x68(1)
    stb 6, 0x70(1)
    stb 6, 0x71(1)
    stb 6, 0x72(1)
    stb 6, 0x73(1)
    lwz 0, 0x70(1)
    stw 3, 0x6c(1)
    stw 0, 0x74(1)
    lwz 3, 0x270(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x270(25)
    fctiwz 0, 31
    lwz 12, 0x0(3)
    stfd 0, 0x138(1)
    lwz 12, 0x24(12)
    lwz 4, 0x13c(1)
    mtctr 12
    bctrl
    lwz 3, 0x270(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    .4byte 0xC0420D08 # lfs f2, lbl_80543CA8@sda21(r0)
    lfs 1, 0x118(29)
    lfs 0, 0x140(29)
    fadds 1, 2, 1
    lwz 12, 0xec(12)
    fmr 4, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    li 0, 0x0
    lbz 4, 0x23a(28)
    lis 3, lbl_8052C5D8@ha
    stb 0, 0x60(1)
    slwi 5, 4, 2
    addi 4, 1, 0x64
    addi 3, 3, lbl_8052C5D8@l
    stb 0, 0x61(1)
    lwzx 3, 3, 5
    addi 5, 1, 0x5c
    stb 0, 0x62(1)
    stb 0, 0x63(1)
    lwz 0, 0x60(1)
    stw 3, 0x5c(1)
    stw 0, 0x64(1)
    lwz 3, 0x270(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x270(25)
    lbz 4, 0x244(28)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x270(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    lfs 1, 0x118(29)
    lwz 12, 0xec(12)
    lfs 2, 0x140(29)
    fmr 4, 3
    mtctr 12
    bctrl
    .4byte 0x48000414 # b .L_8043CAAC
    li 6, 0x0
    li 0, 0xff
    stb 6, 0x4c(1)
    addi 4, 1, 0x58
    addi 5, 1, 0x50
    stb 6, 0x4d(1)
    stb 6, 0x4e(1)
    stb 0, 0x4f(1)
    lwz 3, 0x4c(1)
    stb 6, 0x54(1)
    stb 6, 0x55(1)
    stb 6, 0x56(1)
    stb 6, 0x57(1)
    lwz 0, 0x54(1)
    stw 3, 0x50(1)
    stw 0, 0x58(1)
    lwz 3, 0x274(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x274(25)
    fctiwz 0, 31
    lwz 12, 0x0(3)
    stfd 0, 0x138(1)
    lwz 12, 0x24(12)
    lwz 4, 0x13c(1)
    mtctr 12
    bctrl
    lwz 3, 0x274(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    .4byte 0xC0420D08 # lfs f2, lbl_80543CA8@sda21(r0)
    lfs 1, 0x118(29)
    lfs 0, 0x140(29)
    fadds 1, 2, 1
    lwz 12, 0xec(12)
    fmr 4, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    li 0, 0x0
    lbz 4, 0x23a(28)
    lis 3, lbl_8052C5D8@ha
    stb 0, 0x44(1)
    slwi 5, 4, 2
    addi 4, 1, 0x48
    addi 3, 3, lbl_8052C5D8@l
    stb 0, 0x45(1)
    lwzx 3, 3, 5
    addi 5, 1, 0x40
    stb 0, 0x46(1)
    stb 0, 0x47(1)
    lwz 0, 0x44(1)
    stw 3, 0x40(1)
    stw 0, 0x48(1)
    lwz 3, 0x274(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x274(25)
    lbz 4, 0x244(28)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x274(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    lfs 1, 0x118(29)
    lwz 12, 0xec(12)
    lfs 2, 0x140(29)
    fmr 4, 3
    mtctr 12
    bctrl
    .4byte 0x480002B8 # b .L_8043CAAC
    li 6, 0x0
    li 0, 0xff
    stb 6, 0x30(1)
    addi 4, 1, 0x3c
    addi 5, 1, 0x34
    stb 6, 0x31(1)
    stb 6, 0x32(1)
    stb 0, 0x33(1)
    lwz 3, 0x30(1)
    stb 6, 0x38(1)
    stb 6, 0x39(1)
    stb 6, 0x3a(1)
    stb 6, 0x3b(1)
    lwz 0, 0x38(1)
    stw 3, 0x34(1)
    stw 0, 0x3c(1)
    lwz 3, 0x278(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x278(25)
    fctiwz 0, 31
    lwz 12, 0x0(3)
    stfd 0, 0x138(1)
    lwz 12, 0x24(12)
    lwz 4, 0x13c(1)
    mtctr 12
    bctrl
    lwz 3, 0x278(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    .4byte 0xC0420D08 # lfs f2, lbl_80543CA8@sda21(r0)
    lfs 1, 0x118(29)
    lfs 0, 0x140(29)
    fadds 1, 2, 1
    lwz 12, 0xec(12)
    fmr 4, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    li 0, 0x0
    lbz 4, 0x23a(28)
    lis 3, lbl_8052C5D8@ha
    stb 0, 0x28(1)
    slwi 5, 4, 2
    addi 4, 1, 0x2c
    addi 3, 3, lbl_8052C5D8@l
    stb 0, 0x29(1)
    lwzx 3, 3, 5
    addi 5, 1, 0x24
    stb 0, 0x2a(1)
    stb 0, 0x2b(1)
    lwz 0, 0x28(1)
    stw 3, 0x24(1)
    stw 0, 0x2c(1)
    lwz 3, 0x278(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x278(25)
    lbz 4, 0x244(28)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x278(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    lfs 1, 0x118(29)
    lwz 12, 0xec(12)
    lfs 2, 0x140(29)
    fmr 4, 3
    mtctr 12
    bctrl
    .4byte 0x4800015C # b .L_8043CAAC
    li 6, 0x0
    li 0, 0xff
    stb 6, 0x14(1)
    addi 4, 1, 0x20
    addi 5, 1, 0x18
    stb 6, 0x15(1)
    stb 6, 0x16(1)
    stb 0, 0x17(1)
    lwz 3, 0x14(1)
    stb 6, 0x1c(1)
    stb 6, 0x1d(1)
    stb 6, 0x1e(1)
    stb 6, 0x1f(1)
    lwz 0, 0x1c(1)
    stw 3, 0x18(1)
    stw 0, 0x20(1)
    lwz 3, 0x27c(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x27c(25)
    fctiwz 0, 31
    lwz 12, 0x0(3)
    stfd 0, 0x138(1)
    lwz 12, 0x24(12)
    lwz 4, 0x13c(1)
    mtctr 12
    bctrl
    lwz 3, 0x27c(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    .4byte 0xC0420D08 # lfs f2, lbl_80543CA8@sda21(r0)
    lfs 1, 0x118(29)
    lfs 0, 0x140(29)
    fadds 1, 2, 1
    lwz 12, 0xec(12)
    fmr 4, 3
    fadds 2, 2, 0
    mtctr 12
    bctrl
    li 0, 0x0
    lbz 4, 0x23a(28)
    lis 3, lbl_8052C5D8@ha
    stb 0, 0xc(1)
    slwi 5, 4, 2
    addi 4, 1, 0x10
    addi 3, 3, lbl_8052C5D8@l
    stb 0, 0xd(1)
    lwzx 3, 3, 5
    addi 5, 1, 0x8
    stb 0, 0xe(1)
    stb 0, 0xf(1)
    lwz 0, 0xc(1)
    stw 3, 0x8(1)
    stw 0, 0x10(1)
    lwz 3, 0x27c(25)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x27c(25)
    lbz 4, 0x244(28)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x27c(25)
    li 4, 0x0
    .4byte 0xC0220D1C # lfs f1, lbl_80543CBC@sda21(r0)
    li 5, 0x0
    lfs 0, 0x168(29)
    li 6, 0x0
    lwz 12, 0x0(3)
    fmuls 3, 1, 0
    lfs 1, 0x118(29)
    lwz 12, 0xec(12)
    lfs 2, 0x140(29)
    fmr 4, 3
    mtctr 12
    bctrl
L_8043CAAC:
    lfs 1, 0x168(29)
    addi 26, 26, 0x1
    lfs 0, 0x118(29)
    cmpwi 26, 0x5
    addi 30, 30, 0xa
    fmadds 0, 30, 1, 0
    stfs 0, 0x118(29)
    .4byte 0x4180F22C # blt .L_8043BCF4
    addi 29, 29, 0x4
    addi 27, 27, 0x1
L_8043CAD4:
    lbz 0, 0x252(25)
    cmpw 27, 0
    .4byte 0x4180F1E8 # blt .L_8043BCC4
    li 0, 0x0
    stb 0, 0x252(25)
L_8043CAE8:
    psq_l 31, 0x1a8(1), 0, 0
    lfd 31, 0x1a0(1)
    psq_l 30, 0x198(1), 0, 0
    lfd 30, 0x190(1)
    psq_l 29, 0x188(1), 0, 0
    lfd 29, 0x180(1)
    psq_l 28, 0x178(1), 0, 0
    lfd 28, 0x170(1)
    psq_l 27, 0x168(1), 0, 0
    lfd 27, 0x160(1)
    lmw 25, 0x144(1)
    lwz 0, 0x1b4(1)
    mtlr 0
    addi 1, 1, 0x1b0
    blr

fn_8043CB24:
    stwu 1, -0x20(1)
    mr 9, 3
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    lbz 30, 0x252(3)
    cmplwi 30, 0xa
    .4byte 0x40800250 # bge .L_8043CD8C
    clrlwi 3, 7, 24
    lis 12, 0x4330
    srwi 10, 3, 31
    clrlwi 0, 7, 31
    xor 0, 0, 10
    .4byte 0xC0A20D1C # lfs f5, lbl_80543CBC@sda21(r0)
    subf 0, 10, 0
    extrwi 11, 7, 7, 24
    xoris 0, 0, 0x8000
    stw 12, 0x10(1)
    xoris 31, 11, 0x8000
    clrlslwi 10, 30, 24, 2
    stw 0, 0x14(1)
    clrlwi. 0, 8, 24
    .4byte 0xC8E20CF8 # lfd f7, lbl_80543C98@sda21(r0)
    add 11, 9, 10
    lfd 4, 0x10(1)
    fmuls 0, 5, 3
    .4byte 0xC0C20D18 # lfs f6, lbl_80543CB8@sda21(r0)
    li 10, 0xff
    fsubs 4, 4, 7
    stw 31, 0xc(1)
    fnmsubs 0, 6, 0, 2
    stw 12, 0x8(1)
    li 8, 0x1
    fmuls 2, 5, 4
    lfd 4, 0x8(1)
    li 0, 0x0
    .4byte 0xC1020D20 # lfs f8, lbl_80543CC0@sda21(r0)
    fsubs 4, 4, 7
    fmuls 2, 2, 3
    fmuls 4, 8, 4
    fnmsubs 1, 6, 2, 1
    fnmsubs 1, 4, 3, 1
    stfs 1, 0x118(11)
    lbz 11, 0x252(9)
    slwi 11, 11, 2
    add 11, 9, 11
    stfs 0, 0x140(11)
    lbz 11, 0x252(9)
    slwi 11, 11, 2
    add 11, 9, 11
    stfs 3, 0x168(11)
    lbz 11, 0x252(9)
    add 11, 9, 11
    stb 5, 0x244(11)
    lbz 5, 0x252(9)
    add 5, 9, 5
    stb 7, 0x226(5)
    lbz 5, 0x252(9)
    add 5, 9, 5
    stb 10, 0x1f4(5)
    lbz 5, 0x252(9)
    add 5, 9, 5
    stb 10, 0x1fe(5)
    lbz 5, 0x252(9)
    add 5, 9, 5
    stb 10, 0x208(5)
    lbz 5, 0x252(9)
    add 5, 9, 5
    stb 10, 0x212(5)
    lbz 5, 0x252(9)
    add 5, 9, 5
    stb 10, 0x21c(5)
    .4byte 0x41820008 # beq .L_8043CC48
    li 0, 0x1
L_8043CC48:
    cmpwi 3, 0x0
    li 11, 0x0
    .4byte 0x40810050 # ble .L_8043CCA0
    cmpwi 3, 0x8
    subi 10, 3, 0x8
    .4byte 0x4081002C # ble .L_8043CC88
    addi 5, 10, 0x7
    lis 7, 0x5f6
    srwi 5, 5, 3
    subi 7, 7, 0x1f00
    mtctr 5
    cmpwi 10, 0x0
    .4byte 0x40810010 # ble .L_8043CC88
L_8043CC7C:
    mullw 8, 8, 7
    addi 11, 11, 0x8
    .4byte 0x4200FFF8 # bdnz .L_8043CC7C
L_8043CC88:
    subf 5, 11, 3
    mtctr 5
    cmpw 11, 3
    .4byte 0x4080000C # bge .L_8043CCA0
L_8043CC98:
    mulli 8, 8, 0xa
    .4byte 0x4200FFFC # bdnz .L_8043CC98
L_8043CCA0:
    subi 5, 8, 0x1
    cmpw 4, 5
    .4byte 0x40810008 # ble .L_8043CCB0
    mr 4, 5
L_8043CCB0:
    cmpwi 4, 0x0
    .4byte 0x40800008 # bge .L_8043CCBC
    li 4, 0x0
L_8043CCBC:
    lis 5, 0x6666
    subi 12, 3, 0x1
    addi 10, 5, 0x6667
    mr 11, 9
    mulhw 5, 10, 8
    srawi 5, 5, 2
    srwi 7, 5, 31
    add 8, 5, 7
    mtctr 12
    cmpwi 12, 0x0
    .4byte 0x40810064 # ble .L_8043CD48
L_8043CCE8:
    divw 7, 4, 8
    clrlwi. 5, 0, 24
    mullw 5, 7, 8
    subf 4, 5, 4
    .4byte 0x40820020 # bne .L_8043CD18
    cmpwi 7, 0x0
    .4byte 0x40820018 # bne .L_8043CD18
    lbz 5, 0x252(9)
    li 7, 0xff
    addi 5, 5, 0x1f4
    stbx 7, 11, 5
    .4byte 0x4800001C # b .L_8043CD30
L_8043CD18:
    clrlwi. 5, 0, 24
    .4byte 0x40820008 # bne .L_8043CD24
    li 0, 0x1
L_8043CD24:
    lbz 5, 0x252(9)
    addi 5, 5, 0x1f4
    stbx 7, 11, 5
L_8043CD30:
    mulhw 5, 10, 8
    addi 11, 11, 0xa
    srawi 5, 5, 2
    srwi 7, 5, 31
    add 8, 5, 7
    .4byte 0x4200FFA4 # bdnz .L_8043CCE8
L_8043CD48:
    mulli 5, 3, 0xa
    clrlwi 0, 6, 24
    lbz 3, 0x252(9)
    cmplwi 0, 0x5
    add 0, 9, 5
    add 3, 0, 3
    stb 4, 0x1ea(3)
    .4byte 0x40810008 # ble .L_8043CD6C
    li 6, 0x5
L_8043CD6C:
    lbz 0, 0x252(9)
    li 3, 0x1
    add 4, 9, 0
    stb 6, 0x23a(4)
    lbz 4, 0x252(9)
    addi 0, 4, 0x1
    stb 0, 0x252(9)
    .4byte 0x48000008 # b .L_8043CD90
L_8043CD8C:
    li 3, 0x0
L_8043CD90:
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    addi 1, 1, 0x20
    blr

fn_8043CDA0:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    lbz 0, 0x10c(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8043CDE8
    .4byte 0xC3E20CE8 # lfs f31, lbl_80543C88@sda21(r0)
    .4byte 0xC3C20D24 # lfs f30, lbl_80543CC4@sda21(r0)
    .4byte 0x4800001C # b .L_8043CE00
L_8043CDE8:
    lwz 3, 0x64(28)
    .4byte 0xC0420D28 # lfs f2, lbl_80543CC8@sda21(r0)
    lfs 1, 0xc(3)
    .4byte 0xC0020D24 # lfs f0, lbl_80543CC4@sda21(r0)
    fsubs 31, 2, 1
    fsubs 30, 31, 0
L_8043CE00:
    fmr 1, 31
    lwz 3, 0x40(28)
    fmr 2, 30
    li 4, 0xb
    li 5, 0x0
    bl fn_80402940
    mr 31, 3
    addi 30, 28, 0x4
    li 29, 0x1
L_8043CE24:
    fmr 1, 31
    lwz 3, 0x40(30)
    fmr 2, 30
    li 4, 0xb
    li 5, 0x0
    bl fn_80402940
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0xc
    .4byte 0x4180FFDC # blt .L_8043CE24
    clrlwi. 0, 31, 24
    .4byte 0x41820020 # beq .L_8043CE70
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 0, 0x0
    stb 0, 0x10a(3)
    stw 0, 0xfc(3)
    stw 0, 0xe8(3)
    stw 0, 0x100(3)
    stb 0, 0x10b(28)
L_8043CE70:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x44(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8043CEA0:
    lha 4, 0x104(3)
    subi 0, 4, 0x1
    sth 0, 0x104(3)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 0, 0x4c(4)
    cmpwi 0, 0x7
    .4byte 0x4182000C # beq .L_8043CEC4
    li 0, 0x0
    sth 0, 0x104(3)
L_8043CEC4:
    lha 0, 0x104(3)
    cmpwi 0, 0x0
    bgtlr
    lwz 4, 0x40(3)
    li 5, 0x0
    li 0, 0x3
    sth 5, 0x22(4)
    lwz 4, 0x44(3)
    sth 5, 0x22(4)
    lwz 4, 0x48(3)
    sth 5, 0x22(4)
    lwz 4, 0x4c(3)
    sth 5, 0x22(4)
    lwz 4, 0x50(3)
    sth 5, 0x22(4)
    lwz 4, 0x54(3)
    sth 5, 0x22(4)
    lwz 4, 0x58(3)
    sth 5, 0x22(4)
    lwz 4, 0x5c(3)
    sth 5, 0x22(4)
    lwz 4, 0x60(3)
    sth 5, 0x22(4)
    lwz 4, 0x64(3)
    sth 5, 0x22(4)
    lwz 4, 0x68(3)
    sth 5, 0x22(4)
    lwz 4, 0x6c(3)
    sth 5, 0x22(4)
    stb 0, 0x10b(3)
    blr

fn_8043CF40:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    lbz 0, 0x10c(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8043CF88
    .4byte 0xC3E20D24 # lfs f31, lbl_80543CC4@sda21(r0)
    .4byte 0xC3C20CE8 # lfs f30, lbl_80543C88@sda21(r0)
    .4byte 0x4800001C # b .L_8043CFA0
L_8043CF88:
    lwz 3, 0x64(28)
    .4byte 0xC0420D28 # lfs f2, lbl_80543CC8@sda21(r0)
    lfs 1, 0xc(3)
    .4byte 0xC0020D24 # lfs f0, lbl_80543CC4@sda21(r0)
    fsubs 30, 2, 1
    fsubs 31, 30, 0
L_8043CFA0:
    fmr 1, 31
    lwz 3, 0x40(28)
    fmr 2, 30
    li 4, 0x13
    li 5, 0x0
    bl fn_80402940
    mr 31, 3
    addi 30, 28, 0x4
    li 29, 0x1
L_8043CFC4:
    fmr 1, 31
    lwz 3, 0x40(30)
    fmr 2, 30
    li 4, 0x13
    li 5, 0x0
    bl fn_80402940
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0xc
    .4byte 0x4180FFDC # blt .L_8043CFC4
    clrlwi. 0, 31, 24
    .4byte 0x41820014 # beq .L_8043D004
    li 3, 0xa0
    li 0, 0x2
    sth 3, 0x104(28)
    stb 0, 0x10b(28)
L_8043D004:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x44(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8043D034:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    stw 28, 0x50(1)
    .4byte 0x808D9310 # lwz r4, lbl_8053AED0@sda21(r0)
    mr 28, 3
    lbz 0, 0x10a(4)
    cmplwi 0, 0x0
    .4byte 0x418202FC # beq .L_8043D36C
    lwz 4, 0x40(28)
    li 0, 0x0
    .4byte 0xC0420D2C # lfs f2, lbl_80543CCC@sda21(r0)
    addi 3, 28, 0x78
    sth 0, 0x22(4)
    lwz 4, 0x44(28)
    sth 0, 0x22(4)
    lwz 4, 0x48(28)
    sth 0, 0x22(4)
    lwz 4, 0x4c(28)
    sth 0, 0x22(4)
    lwz 4, 0x50(28)
    sth 0, 0x22(4)
    lwz 4, 0x54(28)
    sth 0, 0x22(4)
    lwz 4, 0x58(28)
    sth 0, 0x22(4)
    lwz 4, 0x5c(28)
    sth 0, 0x22(4)
    lwz 4, 0x60(28)
    sth 0, 0x22(4)
    lwz 4, 0x64(28)
    sth 0, 0x22(4)
    lwz 4, 0x68(28)
    sth 0, 0x22(4)
    lwz 4, 0x6c(28)
    sth 0, 0x22(4)
    .4byte 0x80CD9310 # lwz r6, lbl_8053AED0@sda21(r0)
    lwz 5, 0x70(28)
    lwz 4, 0xe8(6)
    lfs 1, 0x18(5)
    lwz 5, 0xfc(6)
    lwz 6, 0x100(6)
    bl fn_803837A4
    li 30, 0x0
    mr 29, 28
L_8043D104:
    lwz 3, 0x70(29)
    lwz 3, 0x4(3)
    bl fn_8009F0D0
    addi 4, 28, 0x78
    bl strcpy
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x2
    .4byte 0x4180FFE0 # blt .L_8043D104
    .4byte 0xC0020CE8 # lfs f0, lbl_80543C88@sda21(r0)
    addi 4, 1, 0x18
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 7, 1, 0x3c
    stfs 0, 0x18(1)
    li 5, 0x0
    li 6, 0x0
    stfs 0, 0x1c(1)
    stfs 0, 0x20(1)
    lwz 3, 0x24(3)
    bl fn_8030C5F0
    .4byte 0xC0220CE8 # lfs f1, lbl_80543C88@sda21(r0)
    addi 4, 1, 0xc
    .4byte 0xC0020D20 # lfs f0, lbl_80543CC0@sda21(r0)
    addi 7, 1, 0x30
    stfs 1, 0xc(1)
    li 5, 0x0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 6, 0x0
    stfs 0, 0x10(1)
    stfs 1, 0x14(1)
    lwz 3, 0x24(3)
    bl fn_8030C5F0
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    lwz 3, 0x64(28)
    addi 30, 1, 0x8
    lwz 5, 0x4(5)
    li 0, 0x0
    stw 4, 0x48(1)
    mr 31, 30
    lhz 4, 0x6(5)
    li 29, 0x0
    .4byte 0xC8420CF8 # lfd f2, lbl_80543C98@sda21(r0)
    xoris 4, 4, 0x8000
    lfs 4, 0x34(1)
    stw 4, 0x4c(1)
    lfs 3, 0x40(1)
    lfd 1, 0x48(1)
    lfs 0, 0xc(3)
    fsubs 3, 4, 3
    fsubs 1, 1, 2
    .4byte 0xC3E20CE8 # lfs f31, lbl_80543C88@sda21(r0)
    stb 0, 0x10c(28)
    fsubs 0, 1, 0
    fadds 30, 3, 0
L_8043D1E0:
    mr 3, 29
    bl fn_8023E724
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    mr 4, 3
    addi 7, 1, 0x24
    li 6, 0x0
    lwz 3, 0x24(5)
    li 5, 0x0
    bl fn_8030C5F0
    lfs 2, 0x24(1)
    li 0, 0x0
    stb 0, 0x0(31)
    fcmpo cr0, 2, 31
    .4byte 0x4081009C # ble .L_8043D2B0
    .4byte 0x808D8DC0 # lwz r4, lbl_8053A980@sda21(r0)
    lis 3, 0x4330
    stw 3, 0x48(1)
    lwz 4, 0x4(4)
    .4byte 0xC8220CF8 # lfd f1, lbl_80543C98@sda21(r0)
    lhz 0, 0x4(4)
    xoris 0, 0, 0x8000
    stw 0, 0x4c(1)
    lfd 0, 0x48(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    .4byte 0x4080006C # bge .L_8043D2B0
    lfs 2, 0x28(1)
    fcmpo cr0, 2, 31
    .4byte 0x40810060 # ble .L_8043D2B0
    lhz 0, 0x6(4)
    stw 3, 0x48(1)
    xoris 0, 0, 0x8000
    stw 0, 0x4c(1)
    lfd 0, 0x48(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    .4byte 0x40800040 # bge .L_8043D2B0
    stw 0, 0x4c(1)
    stw 3, 0x48(1)
    lfd 0, 0x48(1)
    fsubs 0, 0, 1
    fsubs 0, 0, 30
    fcmpo cr0, 2, 0
    .4byte 0x40810014 # ble .L_8043D2A0
    li 0, 0x1
    stb 0, 0x0(31)
    stb 0, 0x10c(28)
    .4byte 0x48000014 # b .L_8043D2B0
L_8043D2A0:
    fcmpo cr0, 2, 30
    .4byte 0x4080000C # bge .L_8043D2B0
    li 0, 0x2
    stb 0, 0x0(31)
L_8043D2B0:
    addi 29, 29, 0x1
    addi 31, 31, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF24 # blt .L_8043D1E0
    lbz 0, 0x10c(28)
    cmplwi 0, 0x1
    .4byte 0x40820048 # bne .L_8043D310
    lbz 3, 0x8(1)
    li 0, 0x0
    cmplwi 3, 0x2
    .4byte 0x40820008 # bne .L_8043D2E0
    stb 0, 0x10c(28)
L_8043D2E0:
    lbz 3, 0x9(1)
    cmplwi 3, 0x2
    .4byte 0x40820008 # bne .L_8043D2F0
    stb 0, 0x10c(28)
L_8043D2F0:
    lbz 3, 0x2(30)
    cmplwi 3, 0x2
    .4byte 0x40820008 # bne .L_8043D300
    stb 0, 0x10c(28)
L_8043D300:
    lbz 3, 0x3(30)
    cmplwi 3, 0x2
    .4byte 0x40820008 # bne .L_8043D310
    stb 0, 0x10c(28)
L_8043D310:
    lbz 0, 0x10c(28)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8043D324
    .4byte 0xC3C20D24 # lfs f30, lbl_80543CC4@sda21(r0)
    .4byte 0x4800001C # b .L_8043D33C
L_8043D324:
    lwz 3, 0x64(28)
    .4byte 0xC0420D28 # lfs f2, lbl_80543CC8@sda21(r0)
    lfs 1, 0xc(3)
    .4byte 0xC0020D24 # lfs f0, lbl_80543CC4@sda21(r0)
    fsubs 1, 2, 1
    fsubs 30, 1, 0
L_8043D33C:
    li 30, 0x0
    mr 29, 28
L_8043D344:
    fmr 2, 30
    lwz 3, 0x40(29)
    .4byte 0xC0220CE8 # lfs f1, lbl_80543C88@sda21(r0)
    bl fn_80402E08
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0xc
    .4byte 0x4180FFE4 # blt .L_8043D344
    li 0, 0x1
    stb 0, 0x10b(28)
L_8043D36C:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    lwz 0, 0x84(1)
    lwz 28, 0x50(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_8043D39C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8043D3D0
    lwz 3, 0x290(31)
    bl fn_8041F5FC
    .4byte 0x4800000C # b .L_8043D3D8
L_8043D3D0:
    lwz 3, 0x294(31)
    bl fn_80425F24
L_8043D3D8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0xfe(3)
    cmplwi 0, 0x1
    .4byte 0x40820118 # bne .L_8043D4FC
    lwz 0, 0xe4(31)
    cmpwi 0, 0x0
    .4byte 0x4182010C # beq .L_8043D4FC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lwz 4, 0xe4(31)
    lis 3, 0x6666
    addi 0, 3, 0x6667
    subi 3, 4, 0x1
    stw 3, 0xe4(31)
    lwz 6, 0xe0(31)
    mulhw 0, 0, 6
    srawi 4, 0, 2
    srawi 0, 0, 2
    srwi 3, 0, 31
    srwi 5, 4, 31
    add 0, 0, 3
    mulli 0, 0, 0xa
    add 3, 4, 5
    clrlwi. 4, 3, 24
    subf 0, 0, 6
    clrlwi 30, 0, 24
    .4byte 0x4182005C # beq .L_8043D49C
    lis 6, 0xa28
    lis 5, 0x28ff
    addi 7, 5, 0x28ff
    .4byte 0xC0220D30 # lfs f1, lbl_80543CD0@sda21(r0)
    .4byte 0xC0420D00 # lfs f2, lbl_80543CA0@sda21(r0)
    mr 3, 31
    .4byte 0xC0620D34 # lfs f3, lbl_80543CD4@sda21(r0)
    addi 6, 6, 0xa00
    li 5, 0xff
    bl fn_8043E80C
    lis 6, 0xa28
    lis 5, 0x28ff
    .4byte 0xC0220D38 # lfs f1, lbl_80543CD8@sda21(r0)
    mr 3, 31
    .4byte 0xC0420D00 # lfs f2, lbl_80543CA0@sda21(r0)
    mr 4, 30
    .4byte 0xC0620D34 # lfs f3, lbl_80543CD4@sda21(r0)
    addi 6, 6, 0xa00
    addi 7, 5, 0x28ff
    li 5, 0xff
    bl fn_8043E80C
    .4byte 0x48000064 # b .L_8043D4FC
L_8043D49C:
    cmplwi 30, 0x0
    .4byte 0x41820030 # beq .L_8043D4D0
    lis 5, 0xffff
    .4byte 0xC0220D3C # lfs f1, lbl_80543CDC@sda21(r0)
    .4byte 0xC0420D00 # lfs f2, lbl_80543CA0@sda21(r0)
    mr 3, 31
    .4byte 0xC0620D40 # lfs f3, lbl_80543CE0@sda21(r0)
    mr 4, 30
    addi 7, 5, 0xff
    li 5, 0xff
    lis 6, 0x5050
    bl fn_8043E80C
    .4byte 0x48000030 # b .L_8043D4FC
L_8043D4D0:
    lis 6, 0x5028
    lis 5, 0xff50
    .4byte 0xC0220D3C # lfs f1, lbl_80543CDC@sda21(r0)
    mr 3, 31
    .4byte 0xC0420D00 # lfs f2, lbl_80543CA0@sda21(r0)
    mr 4, 30
    .4byte 0xC0620D44 # lfs f3, lbl_80543CE4@sda21(r0)
    addi 6, 6, 0x2800
    addi 7, 5, 0x50ff
    li 5, 0xff
    bl fn_8043E80C
L_8043D4FC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8043D514:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0220CE8 # lfs f1, lbl_80543C88@sda21(r0)
    stw 0, 0x14(1)
    lbz 0, 0x10b(3)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_8043D56C
    lbz 0, 0x10c(3)
    cmplwi 0, 0x1
    .4byte 0x40820034 # bne .L_8043D56C
    lwz 3, 0x64(3)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lfs 1, 0x4(3)
    .4byte 0xC0020D28 # lfs f0, lbl_80543CC8@sda21(r0)
    .4byte 0xC0420D4C # lfs f2, lbl_80543CEC@sda21(r0)
    fsubs 1, 1, 0
    .4byte 0xC0620D48 # lfs f3, lbl_80543CE8@sda21(r0)
    .4byte 0xC0020D24 # lfs f0, lbl_80543CC4@sda21(r0)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fdivs 1, 1, 0
L_8043D56C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8043D57C:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC0220CE8 # lfs f1, lbl_80543C88@sda21(r0)
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x10b(3)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_8043D5DC
    lbz 0, 0x10c(31)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_8043D5DC
    lwz 3, 0x40(31)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lwz 4, 0x40(31)
    lfs 2, 0x4(3)
    lfs 0, 0xc(4)
    .4byte 0xC0220D24 # lfs f1, lbl_80543CC4@sda21(r0)
    fsubs 0, 2, 0
    .4byte 0xC0420D48 # lfs f2, lbl_80543CE8@sda21(r0)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fdivs 1, 0, 1
L_8043D5DC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8043D5F0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lwz 3, 0x4(31)
    li 0, 0x1
    .4byte 0xC0220CE8 # lfs f1, lbl_80543C88@sda21(r0)
    stb 0, 0x100(3)
    fmr 2, 1
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8043D644:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804B18D0@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_804B18D0@l
    lbz 5, 0x10b(3)
    mulli 4, 5, 0xc
    add 12, 0, 4
    bl __ptmf_scall
    nop
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8043D67C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    lbz 0, 0x10a(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8043D6BC
    li 3, 0x0
    .4byte 0x4800015C # b .L_8043D814
L_8043D6BC:
    cmplwi 29, 0x199
    .4byte 0x40820044 # bne .L_8043D704
    bl GetRoomConfigRecord
    mr 5, 29
    li 4, 0x0
    li 6, 0x0
    bl fn_802D46D8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8043D6EC
    li 3, 0x0
    .4byte 0x4800012C # b .L_8043D814
L_8043D6EC:
    bl GetRoomConfigRecord
    mr 5, 29
    li 4, 0x0
    li 6, 0x1
    bl fn_802D46D8
    .4byte 0x48000040 # b .L_8043D740
L_8043D704:
    cmplwi 29, 0x1b5
    .4byte 0x40820038 # bne .L_8043D740
    li 0, 0x1
    lbz 5, 0xde(28)
    slw 0, 0, 30
    clrlwi 4, 0, 24
    and 3, 5, 4
    neg 0, 3
    or 0, 0, 3
    srwi. 0, 0, 31
    .4byte 0x4182000C # beq .L_8043D738
    li 3, 0x0
    .4byte 0x480000E0 # b .L_8043D814
L_8043D738:
    or 0, 5, 4
    stb 0, 0xde(28)
L_8043D740:
    mr 3, 29
    addi 4, 1, 0x8
    bl fn_80383E2C
    lbz 0, 0x8(1)
    cmpwi 0, 0x2a
    .4byte 0x40820040 # bne .L_8043D794
    bl GetRoomConfigRecord
    mr 5, 29
    li 4, 0x0
    li 6, 0x0
    bl fn_802D46D8
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8043D780
    li 3, 0x0
    .4byte 0x48000098 # b .L_8043D814
L_8043D780:
    bl GetRoomConfigRecord
    mr 5, 29
    li 4, 0x0
    li 6, 0x1
    bl fn_802D46D8
L_8043D794:
    li 3, 0x1
    addi 0, 30, 0x1
    stb 3, 0x10a(28)
    cmpwi 29, 0x1a8
    stw 0, 0xfc(28)
    stw 29, 0xe8(28)
    stw 31, 0x100(28)
    .4byte 0x4182003C # beq .L_8043D7EC
    .4byte 0x4080002C # bge .L_8043D7E0
    cmpwi 29, 0x195
    .4byte 0x40800018 # bge .L_8043D7D4
    cmpwi 29, 0x191
    .4byte 0x4080003C # bge .L_8043D800
    cmpwi 29, 0x18f
    .4byte 0x40800020 # bge .L_8043D7EC
    .4byte 0x48000030 # b .L_8043D800
L_8043D7D4:
    cmpwi 29, 0x199
    .4byte 0x40800028 # bge .L_8043D800
    .4byte 0x48000010 # b .L_8043D7EC
L_8043D7E0:
    cmpwi 29, 0x23f
    .4byte 0x4182002C # beq .L_8043D810
    .4byte 0x48000018 # b .L_8043D800
L_8043D7EC:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x40
    li 5, -0x1
    bl fn_80458880
    .4byte 0x48000014 # b .L_8043D810
L_8043D800:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x39
    li 5, -0x1
    bl fn_80458880
L_8043D810:
    li 3, 0x1
L_8043D814:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8043D834:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(4)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8043D85C
    lwz 3, 0x290(3)
    bl fn_8041E58C
    .4byte 0x4800000C # b .L_8043D864
L_8043D85C:
    lwz 3, 0x294(3)
    bl fn_80425128
L_8043D864:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8043D874:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(7)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8043D89C
    lwz 3, 0x290(3)
    bl fn_8041E708
    .4byte 0x4800000C # b .L_8043D8A4
L_8043D89C:
    lwz 3, 0x294(3)
    bl fn_80425234
L_8043D8A4:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8043D8B4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(4)
    cmplwi 0, 0x0
    .4byte 0x40820094 # bne .L_8043D974
    lis 3, lbl_80529DEC@ha
    li 29, 0x0
    addi 30, 3, lbl_80529DEC@l
L_8043D8F0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 29
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820058 # beq .L_8043D960
    mr 3, 29
    bl fn_8022EA0C
    mr 28, 3
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800028 # bge .L_8043D948
    mr 3, 28
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    addi 4, 1, 0x14
    lfs 0, 0x8(3)
    mr 3, 4
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x1c(1)
    bl fn_804408F0
L_8043D948:
    mr 3, 29
    bl fn_80237810
    stw 3, 0xc8(30)
    mr 3, 29
    bl fn_802373EC
    stw 3, 0xf8(30)
L_8043D960:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FF84 # blt .L_8043D8F0
    .4byte 0x48000098 # b .L_8043DA08
L_8043D974:
    lis 3, lbl_80529DEC@ha
    li 28, 0x0
    addi 30, 3, lbl_80529DEC@l
L_8043D980:
    mr 3, 28
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_8043D9C4
    mr 3, 28
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800028 # bge .L_8043D9C4
    mr 3, 28
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    addi 4, 1, 0x8
    lfs 0, 0x8(3)
    mr 3, 4
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x10(1)
    bl fn_804408F0
L_8043D9C4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 28
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x4182001C # beq .L_8043D9F8
    mr 3, 28
    bl fn_80237810
    stw 3, 0xc8(30)
    mr 3, 28
    bl fn_802373EC
    stw 3, 0xf8(30)
L_8043D9F8:
    addi 28, 28, 0x1
    addi 30, 30, 0x4
    cmpwi 28, 0x4
    .4byte 0x4180FF7C # blt .L_8043D980
L_8043DA08:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_8043DA44
    bl fn_8037E4BC
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_8043DA44
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x4
    stb 0, 0xdc(3)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0xdc(3)
    ori 0, 0, 0x8
    stb 0, 0xdc(3)
L_8043DA44:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x41820090 # beq .L_8043DAE0
    lwz 3, 0x290(31)
    bl fn_8041EDB0
    lwz 3, 0x2b0(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DA6C
    bl fn_8044998C
L_8043DA6C:
    lwz 3, 0x29c(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DA7C
    bl fn_804455E0
L_8043DA7C:
    lwz 3, 0x2a8(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DA8C
    bl fn_80447FAC
L_8043DA8C:
    lwz 3, 0x2b4(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DA9C
    bl fn_8044A828
L_8043DA9C:
    lwz 3, 0x2ac(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DAAC
    bl fn_80448940
L_8043DAAC:
    lwz 3, 0x2a4(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DABC
    bl fn_80447618
L_8043DABC:
    lwz 3, 0x2a0(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DACC
    bl fn_804465B8
L_8043DACC:
    lwz 3, 0x2b8(31)
    cmplwi 3, 0x0
    .4byte 0x41820014 # beq .L_8043DAE8
    bl fn_8044C038
    .4byte 0x4800000C # b .L_8043DAE8
L_8043DAE0:
    lwz 3, 0x294(31)
    bl fn_804257E4
L_8043DAE8:
    lwz 3, 0x2bc(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8043DAF8
    bl fn_8045560C
L_8043DAF8:
    li 0, 0x0
    stb 0, 0x255(31)
    lwz 0, 0x298(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_8043DB14
    .4byte 0x806D9330 # lwz r3, lbl_8053AEF0@sda21(r0)
    bl fn_80443638
L_8043DB14:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x85(3)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8043DB30
    li 0, 0x1
    stb 0, 0x257(31)
    .4byte 0x4800000C # b .L_8043DB38
L_8043DB30:
    li 0, 0x0
    stb 0, 0x257(31)
L_8043DB38:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

