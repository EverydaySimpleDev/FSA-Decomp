# fn_803B6D04 - DESTRUCTOR (0x2d4) - full effect-handle teardown (fn_800EC240) + handle-resolve (fn_8013C824)
.section extab, "a"
.balign 4
.global etb_8000F50C
etb_8000F50C:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000F50C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F2AC
eti_8001F2AC:
    .4byte fn_803B6D04
    .4byte 0x000002D4
    .4byte etb_8000F50C
.size eti_8001F2AC, 12

.text
.balign 4
.global fn_803B6D04

fn_803B6D04:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x418202A4 # beq .L_803B6FC0
    lis 3, lbl_804AF9A0@ha
    mr 28, 30
    addi 0, 3, lbl_804AF9A0@l
    li 27, 0x0
    stw 0, 0x0(30)
    li 29, 0x0
L_803B6D38:
    lwz 0, 0x1c8(28)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_803B6D58
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x1c8(28)
    bl fn_800EC240
    stw 29, 0x1c8(28)
L_803B6D58:
    addi 27, 27, 0x1
    addi 28, 28, 0x4
    cmpwi 27, 0x1e
    .4byte 0x4180FFD4 # blt .L_803B6D38
    li 0, 0x4
    mr 5, 30
    mtctr 0
L_803B6D74:
    lwz 6, 0x1a8(5)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_803B6D9C
    lwz 4, 0xf4(6)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x1a8(5)
L_803B6D9C:
    lwz 6, 0x188(5)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_803B6DC4
    lwz 4, 0xf4(6)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x188(5)
L_803B6DC4:
    lwz 6, 0x198(5)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_803B6DEC
    lwz 4, 0xf4(6)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x198(5)
L_803B6DEC:
    lwz 6, 0x1b8(5)
    cmplwi 6, 0x0
    .4byte 0x41820020 # beq .L_803B6E14
    lwz 4, 0xf4(6)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(6)
    stw 3, 0x24(6)
    stw 0, 0x1b8(5)
L_803B6E14:
    addi 5, 5, 0x4
    .4byte 0x4200FF5C # bdnz .L_803B6D74
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x8(3)
    bl fn_80083A68
    li 27, 0x0
    mr 28, 30
L_803B6E34:
    lwz 3, 0x4(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803B6E54
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803B6E54:
    li 0, 0x0
    stw 0, 0x4(28)
    lwz 3, 0x10(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803B6E7C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803B6E7C:
    addi 27, 27, 0x1
    li 0, 0x0
    cmpwi 27, 0x3
    stw 0, 0x10(28)
    addi 28, 28, 0x4
    .4byte 0x4180FFA4 # blt .L_803B6E34
    lwz 3, 0x20(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803B6EB4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803B6EB4:
    li 0, 0x0
    stw 0, 0x20(30)
    lwz 3, 0x1c(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803B6EDC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803B6EDC:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x1c(30)
    li 27, 0x0
L_803B6EEC:
    lwz 3, 0x24(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803B6F0C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803B6F0C:
    addi 27, 27, 0x1
    stw 29, 0x24(28)
    cmpwi 27, 0x3
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803B6EEC
    lwz 3, 0x170(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803B6F40
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803B6F40:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x170(30)
    li 27, 0x0
L_803B6F50:
    lwz 3, 0x174(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803B6F70
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_803B6F70:
    addi 27, 27, 0x1
    stw 29, 0x174(28)
    cmpwi 27, 0x4
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803B6F50
    lwz 3, 0x184(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803B6FA4
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_803B6FA4:
    li 3, 0x0
    extsh. 0, 31
    stw 3, 0x184(30)
    .4byte 0x906D91E0 # stw r3, lbl_8053ADA0@sda21(r0)
    .4byte 0x4081000C # ble .L_803B6FC0
    mr 3, 30
    bl dtor_80084580
L_803B6FC0:
    mr 3, 30
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

