# fn_80395BE8 - leading helper (0xc9c) - calls the two preceding helpers
.section extab, "a"
.balign 4
.global etb_8000EFC0
etb_8000EFC0:
    .4byte 0x484A0000
    .4byte 0x00000000
.size etb_8000EFC0, 8

.section extabindex, "a"
.balign 4
.global eti_8001EE44
eti_8001EE44:
    .4byte fn_80395BE8
    .4byte 0x00000C9C
    .4byte etb_8000EFC0
.size eti_8001EE44, 12

.text
.balign 4
.global fn_80395BE8

fn_80395BE8:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stmw 23, 0x1c(1)
    mr 31, 3
    lwz 3, 0x3c0(3)
    lwz 30, 0x160(31)
    lwz 3, 0x3b8(3)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 23, 23
    .4byte 0x41820018 # beq .L_80395C30
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820008 # beq .L_80395C30
    li 30, 0x4
L_80395C30:
    lbz 0, 0x3af(31)
    cmplwi 0, 0x0
    .4byte 0x4082059C # bne .L_803961D4
    lbz 0, 0x1a9(31)
    cmplwi 0, 0x0
    .4byte 0x40820590 # bne .L_803961D4
    li 0, 0x0
    sth 0, 0x194(31)
    lwz 3, 0x3c0(31)
    lwz 3, 0x3b8(3)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x408202E4 # bne .L_80395F44
    lis 3, lbl_80475768@ha
    lis 4, lbl_80475790@ha
    addi 25, 3, lbl_80475768@l
    li 23, 0x0
    lis 3, lbl_8050DB0C@ha
    addi 24, 4, lbl_80475790@l
    addi 29, 3, lbl_8050DB0C@l
L_80395C80:
    cmpw 23, 30
    .4byte 0x408201E0 # bne .L_80395E64
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(25)
    slwi 3, 0, 2
    lwz 6, 0x4(25)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_80395CEC
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(25)
    slwi 3, 0, 2
    lwz 6, 0x4(25)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80395CEC:
    lbz 0, 0x1a2(31)
    lha 3, 0x196(31)
    slwi 4, 0, 2
    lha 6, 0x284(29)
    addi 4, 4, 0x20
    addi 0, 3, 0x1
    lwzx 27, 31, 4
    srwi 3, 6, 31
    add 3, 3, 6
    sth 0, 0x196(31)
    srawi 5, 3, 1
    lha 0, 0x196(31)
    cmpw 0, 6
    .4byte 0x4180000C # blt .L_80395D2C
    li 0, 0x0
    sth 0, 0x196(31)
L_80395D2C:
    lha 3, 0x196(31)
    cmpw 3, 5
    subf 0, 3, 6
    .4byte 0x40800008 # bge .L_80395D40
    mr 0, 3
L_80395D40:
    lis 3, 0x4330
    xoris 4, 0, 0x8000
    xoris 0, 5, 0x8000
    stw 4, 0xc(1)
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    mr 26, 24
    stw 3, 0x8(1)
    li 28, 0x0
    lfd 0, 0x8(1)
    stw 0, 0x14(1)
    fsubs 1, 0, 2
    stw 3, 0x10(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 2
    fdivs 31, 1, 0
L_80395D7C:
    lwz 5, 0x0(26)
    li 3, 0x0
    lwz 6, 0x4(26)
    xor 0, 5, 3
    xor 3, 6, 3
    or. 0, 3, 0
    .4byte 0x41820058 # beq .L_80395DEC
    lwz 12, 0x0(27)
    mr 3, 27
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 28, 0x1a5
    lis 0, 0x4330
    lbzx 4, 31, 4
    lwz 12, 0x0(3)
    stw 4, 0x14(1)
    .4byte 0xC8220298 # lfd f1, lbl_80543238@sda21(r0)
    stw 0, 0x10(1)
    lwz 12, 0x24(12)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
L_80395DEC:
    addi 28, 28, 0x1
    addi 26, 26, 0x8
    cmpwi 28, 0x4
    .4byte 0x4180FF84 # blt .L_80395D7C
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(24)
    slwi 3, 0, 2
    lwz 6, 0x4(24)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x40820100 # bne .L_80395F2C
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(24)
    slwi 3, 0, 2
    lwz 6, 0x4(24)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x480000CC # b .L_80395F2C
L_80395E64:
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(25)
    slwi 3, 0, 2
    lwz 6, 0x4(25)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_80395EC8
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(25)
    slwi 3, 0, 2
    lwz 6, 0x4(25)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80395EC8:
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(24)
    slwi 3, 0, 2
    lwz 6, 0x4(24)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_80395F2C
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(24)
    slwi 3, 0, 2
    lwz 6, 0x4(24)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80395F2C:
    addi 23, 23, 0x1
    addi 24, 24, 0x20
    cmpwi 23, 0x5
    addi 25, 25, 0x8
    .4byte 0x4180FD44 # blt .L_80395C80
    .4byte 0x48000928 # b .L_80396868
L_80395F44:
    cmpwi 30, 0x4
    .4byte 0x41820008 # beq .L_80395F50
    li 30, 0x0
L_80395F50:
    lis 3, lbl_80475768@ha
    lis 4, lbl_80475790@ha
    addi 25, 3, lbl_80475768@l
    li 23, 0x0
    lis 3, lbl_8050DB0C@ha
    addi 26, 4, lbl_80475790@l
    addi 29, 3, lbl_8050DB0C@l
L_80395F6C:
    cmpwi 23, 0x1
    .4byte 0x4180000C # blt .L_80395F7C
    cmpwi 23, 0x3
    .4byte 0x40810244 # ble .L_803961BC
L_80395F7C:
    cmpw 23, 30
    .4byte 0x408201A4 # bne .L_80396124
    lwz 3, 0x2c(31)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80395FD0
    lwz 3, 0x2c(31)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80395FD0:
    lha 3, 0x196(31)
    lha 4, 0x284(29)
    lwz 28, 0x2c(31)
    addi 0, 3, 0x1
    srwi 3, 4, 31
    sth 0, 0x196(31)
    add 0, 3, 4
    srawi 5, 0, 1
    lha 0, 0x196(31)
    cmpw 0, 4
    .4byte 0x4180000C # blt .L_80396004
    li 0, 0x0
    sth 0, 0x196(31)
L_80396004:
    lha 3, 0x196(31)
    cmpw 3, 5
    subf 0, 3, 4
    .4byte 0x40800008 # bge .L_80396018
    mr 0, 3
L_80396018:
    lis 3, 0x4330
    xoris 4, 0, 0x8000
    xoris 0, 5, 0x8000
    stw 4, 0x14(1)
    .4byte 0xC8420250 # lfd f2, lbl_805431F0@sda21(r0)
    mr 24, 26
    stw 3, 0x10(1)
    li 27, 0x0
    lfd 0, 0x10(1)
    stw 0, 0xc(1)
    fsubs 1, 0, 2
    stw 3, 0x8(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 2
    fdivs 31, 1, 0
L_80396054:
    lwz 5, 0x0(24)
    li 3, 0x0
    lwz 6, 0x4(24)
    xor 0, 5, 3
    xor 3, 6, 3
    or. 0, 3, 0
    .4byte 0x41820058 # beq .L_803960C4
    lwz 12, 0x0(28)
    mr 3, 28
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    addi 4, 27, 0x1a5
    lis 0, 0x4330
    lbzx 4, 31, 4
    lwz 12, 0x0(3)
    stw 4, 0x14(1)
    .4byte 0xC8220298 # lfd f1, lbl_80543238@sda21(r0)
    stw 0, 0x10(1)
    lwz 12, 0x24(12)
    lfd 0, 0x10(1)
    fsubs 0, 0, 1
    fmuls 0, 0, 31
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 4, 0xc(1)
    mtctr 12
    bctrl
L_803960C4:
    addi 27, 27, 0x1
    addi 24, 24, 0x8
    cmpwi 27, 0x4
    .4byte 0x4180FF84 # blt .L_80396054
    lwz 3, 0x2c(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x408200C4 # bne .L_803961BC
    lwz 3, 0x2c(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x4800009C # b .L_803961BC
L_80396124:
    lwz 3, 0x2c(31)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80396170
    lwz 3, 0x2c(31)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80396170:
    lwz 3, 0x2c(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_803961BC
    lwz 3, 0x2c(31)
    lwz 5, 0x0(26)
    lwz 12, 0x0(3)
    lwz 6, 0x4(26)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803961BC:
    addi 23, 23, 0x1
    addi 26, 26, 0x20
    cmpwi 23, 0x5
    addi 25, 25, 0x8
    .4byte 0x4180FDA0 # blt .L_80395F6C
    .4byte 0x48000698 # b .L_80396868
L_803961D4:
    lwz 3, 0x10(31)
    lwz 3, 0x4c(3)
    subis 0, 3, 0x1
    cmplwi 0, 0x869f
    .4byte 0x408204A0 # bne .L_80396684
    lbz 0, 0x1a9(31)
    cmplwi 0, 0x0
    .4byte 0x40820494 # bne .L_80396684
    li 0, 0x0
    sth 0, 0x196(31)
    lwz 3, 0x3c0(31)
    lwz 3, 0x3b8(3)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x4082026C # bne .L_80396478
    lis 4, lbl_80475768@ha
    lis 3, lbl_80475790@ha
    addi 24, 4, lbl_80475768@l
    li 23, 0x0
    addi 25, 3, lbl_80475790@l
L_80396224:
    cmpw 23, 30
    .4byte 0x40820170 # bne .L_80396398
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(24)
    slwi 3, 0, 2
    lwz 6, 0x4(24)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_80396290
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(24)
    slwi 3, 0, 2
    lwz 6, 0x4(24)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_80396290:
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(24)
    slwi 3, 0, 2
    lwz 6, 0x4(24)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    mr 3, 31
    bl fn_80395834
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(25)
    slwi 3, 0, 2
    lwz 6, 0x4(25)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_80396328
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(25)
    slwi 3, 0, 2
    lwz 6, 0x4(25)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_80396328:
    li 27, 0x0
    mr 26, 25
L_80396330:
    lwz 5, 0x0(26)
    li 3, 0x0
    lwz 6, 0x4(26)
    xor 0, 5, 3
    xor 3, 6, 3
    or. 0, 3, 0
    .4byte 0x4182003C # beq .L_80396384
    lbz 0, 0x1a2(31)
    slwi 3, 0, 2
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 0, 27, 0x1a5
    lbzx 4, 31, 0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_80396384:
    addi 27, 27, 0x1
    addi 26, 26, 0x8
    cmpwi 27, 0x4
    .4byte 0x4180FFA0 # blt .L_80396330
    .4byte 0x480000CC # b .L_80396460
L_80396398:
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(24)
    slwi 3, 0, 2
    lwz 6, 0x4(24)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_803963FC
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(24)
    slwi 3, 0, 2
    lwz 6, 0x4(24)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_803963FC:
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(25)
    slwi 3, 0, 2
    lwz 6, 0x4(25)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_80396460
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(25)
    slwi 3, 0, 2
    lwz 6, 0x4(25)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80396460:
    addi 23, 23, 0x1
    addi 25, 25, 0x20
    cmpwi 23, 0x5
    addi 24, 24, 0x8
    .4byte 0x4180FDB4 # blt .L_80396224
    .4byte 0x480003F4 # b .L_80396868
L_80396478:
    cmpwi 30, 0x4
    .4byte 0x41820008 # beq .L_80396484
    li 30, 0x0
L_80396484:
    lis 4, lbl_80475768@ha
    lis 3, lbl_80475790@ha
    addi 24, 4, lbl_80475768@l
    li 23, 0x0
    addi 25, 3, lbl_80475790@l
L_80396498:
    cmpwi 23, 0x1
    .4byte 0x4180000C # blt .L_803964A8
    cmpwi 23, 0x3
    .4byte 0x408101C8 # ble .L_8039666C
L_803964A8:
    cmpw 23, 30
    .4byte 0x40820128 # bne .L_803965D4
    lwz 3, 0x2c(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_803964FC
    lwz 3, 0x2c(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_803964FC:
    lwz 3, 0x2c(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 4, 3
    mr 3, 31
    bl fn_80395480
    lwz 3, 0x2c(31)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_80396570
    lwz 3, 0x2c(31)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
L_80396570:
    li 27, 0x0
    mr 26, 25
L_80396578:
    lwz 5, 0x0(26)
    li 3, 0x0
    lwz 6, 0x4(26)
    xor 0, 5, 3
    xor 3, 6, 3
    or. 0, 3, 0
    .4byte 0x41820030 # beq .L_803965C0
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 0, 27, 0x1a5
    lbzx 4, 31, 0
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_803965C0:
    addi 27, 27, 0x1
    addi 26, 26, 0x8
    cmpwi 27, 0x4
    .4byte 0x4180FFAC # blt .L_80396578
    .4byte 0x4800009C # b .L_8039666C
L_803965D4:
    lwz 3, 0x2c(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80396620
    lwz 3, 0x2c(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80396620:
    lwz 3, 0x2c(31)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_8039666C
    lwz 3, 0x2c(31)
    lwz 5, 0x0(25)
    lwz 12, 0x0(3)
    lwz 6, 0x4(25)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8039666C:
    addi 23, 23, 0x1
    addi 25, 25, 0x20
    cmpwi 23, 0x5
    addi 24, 24, 0x8
    .4byte 0x4180FE1C # blt .L_80396498
    .4byte 0x480001E8 # b .L_80396868
L_80396684:
    li 0, 0x0
    sth 0, 0x194(31)
    sth 0, 0x196(31)
    lwz 3, 0x3c0(31)
    lwz 3, 0x3b8(3)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x408200F8 # bne .L_80396798
    lis 4, lbl_80475768@ha
    lis 3, lbl_80475790@ha
    addi 24, 4, lbl_80475768@l
    li 23, 0x0
    addi 25, 3, lbl_80475790@l
L_803966B8:
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(24)
    slwi 3, 0, 2
    lwz 6, 0x4(24)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_8039671C
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(24)
    slwi 3, 0, 2
    lwz 6, 0x4(24)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_8039671C:
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(25)
    slwi 3, 0, 2
    lwz 6, 0x4(25)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_80396780
    lbz 0, 0x1a2(31)
    lwz 5, 0x0(25)
    slwi 3, 0, 2
    lwz 6, 0x4(25)
    addi 0, 3, 0x20
    lwzx 3, 31, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80396780:
    addi 23, 23, 0x1
    addi 25, 25, 0x20
    cmpwi 23, 0x5
    addi 24, 24, 0x8
    .4byte 0x4180FF28 # blt .L_803966B8
    .4byte 0x480000D4 # b .L_80396868
L_80396798:
    lis 4, lbl_80475768@ha
    lis 3, lbl_80475790@ha
    addi 23, 4, lbl_80475768@l
    li 25, 0x0
    addi 24, 3, lbl_80475790@l
L_803967AC:
    cmpwi 25, 0x1
    .4byte 0x4180000C # blt .L_803967BC
    cmpwi 25, 0x3
    .4byte 0x4081009C # ble .L_80396854
L_803967BC:
    lwz 3, 0x2c(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80396808
    lwz 3, 0x2c(31)
    lwz 5, 0x0(23)
    lwz 12, 0x0(3)
    lwz 6, 0x4(23)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80396808:
    lwz 3, 0x2c(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_80396854
    lwz 3, 0x2c(31)
    lwz 5, 0x0(24)
    lwz 12, 0x0(3)
    lwz 6, 0x4(24)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80396854:
    addi 25, 25, 0x1
    addi 24, 24, 0x20
    cmpwi 25, 0x5
    addi 23, 23, 0x8
    .4byte 0x4180FF48 # blt .L_803967AC
L_80396868:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    lmw 23, 0x1c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

