# fn_80431C38 (dtor) + fn_80431D84 (real ctor) - a "weapon/joint-attachment
# resolver" composite class (vtable lbl_804B1634). Confirmed field layout:
#   this+0x4        -> 1 sub-object of the lbl_804B1600 class (extab_8042eec8.s)
#   this+0x8..0x34  -> 12 uniform 0x2c-byte sub-objects (vtable lbl_804AF86C,
#                      an already-existing, not-yet-landed shared component
#                      class from a much earlier region - dtor fn_803A8378)
#   this+0x38, 0x78 -> two 4-element 0x10-byte arrays, placement-constructed
#                      via the shared __construct_array/fn_80097128 array-ctor idiom
# The ctor resolves each of the 12 slots by a 4-char joint/bone-name tag
# (seen: "ta01","bb01","bb02","wb01".."wb05","wt01","wt02",...) via
# fn_8009C69C against a string table (lbl_8048F390/8048F424) + a shared
# lookup-count table (lbl_80529DEC), then a trailing loop copies short
# values from 2 of those slots (this->0x10/0x24) into the two arrays -
# consistent with a per-model "resolve named attachment joints once, cache
# their indices" pattern. fn_8009C69C/fn_80402F04/fn_8009C4EC/fn_80084370
# not traced further (out of scope for this landing).
.section extab, "a"
.balign 4
.global etb_80010C24
etb_80010C24:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80010C24, 8

.global etb_80010C2C
etb_80010C2C:
    .4byte 0x18080000
    .4byte 0x0000008C
    .4byte 0x00000030
    .4byte 0x00000098
    .4byte 0x00000028
    .4byte 0x000000BC
    .4byte 0x00450030
    .4byte 0x000001F4
    .4byte 0x00000038
    .4byte 0x00000000
    .4byte 0x0A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001E
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
.size etb_80010C2C, 64

.section extabindex, "a"
.balign 4
.global eti_80020C8C
eti_80020C8C:
    .4byte fn_80431C38
    .4byte 0x0000014C
    .4byte etb_80010C24
.size eti_80020C8C, 12

.global eti_80020C98
eti_80020C98:
    .4byte fn_80431D84
    .4byte 0x00000690
    .4byte etb_80010C2C
.size eti_80020C98, 12

.text
.balign 4
.global fn_80431C38
.global fn_80431D84

fn_80431C38:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x41820104 # beq .L_80431D60
    lis 3, lbl_804B1634@ha
    addi 0, 3, lbl_804B1634@l
    stw 0, 0x0(28)
    lwz 3, 0x4(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80431C8C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80431C8C:
    li 0, 0x0
    stw 0, 0x4(28)
    lwz 3, 0x8(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80431CB4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80431CB4:
    li 0, 0x0
    stw 0, 0x8(28)
    lwz 3, 0xc(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80431CDC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80431CDC:
    li 0, 0x0
    mr 31, 28
    stw 0, 0xc(28)
    li 30, 0x0
L_80431CEC:
    lwz 3, 0x10(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80431D0C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80431D0C:
    li 0, 0x0
    stw 0, 0x10(31)
    lwz 3, 0x24(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80431D34
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80431D34:
    addi 30, 30, 0x1
    li 3, 0x0
    cmpwi 30, 0x5
    stw 3, 0x24(31)
    addi 31, 31, 0x4
    .4byte 0x4180FFA4 # blt .L_80431CEC
    extsh. 0, 29
    .4byte 0x906D9300 # stw r3, lbl_8053AEC0@sda21(r0)
    .4byte 0x4081000C # ble .L_80431D60
    mr 3, 28
    bl dtor_80084580
L_80431D60:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80431D84:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_804B1634@ha
    li 5, 0x0
    stw 0, 0x24(1)
    addi 0, 4, lbl_804B1634@l
    li 6, 0x4
    li 7, 0x10
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, fn_80097128@ha
    stw 30, 0x18(1)
    addi 4, 3, fn_80097128@l
    addi 3, 31, 0x38
    stw 29, 0x14(1)
    stw 0, 0x0(31)
    bl __construct_array
    lis 4, fn_80097128@ha
    addi 3, 31, 0x78
    addi 4, 4, fn_80097128@l
    li 5, 0x0
    li 6, 0x4
    li 7, 0x10
    bl __construct_array
    .4byte 0x93ED9300 # stw r31, lbl_8053AEC0@sda21(r0)
    li 3, 0x14
    bl fn_80084370
    mr. 30, 3
    .4byte 0x4182016C # beq .L_80431F60
    lis 4, lbl_804B1600@ha
    li 3, 0x118
    addi 0, 4, lbl_804B1600@l
    stw 0, 0x0(30)
    .4byte 0x93CD9304 # stw r30, lbl_8053AEC4@sda21(r0)
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_80431E1C
    bl fn_8009C4EC
L_80431E1C:
    lis 3, lbl_80529DEC@ha
    stw 29, 0x4(30)
    addi 5, 3, lbl_80529DEC@l
    lis 3, lbl_8048F390@ha
    lwz 6, 0x20(5)
    addi 4, 3, lbl_8048F390@l
    lwz 3, 0x4(30)
    lis 5, 0x110
    bl fn_8009C69C
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80431E5C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80431E5C:
    stw 3, 0x8(30)
    lis 5, 0x776b
    lis 4, 0x50
    lwz 3, 0x4(30)
    addi 6, 5, 0x3032
    addi 5, 4, 0x6d6d
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x8(30)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80431EAC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80431EAC:
    stw 3, 0xc(30)
    lis 3, 0x626c
    addi 6, 3, 0x3031
    li 5, 0x50
    lwz 3, 0x4(30)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xc(30)
    bl fn_80402F04
    lwz 3, 0x4(30)
    lis 4, 0x6d74
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x546d
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(30)
    lis 4, 0x6d74
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x546d
    lwz 29, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    sth 0, 0x10(30)
    stb 0, 0x12(30)
L_80431F60:
    stw 30, 0x4(31)
    li 3, 0x118
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_80431F78
    bl fn_8009C4EC
L_80431F78:
    lis 3, lbl_80529DEC@ha
    stw 29, 0x8(31)
    addi 5, 3, lbl_80529DEC@l
    lis 3, lbl_8048F424@ha
    lwz 6, 0x20(5)
    addi 4, 3, lbl_8048F424@l
    lwz 3, 0x8(31)
    lis 5, 0x110
    bl fn_8009C69C
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80431FB8
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80431FB8:
    stw 3, 0xc(31)
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
    lwz 3, 0xc(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80432008
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80432008:
    stw 3, 0x10(31)
    lis 3, 0x6262
    addi 6, 3, 0x3031
    li 5, 0x5077
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x10(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80432054
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80432054:
    stw 3, 0x14(31)
    lis 3, 0x6262
    addi 6, 3, 0x3032
    li 5, 0x5077
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
    .4byte 0x41820010 # beq .L_804320A0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804320A0:
    stw 3, 0x18(31)
    lis 3, 0x6262
    addi 6, 3, 0x3033
    li 5, 0x5077
    lwz 3, 0x8(31)
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
    .4byte 0x41820010 # beq .L_804320EC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804320EC:
    stw 3, 0x1c(31)
    lis 3, 0x6262
    addi 6, 3, 0x3034
    li 5, 0x5077
    lwz 3, 0x8(31)
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
    .4byte 0x41820010 # beq .L_80432138
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80432138:
    stw 3, 0x20(31)
    lis 3, 0x6262
    addi 6, 3, 0x3035
    li 5, 0x5077
    lwz 3, 0x8(31)
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
    .4byte 0x41820010 # beq .L_80432184
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80432184:
    stw 3, 0x24(31)
    lis 3, 0x7762
    addi 6, 3, 0x3031
    li 5, 0x50
    lwz 3, 0x8(31)
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
    .4byte 0x41820010 # beq .L_804321D0
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804321D0:
    stw 3, 0x28(31)
    lis 3, 0x7762
    addi 6, 3, 0x3032
    li 5, 0x50
    lwz 3, 0x8(31)
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
    .4byte 0x41820010 # beq .L_8043221C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8043221C:
    stw 3, 0x2c(31)
    lis 3, 0x7762
    addi 6, 3, 0x3033
    li 5, 0x50
    lwz 3, 0x8(31)
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
    .4byte 0x41820010 # beq .L_80432268
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80432268:
    stw 3, 0x30(31)
    lis 3, 0x7762
    addi 6, 3, 0x3034
    li 5, 0x50
    lwz 3, 0x8(31)
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
    .4byte 0x41820010 # beq .L_804322B4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804322B4:
    stw 3, 0x34(31)
    lis 3, 0x7762
    addi 6, 3, 0x3035
    li 5, 0x50
    lwz 3, 0x8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x34(31)
    bl fn_80402F04
    lwz 3, 0x8(31)
    lis 4, 0x7774
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
    mr 7, 31
    mr 8, 31
    li 10, 0x0
L_8043232C:
    li 0, 0x2
    mr 6, 7
    li 11, 0x0
    mtctr 0
L_8043233C:
    lwz 3, 0x10(8)
    clrlslwi 9, 11, 24, 2
    addi 4, 9, 0x112
    addi 11, 11, 0x1
    lwz 0, 0x4(3)
    mr 5, 4
    clrlslwi 9, 11, 24, 2
    addi 11, 11, 0x1
    add 4, 0, 4
    lha 0, 0x0(4)
    sth 0, 0x38(6)
    lha 0, 0x2(4)
    addi 4, 9, 0x112
    sth 0, 0x3a(6)
    lwz 3, 0x24(8)
    lwz 0, 0x4(3)
    add 5, 0, 5
    lha 0, 0x0(5)
    sth 0, 0x78(6)
    lha 0, 0x2(5)
    mr 5, 4
    sth 0, 0x7a(6)
    lwz 3, 0x10(8)
    lwz 0, 0x4(3)
    add 4, 0, 4
    lha 0, 0x0(4)
    sth 0, 0x3c(6)
    lha 0, 0x2(4)
    sth 0, 0x3e(6)
    lwz 3, 0x24(8)
    lwz 0, 0x4(3)
    add 5, 0, 5
    lha 0, 0x0(5)
    sth 0, 0x7c(6)
    lha 0, 0x2(5)
    sth 0, 0x7e(6)
    addi 6, 6, 0x8
    .4byte 0x4200FF6C # bdnz .L_8043233C
    addi 10, 10, 0x1
    addi 8, 8, 0x4
    cmpwi 10, 0x4
    addi 7, 7, 0x10
    .4byte 0x4180FF48 # blt .L_8043232C
    li 0, 0x0
    mr 3, 31
    sth 0, 0xe8(31)
    stb 0, 0xec(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

