# fn_803B7E64 - actor@lbl_804AFAB0: leading helper (0x108)
.section extab, "a"
.balign 4
.global etb_8000F5DC
etb_8000F5DC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000F5DC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F2DC
eti_8001F2DC:
    .4byte fn_803B7E64
    .4byte 0x00000108
    .4byte etb_8000F5DC
.size eti_8001F2DC, 12

.text
.balign 4
.global fn_803B7E64

fn_803B7E64:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lbz 0, 0x294(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_803B7E94
    cmplwi 0, 0x4
    .4byte 0x4082001C # bne .L_803B7EAC
L_803B7E94:
    .4byte 0x806D9208 # lwz r3, lbl_8053ADC8@sda21(r0)
    li 4, 0x1
    li 0, 0x2
    stb 4, 0x20(3)
    .4byte 0x806D9208 # lwz r3, lbl_8053ADC8@sda21(r0)
    stb 0, 0x21(3)
L_803B7EAC:
    lwz 3, 0x4(31)
    lbz 4, 0x296(31)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    li 4, 0x0
    .4byte 0xC02204A0 # lfs f1, lbl_80543440@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC06204B0 # lfs f3, lbl_80543450@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC08204B4 # lfs f4, lbl_80543454@sda21(r0)
    mtctr 12
    bctrl
    .4byte 0x806D8DC0 # lwz r3, lbl_8053A980@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x18(1)
    addi 4, 1, 0x8
    lwz 3, 0x4(3)
    li 5, 0x1
    stw 0, 0x20(1)
    lhz 0, 0x6(3)
    lhz 3, 0x4(3)
    xoris 0, 0, 0x8000
    .4byte 0xC06204A0 # lfs f3, lbl_80543440@sda21(r0)
    xoris 3, 3, 0x8000
    stw 0, 0x24(1)
    .4byte 0xC84204A8 # lfd f2, lbl_80543448@sda21(r0)
    stw 3, 0x1c(1)
    lfd 0, 0x20(1)
    lfd 1, 0x18(1)
    fsubs 0, 0, 2
    stfs 3, 0x8(1)
    fsubs 1, 1, 2
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 3, 0xc(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    bl fn_8013B414
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

