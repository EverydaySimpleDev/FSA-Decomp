# 901KB-gap non-actor manager block: 3 function(s), 1,176 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80011484
etb_80011484:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80011484, 8

.global etb_8001148C
etb_8001148C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8001148C, 8

.global etb_80011494
etb_80011494:
    .4byte 0x20080000
    .4byte 0x000000C8
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8A80001C
    .4byte dtor_80084580
.size etb_80011494, 24

.section extabindex, "a"
.balign 4
.global eti_800213E8
eti_800213E8:
    .4byte fn_8044B80C
    .4byte 0x000000E0
    .4byte etb_80011484
.size eti_800213E8, 12

.global eti_800213F4
eti_800213F4:
    .4byte fn_8044B8EC
    .4byte 0x00000074
    .4byte etb_8001148C
.size eti_800213F4, 12

.global eti_80021400
eti_80021400:
    .4byte fn_8044B960
    .4byte 0x00000344
    .4byte etb_80011494
.size eti_80021400, 12

.text
.balign 4
.global fn_8044B80C
.global fn_8044B8EC
.global fn_8044B960

fn_8044B80C:
    stwu 1, -0x10(1)
    mflr 0
    clrlwi 5, 4, 24
    stw 0, 0x14(1)
    cmplwi 5, 0x8
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    .4byte 0x4180000C # blt .L_8044B838
    li 3, 0x0
    .4byte 0x480000A0 # b .L_8044B8D4
L_8044B838:
    lbz 0, 0x16(30)
    cmplwi 0, 0x3
    .4byte 0x4082007C # bne .L_8044B8BC
    lbz 0, 0x15(30)
    cmplw 0, 5
    .4byte 0x4082000C # bne .L_8044B858
    li 3, 0x1
    .4byte 0x48000080 # b .L_8044B8D4
L_8044B858:
    stb 4, 0x15(30)
    li 0, 0x1
    stb 0, 0x16(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    .4byte 0x83ED8CEC # lwz r31, lbl_8053A8AC@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0x30(3)
    bl fn_8008382C
    lwz 3, 0x8(30)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8044B898
    lwz 12, 0x0(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8044B898:
    li 0, 0x0
    stw 0, 0x8(30)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0x30(3)
    bl fn_800839B8
    mr 3, 31
    bl fn_8008382C
    .4byte 0x48000018 # b .L_8044B8D0
L_8044B8BC:
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8044B8D0
    stb 4, 0x15(30)
    li 0, 0x1
    stb 0, 0x16(30)
L_8044B8D0:
    li 3, 0x0
L_8044B8D4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8044B8EC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x14(3)
    cmplwi 0, 0x0
    .4byte 0x41820044 # beq .L_8044B94C
    lbz 0, 0x16(31)
    cmplwi 0, 0x3
    .4byte 0x40820038 # bne .L_8044B94C
    lwz 0, 0x8(31)
    cmplwi 0, 0x0
    .4byte 0x4182002C # beq .L_8044B94C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220E20 # lfs f1, lbl_80543DC0@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x8(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    li 0, 0x0
    stb 0, 0x14(31)
L_8044B94C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8044B960:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    mr 29, 3
    lis 3, lbl_80490F48@ha
    stw 28, 0x40(1)
    addi 31, 3, lbl_80490F48@l
    lbz 0, 0x16(29)
    cmplwi 0, 0x1
    .4byte 0x4182000C # beq .L_8044B99C
    cmplwi 0, 0x2
    .4byte 0x408202EC # bne .L_8044BC84
L_8044B99C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    .4byte 0x83CD8CEC # lwz r30, lbl_8053A8AC@sda21(r0)
    lwz 3, 0x4(3)
    lwz 3, 0x30(3)
    bl fn_8008382C
    lbz 0, 0x16(29)
    cmplwi 0, 0x1
    .4byte 0x40820044 # bne .L_8044B9FC
    lbz 6, 0x15(29)
    addi 3, 1, 0x1c
    addi 5, 31, 0x20
    li 4, 0x1f
    addi 6, 6, 0x1
    crclr 6
    bl fn_8006B414
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 3, 1, 0x1c
    li 4, 0x0
    lwz 5, 0x4(5)
    lwz 5, 0x30(5)
    bl fn_80401E10
    stw 3, 0xc(29)
    li 0, 0x2
    stb 0, 0x16(29)
L_8044B9FC:
    lwz 3, 0xc(29)
    cmplwi 3, 0x0
    .4byte 0x41820278 # beq .L_8044BC7C
    lbz 0, 0x4(3)
    cmplwi 0, 0x1
    .4byte 0x4082026C # bne .L_8044BC7C
    li 3, 0x118
    bl fn_80084370
    mr. 28, 3
    .4byte 0x41820008 # beq .L_8044BA28
    bl fn_8009C4EC
L_8044BA28:
    stw 28, 0x8(29)
    addi 3, 1, 0x8
    addi 5, 31, 0x40
    li 4, 0x11
    lbz 6, 0x15(29)
    addi 6, 6, 0x1
    crclr 6
    bl fn_8006B414
    lwz 6, 0xc(29)
    addi 4, 1, 0x8
    lwz 3, 0x8(29)
    lis 5, 0x110
    lwz 6, 0x14(6)
    bl fn_8009C69C
    lwz 3, 0x8(29)
    lis 4, 0x7466
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x5473
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(29)
    lis 4, 0x7466
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x5473
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(29)
    lis 4, 0x7466
    addi 6, 4, 0x3031
    li 5, 0x5473
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lbz 0, 0x15(29)
    addi 4, 31, 0x0
    li 5, 0x0
    li 6, 0x0
    slwi 0, 0, 2
    li 7, 0x0
    lwzx 4, 4, 0
    bl fn_803832BC
    lwz 3, 0x8(29)
    lis 4, 0x7466
    addi 6, 4, 0x3032
    li 5, 0x5473
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    lbz 0, 0x15(29)
    addi 4, 31, 0x0
    li 5, 0x0
    li 6, 0x0
    slwi 0, 0, 2
    li 7, 0x0
    lwzx 4, 4, 0
    bl fn_803832BC
    lbz 0, 0x15(29)
    cmplwi 0, 0x5
    .4byte 0x408200EC # bne .L_8044BC54
    lwz 3, 0x8(29)
    lis 4, 0x7466
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3033
    lwz 12, 0x0(3)
    li 5, 0x5473
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(29)
    lis 4, 0x7466
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3034
    lwz 12, 0x0(3)
    li 5, 0x5473
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(29)
    lis 4, 0x7466
    addi 6, 4, 0x3033
    li 5, 0x5473
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x861
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
    lwz 3, 0x8(29)
    lis 4, 0x7466
    addi 6, 4, 0x3034
    li 5, 0x5473
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    li 4, 0x861
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_803832BC
L_8044BC54:
    lwz 3, 0xc(29)
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_8044BC74
    lwz 12, 0x8(3)
    li 4, 0x1
    lwz 12, 0x8(12)
    mtctr 12
    bctrl
L_8044BC74:
    li 0, 0x3
    stb 0, 0x16(29)
L_8044BC7C:
    mr 3, 30
    bl fn_8008382C
L_8044BC84:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

