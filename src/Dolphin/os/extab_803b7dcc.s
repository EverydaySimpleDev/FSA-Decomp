# fn_803B7DCC - actor@lbl_804AFAB0: leading helper (0x98)
.section extab, "a"
.balign 4
.global etb_8000F5D4
etb_8000F5D4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000F5D4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F2D0
eti_8001F2D0:
    .4byte fn_803B7DCC
    .4byte 0x00000098
    .4byte etb_8000F5D4
.size eti_8001F2D0, 12

.text
.balign 4
.global fn_803B7DCC

fn_803B7DCC:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80529DEC@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 4, lbl_80529DEC@l
    lwz 0, 0x118(3)
    cmpwi 0, 0x8
    .4byte 0x40820010 # bne .L_803B7E00
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x41820054 # beq .L_803B7E50
L_803B7E00:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
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
L_803B7E50:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

