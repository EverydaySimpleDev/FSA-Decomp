# fn_803A97A0 - leading helper (0x90)
.section extab, "a"
.balign 4
.global etb_8000F3D4
etb_8000F3D4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000F3D4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F0D8
eti_8001F0D8:
    .4byte fn_803A97A0
    .4byte 0x00000090
    .4byte etb_8000F3D4
.size eti_8001F0D8, 12

.text
.balign 4
.global fn_803A97A0

fn_803A97A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lbz 0, 0x4c0(31)
    cmplwi 0, 0x2
    .4byte 0x41800028 # blt .L_803A97EC
    lwz 3, 0x16c(31)
    lbz 0, 0x4c2(31)
    lwz 12, 0x0(3)
    subfic 0, 0, 0xff
    lwz 12, 0x24(12)
    clrlwi 4, 0, 24
    mtctr 12
    bctrl
    .4byte 0x4800001C # b .L_803A9804
L_803A97EC:
    lwz 3, 0x16c(31)
    li 4, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_803A9804:
    .4byte 0xC0220428 # lfs f1, lbl_805433C8@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x1c(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

