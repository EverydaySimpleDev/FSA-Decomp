# 901KB-gap non-actor manager block: 3 function(s), 2,764 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_800112C4
etb_800112C4:
    .4byte 0x480A0000
    .4byte 0x00000000
.size etb_800112C4, 8

.global etb_800112CC
etb_800112CC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800112CC, 8

.global etb_800112D4
etb_800112D4:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_800112D4, 8

.section extabindex, "a"
.balign 4
.global eti_800211F0
eti_800211F0:
    .4byte fn_804455E0
    .4byte 0x000006FC
    .4byte etb_800112C4
.size eti_800211F0, 12

.global eti_800211FC
eti_800211FC:
    .4byte fn_80445CDC
    .4byte 0x00000048
    .4byte etb_800112CC
.size eti_800211FC, 12

.global eti_80021208
eti_80021208:
    .4byte fn_80445D24
    .4byte 0x00000388
    .4byte etb_800112D4
.size eti_80021208, 12

.text
.balign 4
.global fn_804455E0
.global fn_80445CDC
.global fn_80445D24

fn_804455E0:
    stwu 1, -0x30(1)
    mflr 0
    lis 4, lbl_8048FC08@ha
    stw 0, 0x34(1)
    stmw 23, 0xc(1)
    mr 24, 3
    addi 30, 4, lbl_8048FC08@l
    li 25, 0x0
    mr 31, 24
L_80445604:
    cmpwi 25, 0x2
    .4byte 0x40800050 # bge .L_80445658
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x8(31)
    .4byte 0xC0220DE8 # lfs f1, lbl_80543D88@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x18(31)
    .4byte 0xC0220DE8 # lfs f1, lbl_80543D88@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x28(31)
    .4byte 0xC0220DE8 # lfs f1, lbl_80543D88@sda21(r0)
    bl fn_80402E08
    .4byte 0x4800004C # b .L_804456A0
L_80445658:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x8(31)
    .4byte 0xC0220DE8 # lfs f1, lbl_80543D88@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x18(31)
    .4byte 0xC0220DE8 # lfs f1, lbl_80543D88@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x28(31)
    .4byte 0xC0220DE8 # lfs f1, lbl_80543D88@sda21(r0)
    bl fn_80402E08
L_804456A0:
    li 0, 0x1
    lbz 3, 0x44(24)
    slw 0, 0, 25
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820078 # beq .L_8044572C
    lwz 3, 0x4(24)
    lwz 5, 0xb8(30)
    lwz 12, 0x0(3)
    lwz 6, 0xbc(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x408200C0 # bne .L_8044579C
    lwz 3, 0x4(24)
    lwz 5, 0x40(30)
    lwz 12, 0x0(3)
    lwz 6, 0x44(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0xb8(30)
    stb 0, 0xb0(3)
    lwz 6, 0xbc(30)
    lwz 3, 0x4(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000074 # b .L_8044579C
L_8044572C:
    lwz 3, 0x4(24)
    lwz 5, 0xb8(30)
    lwz 12, 0x0(3)
    lwz 6, 0xbc(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4182004C # beq .L_8044579C
    lwz 3, 0x4(24)
    lwz 5, 0x40(30)
    lwz 12, 0x0(3)
    lwz 6, 0x44(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0xb8(30)
    stb 0, 0xb0(3)
    lwz 6, 0xbc(30)
    lwz 3, 0x4(24)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8044579C:
    lwz 3, 0x4(24)
    lwz 5, 0xb8(30)
    lwz 12, 0x0(3)
    lwz 6, 0xbc(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820368 # beq .L_80445B28
    add 6, 24, 25
    lbz 0, 0x38(6)
    cmplwi 0, 0x64
    .4byte 0x4180000C # blt .L_804457DC
    li 0, 0x63
    stb 0, 0x38(6)
L_804457DC:
    lis 3, 0x8889
    lbz 8, 0x3c(6)
    subi 0, 3, 0x7777
    lis 4, 0x6666
    mulhw 0, 0, 8
    lis 3, lbl_804B1B78@ha
    lis 5, 0x5449
    lbz 28, 0x38(6)
    addi 6, 4, 0x6667
    addi 4, 3, lbl_804B1B78@l
    add 7, 0, 8
    addi 3, 5, 0x4d47
    srawi 0, 7, 5
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0x3c
    subf 29, 0, 8
    mulhw 0, 6, 29
    srawi 5, 0, 2
    mulhw 0, 6, 28
    srwi 6, 5, 31
    add 27, 5, 6
    srawi 6, 0, 2
    srawi 0, 7, 5
    srwi 5, 0, 31
    srwi 7, 6, 31
    add 0, 0, 5
    slwi 0, 0, 2
    add 26, 6, 7
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(24)
    mr 23, 0
    lwz 5, 0x68(30)
    lwz 12, 0x0(3)
    lwz 6, 0x6c(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(24)
    lwz 5, 0x70(30)
    lwz 12, 0x0(3)
    lwz 6, 0x74(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 23
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, lbl_804B1B78@ha
    lis 5, 0x5449
    slwi 0, 27, 2
    addi 4, 3, lbl_804B1B78@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0x4(24)
    lwz 5, 0x78(30)
    lwz 12, 0x0(3)
    lwz 6, 0x7c(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(24)
    lwz 5, 0x80(30)
    lwz 12, 0x0(3)
    lwz 6, 0x84(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x6666
    lis 3, lbl_804B1B78@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 29
    addi 4, 3, lbl_804B1B78@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0xa
    subf 0, 0, 29
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0x4(24)
    lwz 5, 0x88(30)
    lwz 12, 0x0(3)
    lwz 6, 0x8c(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(24)
    lwz 5, 0x90(30)
    lwz 12, 0x0(3)
    lwz 6, 0x94(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, lbl_804B1B78@ha
    lis 5, 0x5449
    slwi 0, 26, 2
    addi 4, 3, lbl_804B1B78@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 26, 3
    lwz 3, 0x4(24)
    lwz 5, 0x98(30)
    lwz 12, 0x0(3)
    lwz 6, 0x9c(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(24)
    lwz 5, 0xa0(30)
    lwz 12, 0x0(3)
    lwz 6, 0xa4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x6666
    lis 3, lbl_804B1B78@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 28
    addi 4, 3, lbl_804B1B78@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0xa
    subf 0, 0, 28
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 26, 3
    lwz 3, 0x4(24)
    lwz 5, 0xa8(30)
    lwz 12, 0x0(3)
    lwz 6, 0xac(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(24)
    lwz 5, 0xb0(30)
    lwz 12, 0x0(3)
    lwz 6, 0xb4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
L_80445B28:
    addi 0, 25, 0x4
    li 3, 0x1
    slw 0, 3, 0
    lbz 3, 0x44(24)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820054 # beq .L_80445B94
    lwz 3, 0x4(24)
    lwz 5, 0x8(30)
    lwz 12, 0x0(3)
    lwz 6, 0xc(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x40820078 # bne .L_80445BE0
    lwz 3, 0x4(24)
    lwz 5, 0x8(30)
    lwz 12, 0x0(3)
    lwz 6, 0xc(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000050 # b .L_80445BE0
L_80445B94:
    lwz 3, 0x4(24)
    lwz 5, 0x8(30)
    lwz 12, 0x0(3)
    lwz 6, 0xc(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80445BE0
    lwz 3, 0x4(24)
    lwz 5, 0x8(30)
    lwz 12, 0x0(3)
    lwz 6, 0xc(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80445BE0:
    lwz 3, 0x4(24)
    lwz 5, 0x8(30)
    lwz 12, 0x0(3)
    lwz 6, 0xc(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x418200A8 # beq .L_80445CAC
    addi 0, 25, 0x40
    lbzx 0, 24, 0
    cmplwi 0, 0x1
    .4byte 0x41800098 # blt .L_80445CAC
    cmplwi 0, 0x4
    .4byte 0x41810090 # bgt .L_80445CAC
    lis 3, lbl_804B1BA0@ha
    lis 5, 0x5449
    clrlslwi 4, 0, 24, 2
    addi 0, 3, lbl_804B1BA0@l
    addi 3, 5, 0x4d47
    add 4, 0, 4
    lwz 4, -0x4(4)
    bl fn_804030C4
    mr 26, 3
    lwz 3, 0x4(24)
    lwz 5, 0x0(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(24)
    lwz 5, 0x8(30)
    lwz 12, 0x0(3)
    lwz 6, 0xc(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
L_80445CAC:
    addi 25, 25, 0x1
    addi 30, 30, 0xc0
    cmpwi 25, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180F948 # blt .L_80445604
    li 0, 0x0
    stb 0, 0x44(24)
    lmw 23, 0xc(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80445CDC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220DE8 # lfs f1, lbl_80543D88@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x4(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80445D24:
    stwu 1, -0x30(1)
    mflr 0
    lis 4, lbl_8048FC08@ha
    lis 5, lbl_804B1B78@ha
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    addi 31, 4, lbl_8048FC08@l
    lis 4, lbl_804B1BA0@ha
    mr 29, 3
    addi 27, 5, lbl_804B1B78@l
    li 30, 0x0
    addi 28, 4, lbl_804B1BA0@l
    lis 26, 0x5449
L_80445D58:
    li 4, 0x1
    addi 0, 30, 0x4
    slw 3, 4, 30
    lbz 5, 0x44(29)
    clrlwi 3, 3, 24
    slw 0, 4, 0
    andc 4, 5, 3
    stb 4, 0x44(29)
    clrlwi 0, 0, 24
    addi 3, 26, 0x4d47
    lbz 4, 0x44(29)
    andc 0, 4, 0
    stb 0, 0x44(29)
    lwz 4, 0x0(27)
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(29)
    mr 25, 0
    lwz 5, 0x68(31)
    lwz 12, 0x0(3)
    lwz 6, 0x6c(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 25
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lwz 5, 0x70(31)
    lwz 12, 0x0(3)
    lwz 6, 0x74(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 25
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lwz 5, 0x78(31)
    lwz 12, 0x0(3)
    lwz 6, 0x7c(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 25
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lwz 5, 0x80(31)
    lwz 12, 0x0(3)
    lwz 6, 0x84(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 25
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lwz 5, 0x88(31)
    lwz 12, 0x0(3)
    lwz 6, 0x8c(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 25
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lwz 5, 0x90(31)
    lwz 12, 0x0(3)
    lwz 6, 0x94(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 25
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lwz 5, 0x98(31)
    lwz 12, 0x0(3)
    lwz 6, 0x9c(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 25
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lwz 5, 0xa0(31)
    lwz 12, 0x0(3)
    lwz 6, 0xa4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 25
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lwz 5, 0xa8(31)
    lwz 12, 0x0(3)
    lwz 6, 0xac(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 25
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lwz 5, 0xb0(31)
    lwz 12, 0x0(3)
    lwz 6, 0xb4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 25
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 4, 0x0(28)
    addi 3, 26, 0x4d47
    bl fn_804030C4
    mr 25, 3
    lwz 3, 0x4(29)
    lwz 5, 0x0(31)
    lwz 12, 0x0(3)
    lwz 6, 0x4(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 25
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lwz 5, 0x8(31)
    lwz 12, 0x0(3)
    lwz 6, 0xc(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 25
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lwz 5, 0x40(31)
    lwz 12, 0x0(3)
    lwz 6, 0x44(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0xb8(31)
    stb 0, 0xb0(3)
    lwz 6, 0xbc(31)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x8(31)
    stb 0, 0xb0(3)
    lwz 6, 0xc(31)
    lwz 3, 0x4(29)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 30, 30, 0x1
    li 0, 0x0
    cmpwi 30, 0x4
    stb 0, 0xb0(3)
    addi 31, 31, 0xc0
    .4byte 0x4180FCC4 # blt .L_80445D58
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

