# 901KB-gap non-actor manager block: 3 function(s), 2,900 bytes.
# Fully contiguous with neighboring pre-existing entries. Deliberately
# left unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_800113C4
etb_800113C4:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_800113C4, 8

.global etb_800113CC
etb_800113CC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800113CC, 8

.global etb_800113D4
etb_800113D4:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_800113D4, 8

.section extabindex, "a"
.balign 4
.global eti_80021310
eti_80021310:
    .4byte fn_80448940
    .4byte 0x00000730
    .4byte etb_800113C4
.size eti_80021310, 12

.global eti_8002131C
eti_8002131C:
    .4byte fn_80449070
    .4byte 0x00000048
    .4byte etb_800113CC
.size eti_8002131C, 12

.global eti_80021328
eti_80021328:
    .4byte fn_804490B8
    .4byte 0x000003DC
    .4byte etb_800113D4
.size eti_80021328, 12

.text
.balign 4
.global fn_80448940
.global fn_80449070
.global fn_804490B8

fn_80448940:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 28, 3
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x8(28)
    .4byte 0xC0220E08 # lfs f1, lbl_80543DA8@sda21(r0)
    bl fn_80402E08
    lis 3, lbl_80490940@ha
    mr 31, 28
    addi 30, 3, lbl_80490940@l
    li 29, 0x0
L_8044897C:
    cmpwi 29, 0x2
    .4byte 0x40800038 # bge .L_804489B8
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0xc(31)
    .4byte 0xC0220E08 # lfs f1, lbl_80543DA8@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D514
    fmr 2, 1
    lwz 3, 0x1c(31)
    .4byte 0xC0220E08 # lfs f1, lbl_80543DA8@sda21(r0)
    bl fn_80402E08
    .4byte 0x48000034 # b .L_804489E8
L_804489B8:
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0xc(31)
    .4byte 0xC0220E08 # lfs f1, lbl_80543DA8@sda21(r0)
    bl fn_80402E08
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    bl fn_8043D57C
    fmr 2, 1
    lwz 3, 0x1c(31)
    .4byte 0xC0220E08 # lfs f1, lbl_80543DA8@sda21(r0)
    bl fn_80402E08
L_804489E8:
    li 0, 0x1
    lbz 3, 0x32(28)
    slw 0, 0, 29
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820078 # beq .L_80448A74
    lwz 3, 0x4(28)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x408200C0 # bne .L_80448AE4
    lwz 3, 0x4(28)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lwz 5, 0x68(30)
    stb 0, 0xb0(3)
    lwz 6, 0x6c(30)
    lwz 3, 0x4(28)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000074 # b .L_80448AE4
L_80448A74:
    lwz 3, 0x4(28)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x4182004C # beq .L_80448AE4
    lwz 3, 0x4(28)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lwz 5, 0x68(30)
    stb 0, 0xb0(3)
    lwz 6, 0x6c(30)
    lwz 3, 0x4(28)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80448AE4:
    lwz 3, 0x4(28)
    lwz 5, 0x30(30)
    lwz 12, 0x0(3)
    lwz 6, 0x34(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820160 # beq .L_80448C68
    addi 4, 29, 0x2c
    lbzx 0, 28, 4
    cmplwi 0, 0x64
    .4byte 0x4180000C # blt .L_80448B24
    li 0, 0x63
    stbx 0, 28, 4
L_80448B24:
    lis 3, 0x6666
    lbzx 7, 28, 4
    addi 0, 3, 0x6667
    lis 3, lbl_804B1C68@ha
    mulhw 0, 0, 7
    lis 5, 0x5449
    addi 4, 3, lbl_804B1C68@l
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
    subf 26, 6, 7
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(28)
    mr 27, 0
    lwz 5, 0x48(30)
    lwz 12, 0x0(3)
    lwz 6, 0x4c(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    lwz 5, 0x50(30)
    lwz 12, 0x0(3)
    lwz 6, 0x54(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, lbl_804B1C68@ha
    lis 5, 0x5449
    slwi 0, 26, 2
    addi 4, 3, lbl_804B1C68@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 27, 3
    lwz 3, 0x4(28)
    lwz 5, 0x58(30)
    lwz 12, 0x0(3)
    lwz 6, 0x5c(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    lwz 5, 0x60(30)
    lwz 12, 0x0(3)
    lwz 6, 0x64(30)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 27
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
L_80448C68:
    addi 29, 29, 0x1
    addi 30, 30, 0x70
    cmpwi 29, 0x4
    addi 31, 31, 0x4
    .4byte 0x4180FD04 # blt .L_8044897C
    lbz 0, 0x32(28)
    rlwinm. 0, 0, 0, 27, 27
    .4byte 0x4182005C # beq .L_80448CE0
    lwz 3, 0x4(28)
    lis 4, lbl_80490B00@ha
    addi 29, 4, lbl_80490B00@l
    lwz 12, 0x0(3)
    lwz 5, 0x60(29)
    lwz 12, 0x3c(12)
    lwz 6, 0x64(29)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x40820080 # bne .L_80448D34
    lwz 3, 0x4(28)
    lwz 5, 0x60(29)
    lwz 12, 0x0(3)
    lwz 6, 0x64(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x48000058 # b .L_80448D34
L_80448CE0:
    lwz 3, 0x4(28)
    lis 4, lbl_80490B00@ha
    addi 29, 4, lbl_80490B00@l
    lwz 12, 0x0(3)
    lwz 5, 0x60(29)
    lwz 12, 0x3c(12)
    lwz 6, 0x64(29)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80448D34
    lwz 3, 0x4(28)
    lwz 5, 0x60(29)
    lwz 12, 0x0(3)
    lwz 6, 0x64(29)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80448D34:
    lwz 3, 0x4(28)
    lis 4, lbl_80490B00@ha
    addi 4, 4, lbl_80490B00@l
    lwz 12, 0x0(3)
    lwz 5, 0x60(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x64(4)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x418202F4 # beq .L_80449054
    lbz 0, 0x30(28)
    cmplwi 0, 0x64
    .4byte 0x41800010 # blt .L_80448D7C
    li 0, 0x63
    stb 0, 0x30(28)
    stb 0, 0x31(28)
L_80448D7C:
    lbz 0, 0x31(28)
    cmplwi 0, 0x64
    .4byte 0x4180000C # blt .L_80448D90
    li 0, 0x63
    stb 0, 0x31(28)
L_80448D90:
    lis 3, 0x6666
    lbz 9, 0x30(28)
    addi 0, 3, 0x6667
    lbz 30, 0x31(28)
    mulhw 7, 0, 9
    lis 3, lbl_804B1C68@ha
    lis 5, 0x5449
    addi 4, 3, lbl_804B1C68@l
    addi 3, 5, 0x4d47
    srawi 5, 7, 2
    mulhw 0, 0, 30
    srwi 6, 5, 31
    add 8, 5, 6
    srawi 6, 0, 2
    srawi 0, 7, 2
    srwi 5, 0, 31
    srwi 7, 6, 31
    mulli 8, 8, 0xa
    add 0, 0, 5
    add 29, 6, 7
    slwi 0, 0, 2
    lwzx 4, 4, 0
    subf 26, 8, 9
    bl fn_804030C4
    mr 31, 3
    lwz 3, 0x4(28)
    lis 4, lbl_80490B00@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490B00@l
    lwz 5, 0x20(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x24(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 31
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    lis 4, lbl_80490B00@ha
    addi 4, 4, lbl_80490B00@l
    lwz 12, 0x0(3)
    lwz 5, 0x28(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x2c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 31
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, lbl_804B1C68@ha
    lis 5, 0x5449
    slwi 0, 26, 2
    addi 4, 3, lbl_804B1C68@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 31, 3
    lwz 3, 0x4(28)
    lis 4, lbl_80490B00@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490B00@l
    lwz 5, 0x30(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x34(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 31
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    lis 4, lbl_80490B00@ha
    addi 4, 4, lbl_80490B00@l
    lwz 12, 0x0(3)
    lwz 5, 0x38(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x3c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 31
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 3, lbl_804B1C68@ha
    lis 5, 0x5449
    slwi 0, 29, 2
    addi 4, 3, lbl_804B1C68@l
    addi 3, 5, 0x4d47
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 29, 3
    lwz 3, 0x4(28)
    lis 4, lbl_80490B00@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490B00@l
    lwz 5, 0x40(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x44(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    lis 4, lbl_80490B00@ha
    addi 4, 4, lbl_80490B00@l
    lwz 12, 0x0(3)
    lwz 5, 0x48(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x4c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lis 4, 0x6666
    lis 3, lbl_804B1C68@ha
    addi 0, 4, 0x6667
    lis 5, 0x5449
    mulhw 0, 0, 30
    addi 4, 3, lbl_804B1C68@l
    addi 3, 5, 0x4d47
    srawi 0, 0, 2
    srwi 5, 0, 31
    add 0, 0, 5
    mulli 0, 0, 0xa
    subf 0, 0, 30
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_804030C4
    mr 29, 3
    lwz 3, 0x4(28)
    lis 4, lbl_80490B00@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490B00@l
    lwz 5, 0x50(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x54(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(28)
    lis 4, lbl_80490B00@ha
    addi 4, 4, lbl_80490B00@l
    lwz 12, 0x0(3)
    lwz 5, 0x58(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x5c(4)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 29
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
L_80449054:
    li 0, 0x0
    stb 0, 0x32(28)
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80449070:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220E08 # lfs f1, lbl_80543DA8@sda21(r0)
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

fn_804490B8:
    stwu 1, -0x30(1)
    mflr 0
    lis 5, lbl_80490940@ha
    lis 4, lbl_804B1C68@ha
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    addi 31, 5, lbl_80490940@l
    mr 29, 3
    addi 30, 4, lbl_804B1C68@l
    mr 27, 31
    li 25, 0x0
    lis 28, 0x5449
L_804490E8:
    li 0, 0x1
    lbz 4, 0x32(29)
    slw 0, 0, 25
    addi 3, 28, 0x4d47
    clrlwi 0, 0, 24
    andc 0, 4, 0
    stb 0, 0x32(29)
    lwz 4, 0x0(30)
    bl fn_804030C4
    mr 0, 3
    lwz 3, 0x4(29)
    mr 26, 0
    lwz 5, 0x48(27)
    lwz 12, 0x0(3)
    lwz 6, 0x4c(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lwz 5, 0x50(27)
    lwz 12, 0x0(3)
    lwz 6, 0x54(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lwz 5, 0x58(27)
    lwz 12, 0x0(3)
    lwz 6, 0x5c(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    lwz 3, 0x4(29)
    lwz 5, 0x60(27)
    lwz 12, 0x0(3)
    lwz 6, 0x64(27)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 26
    li 5, 0x0
    lwz 12, 0x110(12)
    mtctr 12
    bctrl
    addi 25, 25, 0x1
    addi 27, 27, 0x70
    cmpwi 25, 0x4
    .4byte 0x4180FEF8 # blt .L_804490E8
    lbz 0, 0x32(29)
    lis 3, lbl_804B1C68@ha
    addi 4, 3, lbl_804B1C68@l
    lis 5, 0x5449
    rlwinm 0, 0, 0, 28, 26
    stb 0, 0x32(29)
    addi 3, 5, 0x4d47
    lwz 4, 0x0(4)
    bl fn_804030C4
    mr 30, 3
    lwz 3, 0x4(29)
    lis 4, lbl_80490B00@ha
    lwz 12, 0x0(3)
    addi 4, 4, lbl_80490B00@l
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
    lwz 3, 0x4(29)
    lis 4, lbl_80490B00@ha
    addi 4, 4, lbl_80490B00@l
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
    lwz 3, 0x4(29)
    lis 4, lbl_80490B00@ha
    addi 4, 4, lbl_80490B00@l
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
    lwz 3, 0x4(29)
    lis 4, lbl_80490B00@ha
    addi 4, 4, lbl_80490B00@l
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
    lwz 3, 0x4(29)
    lis 4, lbl_80490B00@ha
    addi 4, 4, lbl_80490B00@l
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
    lwz 3, 0x4(29)
    lis 4, lbl_80490B00@ha
    addi 4, 4, lbl_80490B00@l
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
    lwz 3, 0x4(29)
    lis 4, lbl_80490B00@ha
    addi 4, 4, lbl_80490B00@l
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
    lwz 3, 0x4(29)
    lis 4, lbl_80490B00@ha
    addi 4, 4, lbl_80490B00@l
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
    li 25, 0x0
    li 30, 0x0
L_80449404:
    lwz 3, 0x4(29)
    lwz 5, 0x30(31)
    lwz 12, 0x0(3)
    lwz 6, 0x34(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stb 30, 0xb0(3)
    lwz 5, 0x68(31)
    lwz 3, 0x4(29)
    lwz 6, 0x6c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 25, 25, 0x1
    stb 30, 0xb0(3)
    cmpwi 25, 0x4
    addi 31, 31, 0x70
    .4byte 0x4180FFB4 # blt .L_80449404
    lwz 3, 0x4(29)
    lis 4, lbl_80490B00@ha
    addi 4, 4, lbl_80490B00@l
    lwz 12, 0x0(3)
    lwz 5, 0x60(4)
    lwz 12, 0x3c(12)
    lwz 6, 0x64(4)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

