# fn_803CFFBC - destructor (0x2A8)
.section extab, "a"
.balign 4
.global etb_8000F90C
etb_8000F90C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000F90C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F75C
eti_8001F75C:
    .4byte fn_803CFFBC
    .4byte 0x000002A8
    .4byte etb_8000F90C
.size eti_8001F75C, 12

.text
.balign 4
.global fn_803CFFBC

fn_803CFFBC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x41820278 # beq .L_803D024C
    lis 4, lbl_804AFF60@ha
    lis 3, lbl_80529DEC@ha
    addi 0, 4, lbl_804AFF60@l
    stw 0, 0x0(30)
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x8(3)
    bl fn_80083A68
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D0014
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D0014:
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D0034
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D0034:
    lwz 3, 0x10(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D0054
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D0054:
    li 0, 0x0
    stw 0, 0x10(30)
    lwz 3, 0x14(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D007C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D007C:
    li 0, 0x0
    stw 0, 0x14(30)
    lwz 3, 0x18(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D00A4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D00A4:
    li 0, 0x0
    stw 0, 0x18(30)
    lwz 3, 0x1c(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D00CC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D00CC:
    li 0, 0x0
    stw 0, 0x1c(30)
    lwz 3, 0x20(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D00F4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D00F4:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x20(30)
    li 27, 0x0
L_803D0104:
    lwz 3, 0x24(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D0124
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D0124:
    addi 27, 27, 0x1
    stw 29, 0x24(28)
    cmpwi 27, 0x4
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803D0104
    lwz 3, 0x34(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D0158
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D0158:
    li 0, 0x0
    mr 28, 30
    stw 0, 0x34(30)
    li 27, 0x0
L_803D0168:
    lwz 3, 0x38(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D0188
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D0188:
    li 0, 0x0
    stw 0, 0x38(28)
    lwz 3, 0x44(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D01B0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D01B0:
    addi 27, 27, 0x1
    li 0, 0x0
    cmpwi 27, 0x3
    stw 0, 0x44(28)
    addi 28, 28, 0x4
    .4byte 0x4180FFA4 # blt .L_803D0168
    lwz 3, 0x50(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D01E8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D01E8:
    li 0, 0x0
    stw 0, 0x50(30)
    lwz 3, 0x54(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D0210
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D0210:
    li 0, 0x0
    lis 3, lbl_80529DEC@ha
    stw 0, 0x54(30)
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x30(3)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    li 3, 0x0
    extsh. 0, 31
    .4byte 0x906D91F0 # stw r3, lbl_8053ADB0@sda21(r0)
    .4byte 0x4081000C # ble .L_803D024C
    mr 3, 30
    bl dtor_80084580
L_803D024C:
    mr 3, 30
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

