# fn_8039934C - component A/B region helper (0x46c)
.section extab, "a"
.balign 4
.global etb_8000F1AC
etb_8000F1AC:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_8000F1AC, 8

.section extabindex, "a"
.balign 4
.global eti_8001EED4
eti_8001EED4:
    .4byte fn_8039934C
    .4byte 0x0000046C
    .4byte etb_8000F1AC
.size eti_8001EED4, 12

.text
.balign 4
.global fn_8039934C

fn_8039934C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 28, 3
    mr 29, 4
    lwz 3, 0x38(3)
    mr 30, 5
    lwz 12, 0x0(3)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x24(1)
    cmpwi 29, 0x0
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 0, 0x20(1)
    lfs 0, 0x48(28)
    lfd 1, 0x20(1)
    fsubs 1, 1, 2
    fdivs 31, 0, 1
    .4byte 0x408101E8 # ble .L_803995A0
    cmpwi 29, 0x63
    .4byte 0x4081000C # ble .L_803993CC
    li 29, 0x63
    li 30, 0x3b
L_803993CC:
    lis 3, 0x6666
    addi 0, 3, 0x6667
    mulhw 0, 0, 29
    srawi 4, 0, 2
    srawi 0, 0, 2
    srwi 3, 0, 31
    srwi 5, 4, 31
    add 0, 0, 3
    mulli 0, 0, 0xa
    add. 4, 4, 5
    subf 31, 0, 29
    .4byte 0x40810090 # ble .L_80399488
    lwz 3, 0x38(28)
    addi 4, 4, 0x30
    addi 5, 1, 0x1c
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x1d(1)
    lis 3, 0x4330
    lbz 0, 0x201(28)
    xoris 4, 4, 0x8000
    stw 3, 0x20(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x24(1)
    add 3, 28, 0
    lfs 3, 0x44(28)
    lfd 0, 0x20(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(28)
    slwi 0, 0, 2
    add 3, 28, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(28)
    add 4, 28, 0
    lbz 3, 0x22d(4)
    addi 0, 3, 0x1
    stb 0, 0x22d(4)
L_80399488:
    lwz 3, 0x38(28)
    addi 4, 31, 0x30
    addi 5, 1, 0x18
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x19(1)
    lis 3, 0x4330
    lbz 0, 0x201(28)
    addi 5, 1, 0x14
    xoris 4, 4, 0x8000
    stw 3, 0x20(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x24(1)
    add 3, 28, 0
    lfs 3, 0x44(28)
    li 4, 0x27
    lfd 0, 0x20(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(28)
    slwi 0, 0, 2
    add 3, 28, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(28)
    add 6, 28, 0
    lbz 3, 0x22d(6)
    addi 0, 3, 0x1
    stb 0, 0x22d(6)
    lwz 3, 0x38(28)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x15(1)
    lis 3, 0x4330
    lbz 0, 0x201(28)
    xoris 4, 4, 0x8000
    stw 3, 0x28(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x2c(1)
    add 3, 28, 0
    lfs 3, 0x44(28)
    lfd 0, 0x28(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(28)
    slwi 0, 0, 2
    add 3, 28, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(28)
    add 4, 28, 0
    lbz 3, 0x22d(4)
    addi 0, 3, 0x1
    stb 0, 0x22d(4)
L_803995A0:
    cmpwi 30, 0x3b
    .4byte 0x40810008 # ble .L_803995AC
    li 30, 0x3b
L_803995AC:
    lis 3, 0x6666
    addi 0, 3, 0x6667
    mulhw 0, 0, 30
    srawi 4, 0, 2
    srawi 0, 0, 2
    srwi 3, 0, 31
    srwi 5, 4, 31
    add 0, 0, 3
    mulli 0, 0, 0xa
    add. 4, 4, 5
    subf 30, 0, 30
    .4byte 0x4181000C # bgt .L_803995E4
    cmpwi 29, 0x0
    .4byte 0x40810090 # ble .L_80399670
L_803995E4:
    lwz 3, 0x38(28)
    addi 4, 4, 0x30
    addi 5, 1, 0x10
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x11(1)
    lis 3, 0x4330
    lbz 0, 0x201(28)
    xoris 4, 4, 0x8000
    stw 3, 0x28(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x2c(1)
    add 3, 28, 0
    lfs 3, 0x44(28)
    lfd 0, 0x28(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(28)
    slwi 0, 0, 2
    add 3, 28, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(28)
    add 4, 28, 0
    lbz 3, 0x22d(4)
    addi 0, 3, 0x1
    stb 0, 0x22d(4)
L_80399670:
    lwz 3, 0x38(28)
    addi 4, 30, 0x30
    addi 5, 1, 0xc
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xd(1)
    lis 3, 0x4330
    lbz 0, 0x201(28)
    addi 5, 1, 0x8
    xoris 4, 4, 0x8000
    stw 3, 0x28(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x2c(1)
    add 3, 28, 0
    lfs 3, 0x44(28)
    li 4, 0x27
    lfd 0, 0x28(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(28)
    slwi 0, 0, 2
    add 3, 28, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(28)
    add 6, 28, 0
    lbz 3, 0x22d(6)
    addi 0, 3, 0x1
    stb 0, 0x22d(6)
    lwz 3, 0x38(28)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x9(1)
    lis 3, 0x4330
    lbz 0, 0x201(28)
    xoris 4, 4, 0x8000
    stw 3, 0x20(1)
    slwi 0, 0, 2
    .4byte 0xC8220250 # lfd f1, lbl_805431F0@sda21(r0)
    stw 4, 0x24(1)
    add 3, 28, 0
    lfs 3, 0x44(28)
    lfd 0, 0x20(1)
    .4byte 0xC0820280 # lfs f4, lbl_80543220@sda21(r0)
    fsubs 2, 0, 1
    lfs 1, 0x4c(3)
    .4byte 0xC00202F4 # lfs f0, lbl_80543294@sda21(r0)
    fmuls 2, 3, 2
    fmuls 2, 31, 2
    fmadds 1, 4, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(28)
    slwi 0, 0, 2
    add 3, 28, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(28)
    add 4, 28, 0
    lbz 3, 0x22d(4)
    addi 0, 3, 0x1
    stb 0, 0x22d(4)
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

