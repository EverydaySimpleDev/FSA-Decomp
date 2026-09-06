# 901KB-gap non-actor manager block: 3 function(s), 2,700 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80011404
etb_80011404:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80011404, 8

.global etb_8001140C
etb_8001140C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8001140C, 8

.global etb_80011414
etb_80011414:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80011414, 8

.section extabindex, "a"
.balign 4
.global eti_80021358
eti_80021358:
    .4byte fn_8044998C
    .4byte 0x00000698
    .4byte etb_80011404
.size eti_80021358, 12

.global eti_80021364
eti_80021364:
    .4byte fn_8044A024
    .4byte 0x00000048
    .4byte etb_8001140C
.size eti_80021364, 12

.global eti_80021370
eti_80021370:
    .4byte fn_8044A06C
    .4byte 0x000003AC
    .4byte etb_80011414
.size eti_80021370, 12

.text
.balign 4
.global fn_8044998C
.global fn_8044A024
.global fn_8044A06C

fn_8044998C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 29, 3
    li 28, 0x0
    mr 30, 29
L_804499A8:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x8(30)
    .4byte 0xC0220E10 # lfs f1, lbl_80543DB0@sda21(r0)
    bl fn_80402E08
    addi 28, 28, 0x1
    addi 30, 30, 0x4
    cmpwi 28, 0x2
    .4byte 0x4180FFDC # blt .L_804499A8
    lbz 0, 0x13(29)
    clrlwi. 0, 0, 31
    .4byte 0x4182005C # beq .L_80449A34
    lwz 3, 0x4(29)
    lis 4, lbl_80490C40@ha
    addi 30, 4, lbl_80490C40@l
    lwz 12, 0x0(3)
    lwz 5, 0x30(30)
    lwz 12, 0x3c(12)
    lwz 6, 0x34(30)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x40820080 # bne .L_80449A88
    lwz 3, 0x4(29)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000058 # b .L_80449A88
L_80449A34:
    lwz 3, 0x4(29)
    lis 4, lbl_80490C40@ha
    addi 30, 4, lbl_80490C40@l
    lwz 12, 0x0(3)
    lwz 5, 0x30(30)
    lwz 12, 0x3c(12)
    lwz 6, 0x34(30)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80449A88
    lwz 3, 0x4(29)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80449A88:
    lwz 3, 0x4(29)
    lis 4, lbl_80490C40@ha
    addi 4, 4, lbl_80490C40@l
    lwz 12, 0x0(3)
    lwz 5, 0x30(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x34(4)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4182017C # beq .L_80449C30
    lbz 0, 0x10(29)
    cmplwi 0, 0x64
    .4byte 0x4180000C # blt .L_80449ACC
    li 0, 0x63
    stb 0, 0x10(29)
L_80449ACC:
    lis 3, 0x6666
    lbz 7, 0x10(29)
    addi 0, 3, 0x6667
    lis 3, lbl_804B1CA0@ha
    mulhw 0, 0, 7
    lis 5, 0x5449
    addi 4, 3, lbl_804B1CA0@l
    addi 3, 5, 0x4d47
    srawi 5, 0, 2
    srwi 6, 5, 31
    srawi 0, 0, 2
    add 6, 5, 6
    srwi 5, 0, 31
    mulli 6, 6, 0xa
    add 0, 0, 5
    slwi 0, 0, 2
    lwzx 4, 4, 0
    subf 30, 6, 7
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(29)
    lis 4, lbl_80490C40@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490C40@l
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
    lis 4, lbl_80490C40@ha
    addi 4, 4, lbl_80490C40@l
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
    lis 3, lbl_804B1CA0@ha
    lis 5, 0x5449
    slwi 0, 30, 2
    addi 4, 3, lbl_804B1CA0@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 28, 3
    lwz 3, 0x4(29)
    lis 4, lbl_80490C40@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490C40@l
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
    lis 4, lbl_80490C40@ha
    addi 4, 4, lbl_80490C40@l
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
L_80449C30:
    lbz 0, 0x13(29)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4182005C # beq .L_80449C94
    lwz 3, 0x4(29)
    lis 4, lbl_80490C78@ha
    addi 30, 4, lbl_80490C78@l
    lwz 12, 0x0(3)
    lwz 5, 0x60(30)
    lwz 12, 0x3c(12)
    lwz 6, 0x64(30)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x40820080 # bne .L_80449CE8
    lwz 3, 0x4(29)
    lwz 5, 0x60(30)
    lwz 12, 0x0(3)
    lwz 6, 0x64(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000058 # b .L_80449CE8
L_80449C94:
    lwz 3, 0x4(29)
    lis 4, lbl_80490C78@ha
    addi 30, 4, lbl_80490C78@l
    lwz 12, 0x0(3)
    lwz 5, 0x60(30)
    lwz 12, 0x3c(12)
    lwz 6, 0x64(30)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80449CE8
    lwz 3, 0x4(29)
    lwz 5, 0x60(30)
    lwz 12, 0x0(3)
    lwz 6, 0x64(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80449CE8:
    lwz 3, 0x4(29)
    lis 4, lbl_80490C78@ha
    addi 4, 4, lbl_80490C78@l
    lwz 12, 0x0(3)
    lwz 5, 0x60(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x64(4)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x418202F4 # beq .L_8044A008
    lbz 0, 0x11(29)
    cmplwi 0, 0x64
    .4byte 0x41800010 # blt .L_80449D30
    li 0, 0x63
    stb 0, 0x11(29)
    stb 0, 0x12(29)
L_80449D30:
    lbz 0, 0x12(29)
    cmplwi 0, 0x64
    .4byte 0x4180000C # blt .L_80449D44
    li 0, 0x63
    stb 0, 0x12(29)
L_80449D44:
    lis 3, 0x6666
    lbz 9, 0x11(29)
    addi 0, 3, 0x6667
    lbz 31, 0x12(29)
    mulhw 7, 0, 9
    lis 3, lbl_804B1CA0@ha
    lis 5, 0x5449
    addi 4, 3, lbl_804B1CA0@l
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
    lis 4, lbl_80490C78@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490C78@l
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
    lis 4, lbl_80490C78@ha
    addi 4, 4, lbl_80490C78@l
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
    lis 3, lbl_804B1CA0@ha
    lis 5, 0x5449
    slwi 0, 27, 2
    addi 4, 3, lbl_804B1CA0@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 28, 3
    lwz 3, 0x4(29)
    lis 4, lbl_80490C78@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490C78@l
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
    lis 4, lbl_80490C78@ha
    addi 4, 4, lbl_80490C78@l
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
    lis 3, lbl_804B1CA0@ha
    lis 5, 0x5449
    slwi 0, 30, 2
    addi 4, 3, lbl_804B1CA0@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 30, 3
    lwz 3, 0x4(29)
    lis 4, lbl_80490C78@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490C78@l
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
    lis 4, lbl_80490C78@ha
    addi 4, 4, lbl_80490C78@l
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
    lis 3, lbl_804B1CA0@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 31
    addi 4, 3, lbl_804B1CA0@l
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
    lis 4, lbl_80490C78@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490C78@l
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
    lis 4, lbl_80490C78@ha
    addi 4, 4, lbl_80490C78@l
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
L_8044A008:
    li 0, 0x0
    stb 0, 0x13(29)
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8044A024:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220E10 # lfs f1, lbl_80543DB0@sda21(r0)
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

fn_8044A06C:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, 0x5449
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lis 3, lbl_804B1CA0@ha
    stw 30, 0x8(1)
    addi 4, 3, lbl_804B1CA0@l
    addi 3, 5, 0x4d47
    lbz 0, 0x13(31)
    rlwinm 0, 0, 0, 24, 30
    stb 0, 0x13(31)
    lwz 4, 0x0(4)
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(31)
    lis 4, lbl_80490C40@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490C40@l
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
    lis 4, lbl_80490C40@ha
    addi 4, 4, lbl_80490C40@l
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
    lis 4, lbl_80490C40@ha
    addi 4, 4, lbl_80490C40@l
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
    lis 4, lbl_80490C40@ha
    addi 4, 4, lbl_80490C40@l
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
    lbz 0, 0x13(31)
    lis 3, lbl_804B1CA0@ha
    addi 4, 3, lbl_804B1CA0@l
    lis 5, 0x5449
    rlwinm 0, 0, 0, 31, 29
    stb 0, 0x13(31)
    addi 3, 5, 0x4d47
    lwz 4, 0x0(4)
    bl fn_804030C4
    mr 30, 3
    lwz 3, 0x4(31)
    lis 4, lbl_80490C78@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490C78@l
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
    lis 4, lbl_80490C78@ha
    addi 4, 4, lbl_80490C78@l
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
    lis 4, lbl_80490C78@ha
    addi 4, 4, lbl_80490C78@l
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
    lis 4, lbl_80490C78@ha
    addi 4, 4, lbl_80490C78@l
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
    lis 4, lbl_80490C78@ha
    addi 4, 4, lbl_80490C78@l
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
    lis 4, lbl_80490C78@ha
    addi 4, 4, lbl_80490C78@l
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
    lis 4, lbl_80490C78@ha
    addi 4, 4, lbl_80490C78@l
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
    lis 4, lbl_80490C78@ha
    addi 4, 4, lbl_80490C78@l
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
    lis 4, lbl_80490C40@ha
    addi 4, 4, lbl_80490C40@l
    lwz 12, 0x0(3)
    lwz 5, 0x30(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x34(4)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, lbl_80490C78@ha
    stb 0, 0xb0(3)
    addi 4, 4, lbl_80490C78@l
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

