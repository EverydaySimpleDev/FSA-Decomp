# 901KB-gap non-actor manager block: 3 function(s), 3,028 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80011444
etb_80011444:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80011444, 8

.global etb_8001144C
etb_8001144C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8001144C, 8

.global etb_80011454
etb_80011454:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80011454, 8

.section extabindex, "a"
.balign 4
.global eti_800213A0
eti_800213A0:
    .4byte fn_8044A828
    .4byte 0x00000768
    .4byte etb_80011444
.size eti_800213A0, 12

.global eti_800213AC
eti_800213AC:
    .4byte fn_8044AF90
    .4byte 0x00000048
    .4byte etb_8001144C
.size eti_800213AC, 12

.global eti_800213B8
eti_800213B8:
    .4byte fn_8044AFD8
    .4byte 0x00000424
    .4byte etb_80011454
.size eti_800213B8, 12

.text
.balign 4
.global fn_8044A828
.global fn_8044AF90
.global fn_8044AFD8

fn_8044A828:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 29, 3
    li 28, 0x0
    mr 30, 29
L_8044A844:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x8(30)
    .4byte 0xC0220E18 # lfs f1, lbl_80543DB8@sda21(r0)
    bl fn_80402E08
    addi 28, 28, 0x1
    addi 30, 30, 0x4
    cmpwi 28, 0x2
    .4byte 0x4180FFDC # blt .L_8044A844
    lbz 0, 0x14(29)
    clrlwi. 0, 0, 31
    .4byte 0x4182005C # beq .L_8044A8D0
    lwz 3, 0x4(29)
    lis 4, lbl_80490DB8@ha
    addi 30, 4, lbl_80490DB8@l
    lwz 12, 0x0(3)
    lwz 5, 0x40(30)
    lwz 12, 0x3c(12)
    lwz 6, 0x44(30)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x40820080 # bne .L_8044A924
    lwz 3, 0x4(29)
    lwz 5, 0x40(30)
    lwz 12, 0x0(3)
    lwz 6, 0x44(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000058 # b .L_8044A924
L_8044A8D0:
    lwz 3, 0x4(29)
    lis 4, lbl_80490DB8@ha
    addi 30, 4, lbl_80490DB8@l
    lwz 12, 0x0(3)
    lwz 5, 0x40(30)
    lwz 12, 0x3c(12)
    lwz 6, 0x44(30)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_8044A924
    lwz 3, 0x4(29)
    lwz 5, 0x40(30)
    lwz 12, 0x0(3)
    lwz 6, 0x44(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8044A924:
    lwz 3, 0x4(29)
    lis 4, lbl_80490DB8@ha
    addi 4, 4, lbl_80490DB8@l
    lwz 12, 0x0(3)
    lwz 5, 0x40(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x44(4)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4182024C # beq .L_8044AB9C
    lhz 0, 0x10(29)
    cmplwi 0, 0x3e8
    .4byte 0x4180000C # blt .L_8044A968
    li 0, 0x3e7
    sth 0, 0x10(29)
L_8044A968:
    lis 3, 0x51ec
    lhz 31, 0x10(29)
    subi 0, 3, 0x7ae1
    lis 4, 0x6666
    mulhw 7, 0, 31
    lis 3, lbl_804B1CD8@ha
    lis 5, 0x5449
    addi 6, 4, 0x6667
    addi 4, 3, lbl_804B1CD8@l
    addi 3, 5, 0x4d47
    srawi 0, 7, 5
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0x64
    subf 0, 0, 31
    mulhw 0, 6, 0
    srawi 6, 0, 2
    srawi 0, 7, 5
    srwi 5, 0, 31
    srwi 7, 6, 31
    add 0, 0, 5
    slwi 0, 0, 2
    add 30, 6, 7
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(29)
    lis 4, lbl_80490DB8@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490DB8@l
    mr 28, 0
    lwz 5, 0x10(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x14(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lis 4, lbl_80490DB8@ha
    addi 4, 4, lbl_80490DB8@l
    lwz 12, 0x0(3)
    lwz 5, 0x18(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x1c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, lbl_804B1CD8@ha
    lis 5, 0x5449
    slwi 0, 30, 2
    addi 4, 3, lbl_804B1CD8@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 28, 3
    lwz 3, 0x4(29)
    lis 4, lbl_80490DB8@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490DB8@l
    lwz 5, 0x20(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x24(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lis 4, lbl_80490DB8@ha
    addi 4, 4, lbl_80490DB8@l
    lwz 12, 0x0(3)
    lwz 5, 0x28(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x2c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x6666
    lis 3, lbl_804B1CD8@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 31
    addi 4, 3, lbl_804B1CD8@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0xa
    subf 0, 0, 31
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 28, 3
    lwz 3, 0x4(29)
    lis 4, lbl_80490DB8@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490DB8@l
    lwz 5, 0x30(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x34(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lis 4, lbl_80490DB8@ha
    addi 4, 4, lbl_80490DB8@l
    lwz 12, 0x0(3)
    lwz 5, 0x38(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x3c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
L_8044AB9C:
    lbz 0, 0x14(29)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4182005C # beq .L_8044AC00
    lwz 3, 0x4(29)
    lis 4, lbl_80490E00@ha
    addi 30, 4, lbl_80490E00@l
    lwz 12, 0x0(3)
    lwz 5, 0x60(30)
    lwz 12, 0x3c(12)
    lwz 6, 0x64(30)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x40820080 # bne .L_8044AC54
    lwz 3, 0x4(29)
    lwz 5, 0x60(30)
    lwz 12, 0x0(3)
    lwz 6, 0x64(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000058 # b .L_8044AC54
L_8044AC00:
    lwz 3, 0x4(29)
    lis 4, lbl_80490E00@ha
    addi 30, 4, lbl_80490E00@l
    lwz 12, 0x0(3)
    lwz 5, 0x60(30)
    lwz 12, 0x3c(12)
    lwz 6, 0x64(30)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_8044AC54
    lwz 3, 0x4(29)
    lwz 5, 0x60(30)
    lwz 12, 0x0(3)
    lwz 6, 0x64(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8044AC54:
    lwz 3, 0x4(29)
    lis 4, lbl_80490E00@ha
    addi 4, 4, lbl_80490E00@l
    lwz 12, 0x0(3)
    lwz 5, 0x60(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x64(4)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x418202F4 # beq .L_8044AF74
    lbz 0, 0x12(29)
    cmplwi 0, 0x64
    .4byte 0x41800010 # blt .L_8044AC9C
    li 0, 0x63
    stb 0, 0x12(29)
    stb 0, 0x13(29)
L_8044AC9C:
    lbz 0, 0x13(29)
    cmplwi 0, 0x64
    .4byte 0x4180000C # blt .L_8044ACB0
    li 0, 0x63
    stb 0, 0x13(29)
L_8044ACB0:
    lis 3, 0x6666
    lbz 9, 0x12(29)
    addi 0, 3, 0x6667
    lbz 31, 0x13(29)
    mulhw 7, 0, 9
    lis 3, lbl_804B1CD8@ha
    lis 5, 0x5449
    addi 4, 3, lbl_804B1CD8@l
    addi 3, 5, 0x4d47
    srawi 5, 7, 2
    mulhw 0, 0, 31
    srwi 6, 5, 31
    add 8, 5, 6
    srawi 6, 0, 2
    srawi 0, 7, 2
    srwi 5, 0, 31
    srwi 7, 6, 31
    mulli 8, 8, 0xa
    add 0, 0, 5
    add 30, 6, 7
    slwi 0, 0, 2
    lwzx 4, 4, 0
    subf 27, 8, 9
    bl fn_804030C4
    mr 28, 3
    lwz 3, 0x4(29)
    lis 4, lbl_80490E00@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490E00@l
    lwz 5, 0x20(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x24(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lis 4, lbl_80490E00@ha
    addi 4, 4, lbl_80490E00@l
    lwz 12, 0x0(3)
    lwz 5, 0x28(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x2c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, lbl_804B1CD8@ha
    lis 5, 0x5449
    slwi 0, 27, 2
    addi 4, 3, lbl_804B1CD8@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 28, 3
    lwz 3, 0x4(29)
    lis 4, lbl_80490E00@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490E00@l
    lwz 5, 0x30(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x34(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lis 4, lbl_80490E00@ha
    addi 4, 4, lbl_80490E00@l
    lwz 12, 0x0(3)
    lwz 5, 0x38(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x3c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, lbl_804B1CD8@ha
    lis 5, 0x5449
    slwi 0, 30, 2
    addi 4, 3, lbl_804B1CD8@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 30, 3
    lwz 3, 0x4(29)
    lis 4, lbl_80490E00@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490E00@l
    lwz 5, 0x40(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x44(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lis 4, lbl_80490E00@ha
    addi 4, 4, lbl_80490E00@l
    lwz 12, 0x0(3)
    lwz 5, 0x48(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x6666
    lis 3, lbl_804B1CD8@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 31
    addi 4, 3, lbl_804B1CD8@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0xa
    subf 0, 0, 31
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 30, 3
    lwz 3, 0x4(29)
    lis 4, lbl_80490E00@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490E00@l
    lwz 5, 0x50(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x54(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lis 4, lbl_80490E00@ha
    addi 4, 4, lbl_80490E00@l
    lwz 12, 0x0(3)
    lwz 5, 0x58(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x5c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
L_8044AF74:
    li 0, 0x0
    stb 0, 0x14(29)
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8044AF90:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220E18 # lfs f1, lbl_80543DB8@sda21(r0)
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

fn_8044AFD8:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, 0x5449
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, lbl_804B1CD8@ha
    stw 30, 0x8(1)
    addi 4, 3, lbl_804B1CD8@l
    addi 3, 5, 0x4d47
    lbz 0, 0x14(31)
    rlwinm 0, 0, 0, 24, 30
    stb 0, 0x14(31)
    lwz 4, 0x0(4)
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(31)
    lis 4, lbl_80490DB8@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490DB8@l
    mr 30, 0
    lwz 5, 0x10(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x14(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, lbl_80490DB8@ha
    addi 4, 4, lbl_80490DB8@l
    lwz 12, 0x0(3)
    lwz 5, 0x18(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x1c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, lbl_80490DB8@ha
    addi 4, 4, lbl_80490DB8@l
    lwz 12, 0x0(3)
    lwz 5, 0x20(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x24(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, lbl_80490DB8@ha
    addi 4, 4, lbl_80490DB8@l
    lwz 12, 0x0(3)
    lwz 5, 0x28(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x2c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, lbl_80490DB8@ha
    addi 4, 4, lbl_80490DB8@l
    lwz 12, 0x0(3)
    lwz 5, 0x30(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x34(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, lbl_80490DB8@ha
    addi 4, 4, lbl_80490DB8@l
    lwz 12, 0x0(3)
    lwz 5, 0x38(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x3c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lbz 0, 0x14(31)
    lis 3, lbl_804B1CD8@ha
    addi 4, 3, lbl_804B1CD8@l
    lis 5, 0x5449
    rlwinm 0, 0, 0, 31, 29
    stb 0, 0x14(31)
    addi 3, 5, 0x4d47
    lwz 4, 0x0(4)
    bl fn_804030C4
    mr 30, 3
    lwz 3, 0x4(31)
    lis 4, lbl_80490E00@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490E00@l
    lwz 5, 0x20(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x24(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, lbl_80490E00@ha
    addi 4, 4, lbl_80490E00@l
    lwz 12, 0x0(3)
    lwz 5, 0x28(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x2c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, lbl_80490E00@ha
    addi 4, 4, lbl_80490E00@l
    lwz 12, 0x0(3)
    lwz 5, 0x30(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x34(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, lbl_80490E00@ha
    addi 4, 4, lbl_80490E00@l
    lwz 12, 0x0(3)
    lwz 5, 0x38(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x3c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, lbl_80490E00@ha
    addi 4, 4, lbl_80490E00@l
    lwz 12, 0x0(3)
    lwz 5, 0x40(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x44(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, lbl_80490E00@ha
    addi 4, 4, lbl_80490E00@l
    lwz 12, 0x0(3)
    lwz 5, 0x48(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, lbl_80490E00@ha
    addi 4, 4, lbl_80490E00@l
    lwz 12, 0x0(3)
    lwz 5, 0x50(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x54(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, lbl_80490E00@ha
    addi 4, 4, lbl_80490E00@l
    lwz 12, 0x0(3)
    lwz 5, 0x58(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x5c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 30
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(31)
    lis 4, lbl_80490DB8@ha
    addi 4, 4, lbl_80490DB8@l
    lwz 12, 0x0(3)
    lwz 5, 0x40(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x44(4)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, lbl_80490E00@ha
    stb 0, 0xb0(3)
    addi 4, 4, lbl_80490E00@l
    lwz 5, 0x60(4)
    lwz 3, 0x4(31)
    lwz 6, 0x64(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

