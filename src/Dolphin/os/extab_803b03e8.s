# fn_803B03E8 - helper (0x590)
.section extab, "a"
.balign 4
.global etb_8000F4AC
etb_8000F4AC:
    .4byte 0x80CA0000
    .4byte 0x00000000
.size etb_8000F4AC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F21C
eti_8001F21C:
    .4byte fn_803B03E8
    .4byte 0x00000590
    .4byte etb_8000F4AC
.size eti_8001F21C, 12

.text
.balign 4
.global fn_803B03E8

fn_803B03E8:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stfd 29, 0x70(1)
    psq_st 29, 0x78(1), 0, 0
    stmw 16, 0x30(1)
    mr 31, 3
    lis 3, lbl_8050DB0C@ha
    addi 4, 3, lbl_8050DB0C@l
    lwz 3, 0x454(31)
    lha 22, 0x268(4)
    lis 5, lbl_80476208@ha
    subi 0, 3, 0x1
    lha 24, 0x264(4)
    mullw 0, 22, 0
    lha 23, 0x266(4)
    lha 6, 0x260(4)
    addi 30, 5, lbl_80476208@l
    lha 26, 0x262(4)
    add 25, 23, 24
    add 21, 25, 0
    add 4, 26, 6
    cmpw 21, 4
    .4byte 0x40800008 # bge .L_803B045C
    mr 21, 4
L_803B045C:
    lwz 3, 0x440(31)
    addi 0, 3, 0x1
    stw 0, 0x440(31)
    lwz 5, 0x440(31)
    cmpw 5, 6
    .4byte 0x4081019C # ble .L_803B060C
    cmpw 5, 4
    .4byte 0x41810194 # bgt .L_803B060C
    lwz 0, 0x450(31)
    lis 4, 0x776b
    lis 3, 0x50
    subf 27, 6, 5
    slwi 0, 0, 2
    addi 6, 4, 0x3032
    add 4, 31, 0
    addi 5, 3, 0x6d6d
    lwz 3, 0x10(4)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(31)
    lis 5, 0x776b
    lis 4, 0x50
    lfs 29, 0x0(3)
    slwi 0, 0, 2
    addi 6, 5, 0x3032
    add 3, 31, 0
    addi 5, 4, 0x6d6d
    lwz 3, 0x10(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mullw 5, 27, 27
    lis 4, 0x4330
    lwz 12, 0x0(3)
    fmr 1, 29
    stw 4, 0x8(1)
    .4byte 0xC8620440 # lfd f3, lbl_805433E0@sda21(r0)
    mullw 0, 26, 26
    xoris 5, 5, 0x8000
    stw 5, 0xc(1)
    .4byte 0xC0820484 # lfs f4, lbl_80543424@sda21(r0)
    lfd 0, 0x8(1)
    stw 4, 0x10(1)
    xoris 0, 0, 0x8000
    fsubs 2, 0, 3
    stw 0, 0x14(1)
    lfs 5, 0x41c(31)
    lfd 0, 0x10(1)
    lwz 12, 0x10(12)
    fsubs 0, 0, 3
    fdivs 0, 2, 0
    fmuls 0, 4, 0
    fsubs 2, 5, 0
    mtctr 12
    bctrl
    lwz 0, 0x450(31)
    cmpwi 0, 0x2
    .4byte 0x408000BC # bge .L_803B060C
    .4byte 0xCBE20418 # lfd f31, lbl_805433B8@sda21(r0)
    addi 29, 30, 0x0
    .4byte 0xC3C20434 # lfs f30, lbl_805433D4@sda21(r0)
    xoris 17, 27, 0x8000
    .4byte 0xCBA20440 # lfd f29, lbl_805433E0@sda21(r0)
    xoris 16, 26, 0x8000
    li 19, 0x0
    lis 18, 0x4330
L_803B0574:
    lwz 0, 0x450(31)
    lwz 5, 0x0(29)
    slwi 3, 0, 2
    lwz 6, 0x4(29)
    addi 0, 3, 0x10
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 17, 0xc(1)
    addi 0, 19, 0x4c9
    lbzx 0, 31, 0
    stw 18, 0x8(1)
    lwz 12, 0x0(3)
    lfd 0, 0x8(1)
    stw 16, 0x1c(1)
    fsubs 1, 0, 29
    lwz 12, 0x24(12)
    stw 18, 0x18(1)
    lfd 0, 0x18(1)
    stw 0, 0x14(1)
    fsubs 0, 0, 29
    stw 18, 0x10(1)
    fdivs 0, 1, 0
    lfd 1, 0x10(1)
    fsubs 1, 1, 31
    fsubs 0, 30, 0
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    addi 19, 19, 0x1
    addi 29, 29, 0x8
    cmpwi 19, 0xd
    .4byte 0x4180FF6C # blt .L_803B0574
L_803B060C:
    lwz 4, 0x440(31)
    cmpw 4, 24
    .4byte 0x40810314 # ble .L_803B0928
    lwz 3, 0x454(31)
    subi 0, 3, 0x1
    mullw 0, 22, 0
    add 0, 25, 0
    cmpw 4, 0
    .4byte 0x418102FC # bgt .L_803B0928
    mullw 25, 23, 23
    addi 27, 30, 0x68
    addi 26, 30, 0xc8
    li 20, 0x0
    li 28, 0x0
    .4byte 0x480002D8 # b .L_803B091C
L_803B0648:
    lwz 3, 0x440(31)
    add 0, 24, 28
    cmpw 3, 0
    .4byte 0x418002B8 # blt .L_803B090C
    subf 19, 0, 3
    lis 5, 0x4330
    mullw 6, 19, 19
    xoris 4, 25, 0x8000
    lwz 0, 0x450(31)
    stw 5, 0x20(1)
    slwi 3, 0, 2
    .4byte 0xC8420440 # lfd f2, lbl_805433E0@sda21(r0)
    xoris 6, 6, 0x8000
    stw 4, 0x1c(1)
    addi 0, 3, 0x10
    .4byte 0xC0620484 # lfs f3, lbl_80543424@sda21(r0)
    stw 6, 0x24(1)
    lwzx 3, 31, 0
    stw 5, 0x18(1)
    lfd 1, 0x20(1)
    lfd 0, 0x18(1)
    fsubs 1, 1, 2
    lwz 12, 0x0(3)
    fsubs 0, 0, 2
    lwz 5, 0x10(27)
    lwz 12, 0x3c(12)
    lwz 6, 0x14(27)
    fdivs 0, 1, 0
    fmuls 30, 3, 0
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(31)
    lfs 29, 0x0(3)
    slwi 3, 0, 2
    lwz 5, 0x10(27)
    addi 0, 3, 0x10
    lwz 6, 0x14(27)
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    lfs 0, 0x420(31)
    lwz 12, 0x10(12)
    fadds 2, 0, 30
    mtctr 12
    bctrl
    lwz 0, 0x450(31)
    lwz 5, 0x8(26)
    slwi 3, 0, 2
    lwz 6, 0xc(26)
    addi 0, 3, 0x10
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lwz 0, 0x450(31)
    lfs 29, 0x0(3)
    slwi 3, 0, 2
    lwz 5, 0x8(26)
    addi 0, 3, 0x10
    lwz 6, 0xc(26)
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 29
    lfs 0, 0x424(31)
    lwz 12, 0x10(12)
    fadds 2, 0, 30
    mtctr 12
    bctrl
    lwz 0, 0x450(31)
    cmpwi 0, 0x2
    .4byte 0x408000BC # bge .L_803B0848
    .4byte 0xCBE20418 # lfd f31, lbl_805433B8@sda21(r0)
    mr 29, 27
    .4byte 0xC3C20434 # lfs f30, lbl_805433D4@sda21(r0)
    xoris 18, 19, 0x8000
    .4byte 0xCBA20440 # lfd f29, lbl_805433E0@sda21(r0)
    xoris 17, 23, 0x8000
    li 30, 0x0
    lis 16, 0x4330
L_803B07B0:
    lwz 0, 0x450(31)
    lwz 5, 0x0(29)
    slwi 3, 0, 2
    lwz 6, 0x4(29)
    addi 0, 3, 0x10
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 18, 0x1c(1)
    addi 0, 30, 0x4d6
    lbzx 0, 31, 0
    stw 16, 0x18(1)
    lwz 12, 0x0(3)
    lfd 0, 0x18(1)
    stw 17, 0x14(1)
    fsubs 1, 0, 29
    lwz 12, 0x24(12)
    stw 16, 0x10(1)
    lfd 0, 0x10(1)
    stw 0, 0x24(1)
    fsubs 0, 0, 29
    stw 16, 0x20(1)
    fdivs 0, 1, 0
    lfd 1, 0x20(1)
    fsubs 1, 1, 31
    fsubs 0, 30, 0
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 30, 30, 0x1
    addi 29, 29, 0x8
    cmpwi 30, 0x3
    .4byte 0x4180FF6C # blt .L_803B07B0
L_803B0848:
    lwz 0, 0x450(31)
    cmpwi 0, 0x2
    .4byte 0x408000BC # bge .L_803B090C
    .4byte 0xCBA20418 # lfd f29, lbl_805433B8@sda21(r0)
    mr 29, 26
    .4byte 0xC3C20434 # lfs f30, lbl_805433D4@sda21(r0)
    xoris 18, 19, 0x8000
    .4byte 0xCBE20440 # lfd f31, lbl_805433E0@sda21(r0)
    xoris 19, 23, 0x8000
    li 30, 0x0
    lis 17, 0x4330
L_803B0874:
    lwz 0, 0x450(31)
    lwz 5, 0x0(29)
    slwi 3, 0, 2
    lwz 6, 0x4(29)
    addi 0, 3, 0x10
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stw 18, 0x1c(1)
    addi 0, 30, 0x4d9
    lbzx 0, 31, 0
    stw 17, 0x18(1)
    lwz 12, 0x0(3)
    lfd 0, 0x18(1)
    stw 19, 0x14(1)
    fsubs 1, 0, 31
    lwz 12, 0x24(12)
    stw 17, 0x10(1)
    lfd 0, 0x10(1)
    stw 0, 0x24(1)
    fsubs 0, 0, 31
    stw 17, 0x20(1)
    fdivs 0, 1, 0
    lfd 1, 0x20(1)
    fsubs 1, 1, 29
    fsubs 0, 30, 0
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
    addi 30, 30, 0x1
    addi 29, 29, 0x8
    cmpwi 30, 0x2
    .4byte 0x4180FF6C # blt .L_803B0874
L_803B090C:
    add 28, 28, 22
    addi 27, 27, 0x18
    addi 26, 26, 0x10
    addi 20, 20, 0x1
L_803B091C:
    lwz 0, 0x454(31)
    cmpw 20, 0
    .4byte 0x4180FD24 # blt .L_803B0648
L_803B0928:
    lwz 0, 0x440(31)
    cmpw 21, 0
    .4byte 0x4181001C # bgt .L_803B094C
    li 0, 0x0
    li 3, 0x96
    stb 0, 0x4c2(31)
    li 0, 0x8
    stw 3, 0x440(31)
    stb 0, 0x4c1(31)
L_803B094C:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    psq_l 29, 0x78(1), 0, 0
    lfd 29, 0x70(1)
    lmw 16, 0x30(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

