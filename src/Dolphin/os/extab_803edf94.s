# fn_803EDF94 - actor@lbl_804B0B00: destructor (0x2C0)
.section extab, "a"
.balign 4
.global etb_8000FD64
etb_8000FD64:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000FD64, 8

.section extabindex, "a"
.balign 4
.global eti_8001FC78
eti_8001FC78:
    .4byte fn_803EDF94
    .4byte 0x000002C0
    .4byte etb_8000FD64
.size eti_8001FC78, 12

.text
.balign 4
.global fn_803EDF94

fn_803EDF94:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x41820290 # beq .L_803EE23C
    lis 3, lbl_804B0B00@ha
    addi 0, 3, lbl_804B0B00@l
    stw 0, 0x0(30)
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803EDFDC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803EDFDC:
    li 0, 0x0
    stw 0, 0x4(30)
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803EE004
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803EE004:
    li 0, 0x0
    stw 0, 0x8(30)
    lwz 3, 0xc(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803EE02C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803EE02C:
    li 0, 0x0
    stw 0, 0xc(30)
    lwz 3, 0x10(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803EE054
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803EE054:
    li 0, 0x0
    stw 0, 0x10(30)
    lwz 3, 0x14(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803EE07C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803EE07C:
    li 0, 0x0
    mr 29, 30
    stw 0, 0x14(30)
    li 28, 0x0
L_803EE08C:
    lwz 3, 0x18(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803EE0AC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803EE0AC:
    li 0, 0x0
    stw 0, 0x18(29)
    lwz 3, 0x38(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803EE0D4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803EE0D4:
    li 0, 0x0
    stw 0, 0x38(29)
    lwz 3, 0x28(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803EE0FC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803EE0FC:
    li 0, 0x0
    stw 0, 0x28(29)
    lwz 3, 0x48(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803EE124
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803EE124:
    addi 28, 28, 0x1
    li 0, 0x0
    cmpwi 28, 0x4
    stw 0, 0x48(29)
    addi 29, 29, 0x4
    .4byte 0x4180FF54 # blt .L_803EE08C
    lwz 3, 0x64(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803EE15C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803EE15C:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x64(30)
    li 27, 0x0
L_803EE16C:
    lwz 3, 0x68(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803EE18C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803EE18C:
    addi 27, 27, 0x1
    stw 29, 0x68(28)
    cmpwi 27, 0x4
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803EE16C
    lwz 3, 0x5c(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803EE1C0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803EE1C0:
    li 0, 0x0
    stw 0, 0x5c(30)
    lwz 3, 0x60(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803EE1E8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803EE1E8:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x60(30)
    li 27, 0x0
L_803EE1F8:
    lwz 3, 0x7c(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803EE218
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_803EE218:
    addi 27, 27, 0x1
    stw 29, 0x7c(28)
    cmpwi 27, 0x4
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803EE1F8
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_803EE23C
    mr 3, 30
    bl dtor_80084580
L_803EE23C:
    mr 3, 30
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

