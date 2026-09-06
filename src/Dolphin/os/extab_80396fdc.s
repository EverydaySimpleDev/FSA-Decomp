# fn_80396FDC - component A: destructor (0x2c8)
.section extab, "a"
.balign 4
.global etb_8000EFD8
etb_8000EFD8:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000EFD8, 8

.section extabindex, "a"
.balign 4
.global eti_8001EE68
eti_8001EE68:
    .4byte fn_80396FDC
    .4byte 0x000002C8
    .4byte etb_8000EFD8
.size eti_8001EE68, 12

.text
.balign 4
.global fn_80396FDC

fn_80396FDC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 27, 0x2c(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x41820298 # beq .L_8039728C
    lis 3, lbl_804AF5A0@ha
    mr 28, 30
    addi 0, 3, lbl_804AF5A0@l
    li 27, 0x0
    stw 0, 0x0(30)
    li 29, 0x0
L_80397010:
    lwz 3, 0x68(28)
    bl dtor_80084580
    addi 27, 27, 0x1
    stw 29, 0x68(28)
    cmpwi 27, 0xc
    addi 28, 28, 0x4
    .4byte 0x4180FFE8 # blt .L_80397010
    lwz 3, 0x3bc(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8039704C
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_8039704C:
    li 0, 0x0
    stw 0, 0x3bc(30)
    lwz 3, 0x20(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80397074
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80397074:
    li 0, 0x0
    stw 0, 0x20(30)
    lwz 3, 0x24(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8039709C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8039709C:
    li 0, 0x0
    stw 0, 0x24(30)
    lwz 3, 0x28(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803970C4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803970C4:
    li 0, 0x0
    stw 0, 0x28(30)
    lwz 3, 0x2c(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803970EC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803970EC:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x2c(30)
    li 27, 0x0
L_803970FC:
    lwz 3, 0x30(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8039711C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8039711C:
    addi 27, 27, 0x1
    stw 29, 0x30(28)
    cmpwi 27, 0xb
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803970FC
    lwz 3, 0x5c(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80397150
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80397150:
    li 0, 0x0
    stw 0, 0x5c(30)
    lwz 29, 0x4(30)
    .4byte 0x48000040 # b .L_8039719C
L_80397160:
    lwz 0, 0xc(29)
    addi 3, 1, 0x10
    addi 4, 29, 0x8
    addi 5, 1, 0x14
    stw 0, 0xc(1)
    stw 0, 0x8(1)
    stw 0, 0x18(1)
    stw 0, 0x14(1)
    bl fn_800878A4
    addi 3, 29, 0x8
    lwz 4, 0x8(1)
    lwz 12, 0x14(29)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_8039719C:
    lwz 0, 0x8(29)
    cmplwi 0, 0x0
    .4byte 0x4082FFBC # bne .L_80397160
    li 0, 0x0
    stw 0, 0x18(29)
    stw 0, 0x1c(29)
    lwz 29, 0x4(30)
    cmplwi 29, 0x0
    .4byte 0x41820018 # beq .L_803971D4
    addi 3, 29, 0x8
    li 4, -0x1
    bl fn_80077134
    mr 3, 29
    bl dtor_80084580
L_803971D4:
    li 0, 0x0
    stw 0, 0x4(30)
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803971FC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803971FC:
    li 0, 0x0
    stw 0, 0x8(30)
    lwz 3, 0xc(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80397224
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80397224:
    li 0, 0x0
    stw 0, 0xc(30)
    lwz 3, 0x10(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8039724C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8039724C:
    li 0, 0x0
    stw 0, 0x10(30)
    lwz 3, 0x14(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80397274
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_80397274:
    li 3, 0x0
    extsh. 0, 31
    stw 3, 0x14(30)
    .4byte 0x4081000C # ble .L_8039728C
    mr 3, 30
    bl dtor_80084580
L_8039728C:
    mr 3, 30
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

