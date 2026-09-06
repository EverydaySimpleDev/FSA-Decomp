# fn_80398EF4 - component A/B region helper (0x458)
.section extab, "a"
.balign 4
.global etb_8000F1A4
etb_8000F1A4:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000F1A4, 8

.section extabindex, "a"
.balign 4
.global eti_8001EEC8
eti_8001EEC8:
    .4byte fn_80398EF4
    .4byte 0x00000458
    .4byte etb_8000F1A4
.size eti_8001EEC8, 12

.text
.balign 4
.global fn_80398EF4

fn_80398EF4:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    mr 30, 3
    mr 29, 4
    lwz 3, 0x38(3)
    mr 31, 5
    lwz 12, 0x0(3)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x24(1)
    cmpwi 29, 0x63
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 0, 0x20(1)
    lfs 0, 0x48(30)
    lfd 1, 0x20(1)
    fsubs 1, 1, 2
    fdivs 31, 0, 1
    .4byte 0x40810008 # ble .L_80398F64
    li 29, 0x63
L_80398F64:
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
    subf 29, 0, 29
    .4byte 0x40810090 # ble .L_80399020
    lwz 3, 0x38(30)
    addi 4, 4, 0x30
    addi 5, 1, 0x1c
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x1d(1)
    lis 3, 0x4330
    lbz 0, 0x201(30)
    xoris 4, 4, 0x8000
    stw 3, 0x20(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x24(1)
    add 3, 30, 0
    lfs 3, 0x44(30)
    lfd 0, 0x20(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(30)
    slwi 0, 0, 2
    add 3, 30, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(30)
    add 4, 30, 0
    lbz 3, 0x22d(4)
    addi 0, 3, 0x1
    stb 0, 0x22d(4)
L_80399020:
    lwz 3, 0x38(30)
    addi 4, 29, 0x30
    addi 5, 1, 0x18
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x19(1)
    lis 3, 0x4330
    lbz 0, 0x201(30)
    addi 5, 1, 0x14
    xoris 4, 4, 0x8000
    stw 3, 0x20(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x24(1)
    add 3, 30, 0
    lfs 3, 0x44(30)
    li 4, 0x27
    lfd 0, 0x20(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(30)
    slwi 0, 0, 2
    add 3, 30, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(30)
    add 6, 30, 0
    lbz 3, 0x22d(6)
    addi 0, 3, 0x1
    stb 0, 0x22d(6)
    lwz 3, 0x38(30)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x15(1)
    lis 3, 0x4330
    lbz 0, 0x201(30)
    cmpwi 31, 0x63
    xoris 4, 4, 0x8000
    stw 3, 0x28(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x2c(1)
    add 3, 30, 0
    lfs 3, 0x44(30)
    lfd 0, 0x28(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(30)
    slwi 0, 0, 2
    add 3, 30, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(30)
    add 4, 30, 0
    lbz 3, 0x22d(4)
    addi 0, 3, 0x1
    stb 0, 0x22d(4)
    .4byte 0x40810008 # ble .L_80399144
    li 31, 0x63
L_80399144:
    lis 4, 0x6666
    lwz 3, 0x38(30)
    addi 0, 4, 0x6667
    addi 5, 1, 0x10
    mulhw 0, 0, 31
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    srawi 0, 0, 2
    srwi 4, 0, 31
    add 4, 0, 4
    addi 4, 4, 0x30
    mtctr 12
    bctrl
    lbz 5, 0x11(1)
    lis 4, 0x4330
    lbz 0, 0x201(30)
    lis 3, 0x6666
    xoris 5, 5, 0x8000
    stw 4, 0x30(1)
    slwi 4, 0, 2
    addi 0, 3, 0x6667
    stw 5, 0x34(1)
    add 4, 30, 4
    .4byte 0xC8220250 # lfd f1, lbl_805431F0@sda21(r0)
    mulhw 0, 0, 31
    lfd 0, 0x30(1)
    addi 5, 1, 0xc
    lfs 2, 0x44(30)
    fsubs 0, 0, 1
    lfs 1, 0x4c(4)
    fmuls 2, 2, 0
    srawi 0, 0, 2
    srwi 3, 0, 31
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    add 0, 0, 3
    fmadds 1, 31, 2, 1
    mulli 0, 0, 0xa
    stfs 1, 0x4c(4)
    subf 3, 0, 31
    lbz 0, 0x201(30)
    addi 4, 3, 0x30
    slwi 0, 0, 2
    add 3, 30, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(30)
    add 6, 30, 0
    lbz 3, 0x22d(6)
    addi 0, 3, 0x1
    stb 0, 0x22d(6)
    lwz 3, 0x38(30)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xd(1)
    lis 3, 0x4330
    lbz 0, 0x201(30)
    addi 5, 1, 0x8
    xoris 4, 4, 0x8000
    stw 3, 0x38(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x3c(1)
    add 3, 30, 0
    lfs 3, 0x44(30)
    li 4, 0x27
    lfd 0, 0x38(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(30)
    slwi 0, 0, 2
    add 3, 30, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(30)
    add 6, 30, 0
    lbz 3, 0x22d(6)
    addi 0, 3, 0x1
    stb 0, 0x22d(6)
    lwz 3, 0x38(30)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x9(1)
    lis 3, 0x4330
    lbz 0, 0x201(30)
    xoris 4, 4, 0x8000
    stw 3, 0x40(1)
    slwi 0, 0, 2
    .4byte 0xC8220250 # lfd f1, lbl_805431F0@sda21(r0)
    stw 4, 0x44(1)
    add 3, 30, 0
    lfs 3, 0x44(30)
    lfd 0, 0x40(1)
    .4byte 0xC0820280 # lfs f4, lbl_80543220@sda21(r0)
    fsubs 2, 0, 1
    lfs 1, 0x4c(3)
    .4byte 0xC00202F4 # lfs f0, lbl_80543294@sda21(r0)
    fmuls 2, 3, 2
    fmuls 2, 31, 2
    fmadds 1, 4, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(30)
    slwi 0, 0, 2
    add 3, 30, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(30)
    add 4, 30, 0
    lbz 3, 0x22d(4)
    addi 0, 3, 0x1
    stb 0, 0x22d(4)
    psq_l 31, 0x68(1), 0, 0
    lwz 0, 0x74(1)
    lfd 31, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

