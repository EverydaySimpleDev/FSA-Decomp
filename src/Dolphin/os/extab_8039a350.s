# fn_8039A350 - component B: vtable-slot function (0x1c0)
.section extab, "a"
.balign 4
.global etb_8000F1BC
etb_8000F1BC:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_8000F1BC, 8

.section extabindex, "a"
.balign 4
.global eti_8001EEEC
eti_8001EEEC:
    .4byte fn_8039A350
    .4byte 0x000001C0
    .4byte etb_8000F1BC
.size eti_8001EEEC, 12

.text
.balign 4
.global fn_8039A350

fn_8039A350:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 4
    mr 31, 3
    cmpwi 30, 0xa
    .4byte 0x408200B4 # bne .L_8039A42C
    lbz 3, 0x201(31)
    li 5, 0x0
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    addi 0, 3, 0x1
    stb 0, 0x201(31)
    lbz 3, 0x22c(31)
    addi 0, 3, 0x1
    stb 0, 0x22c(31)
    lbz 0, 0x201(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stfs 0, 0x4c(3)
    lbz 0, 0x201(31)
    add 3, 31, 0
    stb 5, 0x22d(3)
    lbz 0, 0x201(31)
    slwi 0, 0, 2
    add 3, 31, 0
    stfs 0, 0xf4(3)
    stb 5, 0x1e8(31)
    lbz 4, 0x281(31)
    lbz 0, 0x22c(31)
    add 3, 31, 4
    lbz 3, 0x202(3)
    extsb 0, 0
    extsb 3, 3
    cmpw 3, 0
    .4byte 0x41820108 # beq .L_8039A4F0
    lbz 0, 0x201(31)
    subf 0, 3, 0
    cmpwi 0, 0x3
    .4byte 0x418000F8 # blt .L_8039A4F0
    addi 3, 4, 0x1
    li 0, 0x1
    stb 3, 0x281(31)
    lbz 3, 0x281(31)
    lbz 4, 0x22c(31)
    add 3, 31, 3
    stb 4, 0x202(3)
    lbz 3, 0x281(31)
    add 3, 31, 3
    stb 5, 0x257(3)
    stb 0, 0x1e8(31)
    .4byte 0x480000C8 # b .L_8039A4F0
L_8039A42C:
    lwz 3, 0x38(31)
    lwz 12, 0x0(3)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x14(1)
    mr 4, 30
    lwz 3, 0x38(31)
    addi 5, 1, 0x8
    stw 0, 0x10(1)
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    lfd 1, 0x10(1)
    lfs 0, 0x48(31)
    fsubs 1, 1, 2
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    fdivs 31, 0, 1
    mtctr 12
    bctrl
    lbz 4, 0x9(1)
    lis 3, 0x4330
    lbz 0, 0x201(31)
    xoris 4, 4, 0x8000
    stw 3, 0x18(1)
    slwi 0, 0, 2
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    stw 4, 0x1c(1)
    add 3, 31, 0
    lfs 3, 0x44(31)
    lfd 0, 0x18(1)
    lfs 1, 0x4c(3)
    fsubs 2, 0, 2
    .4byte 0xC0020248 # lfs f0, lbl_805431E8@sda21(r0)
    fmuls 2, 3, 2
    fmadds 1, 31, 2, 1
    stfs 1, 0x4c(3)
    lbz 0, 0x201(31)
    slwi 0, 0, 2
    add 3, 31, 0
    lfs 1, 0xf4(3)
    fadds 0, 1, 0
    stfs 0, 0xf4(3)
    lbz 0, 0x201(31)
    add 4, 31, 0
    lbz 3, 0x22d(4)
    addi 0, 3, 0x1
    stb 0, 0x22d(4)
L_8039A4F0:
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

