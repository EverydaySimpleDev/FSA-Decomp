# fn_803D8D74 - actor@lbl_804B03D8: destructor (0x2A8)
# Full effect-handle teardown (fn_800EC240) + handle-resolve (fn_8013C824).
# Vtable is SHORT (4 words: 0,0,dtor,0) - the data immediately after
# (0xa,0xb,0xc,0xd...) is an unrelated adjacent table, not more vtable
# slots, same pattern documented for actor #7/lbl_804AF878.
.section extab, "a"
.balign 4
.global etb_8000FAEC
etb_8000FAEC:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000FAEC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F9B4
eti_8001F9B4:
    .4byte fn_803D8D74
    .4byte 0x000002A8
    .4byte etb_8000FAEC
.size eti_8001F9B4, 12

.text
.balign 4
.global fn_803D8D74

fn_803D8D74:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x41820278 # beq .L_803D9004
    lis 4, lbl_804B03D8@ha
    lis 3, lbl_80529DEC@ha
    addi 0, 4, lbl_804B03D8@l
    stw 0, 0x0(30)
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x8(3)
    bl fn_80083A68
    lwz 5, 0x4c(30)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_803D8DD4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x4c(30)
L_803D8DD4:
    addi 28, 30, 0x4
    li 27, 0x1
    li 29, 0x0
L_803D8DE0:
    lwz 0, 0x4c(28)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_803D8E00
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x4c(28)
    bl fn_800EC240
    stw 29, 0x4c(28)
L_803D8E00:
    addi 27, 27, 0x1
    addi 28, 28, 0x4
    cmpwi 27, 0x3
    .4byte 0x4180FFD4 # blt .L_803D8DE0
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D8E30
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D8E30:
    li 0, 0x0
    stw 0, 0x4(30)
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D8E58
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D8E58:
    li 0, 0x0
    stw 0, 0x8(30)
    lwz 3, 0x1c(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D8E80
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D8E80:
    li 0, 0x0
    stw 0, 0x1c(30)
    lwz 3, 0x20(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D8EA8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D8EA8:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x20(30)
    li 27, 0x0
L_803D8EB8:
    lwz 3, 0x24(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D8ED8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D8ED8:
    addi 27, 27, 0x1
    stw 29, 0x24(28)
    cmpwi 27, 0x2
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803D8EB8
    lwz 3, 0x2c(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D8F0C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D8F0C:
    li 0, 0x0
    stw 0, 0x2c(30)
    lwz 3, 0x30(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D8F34
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D8F34:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x30(30)
    li 27, 0x0
L_803D8F44:
    lwz 3, 0x34(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D8F64
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D8F64:
    addi 27, 27, 0x1
    stw 29, 0x34(28)
    cmpwi 27, 0x4
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803D8F44
    lwz 3, 0x44(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D8F98
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D8F98:
    li 0, 0x0
    stw 0, 0x44(30)
    lwz 3, 0x10(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D8FC0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D8FC0:
    li 0, 0x0
    stw 0, 0x10(30)
    lwz 3, 0x18(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803D8FE8
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803D8FE8:
    li 3, 0x0
    extsh. 0, 31
    stw 3, 0x18(30)
    .4byte 0x906D9200 # stw r3, lbl_8053ADC0@sda21(r0)
    .4byte 0x4081000C # ble .L_803D9004
    mr 3, 30
    bl dtor_80084580
L_803D9004:
    mr 3, 30
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

