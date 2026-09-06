# fn_8044B3FC (dtor) + fn_8044B4B8 (real ctor, direct vtable-install) - a
# SIXTEENTH sibling of the "weapon/joint-attachment resolver" family
# (vtable lbl_804B1D00, short variant). Reuses the shared lbl_804AF86C
# component.
.section extab, "a"
.balign 4
.global etb_8001145C
etb_8001145C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8001145C, 8

.global etb_80011464
etb_80011464:
    .4byte 0x10080000
    .4byte 0x0000003C
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001E
    .4byte dtor_80084580
.size etb_80011464, 24

.section extabindex, "a"
.balign 4
.global eti_800213C4
eti_800213C4:
    .4byte fn_8044B3FC
    .4byte 0x000000BC
    .4byte etb_8001145C
.size eti_800213C4, 12

.global eti_800213D0
eti_800213D0:
    .4byte fn_8044B4B8
    .4byte 0x00000130
    .4byte etb_80011464
.size eti_800213D0, 12

.text
.balign 4
.global fn_8044B3FC
.global fn_8044B4B8

fn_8044B3FC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    .4byte 0x4182008C # beq .L_8044B4A0
    lis 3, lbl_804B1D00@ha
    addi 0, 3, lbl_804B1D00@l
    stw 0, 0x0(27)
    lwz 3, 0x4(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8044B444
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8044B444:
    li 31, 0x0
    mr 30, 27
    stw 31, 0x4(27)
    li 29, 0x0
L_8044B454:
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8044B474
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8044B474:
    addi 29, 29, 0x1
    stw 31, 0x8(30)
    cmpwi 29, 0x2
    addi 30, 30, 0x4
    .4byte 0x4180FFD0 # blt .L_8044B454
    li 3, 0x0
    extsh. 0, 28
    .4byte 0x906D9368 # stw r3, lbl_8053AF28@sda21(r0)
    .4byte 0x4081000C # ble .L_8044B4A0
    mr 3, 27
    bl dtor_80084580
L_8044B4A0:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8044B4B8:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804B1D00@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_804B1D00@l
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x118
    stw 30, 0x8(1)
    stw 0, 0x0(31)
    .4byte 0x93ED9368 # stw r31, lbl_8053AF28@sda21(r0)
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820008 # beq .L_8044B4F4
    bl fn_8009C4EC
L_8044B4F4:
    lis 3, lbl_80529DEC@ha
    stw 30, 0x4(31)
    addi 5, 3, lbl_80529DEC@l
    lis 3, lbl_80490F30@ha
    lwz 6, 0x10(5)
    addi 4, 3, lbl_80490F30@l
    lwz 3, 0x4(31)
    lis 5, 0x110
    bl fn_8009C69C
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8044B534
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8044B534:
    stw 3, 0x8(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 3, 0x4(31)
    addi 6, 5, 0x3030
    addi 5, 4, 0x6461
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
    .4byte 0x41820010 # beq .L_8044B584
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8044B584:
    stw 3, 0xc(31)
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
    lwz 3, 0xc(31)
    bl fn_80402F04
    li 0, 0x0
    mr 3, 31
    sth 0, 0x10(31)
    stb 0, 0x12(31)
    stb 0, 0x13(31)
    stb 0, 0x14(31)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

