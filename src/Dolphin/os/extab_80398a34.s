# fn_80398A34 - component A/B region helper (0x4c0)
.section extab, "a"
.balign 4
.global etb_8000F19C
etb_8000F19C:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000F19C, 8

.section extabindex, "a"
.balign 4
.global eti_8001EEBC
eti_8001EEBC:
    .4byte fn_80398A34
    .4byte 0x000004C0
    .4byte etb_8000F19C
.size eti_8001EEBC, 12

.text
.balign 4
.global fn_80398A34

fn_80398A34:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 29, 3
    mr 30, 4
    lwz 3, 0x38(3)
    li 31, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x24(1)
    cmpwi 30, 0x0
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 0, 0x20(1)
    lfs 0, 0x48(29)
    lfd 1, 0x20(1)
    fsubs 1, 1, 2
    fdivs 31, 0, 1
    .4byte 0x40800094 # bge .L_80398B30
    lwz 3, 0x38(29)
    mulli 30, 30, -0x1
    addi 5, 1, 0x1c
    lwz 12, 0x0(3)
    li 4, 0x2d
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x1d(1)
    lis 3, 0x4330
    lbz 0, 0x201(29)
    xoris 4, 4, 0x8000
    stw 3, 0x20(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x24(1)
    add 3, 29, 0
    lfs 3, 0x44(29)
    lfd 0, 0x20(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(29)
    slwi 0, 0, 2
    add 3, 29, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(29)
    add 4, 29, 0
    lbz 3, 0x22d(4)
    addi 0, 3, 0x1
    stb 0, 0x22d(4)
L_80398B30:
    lis 3, 0x68dc
    subi 0, 3, 0x7453
    mulhw 0, 0, 30
    srawi 4, 0, 12
    srawi 0, 0, 12
    srwi 3, 0, 31
    srwi 5, 4, 31
    add 0, 0, 3
    mulli 0, 0, 0x2710
    add. 4, 4, 5
    subf 30, 0, 30
    .4byte 0x41820094 # beq .L_80398BF0
    lwz 3, 0x38(29)
    addi 4, 4, 0x30
    addi 5, 1, 0x18
    li 31, 0x1
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x19(1)
    lis 3, 0x4330
    lbz 0, 0x201(29)
    xoris 4, 4, 0x8000
    stw 3, 0x20(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x24(1)
    add 3, 29, 0
    lfs 3, 0x44(29)
    lfd 0, 0x20(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(29)
    slwi 0, 0, 2
    add 3, 29, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(29)
    add 4, 29, 0
    lbz 3, 0x22d(4)
    addi 0, 3, 0x1
    stb 0, 0x22d(4)
L_80398BF0:
    lis 3, 0x1062
    addi 0, 3, 0x4dd3
    mulhw 0, 0, 30
    srawi 4, 0, 6
    srawi 0, 0, 6
    srwi 3, 0, 31
    srwi 5, 4, 31
    add 0, 0, 3
    mulli 0, 0, 0x3e8
    add. 4, 4, 5
    subf 30, 0, 30
    .4byte 0x4082000C # bne .L_80398C28
    clrlwi. 0, 31, 24
    .4byte 0x41820094 # beq .L_80398CB8
L_80398C28:
    lwz 3, 0x38(29)
    addi 4, 4, 0x30
    addi 5, 1, 0x14
    li 31, 0x1
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x15(1)
    lis 3, 0x4330
    lbz 0, 0x201(29)
    xoris 4, 4, 0x8000
    stw 3, 0x20(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x24(1)
    add 3, 29, 0
    lfs 3, 0x44(29)
    lfd 0, 0x20(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(29)
    slwi 0, 0, 2
    add 3, 29, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(29)
    add 4, 29, 0
    lbz 3, 0x22d(4)
    addi 0, 3, 0x1
    stb 0, 0x22d(4)
L_80398CB8:
    lis 3, 0x51ec
    subi 0, 3, 0x7ae1
    mulhw 0, 0, 30
    srawi 4, 0, 5
    srawi 0, 0, 5
    srwi 3, 0, 31
    srwi 5, 4, 31
    add 0, 0, 3
    mulli 0, 0, 0x64
    add. 4, 4, 5
    subf 30, 0, 30
    .4byte 0x4082000C # bne .L_80398CF0
    clrlwi. 0, 31, 24
    .4byte 0x41820094 # beq .L_80398D80
L_80398CF0:
    lwz 3, 0x38(29)
    addi 4, 4, 0x30
    addi 5, 1, 0x10
    li 31, 0x1
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x11(1)
    lis 3, 0x4330
    lbz 0, 0x201(29)
    xoris 4, 4, 0x8000
    stw 3, 0x20(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x24(1)
    add 3, 29, 0
    lfs 3, 0x44(29)
    lfd 0, 0x20(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(29)
    slwi 0, 0, 2
    add 3, 29, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(29)
    add 4, 29, 0
    lbz 3, 0x22d(4)
    addi 0, 3, 0x1
    stb 0, 0x22d(4)
L_80398D80:
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
    .4byte 0x4082000C # bne .L_80398DB8
    clrlwi. 0, 31, 24
    .4byte 0x41820090 # beq .L_80398E44
L_80398DB8:
    lwz 3, 0x38(29)
    addi 4, 4, 0x30
    addi 5, 1, 0xc
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xd(1)
    lis 3, 0x4330
    lbz 0, 0x201(29)
    xoris 4, 4, 0x8000
    stw 3, 0x20(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x24(1)
    add 3, 29, 0
    lfs 3, 0x44(29)
    lfd 0, 0x20(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(29)
    slwi 0, 0, 2
    add 3, 29, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(29)
    add 4, 29, 0
    lbz 3, 0x22d(4)
    addi 0, 3, 0x1
    stb 0, 0x22d(4)
L_80398E44:
    lwz 3, 0x38(29)
    addi 4, 30, 0x30
    addi 5, 1, 0x8
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x9(1)
    lis 3, 0x4330
    lbz 0, 0x201(29)
    xoris 4, 4, 0x8000
    stw 3, 0x20(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x24(1)
    add 3, 29, 0
    lfs 3, 0x44(29)
    lfd 0, 0x20(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(29)
    slwi 0, 0, 2
    add 3, 29, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(29)
    add 4, 29, 0
    lbz 3, 0x22d(4)
    addi 0, 3, 0x1
    stb 0, 0x22d(4)
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

