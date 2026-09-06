# fn_803AD894 - helper (0x378)
.section extab, "a"
.balign 4
.global etb_8000F43C
etb_8000F43C:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000F43C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F174
eti_8001F174:
    .4byte fn_803AD894
    .4byte 0x00000378
    .4byte etb_8000F43C
.size eti_8001F174, 12

.text
.balign 4
.global fn_803AD894

fn_803AD894:
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
    .4byte 0x418200D0 # beq .L_803AD9A4
    lwz 0, 0x440(31)
    cmpwi 0, 0x3c
    .4byte 0x418000BC # blt .L_803AD99C
    lwz 3, 0x94(31)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_803AD920
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
L_803AD920:
    lwz 3, 0xa0(31)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_803AD95C
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
L_803AD95C:
    lwz 3, 0x9c(31)
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 3, 0x9c(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x9c(31)
    lfs 2, 0x404(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2c
    li 5, -0x1
    bl fn_80458880
L_803AD99C:
    li 0, 0x0
    stw 0, 0x440(31)
L_803AD9A4:
    lwz 30, 0x440(31)
    cmpwi 30, 0x0
    .4byte 0x4082004C # bne .L_803AD9F8
    li 3, 0x96
    li 0, 0x0
    stw 3, 0x440(31)
    mr 4, 31
    li 5, 0x0
    li 3, 0x3e
    stb 0, 0x4c4(31)
    stb 0, 0x4c6(31)
    .4byte 0x48000010 # b .L_803AD9E0
L_803AD9D4:
    stw 3, 0x3c0(4)
    addi 4, 4, 0x4
    addi 5, 5, 0x1
L_803AD9E0:
    lwz 0, 0x454(31)
    cmpw 5, 0
    .4byte 0x4180FFEC # blt .L_803AD9D4
    li 0, 0x17
    stb 0, 0x4c1(31)
    .4byte 0x480001F8 # b .L_803ADBEC
L_803AD9F8:
    cmpwi 30, 0x8a
    .4byte 0x41800114 # blt .L_803ADB10
    subi 3, 30, 0x8a
    lis 0, 0x4330
    subfic 4, 3, 0xc
    lwz 3, 0x94(31)
    xoris 4, 4, 0x8000
    stw 0, 0x8(1)
    lbz 0, 0xb0(3)
    stw 4, 0xc(1)
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    cmplwi 0, 0x0
    lfd 1, 0x8(1)
    .4byte 0xC0020468 # lfs f0, lbl_80543408@sda21(r0)
    fsubs 1, 1, 2
    .4byte 0xC0420464 # lfs f2, lbl_80543404@sda21(r0)
    fdivs 0, 1, 0
    fmuls 31, 2, 0
    .4byte 0x41820028 # beq .L_803ADA68
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x94(31)
    lfs 0, 0x400(31)
    lwz 12, 0x0(3)
    fadds 2, 0, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_803ADA68:
    lwz 3, 0xa0(31)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_803ADA9C
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0xa0(31)
    lfs 0, 0x410(31)
    lwz 12, 0x0(3)
    fadds 2, 0, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_803ADA9C:
    lwz 0, 0x440(31)
    cmpwi 0, 0x8a
    .4byte 0x40820148 # bne .L_803ADBEC
    lwz 3, 0x94(31)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803ADAC0
    li 0, 0x0
    stb 0, 0xb0(3)
L_803ADAC0:
    lwz 3, 0xa0(31)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_803ADAD8
    li 0, 0x0
    stb 0, 0xb0(3)
L_803ADAD8:
    lwz 3, 0x9c(31)
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 3, 0x9c(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x9c(31)
    lfs 0, 0x404(31)
    lwz 12, 0x0(3)
    fadds 2, 0, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x480000E0 # b .L_803ADBEC
L_803ADB10:
    cmpwi 30, 0x80
    .4byte 0x418000D8 # blt .L_803ADBEC
    lwz 3, 0x9c(31)
    bl fn_80095FB4
    subi 0, 30, 0x80
    lfs 1, 0x0(3)
    xoris 3, 0, 0x8000
    .4byte 0xC8620440 # lfd f3, lbl_805433E0@sda21(r0)
    lis 0, 0x4330
    stw 3, 0xc(1)
    lwz 3, 0x9c(31)
    stw 0, 0x8(1)
    lwz 12, 0x0(3)
    lfd 2, 0x8(1)
    .4byte 0xC0020468 # lfs f0, lbl_80543408@sda21(r0)
    fsubs 2, 2, 3
    .4byte 0xC0620464 # lfs f3, lbl_80543404@sda21(r0)
    lfs 4, 0x404(31)
    lwz 12, 0x10(12)
    fdivs 0, 2, 0
    fmuls 0, 3, 0
    fadds 2, 4, 0
    mtctr 12
    bctrl
    lwz 0, 0x440(31)
    cmpwi 0, 0x80
    .4byte 0x40820074 # bne .L_803ADBEC
    lwz 3, 0x94(31)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_803ADBAC
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x94(31)
    lfs 2, 0x400(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_803ADBAC:
    lwz 3, 0xa0(31)
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_803ADBDC
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0xa0(31)
    lfs 2, 0x410(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
L_803ADBDC:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2c
    li 5, -0x1
    bl fn_80458880
L_803ADBEC:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

