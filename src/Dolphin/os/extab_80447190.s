# fn_80447190 (dtor) + fn_8044728C (real ctor, direct vtable-install) - an
# ELEVENTH sibling of the "weapon/joint-attachment resolver" family (vtable
# lbl_804B1BE8, short variant). Reuses the shared lbl_804AF86C component.
.section extab, "a"
.balign 4
.global etb_8001131C
etb_8001131C:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8001131C, 8

.global etb_80011324
etb_80011324:
    .4byte 0x20080000
    .4byte 0x00000044
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001C
    .4byte dtor_80084580
.size etb_80011324, 24

.section extabindex, "a"
.balign 4
.global eti_8002125C
eti_8002125C:
    .4byte fn_80447190
    .4byte 0x000000FC
    .4byte etb_8001131C
.size eti_8002125C, 12

.global eti_80021268
eti_80021268:
    .4byte fn_8044728C
    .4byte 0x00000168
    .4byte etb_80011324
.size eti_80021268, 12

.text
.balign 4
.global fn_80447190
.global fn_8044728C

fn_80447190:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x418200B4 # beq .L_80447268
    lis 3, lbl_804B1BE8@ha
    addi 0, 3, lbl_804B1BE8@l
    stw 0, 0x0(28)
    lwz 3, 0x4(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804471E4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804471E4:
    li 0, 0x0
    mr 31, 28
    stw 0, 0x4(28)
    li 30, 0x0
L_804471F4:
    lwz 3, 0x8(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80447214
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80447214:
    li 0, 0x0
    stw 0, 0x8(31)
    lwz 3, 0x18(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8044723C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8044723C:
    addi 30, 30, 0x1
    li 3, 0x0
    cmpwi 30, 0x4
    stw 3, 0x18(31)
    addi 31, 31, 0x4
    .4byte 0x4180FFA4 # blt .L_804471F4
    extsh. 0, 29
    .4byte 0x906D9340 # stw r3, lbl_8053AF00@sda21(r0)
    .4byte 0x4081000C # ble .L_80447268
    mr 3, 28
    bl dtor_80084580
L_80447268:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8044728C:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_804B1BE8@ha
    stw 0, 0x24(1)
    addi 0, 4, lbl_804B1BE8@l
    stw 31, 0x1c(1)
    mr 31, 3
    li 3, 0x118
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    stw 0, 0x0(31)
    .4byte 0x93ED9340 # stw r31, lbl_8053AF00@sda21(r0)
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820008 # beq .L_804472D0
    bl fn_8009C4EC
L_804472D0:
    lis 3, lbl_80529DEC@ha
    stw 28, 0x4(31)
    addi 5, 3, lbl_80529DEC@l
    lis 3, lbl_80490400@ha
    lwz 6, 0x10(5)
    addi 4, 3, lbl_80490400@l
    lwz 3, 0x4(31)
    lis 5, 0x110
    bl fn_8009C69C
    lis 3, lbl_80490038@ha
    mr 30, 31
    addi 29, 3, lbl_80490038@l
    li 28, 0x0
L_80447304:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80447320
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80447320:
    stw 3, 0x8(30)
    lwz 5, 0x30(29)
    lwz 3, 0x4(31)
    lwz 6, 0x34(29)
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
    .4byte 0x41820010 # beq .L_80447368
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_80447368:
    stw 3, 0x18(30)
    lwz 5, 0xb8(29)
    lwz 3, 0x4(31)
    lwz 6, 0xbc(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x18(30)
    bl fn_80402F04
    addi 28, 28, 0x1
    addi 29, 29, 0xc0
    cmpwi 28, 0x4
    addi 30, 30, 0x4
    .4byte 0x4180FF60 # blt .L_80447304
    li 0, 0x0
    mr 3, 31
    stb 0, 0x28(31)
    stb 0, 0x2c(31)
    stb 0, 0x29(31)
    stb 0, 0x2d(31)
    stb 0, 0x2a(31)
    stb 0, 0x2e(31)
    stb 0, 0x2b(31)
    stb 0, 0x2f(31)
    stb 0, 0x30(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

