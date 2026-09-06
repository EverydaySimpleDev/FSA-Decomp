# fn_803B8414 - actor@lbl_804AFAB0: constructor (0x338)
# Installs vtable lbl_804AFAB0; constructs array (__construct_array) + 3 owned
# sub-objects (operator new x3). Directly followed by confirmed non-actor
# static-init boilerplate (fn_803B874C) - actor cluster ends cleanly here.
.section extab, "a"
.balign 4
.global etb_8000F5FC
etb_8000F5FC:
    .4byte 0x180A0000
    .4byte 0x000001AC
    .4byte 0x00000020
    .4byte 0x00000218
    .4byte 0x00000028
    .4byte 0x0000023C
    .4byte 0x00000030
    .4byte 0x00000000
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
    .4byte 0x8A80001D
    .4byte dtor_80084580
.size etb_8000F5FC, 56

.section extabindex, "a"
.balign 4
.global eti_8001F30C
eti_8001F30C:
    .4byte fn_803B8414
    .4byte 0x00000338
    .4byte etb_8000F5FC
.size eti_8001F30C, 12

.text
.balign 4
.global fn_803B8414

fn_803B8414:
    stwu 1, -0x30(1)
    mflr 0
    lis 4, lbl_804AFAB0@ha
    li 5, 0x0
    stw 0, 0x34(1)
    addi 0, 4, lbl_804AFAB0@l
    li 6, 0xc
    li 7, 0xa
    stw 31, 0x2c(1)
    mr 31, 3
    lis 3, fn_8003B2CC@ha
    stw 30, 0x28(1)
    addi 4, 3, fn_8003B2CC@l
    addi 3, 31, 0xf8
    stw 29, 0x24(1)
    stw 0, 0x0(31)
    bl __construct_array
    li 0, -0x1
    lis 3, lbl_80529DEC@ha
    stw 0, 0x28c(31)
    addi 3, 3, lbl_80529DEC@l
    stw 0, 0x290(31)
    lwz 3, 0x8(3)
    bl fn_80083A68
    .4byte 0x93ED91E8 # stw r31, lbl_8053ADA8@sda21(r0)
    lis 3, lbl_80476520@ha
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    addi 5, 3, lbl_80476520@l
    lis 4, 0x3f3f
    lwz 3, 0xa8(6)
    addi 4, 4, 0x3f3f
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    li 4, 0x0
    li 5, 0x30
    stw 4, 0x24(31)
    slwi 3, 5, 2
    subfic 0, 5, 0x32
    stw 4, 0x28(31)
    add 3, 31, 3
    stw 4, 0x2c(31)
    stw 4, 0x30(31)
    stw 4, 0x34(31)
    stw 4, 0x38(31)
    stw 4, 0x3c(31)
    stw 4, 0x40(31)
    stw 4, 0x44(31)
    stw 4, 0x48(31)
    stw 4, 0x4c(31)
    stw 4, 0x50(31)
    stw 4, 0x54(31)
    stw 4, 0x58(31)
    stw 4, 0x5c(31)
    stw 4, 0x60(31)
    stw 4, 0x64(31)
    stw 4, 0x68(31)
    stw 4, 0x6c(31)
    stw 4, 0x70(31)
    stw 4, 0x74(31)
    stw 4, 0x78(31)
    stw 4, 0x7c(31)
    stw 4, 0x80(31)
    stw 4, 0x84(31)
    stw 4, 0x88(31)
    stw 4, 0x8c(31)
    stw 4, 0x90(31)
    stw 4, 0x94(31)
    stw 4, 0x98(31)
    stw 4, 0x9c(31)
    stw 4, 0xa0(31)
    stw 4, 0xa4(31)
    stw 4, 0xa8(31)
    stw 4, 0xac(31)
    stw 4, 0xb0(31)
    stw 4, 0xb4(31)
    stw 4, 0xb8(31)
    stw 4, 0xbc(31)
    stw 4, 0xc0(31)
    stw 4, 0xc4(31)
    stw 4, 0xc8(31)
    stw 4, 0xcc(31)
    stw 4, 0xd0(31)
    stw 4, 0xd4(31)
    stw 4, 0xd8(31)
    stw 4, 0xdc(31)
    stw 4, 0xe0(31)
    mtctr 0
    cmpwi 5, 0x32
    .4byte 0x40800010 # bge .L_803B858C
L_803B8580:
    stw 4, 0x24(3)
    addi 3, 3, 0x4
    .4byte 0x4200FFF8 # bdnz .L_803B8580
L_803B858C:
    lis 3, lbl_80476534@ha
    lis 5, 0x5449
    addi 4, 3, lbl_80476534@l
    addi 3, 5, 0x4d47
    bl fn_804030C4
    mr 0, 3
    li 3, 0x168
    mr 30, 0
    bl fn_80084370
    mr. 29, 3
    .4byte 0x4182000C # beq .L_803B85C0
    mr 4, 30
    bl fn_80097800
L_803B85C0:
    stw 29, 0x4(31)
    li 6, 0x0
    li 0, 0xff
    addi 4, 1, 0x14
    stw 6, 0xc(1)
    addi 5, 1, 0xc
    stw 0, 0x14(1)
    lwz 3, 0x4(31)
    stw 6, 0x8(1)
    lwz 12, 0x0(3)
    stw 0, 0x10(1)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    .4byte 0xC00204A0 # lfs f0, lbl_80543440@sda21(r0)
    li 3, 0x60
    stfs 0, 0xec(31)
    stfs 0, 0xf0(31)
    stfs 0, 0xf4(31)
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820018 # beq .L_803B862C
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    li 7, 0x8
    bl fn_8045B46C
L_803B862C:
    stw 29, 0x1c(31)
    li 3, 0x5c
    bl fn_80084370
    mr. 29, 3
    .4byte 0x41820014 # beq .L_803B8650
    addi 4, 31, 0xec
    li 5, 0x0
    li 6, 0x8
    bl fn_804578F4
L_803B8650:
    stw 29, 0x20(31)
    lis 3, lbl_80529DEC@ha
    .4byte 0xC00204A0 # lfs f0, lbl_80543440@sda21(r0)
    li 0, -0x1
    addi 4, 3, lbl_80529DEC@l
    stfs 0, 0xf8(31)
    stfs 0, 0xfc(31)
    stfs 0, 0x100(31)
    stw 0, 0x170(31)
    stfs 0, 0x104(31)
    stfs 0, 0x108(31)
    stfs 0, 0x10c(31)
    stw 0, 0x174(31)
    stfs 0, 0x110(31)
    stfs 0, 0x114(31)
    stfs 0, 0x118(31)
    stw 0, 0x178(31)
    stfs 0, 0x11c(31)
    stfs 0, 0x120(31)
    stfs 0, 0x124(31)
    stw 0, 0x17c(31)
    stfs 0, 0x128(31)
    stfs 0, 0x12c(31)
    stfs 0, 0x130(31)
    stw 0, 0x180(31)
    stfs 0, 0x134(31)
    stfs 0, 0x138(31)
    stfs 0, 0x13c(31)
    stw 0, 0x184(31)
    stfs 0, 0x140(31)
    stfs 0, 0x144(31)
    stfs 0, 0x148(31)
    stw 0, 0x188(31)
    stfs 0, 0x14c(31)
    stfs 0, 0x150(31)
    stfs 0, 0x154(31)
    stw 0, 0x18c(31)
    stfs 0, 0x158(31)
    stfs 0, 0x15c(31)
    stfs 0, 0x160(31)
    stw 0, 0x190(31)
    stfs 0, 0x164(31)
    stfs 0, 0x168(31)
    stfs 0, 0x16c(31)
    stw 0, 0x194(31)
    lwz 0, 0x118(4)
    cmpwi 0, 0x9
    .4byte 0x40820020 # bne .L_803B872C
    lwz 0, 0x11c(4)
    cmpwi 0, 0x3
    .4byte 0x40820014 # bne .L_803B872C
    li 3, 0x7
    li 0, 0x3
    stw 3, 0x118(4)
    stw 0, 0x11c(4)
L_803B872C:
    lwz 0, 0x34(1)
    mr 3, 31
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

