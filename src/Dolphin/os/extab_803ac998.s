# fn_803AC998 - helper (0x40c)
.section extab, "a"
.balign 4
.global etb_8000F41C
etb_8000F41C:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000F41C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F144
eti_8001F144:
    .4byte fn_803AC998
    .4byte 0x0000040C
    .4byte etb_8000F41C
.size eti_8001F144, 12

.text
.balign 4
.global fn_803AC998

fn_803AC998:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 31, 3
    li 4, 0x100
    lwz 3, 0x440(3)
    li 5, -0x1
    subi 0, 3, 0x1
    stw 0, 0x440(31)
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820110 # beq .L_803ACAE8
    lwz 0, 0x440(31)
    cmpwi 0, 0x3c
    .4byte 0x418000FC # blt .L_803ACAE0
    lwz 0, 0x450(31)
    cmpwi 0, 0x2
    .4byte 0x40800038 # bge .L_803ACA28
    lwz 3, 0x98(31)
    li 0, 0x0
    stb 0, 0xb0(3)
    lwz 3, 0x98(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x98(31)
    lfs 2, 0x408(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x4800007C # b .L_803ACAA0
L_803ACA28:
    lwz 3, 0x94(31)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_803ACA64
    li 0, 0x0
    stb 0, 0xb0(3)
    lwz 3, 0x94(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x94(31)
    lfs 2, 0x400(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_803ACA64:
    lwz 3, 0xa0(31)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_803ACAA0
    li 0, 0x0
    stb 0, 0xb0(3)
    lwz 3, 0xa0(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0xa0(31)
    lfs 2, 0x410(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_803ACAA0:
    lwz 3, 0xa4(31)
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 3, 0xa4(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0xa4(31)
    lfs 2, 0x40c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2c
    li 5, -0x1
    bl fn_80458880
L_803ACAE0:
    li 0, 0x0
    stw 0, 0x440(31)
L_803ACAE8:
    lwz 30, 0x440(31)
    cmpwi 30, 0x0
    .4byte 0x40820018 # bne .L_803ACB08
    li 3, 0x96
    li 0, 0x1d
    stw 3, 0x440(31)
    stb 0, 0x4c1(31)
    .4byte 0x48000280 # b .L_803ACD84
L_803ACB08:
    cmpwi 30, 0x8a
    .4byte 0x41800168 # blt .L_803ACC74
    subi 0, 30, 0x8a
    lis 3, 0x4330
    subfic 4, 0, 0xc
    lwz 0, 0x450(31)
    xoris 4, 4, 0x8000
    stw 3, 0x8(1)
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    cmpwi 0, 0x2
    stw 4, 0xc(1)
    .4byte 0xC0020468 # lfs f0, lbl_80543408@sda21(r0)
    lfd 1, 0x8(1)
    .4byte 0xC0620464 # lfs f3, lbl_80543404@sda21(r0)
    fsubs 1, 1, 2
    fdivs 0, 1, 0
    fmuls 31, 3, 0
    .4byte 0x40800030 # bge .L_803ACB7C
    lwz 3, 0x98(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x98(31)
    lfs 0, 0x408(31)
    lwz 12, 0x0(3)
    fadds 2, 0, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x4800006C # b .L_803ACBE4
L_803ACB7C:
    lwz 3, 0x94(31)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_803ACBB0
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x94(31)
    lfs 0, 0x400(31)
    lwz 12, 0x0(3)
    fadds 2, 0, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_803ACBB0:
    lwz 3, 0xa0(31)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_803ACBE4
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0xa0(31)
    lfs 0, 0x410(31)
    lwz 12, 0x0(3)
    fadds 2, 0, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_803ACBE4:
    lwz 0, 0x440(31)
    cmpwi 0, 0x8a
    .4byte 0x40820198 # bne .L_803ACD84
    lwz 0, 0x450(31)
    cmpwi 0, 0x2
    .4byte 0x40800014 # bge .L_803ACC0C
    lwz 3, 0x98(31)
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000034 # b .L_803ACC3C
L_803ACC0C:
    lwz 3, 0x94(31)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803ACC24
    li 0, 0x0
    stb 0, 0xb0(3)
L_803ACC24:
    lwz 3, 0xa0(31)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803ACC3C
    li 0, 0x0
    stb 0, 0xb0(3)
L_803ACC3C:
    lwz 3, 0xa4(31)
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 3, 0xa4(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0xa4(31)
    lfs 0, 0x40c(31)
    lwz 12, 0x0(3)
    fadds 2, 0, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x48000114 # b .L_803ACD84
L_803ACC74:
    cmpwi 30, 0x80
    .4byte 0x4180010C # blt .L_803ACD84
    lwz 3, 0xa4(31)
    bl fn_80095FB4
    subi 0, 30, 0x80
    lfs 1, 0x0(3)
    xoris 3, 0, 0x8000
    .4byte 0xC8620440 # lfd f3, lbl_805433E0@sda21(r0)
    lis 0, 0x4330
    stw 3, 0xc(1)
    lwz 3, 0xa4(31)
    stw 0, 0x8(1)
    lwz 12, 0x0(3)
    lfd 2, 0x8(1)
    .4byte 0xC0020468 # lfs f0, lbl_80543408@sda21(r0)
    fsubs 2, 2, 3
    .4byte 0xC0620464 # lfs f3, lbl_80543404@sda21(r0)
    lfs 4, 0x40c(31)
    lwz 12, 0x10(12)
    fdivs 0, 2, 0
    fmuls 0, 3, 0
    fadds 2, 4, 0
    mtctr 12
    bctrl
    lwz 0, 0x440(31)
    cmpwi 0, 0x80
    .4byte 0x408200A8 # bne .L_803ACD84
    lwz 0, 0x450(31)
    cmpwi 0, 0x2
    .4byte 0x4080002C # bge .L_803ACD14
    lwz 3, 0x98(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x98(31)
    lfs 2, 0x408(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x48000064 # b .L_803ACD74
L_803ACD14:
    lwz 3, 0x94(31)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_803ACD44
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x94(31)
    lfs 2, 0x400(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_803ACD44:
    lwz 3, 0xa0(31)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_803ACD74
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0xa0(31)
    lfs 2, 0x410(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_803ACD74:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2c
    li 5, -0x1
    bl fn_80458880
L_803ACD84:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

