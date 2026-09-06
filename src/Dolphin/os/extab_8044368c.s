# fn_8044368C (dtor) + fn_80443760 (real ctor, direct vtable-install) - an
# EIGHTH sibling of the "weapon/joint-attachment resolver" family (vtable
# lbl_804B1AE8). Reuses the shared lbl_804AF86C component, same shape as
# the other siblings.
.section extab, "a"
.balign 4
.global etb_80011234
etb_80011234:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80011234, 8

.global etb_8001123C
etb_8001123C:
    .4byte 0x10080000
    .4byte 0x0000003C
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001E
    .4byte dtor_80084580
.size etb_8001123C, 24

.section extabindex, "a"
.balign 4
.global eti_80021148
eti_80021148:
    .4byte fn_8044368C
    .4byte 0x000000D4
    .4byte etb_80011234
.size eti_80021148, 12

.global eti_80021154
eti_80021154:
    .4byte fn_80443760
    .4byte 0x00000134
    .4byte etb_8001123C
.size eti_80021154, 12

.text
.balign 4
.global fn_8044368C
.global fn_80443760

fn_8044368C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x4182009C # beq .L_80443744
    lis 3, lbl_804B1AE8@ha
    addi 0, 3, lbl_804B1AE8@l
    stw 0, 0x0(30)
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804436D8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804436D8:
    li 0, 0x0
    stw 0, 0x4(30)
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80443700
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80443700:
    li 0, 0x0
    stw 0, 0x8(30)
    lwz 3, 0xc(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80443728
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80443728:
    li 3, 0x0
    extsh. 0, 31
    stw 3, 0xc(30)
    .4byte 0x906D9330 # stw r3, lbl_8053AEF0@sda21(r0)
    .4byte 0x4081000C # ble .L_80443744
    mr 3, 30
    bl dtor_80084580
L_80443744:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80443760:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_804B1AE8@ha
    stw 0, 0x14(1)
    addi 0, 4, lbl_804B1AE8@l
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x118
    stw 30, 0x8(1)
    stw 0, 0x0(31)
    .4byte 0x93ED9330 # stw r31, lbl_8053AEF0@sda21(r0)
    bl fn_80084370
    mr. 30, 3
    .4byte 0x41820008 # beq .L_8044379C
    bl fn_8009C4EC
L_8044379C:
    lis 3, lbl_80529DEC@ha
    stw 30, 0x4(31)
    addi 5, 3, lbl_80529DEC@l
    lis 3, lbl_8048FBC4@ha
    lwz 6, 0x10(5)
    addi 4, 3, lbl_8048FBC4@l
    lwz 3, 0x4(31)
    lis 5, 0x110
    bl fn_8009C69C
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804437DC
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804437DC:
    stw 3, 0x8(31)
    lis 5, 0x746d
    lis 4, 0x5074
    lwz 3, 0x4(31)
    addi 6, 5, 0x6170
    addi 5, 4, 0x6573
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
    .4byte 0x41820010 # beq .L_8044382C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8044382C:
    stw 3, 0xc(31)
    lis 5, 0x7074
    lis 4, 0x50
    lwz 3, 0x4(31)
    addi 6, 5, 0x656e
    addi 5, 4, 0x6d61
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xc(31)
    bl fn_80402F04
    li 4, 0x0
    li 0, 0x3
    stb 4, 0x14(31)
    mr 3, 31
    sth 4, 0x10(31)
    sth 4, 0x12(31)
    stb 0, 0x15(31)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

