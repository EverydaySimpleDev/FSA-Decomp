# fn_803AF79C - helper (0x2dc)
.section extab, "a"
.balign 4
.global etb_8000F48C
etb_8000F48C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000F48C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F1EC
eti_8001F1EC:
    .4byte fn_803AF79C
    .4byte 0x000002DC
    .4byte etb_8000F48C
.size eti_8001F1EC, 12

.text
.balign 4
.global fn_803AF79C

fn_803AF79C:
    stwu 1, -0x20(1)
    mflr 0
    li 4, 0x100
    li 5, -0x1
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 3, 0x440(3)
    subi 0, 3, 0x1
    stw 0, 0x440(31)
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x41820058 # beq .L_803AF82C
    lwz 0, 0x440(31)
    cmpwi 0, 0x3c
    .4byte 0x41800044 # blt .L_803AF824
    lwz 3, 0x8c(31)
    li 0, 0x0
    stb 0, 0xb0(3)
    lwz 3, 0x8c(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x8c(31)
    lfs 2, 0x3f8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2c
    li 5, -0x1
    bl fn_80458880
L_803AF824:
    li 0, 0x0
    stw 0, 0x440(31)
L_803AF82C:
    lwz 30, 0x440(31)
    cmpwi 30, 0x0
    .4byte 0x4082016C # bne .L_803AF9A0
    lwz 6, 0x454(31)
    li 0, 0x0
    li 7, 0x0
    cmpwi 6, 0x0
    .4byte 0x4081009C # ble .L_803AF8E4
    cmpwi 6, 0x8
    subi 4, 6, 0x8
    .4byte 0x40810068 # ble .L_803AF8BC
    addi 3, 4, 0x7
    mr 5, 31
    srwi 3, 3, 3
    mtctr 3
    cmpwi 4, 0x0
    .4byte 0x40810050 # ble .L_803AF8BC
L_803AF870:
    lwz 4, 0x320(5)
    addi 7, 7, 0x8
    lwz 3, 0x324(5)
    add 0, 0, 4
    lwz 4, 0x328(5)
    add 0, 0, 3
    lwz 3, 0x32c(5)
    add 0, 0, 4
    lwz 4, 0x330(5)
    add 0, 0, 3
    lwz 3, 0x334(5)
    add 0, 0, 4
    lwz 4, 0x338(5)
    add 0, 0, 3
    lwz 3, 0x33c(5)
    add 0, 0, 4
    addi 5, 5, 0x20
    add 0, 0, 3
    .4byte 0x4200FFB8 # bdnz .L_803AF870
L_803AF8BC:
    slwi 4, 7, 2
    subf 3, 7, 6
    add 4, 31, 4
    mtctr 3
    cmpw 7, 6
    .4byte 0x40800014 # bge .L_803AF8E4
L_803AF8D4:
    lwz 3, 0x320(4)
    addi 4, 4, 0x4
    add 0, 0, 3
    .4byte 0x4200FFF4 # bdnz .L_803AF8D4
L_803AF8E4:
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    lis 3, 0x38e4
    .4byte 0xC0020434 # lfs f0, lbl_805433D4@sda21(r0)
    lwz 6, 0xb4(8)
    addi 4, 4, 0x660d
    subi 5, 3, 0x71c7
    .4byte 0xC0420480 # lfs f2, lbl_80543420@sda21(r0)
    mullw 6, 6, 4
    li 4, 0x0
    mr 7, 31
    li 9, 0x0
    li 3, 0x3e
    addis 6, 6, 0x3c6f
    subi 6, 6, 0xca1
    stw 6, 0xb4(8)
    mulhw 5, 5, 0
    lwz 6, 0xb4(8)
    srwi 6, 6, 9
    oris 6, 6, 0x3f80
    stw 6, 0x8(1)
    srawi 5, 5, 1
    srwi 6, 5, 31
    lfs 1, 0x8(1)
    add 5, 5, 6
    mulli 5, 5, 0x9
    fsubs 0, 1, 0
    subf 5, 5, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    add 5, 5, 0
    addi 0, 5, 0x96
    stw 0, 0x440(31)
    stb 4, 0x4c4(31)
    stb 4, 0x4c6(31)
    .4byte 0x48000010 # b .L_803AF988
L_803AF97C:
    stw 3, 0x3c0(7)
    addi 7, 7, 0x4
    addi 9, 9, 0x1
L_803AF988:
    lwz 0, 0x454(31)
    cmpw 9, 0
    .4byte 0x4180FFEC # blt .L_803AF97C
    li 0, 0xc
    stb 0, 0x4c1(31)
    .4byte 0x480000C4 # b .L_803AFA60
L_803AF9A0:
    cmpwi 30, 0x8a
    .4byte 0x4180007C # blt .L_803AFA20
    lwz 3, 0x8c(31)
    bl fn_80095FB4
    subi 0, 30, 0x8a
    lfs 1, 0x0(3)
    subfic 3, 0, 0xc
    .4byte 0xC8620440 # lfd f3, lbl_805433E0@sda21(r0)
    xoris 4, 3, 0x8000
    lis 0, 0x4330
    stw 4, 0x14(1)
    lwz 3, 0x8c(31)
    stw 0, 0x10(1)
    lwz 12, 0x0(3)
    lfd 2, 0x10(1)
    .4byte 0xC0020468 # lfs f0, lbl_80543408@sda21(r0)
    fsubs 2, 2, 3
    .4byte 0xC0620464 # lfs f3, lbl_80543404@sda21(r0)
    lfs 4, 0x3f8(31)
    lwz 12, 0x10(12)
    fdivs 0, 2, 0
    fmuls 0, 3, 0
    fadds 2, 4, 0
    mtctr 12
    bctrl
    lwz 0, 0x440(31)
    cmpwi 0, 0x8a
    .4byte 0x40820054 # bne .L_803AFA60
    lwz 3, 0x8c(31)
    li 0, 0x0
    stb 0, 0xb0(3)
    .4byte 0x48000044 # b .L_803AFA60
L_803AFA20:
    cmpwi 30, 0x80
    .4byte 0x4180003C # blt .L_803AFA60
    .4byte 0x40820038 # bne .L_803AFA60
    lwz 3, 0x8c(31)
    bl fn_80095FB4
    lfs 1, 0x0(3)
    lwz 3, 0x8c(31)
    lfs 2, 0x3f8(31)
    lwz 12, 0x0(3)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2c
    li 5, -0x1
    bl fn_80458880
L_803AFA60:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

