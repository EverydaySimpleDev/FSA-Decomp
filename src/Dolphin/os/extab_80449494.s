# fn_80449494 (dtor) + fn_804495B8 (real ctor, direct vtable-install) - a
# FOURTEENTH sibling of the "weapon/joint-attachment resolver" family
# (vtable lbl_804B1C90, short variant). Reuses the shared lbl_804AF86C
# component.
.section extab, "a"
.balign 4
.global etb_800113DC
etb_800113DC:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_800113DC, 8

.global etb_800113E4
etb_800113E4:
    .4byte 0x20080000
    .4byte 0x00000044
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001C
    .4byte dtor_80084580
.size etb_800113E4, 24

.section extabindex, "a"
.balign 4
.global eti_80021334
eti_80021334:
    .4byte fn_80449494
    .4byte 0x00000124
    .4byte etb_800113DC
.size eti_80021334, 12

.global eti_80021340
eti_80021340:
    .4byte fn_804495B8
    .4byte 0x000001B0
    .4byte etb_800113E4
.size eti_80021340, 12

.text
.balign 4
.global fn_80449494
.global fn_804495B8

fn_80449494:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x418200DC # beq .L_80449594
    lis 3, lbl_804B1C90@ha
    addi 0, 3, lbl_804B1C90@l
    stw 0, 0x0(28)
    lwz 3, 0x4(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_804494E8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_804494E8:
    li 0, 0x0
    stw 0, 0x4(28)
    lwz 3, 0x8(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80449510
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80449510:
    li 0, 0x0
    mr 31, 28
    stw 0, 0x8(28)
    li 30, 0x0
L_80449520:
    lwz 3, 0xc(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80449540
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80449540:
    li 0, 0x0
    stw 0, 0xc(31)
    lwz 3, 0x1c(31)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80449568
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80449568:
    addi 30, 30, 0x1
    li 3, 0x0
    cmpwi 30, 0x4
    stw 3, 0x1c(31)
    addi 31, 31, 0x4
    .4byte 0x4180FFA4 # blt .L_80449520
    extsh. 0, 29
    .4byte 0x906D9358 # stw r3, lbl_8053AF18@sda21(r0)
    .4byte 0x4081000C # ble .L_80449594
    mr 3, 28
    bl dtor_80084580
L_80449594:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_804495B8:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_804B1C90@ha
    stw 0, 0x24(1)
    addi 0, 4, lbl_804B1C90@l
    stw 31, 0x1c(1)
    mr 31, 3
    li 3, 0x118
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    stw 0, 0x0(31)
    .4byte 0x93ED9358 # stw r31, lbl_8053AF18@sda21(r0)
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820008 # beq .L_804495FC
    bl fn_8009C4EC
L_804495FC:
    lis 3, lbl_80529DEC@ha
    stw 28, 0x4(31)
    addi 5, 3, lbl_80529DEC@l
    lis 3, lbl_80490C30@ha
    lwz 6, 0x10(5)
    addi 4, 3, lbl_80490C30@l
    lwz 3, 0x4(31)
    lis 5, 0x110
    bl fn_8009C69C
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8044963C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8044963C:
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
    lis 3, lbl_80490940@ha
    mr 30, 31
    addi 29, 3, lbl_80490940@l
    li 28, 0x0
L_80449680:
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8044969C
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_8044969C:
    stw 3, 0xc(30)
    lwz 5, 0x30(29)
    lwz 3, 0x4(31)
    lwz 6, 0x34(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0xc(30)
    bl fn_80402F04
    li 3, 0x2c
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_804496E4
    lis 4, lbl_804AF86C@ha
    addi 0, 4, lbl_804AF86C@l
    stw 0, 0x0(3)
L_804496E4:
    stw 3, 0x1c(30)
    lwz 5, 0x68(29)
    lwz 3, 0x4(31)
    lwz 6, 0x6c(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    lwz 3, 0x1c(30)
    bl fn_80402F04
    addi 28, 28, 0x1
    addi 29, 29, 0x70
    cmpwi 28, 0x4
    addi 30, 30, 0x4
    .4byte 0x4180FF60 # blt .L_80449680
    li 0, 0x0
    mr 3, 31
    stb 0, 0x2c(31)
    stb 0, 0x2d(31)
    stb 0, 0x2e(31)
    stb 0, 0x2f(31)
    stb 0, 0x30(31)
    stb 0, 0x31(31)
    stb 0, 0x32(31)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

