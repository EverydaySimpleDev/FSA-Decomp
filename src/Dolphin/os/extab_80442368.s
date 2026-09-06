# fn_80442368 (dtor) + fn_8044243C (real ctor, direct vtable-install) - a
# SEVENTH sibling of the "weapon/joint-attachment resolver" family (vtable
# lbl_804B19F0), a SMALLER variant matching lbl_804B1634's shape but with
# only 3 slots (this+0x4 = embedded lbl_804B1600-class helper resolving one
# named joint via fn_8009C69C; this+0x8/0xc = 2 more lbl_804AF86C 0x2c-byte
# sub-objects). Other vtable slots (fn_804421E8/fn_80441B50/fn_80441C64)
# not traced further - out of scope for this landing.
.section extab, "a"
.balign 4
.global etb_800111AC
etb_800111AC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800111AC, 8

.global etb_800111B4
etb_800111B4:
    .4byte 0x100A0000
    .4byte 0x0000003C
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001E
    .4byte dtor_80084580
.size etb_800111B4, 24

.section extabindex, "a"
.balign 4
.global eti_80021094
eti_80021094:
    .4byte fn_80442368
    .4byte 0x000000D4
    .4byte etb_800111AC
.size eti_80021094, 12

.global eti_800210A0
eti_800210A0:
    .4byte fn_8044243C
    .4byte 0x000001B0
    .4byte etb_800111B4
.size eti_800210A0, 12

.text
.balign 4
.global fn_80442368
.global fn_8044243C

fn_80442368:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182009C # beq .L_80442420
    lis 3, lbl_804B19F0@ha
    addi 0, 3, lbl_804B19F0@l
    stw 0, 0x0(30)
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804423B4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804423B4:
    li 0, 0x0
    stw 0, 0x4(30)
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804423DC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804423DC:
    li 0, 0x0
    stw 0, 0x8(30)
    lwz 3, 0xc(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80442404
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80442404:
    li 3, 0x0
    extsh. 0, 31
    stw 3, 0xc(30)
    .4byte 0x906D9320 # stw r3, lbl_8053AEE0@sda21(r0)
    .4byte 0x4081000C # ble .L_80442420
    mr 3, 30
    bl dtor_80084580
L_80442420:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8044243C:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804B19F0@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_804B19F0@l
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x118
    stw 30, 0x8(1)
    stw 0, 0x0(31)
    .4byte 0x93ED9320 # stw r31, lbl_8053AEE0@sda21(r0)
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820008 # beq .L_80442478
    bl fn_8009C4EC
L_80442478:
    lis 3, lbl_80529DEC@ha
    stw 30, 0x4(31)
    addi 5, 3, lbl_80529DEC@l
    lis 3, lbl_8048FAF0@ha
    lwz 6, 0x20(5)
    addi 4, 3, lbl_8048FAF0@l
    lwz 3, 0x4(31)
    lis 5, 0x110
    bl fn_8009C69C
    lwz 3, 0x4(31)
    lis 4, 0x7774
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 30, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804424F4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804424F4:
    stw 3, 0x8(31)
    lis 5, 0x6c6b
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7762
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x8(31)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80442544
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80442544:
    stw 3, 0xc(31)
    lis 5, 0x6167
    lis 4, 0x4e64
    lwz 3, 0x4(31)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6174
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xc(31)
    bl fn_80402F04
    lwz 3, 0x8(31)
    li 4, 0x0
    lwz 3, 0x4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(31)
    li 0, 0x0
    .4byte 0xC0220DA0 # lfs f1, lbl_80543D40@sda21(r0)
    sth 0, 0x26(3)
    .4byte 0xC0420DA4 # lfs f2, lbl_80543D44@sda21(r0)
    lwz 3, 0xc(31)
    bl fn_80402E08
    lwz 4, 0xc(31)
    li 5, 0x0
    li 0, 0x16
    mr 3, 31
    sth 5, 0x22(4)
    stw 0, 0x10(31)
    stw 5, 0x14(31)
    stw 5, 0x18(31)
    stw 5, 0x1c(31)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

