# fn_80426AD4 - actor@lbl_804B146C: destructor (0x318)
.section extab, "a"
.balign 4
.global etb_80010674
etb_80010674:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80010674, 8

.section extabindex, "a"
.balign 4
.global eti_800204DC
eti_800204DC:
    .4byte fn_80426AD4
    .4byte 0x00000318
    .4byte etb_80010674
.size eti_800204DC, 12

.text
.balign 4
.global fn_80426AD4

fn_80426AD4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr. 30, 3
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    .4byte 0x418202D0 # beq .L_80426DC8
    lis 3, lbl_804B146C@ha
    addi 0, 3, lbl_804B146C@l
    stw 0, 0x0(30)
    lwz 3, 0x4c(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426B28
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426B28:
    li 0, 0x0
    stw 0, 0x4c(30)
    lwz 3, 0xf0(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426B50
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426B50:
    li 0, 0x0
    stw 0, 0xf0(30)
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426B78
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426B78:
    li 0, 0x0
    mr 28, 30
    stw 0, 0x4(30)
    li 29, 0x0
L_80426B88:
    lwz 3, 0x8(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426BA8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426BA8:
    li 0, 0x0
    stw 0, 0x8(28)
    lwz 3, 0x2c(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426BD0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426BD0:
    addi 29, 29, 0x1
    li 0, 0x0
    cmpwi 29, 0x4
    stw 0, 0x2c(28)
    addi 28, 28, 0x4
    .4byte 0x4180FFA4 # blt .L_80426B88
    lwz 3, 0x18(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426C08
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426C08:
    li 0, 0x0
    mr 29, 30
    stw 0, 0x18(30)
    li 28, 0x0
L_80426C18:
    lwz 3, 0x50(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426C38
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426C38:
    li 0, 0x0
    stw 0, 0x50(29)
    lwz 3, 0x60(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426C60
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426C60:
    li 0, 0x0
    stw 0, 0x60(29)
    lwz 3, 0x70(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426C88
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426C88:
    li 0, 0x0
    stw 0, 0x70(29)
    lwz 3, 0x80(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426CB0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426CB0:
    li 0, 0x0
    stw 0, 0x80(29)
    lwz 3, 0x90(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426CD8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426CD8:
    li 0, 0x0
    stw 0, 0x90(29)
    lwz 3, 0xa0(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426D00
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426D00:
    li 0, 0x0
    stw 0, 0xa0(29)
    lwz 3, 0xb0(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426D28
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426D28:
    li 0, 0x0
    stw 0, 0xb0(29)
    lwz 3, 0xc0(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426D50
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426D50:
    li 0, 0x0
    stw 0, 0xc0(29)
    lwz 3, 0xd0(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426D78
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426D78:
    li 0, 0x0
    stw 0, 0xd0(29)
    lwz 3, 0xe0(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80426DA0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80426DA0:
    addi 28, 28, 0x1
    li 0, 0x0
    cmpwi 28, 0x4
    stw 0, 0xe0(29)
    addi 29, 29, 0x4
    .4byte 0x4180FE64 # blt .L_80426C18
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80426DC8
    mr 3, 30
    bl dtor_80084580
L_80426DC8:
    lwz 0, 0x24(1)
    mr 3, 30
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

