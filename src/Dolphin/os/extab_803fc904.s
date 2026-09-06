# fn_803FC904 - actor@lbl_804B0F10: destructor (0x2C0)
.section extab, "a"
.balign 4
.global etb_8000FEFC
etb_8000FEFC:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000FEFC, 8

.section extabindex, "a"
.balign 4
.global eti_8001FDEC
eti_8001FDEC:
    .4byte fn_803FC904
    .4byte 0x000002C0
    .4byte etb_8000FEFC
.size eti_8001FDEC, 12

.text
.balign 4
.global fn_803FC904

fn_803FC904:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x41820290 # beq .L_803FCBAC
    lis 3, lbl_804B0F10@ha
    addi 0, 3, lbl_804B0F10@l
    stw 0, 0x0(30)
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803FC94C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FC94C:
    li 0, 0x0
    stw 0, 0x8(30)
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803FC974
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FC974:
    li 0, 0x0
    stw 0, 0x4(30)
    lwz 3, 0xc(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803FC99C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FC99C:
    li 0, 0x0
    stw 0, 0xc(30)
    lwz 3, 0x10(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803FC9C4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FC9C4:
    li 0, 0x0
    stw 0, 0x10(30)
    lwz 3, 0x14(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803FC9EC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FC9EC:
    li 0, 0x0
    mr 29, 30
    stw 0, 0x14(30)
    li 28, 0x0
L_803FC9FC:
    lwz 3, 0x18(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803FCA1C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FCA1C:
    li 0, 0x0
    stw 0, 0x18(29)
    lwz 3, 0x38(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803FCA44
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FCA44:
    li 0, 0x0
    stw 0, 0x38(29)
    lwz 3, 0x28(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803FCA6C
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FCA6C:
    li 0, 0x0
    stw 0, 0x28(29)
    lwz 3, 0x48(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803FCA94
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FCA94:
    addi 28, 28, 0x1
    li 0, 0x0
    cmpwi 28, 0x4
    stw 0, 0x48(29)
    addi 29, 29, 0x4
    .4byte 0x4180FF54 # blt .L_803FC9FC
    lwz 3, 0x60(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803FCACC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FCACC:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x60(30)
    li 27, 0x0
L_803FCADC:
    lwz 3, 0x64(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803FCAFC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FCAFC:
    addi 27, 27, 0x1
    stw 29, 0x64(28)
    cmpwi 27, 0x4
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803FCADC
    lwz 3, 0x58(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803FCB30
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FCB30:
    li 0, 0x0
    stw 0, 0x58(30)
    lwz 3, 0x5c(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803FCB58
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803FCB58:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x5c(30)
    li 27, 0x0
L_803FCB68:
    lwz 3, 0x78(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803FCB88
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_803FCB88:
    addi 27, 27, 0x1
    stw 29, 0x78(28)
    cmpwi 27, 0x4
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803FCB68
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_803FCBAC
    mr 3, 30
    bl dtor_80084580
L_803FCBAC:
    mr 3, 30
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

