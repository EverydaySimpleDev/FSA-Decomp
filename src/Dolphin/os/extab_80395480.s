# fn_80395480 - leading helper (0x3b4)
.section extab, "a"
.balign 4
.global etb_8000EFB0
etb_8000EFB0:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_8000EFB0, 8

.section extabindex, "a"
.balign 4
.global eti_8001EE2C
eti_8001EE2C:
    .4byte fn_80395480
    .4byte 0x000003B4
    .4byte etb_8000EFB0
.size eti_8001EE2C, 12

.text
.balign 4
.global fn_80395480

fn_80395480:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 3
    lis 3, lbl_8050DB0C@ha
    addi 7, 3, lbl_8050DB0C@l
    lha 3, 0x194(30)
    lha 8, 0x286(7)
    mr 31, 4
    lha 6, 0x288(7)
    addi 0, 3, 0x1
    lha 5, 0x28a(7)
    lha 4, 0x28c(7)
    add 6, 8, 6
    lha 3, 0x28e(7)
    add 5, 6, 5
    add 7, 5, 4
    sth 0, 0x194(30)
    add 3, 7, 3
    lbz 0, 0xb2(31)
    lbz 9, 0x1a4(30)
    cmplw 0, 9
    .4byte 0x40800094 # bge .L_80395584
    lha 0, 0x194(30)
    cmpwi 0, 0xa
    .4byte 0x40820028 # bne .L_80395524
    li 0, 0x0
    mr 3, 31
    sth 0, 0x194(30)
    lwz 12, 0x0(31)
    lbz 4, 0x1a4(30)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x480002EC # b .L_8039580C
L_80395524:
    lis 4, 0x4330
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    mr 3, 31
    lwz 12, 0x0(31)
    stw 4, 0x10(1)
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    lfd 1, 0x10(1)
    .4byte 0xC0020290 # lfs f0, lbl_80543230@sda21(r0)
    fsubs 1, 1, 2
    stw 9, 0xc(1)
    .4byte 0xC8420298 # lfd f2, lbl_80543238@sda21(r0)
    stw 4, 0x8(1)
    fdivs 0, 1, 0
    lwz 12, 0x24(12)
    lfd 1, 0x8(1)
    fsubs 1, 1, 2
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 4, 0x1c(1)
    mtctr 12
    bctrl
    .4byte 0x4800028C # b .L_8039580C
L_80395584:
    lha 0, 0x194(30)
    cmpw 0, 8
    .4byte 0x41810010 # bgt .L_8039559C
    .4byte 0xC062027C # lfs f3, lbl_8054321C@sda21(r0)
    fmr 2, 3
    .4byte 0x48000210 # b .L_803957A8
L_8039559C:
    cmpw 0, 6
    .4byte 0x41810078 # bgt .L_80395618
    subf 4, 8, 0
    subf 0, 8, 6
    lis 5, 0x4330
    .4byte 0xC8820250 # lfd f4, lbl_805431F0@sda21(r0)
    xoris 4, 4, 0x8000
    xoris 0, 0, 0x8000
    stw 4, 0x1c(1)
    lis 3, lbl_80475DA0@ha
    addi 4, 3, lbl_80475DA0@l
    stw 5, 0x18(1)
    lis 3, lbl_80475DB4@ha
    lfs 5, 0x0(4)
    lfd 0, 0x18(1)
    stw 0, 0x14(1)
    fsubs 3, 0, 4
    lfs 0, 0x4(4)
    stw 5, 0x10(1)
    lfsu 6, lbl_80475DB4@l(3)
    fsubs 1, 0, 5
    lfd 2, 0x10(1)
    fmuls 3, 3, 3
    lfs 0, 0x4(3)
    fsubs 2, 2, 4
    fsubs 0, 0, 6
    fmuls 2, 2, 2
    fdivs 2, 3, 2
    fmadds 3, 2, 1, 5
    fmadds 2, 2, 0, 6
    .4byte 0x48000194 # b .L_803957A8
L_80395618:
    cmpw 0, 5
    .4byte 0x4181007C # bgt .L_80395698
    subf 4, 6, 0
    subf 0, 6, 5
    lis 5, 0x4330
    lis 3, lbl_80475DA0@ha
    xoris 4, 4, 0x8000
    xoris 0, 0, 0x8000
    stw 4, 0x1c(1)
    addi 4, 3, lbl_80475DA0@l
    .4byte 0xC8820250 # lfd f4, lbl_805431F0@sda21(r0)
    lis 3, lbl_80475DB4@ha
    stw 5, 0x18(1)
    addi 3, 3, lbl_80475DB4@l
    lfs 5, 0x4(4)
    lfd 0, 0x18(1)
    stw 0, 0x14(1)
    fsubs 3, 0, 4
    lfs 0, 0x8(4)
    stw 5, 0x10(1)
    lfs 6, 0x4(3)
    fsubs 1, 0, 5
    lfd 2, 0x10(1)
    fmuls 3, 3, 3
    lfs 0, 0x8(3)
    fsubs 2, 2, 4
    fsubs 0, 0, 6
    fmuls 2, 2, 2
    fdivs 2, 3, 2
    fmadds 3, 2, 1, 5
    fmadds 2, 2, 0, 6
    .4byte 0x48000114 # b .L_803957A8
L_80395698:
    cmpw 0, 7
    .4byte 0x4181007C # bgt .L_80395718
    subf 4, 5, 0
    subf 0, 5, 7
    lis 5, 0x4330
    lis 3, lbl_80475DA0@ha
    xoris 4, 4, 0x8000
    xoris 0, 0, 0x8000
    stw 4, 0x1c(1)
    addi 4, 3, lbl_80475DA0@l
    .4byte 0xC8820250 # lfd f4, lbl_805431F0@sda21(r0)
    lis 3, lbl_80475DB4@ha
    stw 5, 0x18(1)
    addi 3, 3, lbl_80475DB4@l
    lfs 5, 0x8(4)
    lfd 0, 0x18(1)
    stw 0, 0x14(1)
    fsubs 3, 0, 4
    lfs 0, 0xc(4)
    stw 5, 0x10(1)
    lfs 6, 0x8(3)
    fsubs 1, 0, 5
    lfd 2, 0x10(1)
    fmuls 3, 3, 3
    lfs 0, 0xc(3)
    fsubs 2, 2, 4
    fsubs 0, 0, 6
    fmuls 2, 2, 2
    fdivs 2, 3, 2
    fmadds 3, 2, 1, 5
    fmadds 2, 2, 0, 6
    .4byte 0x48000094 # b .L_803957A8
L_80395718:
    cmpw 0, 3
    .4byte 0x4181007C # bgt .L_80395798
    subf 4, 7, 0
    subf 0, 7, 3
    lis 5, 0x4330
    lis 3, lbl_80475DA0@ha
    xoris 4, 4, 0x8000
    xoris 0, 0, 0x8000
    stw 4, 0x1c(1)
    addi 4, 3, lbl_80475DA0@l
    .4byte 0xC8820250 # lfd f4, lbl_805431F0@sda21(r0)
    lis 3, lbl_80475DB4@ha
    stw 5, 0x18(1)
    addi 3, 3, lbl_80475DB4@l
    lfs 5, 0xc(4)
    lfd 0, 0x18(1)
    stw 0, 0x14(1)
    fsubs 3, 0, 4
    lfs 0, 0x10(4)
    stw 5, 0x10(1)
    lfs 6, 0xc(3)
    fsubs 1, 0, 5
    lfd 2, 0x10(1)
    fmuls 3, 3, 3
    lfs 0, 0x10(3)
    fsubs 2, 2, 4
    fsubs 0, 0, 6
    fmuls 2, 2, 2
    fdivs 2, 3, 2
    fmadds 3, 2, 1, 5
    fmadds 2, 2, 0, 6
    .4byte 0x48000014 # b .L_803957A8
L_80395798:
    .4byte 0xC062027C # lfs f3, lbl_8054321C@sda21(r0)
    li 0, 0x0
    sth 0, 0x194(30)
    fmr 2, 3
L_803957A8:
    lfs 1, 0x110(30)
    mr 3, 31
    lfs 0, 0x114(30)
    fmuls 31, 3, 1
    lwz 12, 0x0(31)
    fmuls 30, 2, 0
    lwz 12, 0x18(12)
    fmr 1, 31
    fmr 2, 30
    mtctr 12
    bctrl
    .4byte 0xC0620244 # lfs f3, lbl_805431E4@sda21(r0)
    mr 3, 31
    lfs 1, 0x110(30)
    lfs 0, 0x108(30)
    lwz 12, 0x0(31)
    fmadds 2, 1, 3, 0
    lfs 1, 0x10c(30)
    lfs 0, 0x114(30)
    lwz 12, 0x10(12)
    fadds 0, 1, 0
    fnmsubs 1, 31, 3, 2
    fsubs 2, 0, 30
    mtctr 12
    bctrl
L_8039580C:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 0, 0x54(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

