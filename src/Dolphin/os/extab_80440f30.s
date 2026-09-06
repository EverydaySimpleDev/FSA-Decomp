# fn_80440F30 (dtor) + fn_80440FDC (real ctor, direct vtable-install) - a
# SIXTH sibling of the "weapon/joint-attachment resolver" class family
# (vtable lbl_804B1988). Reuses fn_80084370/fn_8009C4EC/fn_8009C69C and the
# confirmed lbl_80529DEC table, same as the other siblings.
.section extab, "a"
.balign 4
.global etb_8001113C
etb_8001113C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8001113C, 8

.global etb_80011144
etb_80011144:
    .4byte 0x18080000
    .4byte 0x00000040
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001D
    .4byte dtor_80084580
.size etb_80011144, 24

.section extabindex, "a"
.balign 4
.global eti_80021004
eti_80021004:
    .4byte fn_80440F30
    .4byte 0x000000AC
    .4byte etb_8001113C
.size eti_80021004, 12

.global eti_80021010
eti_80021010:
    .4byte fn_80440FDC
    .4byte 0x00000118
    .4byte etb_80011144
.size eti_80021010, 12

.text
.balign 4
.global fn_80440F30
.global fn_80440FDC

fn_80440F30:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820074 # beq .L_80440FC0
    lis 3, lbl_804B1988@ha
    addi 0, 3, lbl_804B1988@l
    stw 0, 0x0(30)
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80440F7C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80440F7C:
    li 0, 0x0
    stw 0, 0x4(30)
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80440FA4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80440FA4:
    li 3, 0x0
    extsh. 0, 31
    stw 3, 0x8(30)
    .4byte 0x906D9318 # stw r3, lbl_8053AED8@sda21(r0)
    .4byte 0x4081000C # ble .L_80440FC0
    mr 3, 30
    bl dtor_80084580
L_80440FC0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80440FDC:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_804B1988@ha
    stw 0, 0x24(1)
    addi 0, 4, lbl_804B1988@l
    stw 31, 0x1c(1)
    mr 31, 3
    li 3, 0x118
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 0, 0x0(31)
    .4byte 0x93ED9318 # stw r31, lbl_8053AED8@sda21(r0)
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820008 # beq .L_8044101C
    bl fn_8009C4EC
L_8044101C:
    lis 3, lbl_80529DEC@ha
    stw 29, 0x4(31)
    addi 5, 3, lbl_80529DEC@l
    lis 3, lbl_8048FAE0@ha
    lwz 6, 0x20(5)
    addi 4, 3, lbl_8048FAE0@l
    lwz 3, 0x4(31)
    lis 5, 0x110
    bl fn_8009C69C
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8044105C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8044105C:
    stw 3, 0x8(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x4(31)
    addi 6, 5, 0x3031
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x8(31)
    bl fn_80402F04
    lis 3, lbl_8048FAA8@ha
    li 29, 0x0
    addi 30, 3, lbl_8048FAA8@l
L_8044109C:
    lwz 3, 0x4(31)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 29, 0xc
    lbz 3, 0xb2(3)
    addi 29, 29, 0x1
    addi 30, 30, 0x8
    cmpwi 29, 0x7
    stbx 3, 31, 0
    .4byte 0x4180FFCC # blt .L_8044109C
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

