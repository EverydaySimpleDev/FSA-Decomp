# fn_803B14F8 - helper (0x668) - calls fn_803A8DFC (a leading helper), confirming cross-references within this actor's own code
.section extab, "a"
.balign 4
.global etb_8000F4C4
etb_8000F4C4:
    .4byte 0x78CA0000
    .4byte 0x00000000
.size etb_8000F4C4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F240
eti_8001F240:
    .4byte fn_803B14F8
    .4byte 0x00000668
    .4byte etb_8000F4C4
.size eti_8001F240, 12

.text
.balign 4
.global fn_803B14F8

fn_803B14F8:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stfd 29, 0x70(1)
    psq_st 29, 0x78(1), 0, 0
    stmw 17, 0x34(1)
    lis 4, lbl_8050DB0C@ha
    lis 0, 0x4330
    addi 6, 4, lbl_8050DB0C@l
    mr 31, 3
    lha 19, 0x256(6)
    lis 5, lbl_80476270@ha
    lha 20, 0x252(6)
    lis 4, lbl_804762D0@ha
    xoris 3, 19, 0x8000
    lha 7, 0x254(6)
    stw 3, 0xc(1)
    mullw 23, 20, 20
    .4byte 0xC8220440 # lfd f1, lbl_805433E0@sda21(r0)
    addi 26, 5, lbl_80476270@l
    stw 0, 0x8(1)
    addi 25, 4, lbl_804762D0@l
    .4byte 0xC0420488 # lfs f2, lbl_80543428@sda21(r0)
    lfd 0, 0x8(1)
    mullw 22, 7, 7
    lha 18, 0x258(6)
    mr 27, 31
    fsubs 0, 0, 1
    add 24, 20, 7
    li 21, 0x0
    fadds 31, 2, 0
    li 17, 0x0
    .4byte 0x48000558 # b .L_803B1AE0
L_803B158C:
    addi 28, 17, 0x4b8
    lbzx 0, 31, 28
    cmplwi 0, 0xff
    .4byte 0x408200AC # bne .L_803B1644
    mr 3, 17
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x4182009C # beq .L_803B1644
    li 0, 0x0
    lwz 5, 0x10(26)
    sth 0, 0x460(27)
    lwz 6, 0x14(26)
    lwz 0, 0x450(31)
    slwi 3, 0, 2
    addi 0, 3, 0x10
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(31)
    lfs 30, 0x0(3)
    slwi 3, 0, 2
    lwz 5, 0x10(26)
    addi 0, 3, 0x10
    lwz 6, 0x14(26)
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 30
    lfs 2, 0x420(31)
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    mr 3, 31
    mr 4, 17
    bl fn_803A8DFC
    stbx 3, 31, 28
    li 4, 0xb
    li 5, -0x1
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    bl fn_80458880
L_803B1644:
    lbzx 0, 31, 28
    cmplwi 0, 0xff
    .4byte 0x4182038C # beq .L_803B19D8
    lha 3, 0x460(27)
    cmpw 3, 24
    .4byte 0x4080036C # bge .L_803B19C4
    addi 0, 3, 0x1
    sth 0, 0x460(27)
    lha 0, 0x460(27)
    cmpw 0, 20
    .4byte 0x41810214 # bgt .L_803B1880
    mullw 6, 0, 0
    lis 5, 0x4330
    xoris 4, 23, 0x8000
    lwz 0, 0x450(31)
    stw 5, 0x8(1)
    slwi 3, 0, 2
    xoris 6, 6, 0x8000
    stw 4, 0x14(1)
    addi 0, 3, 0x10
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    stw 6, 0xc(1)
    lwzx 3, 31, 0
    stw 5, 0x10(1)
    lfd 1, 0x8(1)
    lfd 0, 0x10(1)
    fsubs 1, 1, 2
    lwz 12, 0x0(3)
    fsubs 0, 0, 2
    lwz 5, 0x8(25)
    lwz 12, 0x3c(12)
    lwz 6, 0xc(25)
    fdivs 29, 1, 0
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(31)
    lfs 30, 0x0(3)
    slwi 3, 0, 2
    lwz 5, 0x8(25)
    addi 0, 3, 0x10
    lwz 6, 0xc(25)
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 3, 0x424(31)
    fmuls 0, 31, 29
    .4byte 0xC0420488 # lfs f2, lbl_80543428@sda21(r0)
    fmr 1, 30
    lwz 12, 0x0(3)
    fsubs 2, 3, 2
    lwz 12, 0x10(12)
    fadds 2, 2, 0
    mtctr 12
    bctrl
    lwz 0, 0x450(31)
    lwz 5, 0x10(26)
    slwi 3, 0, 2
    lwz 6, 0x14(26)
    addi 0, 3, 0x10
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(31)
    lfs 30, 0x0(3)
    slwi 3, 0, 2
    lwz 5, 0x10(26)
    addi 0, 3, 0x10
    lwz 6, 0x14(26)
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    xoris 4, 19, 0x8000
    lis 0, 0x4330
    stw 4, 0x1c(1)
    fmr 1, 30
    lwz 12, 0x0(3)
    stw 0, 0x18(1)
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    lfd 0, 0x18(1)
    lfs 3, 0x420(31)
    fsubs 0, 0, 2
    lwz 12, 0x10(12)
    fmuls 0, 0, 29
    fadds 2, 3, 0
    mtctr 12
    bctrl
    lha 4, 0x460(27)
    lis 30, 0x4330
    xoris 3, 20, 0x8000
    lwz 0, 0x450(31)
    xoris 4, 4, 0x8000
    stw 30, 0x20(1)
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    cmpwi 0, 0x2
    stw 4, 0x24(1)
    lfd 0, 0x20(1)
    stw 3, 0x2c(1)
    fsubs 1, 0, 2
    stw 30, 0x28(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 2
    fdivs 29, 1, 0
    .4byte 0x408001C8 # bge .L_803B19C4
    .4byte 0xCBC20418 # lfd f30, lbl_805433B8@sda21(r0)
    mr 28, 25
    li 29, 0x0
L_803B180C:
    lwz 0, 0x450(31)
    lwz 5, 0x0(28)
    slwi 3, 0, 2
    lwz 6, 0x4(28)
    addi 0, 3, 0x10
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 0, 29, 0x4d9
    lwz 12, 0x0(3)
    lbzx 0, 31, 0
    stw 30, 0x28(1)
    lwz 12, 0x24(12)
    stw 0, 0x2c(1)
    lfd 0, 0x28(1)
    fsubs 0, 0, 30
    fmuls 0, 0, 29
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    addi 29, 29, 0x1
    addi 28, 28, 0x8
    cmpwi 29, 0x2
    .4byte 0x4180FF94 # blt .L_803B180C
    .4byte 0x48000148 # b .L_803B19C4
L_803B1880:
    cmpw 0, 24
    .4byte 0x41810140 # bgt .L_803B19C4
    subf 0, 0, 24
    lis 6, 0x4330
    mullw 5, 0, 0
    xoris 4, 22, 0x8000
    lwz 0, 0x450(31)
    xoris 7, 19, 0x8000
    stw 6, 0x20(1)
    slwi 3, 0, 2
    xoris 5, 5, 0x8000
    stw 4, 0x1c(1)
    addi 0, 3, 0x10
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    stw 5, 0x24(1)
    lwzx 3, 31, 0
    stw 6, 0x18(1)
    lfd 1, 0x20(1)
    lfd 0, 0x18(1)
    fsubs 1, 1, 2
    lwz 12, 0x0(3)
    fsubs 0, 0, 2
    stw 7, 0x2c(1)
    lwz 12, 0x3c(12)
    stw 6, 0x28(1)
    fdivs 0, 1, 0
    lwz 5, 0x8(25)
    lfd 1, 0x28(1)
    lwz 6, 0xc(25)
    fsubs 1, 1, 2
    fmuls 29, 1, 0
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(31)
    lfs 30, 0x0(3)
    slwi 3, 0, 2
    lwz 5, 0x8(25)
    addi 0, 3, 0x10
    lwz 6, 0xc(25)
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 30
    lfs 0, 0x424(31)
    lwz 12, 0x10(12)
    fadds 2, 0, 29
    mtctr 12
    bctrl
    lwz 0, 0x450(31)
    lwz 5, 0x10(26)
    slwi 3, 0, 2
    lwz 6, 0x14(26)
    addi 0, 3, 0x10
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(31)
    lfs 30, 0x0(3)
    slwi 3, 0, 2
    lwz 5, 0x10(26)
    addi 0, 3, 0x10
    lwz 6, 0x14(26)
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 30
    lfs 0, 0x420(31)
    lwz 12, 0x10(12)
    fadds 2, 0, 29
    mtctr 12
    bctrl
L_803B19C4:
    lha 0, 0x460(27)
    cmpw 0, 24
    .4byte 0x40820104 # bne .L_803B1AD0
    addi 21, 21, 0x1
    .4byte 0x480000FC # b .L_803B1AD0
L_803B19D8:
    lha 3, 0x460(27)
    cmpw 3, 18
    .4byte 0x40800010 # bge .L_803B19F0
    addi 0, 3, 0x1
    sth 0, 0x460(27)
    .4byte 0x4800000C # b .L_803B19F8
L_803B19F0:
    li 0, 0x0
    sth 0, 0x460(27)
L_803B19F8:
    lis 5, 0x4330
    xoris 0, 18, 0x8000
    stw 0, 0x2c(1)
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    addi 4, 3, lbl_8052EBC0@l
    stw 5, 0x28(1)
    lha 0, 0x460(27)
    lfd 0, 0x28(1)
    .4byte 0xC0220490 # lfs f1, lbl_80543430@sda21(r0)
    xoris 3, 0, 0x8000
    fsubs 0, 0, 2
    stw 5, 0x20(1)
    lwz 0, 0x450(31)
    stw 3, 0x24(1)
    fdivs 1, 1, 0
    slwi 3, 0, 2
    lfd 0, 0x20(1)
    addi 0, 3, 0x10
    lwzx 3, 31, 0
    .4byte 0xC062048C # lfs f3, lbl_8054342C@sda21(r0)
    fsubs 0, 0, 2
    lwz 12, 0x0(3)
    lwz 5, 0x10(26)
    lwz 12, 0x3c(12)
    fmuls 0, 1, 0
    lwz 6, 0x14(26)
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    fmuls 29, 3, 0
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(31)
    lfs 30, 0x0(3)
    slwi 3, 0, 2
    lwz 5, 0x10(26)
    addi 0, 3, 0x10
    lwz 6, 0x14(26)
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 30
    lfs 0, 0x420(31)
    lwz 12, 0x10(12)
    fadds 2, 0, 29
    mtctr 12
    bctrl
L_803B1AD0:
    addi 27, 27, 0x2
    addi 26, 26, 0x18
    addi 25, 25, 0x10
    addi 17, 17, 0x1
L_803B1AE0:
    lwz 0, 0x454(31)
    cmpw 17, 0
    .4byte 0x4180FAA4 # blt .L_803B158C
    cmpw 21, 0
    .4byte 0x40820044 # bne .L_803B1B34
    li 4, 0x0
    mr 5, 31
    stw 4, 0x440(31)
    li 6, 0x0
    li 3, 0xff
    .4byte 0x48000018 # b .L_803B1B20
L_803B1B0C:
    addi 0, 6, 0x4bc
    addi 6, 6, 0x1
    stbx 3, 31, 0
    sth 4, 0x460(5)
    addi 5, 5, 0x2
L_803B1B20:
    lwz 0, 0x454(31)
    cmpw 6, 0
    .4byte 0x4180FFE4 # blt .L_803B1B0C
    li 0, 0x4
    stb 0, 0x4c1(31)
L_803B1B34:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    psq_l 29, 0x78(1), 0, 0
    lfd 29, 0x70(1)
    lmw 17, 0x34(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

