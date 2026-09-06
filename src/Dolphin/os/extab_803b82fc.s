# fn_803B82FC - actor@lbl_804AFAB0: destructor (0x118)
# Full effect-handle teardown (fn_800EC240) + handle-resolve (fn_8013C824).
.section extab, "a"
.balign 4
.global etb_8000F5F4
etb_8000F5F4:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000F5F4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F300
eti_8001F300:
    .4byte fn_803B82FC
    .4byte 0x00000118
    .4byte etb_8000F5F4
.size eti_8001F300, 12

.text
.balign 4
.global fn_803B82FC

fn_803B82FC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    .4byte 0x418200E8 # beq .L_803B83FC
    lis 3, lbl_804AFAB0@ha
    mr 30, 27
    addi 0, 3, lbl_804AFAB0@l
    li 29, 0x0
    stw 0, 0x0(27)
    li 31, 0x0
L_803B8330:
    lwz 0, 0x24(30)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_803B8350
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x24(30)
    bl fn_800EC240
    stw 31, 0x24(30)
L_803B8350:
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x32
    .4byte 0x4180FFD4 # blt .L_803B8330
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x8(3)
    bl fn_80083A68
    lwz 3, 0x4(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803B8390
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803B8390:
    li 0, 0x0
    stw 0, 0x4(27)
    lwz 3, 0x1c(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803B83B8
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_803B83B8:
    li 0, 0x0
    stw 0, 0x1c(27)
    lwz 3, 0x20(27)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803B83E0
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_803B83E0:
    li 3, 0x0
    extsh. 0, 28
    stw 3, 0x20(27)
    .4byte 0x906D91E8 # stw r3, lbl_8053ADA8@sda21(r0)
    .4byte 0x4081000C # ble .L_803B83FC
    mr 3, 27
    bl dtor_80084580
L_803B83FC:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

