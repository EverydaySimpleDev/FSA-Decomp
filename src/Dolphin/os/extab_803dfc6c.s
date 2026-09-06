# fn_803DFC6C - actor@lbl_804B0688: destructor (0x2D4)
.section extab, "a"
.balign 4
.global etb_8000FC04
etb_8000FC04:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000FC04, 8

.section extabindex, "a"
.balign 4
.global eti_8001FAE0
eti_8001FAE0:
    .4byte fn_803DFC6C
    .4byte 0x000002D4
    .4byte etb_8000FC04
.size eti_8001FAE0, 12

.text
.balign 4
.global fn_803DFC6C

fn_803DFC6C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 30, 3
    mr 31, 4
    .4byte 0x418202A4 # beq .L_803DFF28
    lis 4, lbl_804B0688@ha
    lis 3, lbl_80529DEC@ha
    addi 0, 4, lbl_804B0688@l
    stw 0, 0x0(30)
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x8(3)
    bl fn_80083A68
    lbz 0, 0xa0(30)
    cmplwi 0, 0x2
    .4byte 0x40820014 # bne .L_803DFCC0
    lwz 3, 0x64(30)
    bl fn_80427D94
    li 0, 0x0
    stb 0, 0xa0(30)
L_803DFCC0:
    lwz 3, 0x60(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803DFCE0
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803DFCE0:
    li 0, 0x0
    stw 0, 0x60(30)
    lwz 3, 0x64(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803DFD08
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803DFD08:
    li 0, 0x0
    stw 0, 0x64(30)
    lwz 3, 0x4(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803DFD30
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803DFD30:
    li 0, 0x0
    stw 0, 0x4(30)
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803DFD58
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803DFD58:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x8(30)
    li 27, 0x0
L_803DFD68:
    lwz 3, 0x14(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803DFD88
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803DFD88:
    addi 27, 27, 0x1
    stw 29, 0x14(28)
    cmpwi 27, 0x7
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803DFD68
    lwz 3, 0x30(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803DFDBC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803DFDBC:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x30(30)
    li 27, 0x0
L_803DFDCC:
    lwz 3, 0x34(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803DFDEC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803DFDEC:
    addi 27, 27, 0x1
    stw 29, 0x34(28)
    cmpwi 27, 0x2
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803DFDCC
    lwz 3, 0x40(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803DFE20
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803DFE20:
    li 29, 0x0
    mr 28, 30
    stw 29, 0x40(30)
    li 27, 0x0
L_803DFE30:
    lwz 3, 0x44(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803DFE50
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803DFE50:
    addi 27, 27, 0x1
    stw 29, 0x44(28)
    cmpwi 27, 0x2
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803DFE30
    mr 28, 30
    li 27, 0x0
    li 29, 0x0
L_803DFE70:
    lwz 3, 0x50(28)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803DFE90
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803DFE90:
    addi 27, 27, 0x1
    stw 29, 0x50(28)
    cmpwi 27, 0x2
    addi 28, 28, 0x4
    .4byte 0x4180FFD0 # blt .L_803DFE70
    lwz 3, 0x58(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803DFEC4
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803DFEC4:
    li 0, 0x0
    stw 0, 0x58(30)
    lwz 3, 0x10(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_803DFEEC
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_803DFEEC:
    li 0, 0x0
    lis 3, lbl_80529DEC@ha
    stw 0, 0x10(30)
    addi 3, 3, lbl_80529DEC@l
    lwz 3, 0x2c(3)
    lwz 12, 0x0(3)
    lwz 12, 0xc(12)
    mtctr 12
    bctrl
    li 3, 0x0
    extsh. 0, 31
    .4byte 0x906D9210 # stw r3, lbl_8053ADD0@sda21(r0)
    .4byte 0x4081000C # ble .L_803DFF28
    mr 3, 30
    bl dtor_80084580
L_803DFF28:
    mr 3, 30
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

