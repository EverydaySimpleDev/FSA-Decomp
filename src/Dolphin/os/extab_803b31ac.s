# fn_803B31AC - helper (0x1ac)
.section extab, "a"
.balign 4
.global etb_8000F4E4
etb_8000F4E4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000F4E4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F270
eti_8001F270:
    .4byte fn_803B31AC
    .4byte 0x000001AC
    .4byte etb_8000F4E4
.size eti_8001F270, 12

.text
.balign 4
.global fn_803B31AC

fn_803B31AC:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80529DEC@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 4, lbl_80529DEC@l
    lwz 4, 0x118(3)
    cmpwi 4, 0x0
    .4byte 0x40820010 # bne .L_803B31E0
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820168 # beq .L_803B3344
L_803B31E0:
    cmpwi 4, 0x1
    .4byte 0x40820018 # bne .L_803B31FC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x4182014C # beq .L_803B3344
L_803B31FC:
    cmpwi 4, 0x2
    .4byte 0x40820018 # bne .L_803B3218
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820130 # beq .L_803B3344
L_803B3218:
    cmpwi 4, 0x3
    .4byte 0x40820018 # bne .L_803B3234
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x41820114 # beq .L_803B3344
L_803B3234:
    cmpwi 4, 0x4
    .4byte 0x40820018 # bne .L_803B3250
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200F8 # beq .L_803B3344
L_803B3250:
    cmpwi 4, 0x5
    .4byte 0x40820018 # bne .L_803B326C
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200DC # beq .L_803B3344
L_803B326C:
    cmpwi 4, 0x6
    .4byte 0x40820018 # bne .L_803B3288
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x418200C0 # beq .L_803B3344
L_803B3288:
    cmpwi 4, 0x7
    .4byte 0x40820018 # bne .L_803B32A4
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x1
    .4byte 0x418200A4 # beq .L_803B3344
L_803B32A4:
    cmpwi 4, 0x8
    .4byte 0x40820018 # bne .L_803B32C0
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x3
    .4byte 0x41820088 # beq .L_803B3344
L_803B32C0:
    cmpwi 4, 0xa
    .4byte 0x40820018 # bne .L_803B32DC
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lwz 0, 0x11c(3)
    cmpwi 0, 0x2
    .4byte 0x4182006C # beq .L_803B3344
L_803B32DC:
    lis 3, lbl_80529DEC@ha
    addi 3, 3, lbl_80529DEC@l
    lbz 0, 0x237(3)
    cmplwi 0, 0x8
    .4byte 0x40820008 # bne .L_803B32F4
    .4byte 0x48000054 # b .L_803B3344
L_803B32F4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lwz 3, 0x170(31)
    lbz 4, 0x4c2(31)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x170(31)
    li 4, 0x0
    .4byte 0xC0220428 # lfs f1, lbl_805433C8@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC0620438 # lfs f3, lbl_805433D8@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC082043C # lfs f4, lbl_805433DC@sda21(r0)
    mtctr 12
    bctrl
L_803B3344:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

