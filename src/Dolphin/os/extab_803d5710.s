# fn_803D5710 - destructor (0x1D0)
.section extab, "a"
.balign 4
.global etb_8000FA34
etb_8000FA34:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000FA34, 8

.section extabindex, "a"
.balign 4
.global eti_8001F8D0
eti_8001F8D0:
    .4byte fn_803D5710
    .4byte 0x000001D0
    .4byte etb_8000FA34
.size eti_8001F8D0, 12

.text
.balign 4
.global fn_803D5710

fn_803D5710:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x418201A0 # beq .L_803D58C8
    lis 4, lbl_804B0288@ha
    lis 3, lbl_80529DEC@ha
    addi 0, 4, lbl_804B0288@l
    stw 0, 0x0(30)
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x8(3)
    bl fn_80083A68
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D5768
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D5768:
    li 0, 0x0
    stw 0, 0x4(30)
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D5790
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D5790:
    li 0, 0x0
    stw 0, 0x8(30)
    lwz 3, 0x14(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D57B8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D57B8:
    li 0, 0x0
    stw 0, 0x14(30)
    lwz 3, 0x18(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D57E0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D57E0:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x18(30)
    li 27, 0x0
L_803D57F0:
    lwz 3, 0x1c(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D5810
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D5810:
    addi 27, 27, 0x1
    stw 29, 0x1c(28)
    cmpwi 27, 0x2
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803D57F0
    lwz 3, 0x24(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D5844
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D5844:
    li 0, 0x0
    stw 0, 0x24(30)
    lwz 3, 0x28(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D586C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D586C:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x28(30)
    li 27, 0x0
L_803D587C:
    lwz 3, 0x2c(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D589C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D589C:
    addi 27, 27, 0x1
    stw 29, 0x2c(28)
    cmpwi 27, 0x8
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803D587C
    li 3, 0x0
    extsh. 0, 31
    .4byte 0x906D91F8 # stw r3, lbl_8053ADB8@sda21(r0)
    .4byte 0x4081000C # ble .L_803D58C8
    mr 3, 30
    bl dtor_80084580
L_803D58C8:
    mr 3, 30
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

