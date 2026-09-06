# fn_803AE308 - helper (0x290)
.section extab, "a"
.balign 4
.global etb_8000F454
etb_8000F454:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000F454, 8

.section extabindex, "a"
.balign 4
.global eti_8001F198
eti_8001F198:
    .4byte fn_803AE308
    .4byte 0x00000290
    .4byte etb_8000F454
.size eti_8001F198, 12

.text
.balign 4
.global fn_803AE308

fn_803AE308:
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
    .4byte 0x41820088 # beq .L_803AE3D0
    lwz 0, 0x440(31)
    cmpwi 0, 0x3c
    .4byte 0x41800074 # blt .L_803AE3C8
    lwz 3, 0x90(31)
    li 0, 0x0
    stb 0, 0xb0(3)
    lwz 3, 0x90(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x90(31)
    lfs 2, 0x3fc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0x94(31)
    li 0, 0x1
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
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2c
    li 5, -0x1
    bl fn_80458880
L_803AE3C8:
    li 0, 0x0
    stw 0, 0x440(31)
L_803AE3D0:
    lwz 30, 0x440(31)
    cmpwi 30, 0x0
    .4byte 0x4082004C # bne .L_803AE424
    li 3, 0x96
    li 0, 0x0
    stw 3, 0x440(31)
    mr 4, 31
    li 5, 0x0
    li 3, 0x3e
    stb 0, 0x4c4(31)
    stb 0, 0x4c6(31)
    .4byte 0x48000010 # b .L_803AE40C
L_803AE400:
    stw 3, 0x3c0(4)
    addi 4, 4, 0x4
    addi 5, 5, 0x1
L_803AE40C:
    lwz 0, 0x454(31)
    cmpw 5, 0
    .4byte 0x4180FFEC # blt .L_803AE400
    li 0, 0x13
    stb 0, 0x4c1(31)
    .4byte 0x48000158 # b .L_803AE578
L_803AE424:
    cmpwi 30, 0x8a
    .4byte 0x418000B0 # blt .L_803AE4D8
    subi 3, 30, 0x8a
    lis 0, 0x4330
    subfic 3, 3, 0xc
    stw 0, 0x8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    stw 0, 0xc(1)
    .4byte 0xC0020468 # lfs f0, lbl_80543408@sda21(r0)
    lfd 1, 0x8(1)
    .4byte 0xC0620464 # lfs f3, lbl_80543404@sda21(r0)
    fsubs 1, 1, 2
    lwz 3, 0x90(31)
    fdivs 0, 1, 0
    fmuls 31, 3, 0
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x90(31)
    lfs 0, 0x3fc(31)
    lwz 12, 0x0(3)
    fadds 2, 0, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 0, 0x440(31)
    cmpwi 0, 0x8a
    .4byte 0x408200E8 # bne .L_803AE578
    lwz 3, 0x90(31)
    li 4, 0x0
    li 0, 0x1
    stb 4, 0xb0(3)
    lwz 3, 0x94(31)
    stb 0, 0xb0(3)
    lwz 3, 0x94(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x94(31)
    lfs 0, 0x400(31)
    lwz 12, 0x0(3)
    fadds 2, 0, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x480000A4 # b .L_803AE578
L_803AE4D8:
    cmpwi 30, 0x80
    .4byte 0x4180009C # blt .L_803AE578
    lwz 3, 0x94(31)
    bl fn_80095FB4
    subi 0, 30, 0x80
    lfs 1, 0x0(3)
    xoris 3, 0, 0x8000
    .4byte 0xC8620440 # lfd f3, lbl_805433E0@sda21(r0)
    lis 0, 0x4330
    stw 3, 0xc(1)
    lwz 3, 0x94(31)
    stw 0, 0x8(1)
    lwz 12, 0x0(3)
    lfd 2, 0x8(1)
    .4byte 0xC0020468 # lfs f0, lbl_80543408@sda21(r0)
    fsubs 2, 2, 3
    .4byte 0xC0620464 # lfs f3, lbl_80543404@sda21(r0)
    lfs 4, 0x400(31)
    lwz 12, 0x10(12)
    fdivs 0, 2, 0
    fmuls 0, 3, 0
    fadds 2, 4, 0
    mtctr 12
    bctrl
    lwz 0, 0x440(31)
    cmpwi 0, 0x80
    .4byte 0x40820038 # bne .L_803AE578
    lwz 3, 0x90(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x90(31)
    lfs 2, 0x3fc(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2c
    li 5, -0x1
    bl fn_80458880
L_803AE578:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

