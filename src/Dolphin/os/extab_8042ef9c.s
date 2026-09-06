# 901KB-gap non-actor manager block: 12 functions, 11,420 bytes.
# Fully contiguous at the extab AND extabindex level with neighboring
# pre-existing entries (zero gap on either side). Deliberately left
# unclaimed by the earlier actors-only-scope 901KB gap effort.
# Found+verified via spanwalk.py and resolvefiles.py.

.section extab, "a"
.balign 4
.global etb_80010BCC
etb_80010BCC:
    .4byte 0x48CA0000
    .4byte 0x00000000
.size etb_80010BCC, 8

.global etb_80010BD4
etb_80010BD4:
    .4byte 0x190A0000
    .4byte 0x00000000
.size etb_80010BD4, 8

.global etb_80010BDC
etb_80010BDC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80010BDC, 8

.global etb_80010BE4
etb_80010BE4:
    .4byte 0x088A0000
    .4byte 0x00000000
.size etb_80010BE4, 8

.global etb_80010BEC
etb_80010BEC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010BEC, 8

.global etb_80010BF4
etb_80010BF4:
    .4byte 0x190A0000
    .4byte 0x00000000
.size etb_80010BF4, 8

.global etb_80010BFC
etb_80010BFC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010BFC, 8

.global etb_80010C04
etb_80010C04:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010C04, 8

.global etb_80010C0C
etb_80010C0C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80010C0C, 8

.global etb_80010C14
etb_80010C14:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80010C14, 8

.global etb_80010C1C
etb_80010C1C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80010C1C, 8

.section extabindex, "a"
.balign 4
.global eti_80020C08
eti_80020C08:
    .4byte fn_8042EF9C
    .4byte 0x00000740
    .4byte etb_80010BCC
.size eti_80020C08, 12

.global eti_80020C14
eti_80020C14:
    .4byte fn_8042F6DC
    .4byte 0x00000C8C
    .4byte etb_80010BD4
.size eti_80020C14, 12

.global eti_80020C20
eti_80020C20:
    .4byte fn_80430368
    .4byte 0x000001B0
    .4byte etb_80010BDC
.size eti_80020C20, 12

.global eti_80020C2C
eti_80020C2C:
    .4byte fn_80430518
    .4byte 0x00000BA4
    .4byte etb_80010BE4
.size eti_80020C2C, 12

.global eti_80020C38
eti_80020C38:
    .4byte fn_804310CC
    .4byte 0x000000A8
    .4byte etb_80010BEC
.size eti_80020C38, 12

.global eti_80020C44
eti_80020C44:
    .4byte fn_80431174
    .4byte 0x00000578
    .4byte etb_80010BF4
.size eti_80020C44, 12

.global eti_80020C50
eti_80020C50:
    .4byte fn_804316EC
    .4byte 0x00000054
    .4byte etb_80010BFC
.size eti_80020C50, 12

.global eti_80020C5C
eti_80020C5C:
    .4byte fn_80431740
    .4byte 0x0000006C
    .4byte etb_80010C04
.size eti_80020C5C, 12

.global eti_80020C68
eti_80020C68:
    .4byte fn_804317AC
    .4byte 0x00000154
    .4byte etb_80010C0C
.size eti_80020C68, 12

.global eti_80020C74
eti_80020C74:
    .4byte fn_80431900
    .4byte 0x0000019C
    .4byte etb_80010C14
.size eti_80020C74, 12

.global eti_80020C80
eti_80020C80:
    .4byte fn_80431A9C
    .4byte 0x0000019C
    .4byte etb_80010C1C
.size eti_80020C80, 12

.text
.balign 4
.global fn_8042EF9C
.global fn_8042F6DC
.global fn_80430368
.global fn_80430518
.global fn_804310BC
.global fn_804310CC
.global fn_80431174
.global fn_804316EC
.global fn_80431740
.global fn_804317AC
.global fn_80431900
.global fn_80431A9C

fn_8042EF9C:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stfd 31, 0xb0(1)
    psq_st 31, 0xb8(1), 0, 0
    stfd 30, 0xa0(1)
    psq_st 30, 0xa8(1), 0, 0
    stfd 29, 0x90(1)
    psq_st 29, 0x98(1), 0, 0
    stmw 23, 0x6c(1)
    .4byte 0x812D8F38 # lwz r9, lbl_8053AAF8@sda21(r0)
    mr 29, 3
    lis 7, lbl_8048F3AC@ha
    lis 8, 0x3f3f
    lwz 3, 0xa8(9)
    mr 30, 4
    addi 0, 7, lbl_8048F3AC@l
    mr 24, 5
    lwz 12, 0x0(3)
    mr 23, 6
    mr 5, 0
    addi 4, 8, 0x3f3f
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    addi 8, 3, 0x20
    slwi 0, 24, 3
    lwz 3, 0x8(29)
    add 5, 8, 0
    lwz 7, 0x4(8)
    lis 4, 0x7774
    lwz 0, 0x10(5)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x54
    add 4, 7, 0
    addi 24, 4, 0x8
    lwz 12, 0x3c(12)
    add 24, 8, 24
    mtctr 12
    bctrl
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lfs 29, 0x11c(3)
    lwz 3, 0x154(4)
    lwz 12, 0x0(3)
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0x5c(1)
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    stw 0, 0x58(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0x58(1)
    lwz 3, 0x154(3)
    fsubs 0, 0, 1
    lwz 12, 0x0(3)
    fdivs 31, 29, 0
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    li 0, 0xff
    .4byte 0xC0020B58 # lfs f0, lbl_80543AF8@sda21(r0)
    stb 0, 0xea(29)
    clrlwi 28, 23, 24
    li 0, 0x1
    fmr 30, 0
    stw 0, 0xe4(29)
    fmr 29, 0
    addi 26, 28, 0x30
    li 25, 0x0
    stfs 0, 0xb8(29)
    li 31, 0x0
    li 23, 0x0
    stfs 0, 0xbc(29)
    stfs 0, 0xc0(29)
    stfs 0, 0xc4(29)
    stfs 0, 0xc8(29)
    stfs 0, 0x30(1)
    stfs 0, 0x34(1)
    stfs 0, 0x38(1)
    stfs 0, 0x3c(1)
    stfs 0, 0x40(1)
    stfs 0, 0x44(1)
    stfs 0, 0x48(1)
    stfs 0, 0x4c(1)
    stfs 0, 0x50(1)
    stfs 0, 0x54(1)
    .4byte 0x48000390 # b .L_8042F490
L_8042F104:
    extsb 0, 3
    cmpwi 0, 0xa
    .4byte 0x4082003C # bne .L_8042F148
    lfs 0, 0xb8(29)
    fcmpo cr0, 0, 30
    .4byte 0x40800008 # bge .L_8042F120
    stfs 30, 0xb8(29)
L_8042F120:
    lwz 5, 0xe4(29)
    addi 4, 1, 0x30
    addi 25, 25, 0x1
    slwi 3, 5, 2
    addi 0, 5, 0x1
    subi 3, 3, 0x4
    stw 0, 0xe4(29)
    stfsx 30, 4, 3
    .4byte 0xC3C20B58 # lfs f30, lbl_80543AF8@sda21(r0)
    .4byte 0x4800034C # b .L_8042F490
L_8042F148:
    cmpwi 0, 0x1a
    .4byte 0x40820210 # bne .L_8042F35C
    lbz 0, 0x2(27)
    extsb 0, 0
    cmpwi 0, 0x2
    .4byte 0x40820110 # bne .L_8042F26C
    lbz 3, 0x4(27)
    extsb. 0, 3
    .4byte 0x41820020 # beq .L_8042F188
    extsb 0, 3
    cmpwi 0, 0xa
    .4byte 0x41820014 # beq .L_8042F188
    cmpwi 0, 0x12
    .4byte 0x4182000C # beq .L_8042F188
    cmpwi 0, 0x19
    .4byte 0x40820064 # bne .L_8042F1E8
L_8042F188:
    clrlwi 0, 23, 24
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_8042F1A4
    lfs 0, 0xbc(29)
    fsubs 0, 0, 29
    .4byte 0xC3A20B58 # lfs f29, lbl_80543AF8@sda21(r0)
    stfs 0, 0xbc(29)
L_8042F1A4:
    clrlwi 0, 23, 24
    cmplwi 0, 0x2
    .4byte 0x408001A0 # bge .L_8042F34C
    clrlslwi 3, 23, 24, 2
    lis 0, 0x4330
    add 3, 29, 3
    stw 0, 0x58(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    addi 23, 23, 0x1
    stfs 30, 0xcc(3)
    lwz 0, 0xe4(29)
    xoris 0, 0, 0x8000
    stw 0, 0x5c(1)
    lfd 0, 0x58(1)
    fsubs 0, 0, 1
    stfs 0, 0xd8(3)
    .4byte 0x48000168 # b .L_8042F34C
L_8042F1E8:
    cmpwi 0, 0x1
    .4byte 0x4182001C # beq .L_8042F208
    cmpwi 0, 0x9
    .4byte 0x41820014 # beq .L_8042F208
    cmpwi 0, 0x11
    .4byte 0x4182000C # beq .L_8042F208
    cmpwi 0, 0x1a
    .4byte 0x40820148 # bne .L_8042F34C
L_8042F208:
    clrlwi 0, 23, 24
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_8042F224
    lfs 0, 0xbc(29)
    fsubs 0, 0, 29
    .4byte 0xC3A20B58 # lfs f29, lbl_80543AF8@sda21(r0)
    stfs 0, 0xbc(29)
L_8042F224:
    clrlwi 0, 23, 24
    cmplwi 0, 0x2
    .4byte 0x40800120 # bge .L_8042F34C
    clrlslwi 3, 23, 24, 2
    lis 0, 0x4330
    add 3, 29, 3
    stw 0, 0x58(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    stfs 30, 0xcc(3)
    lwz 0, 0xe4(29)
    xoris 0, 0, 0x8000
    stw 0, 0x5c(1)
    lfd 0, 0x58(1)
    fsubs 0, 0, 1
    stfs 0, 0xd8(3)
    stb 23, 0xea(29)
    addi 23, 23, 0x1
    .4byte 0x480000E4 # b .L_8042F34C
L_8042F26C:
    cmpwi 0, 0x3
    .4byte 0x408200DC # bne .L_8042F34C
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 31, 26
    mr 4, 26
    addi 5, 1, 0x18
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x19(1)
    lis 3, 0x4330
    stw 3, 0x58(1)
    clrlwi. 0, 23, 24
    xoris 3, 4, 0x8000
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    stw 3, 0x5c(1)
    lfd 0, 0x58(1)
    fsubs 0, 0, 1
    fmadds 30, 31, 0, 30
    .4byte 0x41820058 # beq .L_8042F318
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 26
    addi 5, 1, 0x14
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x15(1)
    lis 0, 0x4330
    stw 0, 0x58(1)
    clrlslwi 3, 23, 24, 2
    xoris 0, 4, 0x8000
    .4byte 0xC8420B70 # lfd f2, lbl_80543B10@sda21(r0)
    stw 0, 0x5c(1)
    addi 0, 3, 0xb8
    lfsx 0, 29, 0
    lfd 1, 0x58(1)
    fsubs 1, 1, 2
    fmadds 0, 31, 1, 0
    stfsx 0, 29, 0
L_8042F318:
    fmr 1, 31
    lbz 4, 0x5(27)
    mr 3, 29
    mr 5, 28
    bl fn_80430518
    clrlwi. 0, 23, 24
    fadds 30, 30, 1
    .4byte 0x41820018 # beq .L_8042F34C
    clrlslwi 3, 23, 24, 2
    addi 0, 3, 0xb8
    lfsx 0, 29, 0
    fadds 0, 0, 1
    stfsx 0, 29, 0
L_8042F34C:
    lbz 0, 0x1(27)
    extsb 0, 0
    add 25, 25, 0
    .4byte 0x48000138 # b .L_8042F490
L_8042F35C:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    clrlwi 31, 0, 24
    mr 4, 31
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x40(12)
    mtctr 12
    addi 25, 25, 0x1
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8042F398
    lbzx 0, 24, 25
    slwi 31, 31, 8
    addi 25, 25, 0x1
    or 31, 31, 0
L_8042F398:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 31
    addi 5, 1, 0x10
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x11(1)
    lis 3, 0x4330
    stw 3, 0x58(1)
    clrlwi. 0, 23, 24
    xoris 3, 4, 0x8000
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    stw 3, 0x5c(1)
    lfd 0, 0x58(1)
    fsubs 0, 0, 1
    fmadds 30, 31, 0, 30
    .4byte 0x418200B0 # beq .L_8042F490
    cmpwi 31, 0x20
    .4byte 0x41820010 # beq .L_8042F3F8
    addis 0, 31, 0x0
    cmplwi 0, 0x8140
    .4byte 0x40820048 # bne .L_8042F43C
L_8042F3F8:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 31
    addi 5, 1, 0xc
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0xd(1)
    lis 0, 0x4330
    stw 0, 0x58(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    stw 0, 0x5c(1)
    lfd 0, 0x58(1)
    fsubs 0, 0, 1
    fmadds 29, 31, 0, 29
L_8042F43C:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 31
    addi 5, 1, 0x8
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x9(1)
    lis 0, 0x4330
    stw 0, 0x58(1)
    clrlslwi 3, 23, 24, 2
    xoris 0, 4, 0x8000
    .4byte 0xC8420B70 # lfd f2, lbl_80543B10@sda21(r0)
    stw 0, 0x5c(1)
    addi 0, 3, 0xb8
    lfsx 0, 29, 0
    lfd 1, 0x58(1)
    fsubs 1, 1, 2
    fmadds 0, 31, 1, 0
    stfsx 0, 29, 0
L_8042F490:
    add 27, 24, 25
    lbz 3, 0x0(27)
    extsb. 0, 3
    .4byte 0x4082FC68 # bne .L_8042F104
    lwz 0, 0xe4(29)
    addi 3, 1, 0x2c
    lfs 0, 0xb8(29)
    slwi 0, 0, 2
    fcmpo cr0, 0, 30
    stfsx 30, 3, 0
    .4byte 0x40800008 # bge .L_8042F4C0
    stfs 30, 0xb8(29)
L_8042F4C0:
    stfs 30, 0xc8(29)
    li 0, 0x1
    li 25, 0x0
    .4byte 0xC0420B7C # lfs f2, lbl_80543B1C@sda21(r0)
    stw 0, 0xe4(29)
    .4byte 0xC0020B78 # lfs f0, lbl_80543B18@sda21(r0)
    stb 25, 0x1e(1)
    stb 25, 0x1d(1)
    stb 25, 0x1c(1)
    stb 25, 0x0(30)
    lwz 0, 0xe4(29)
    slwi 0, 0, 2
    lfsx 1, 3, 0
    fsubs 1, 2, 1
    fmadds 0, 1, 0, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 6, 0x5c(1)
    cmpwi 6, 0x0
    .4byte 0x4081017C # ble .L_8042F688
    addi 3, 1, 0x20
    li 4, 0xf
    .4byte 0x38A20B80 # li r5, lbl_80543B20@sda21
    crclr 6
    bl fn_8006B414
    mr 3, 30
    addi 4, 1, 0x20
    bl strcat
    .4byte 0x48000158 # b .L_8042F688
L_8042F534:
    extsb 0, 3
    cmpwi 0, 0xa
    .4byte 0x40820088 # bne .L_8042F5C4
    li 0, 0x0
    stb 3, 0x1c(1)
    mr 3, 30
    addi 4, 1, 0x1c
    stb 0, 0x1d(1)
    bl strcat
    lwz 4, 0xe4(29)
    addi 3, 1, 0x30
    .4byte 0xC0420B7C # lfs f2, lbl_80543B1C@sda21(r0)
    addi 25, 25, 0x1
    addi 0, 4, 0x1
    .4byte 0xC0020B78 # lfs f0, lbl_80543B18@sda21(r0)
    stw 0, 0xe4(29)
    lwz 0, 0xe4(29)
    slwi 4, 0, 2
    subi 0, 4, 0x4
    lfsx 1, 3, 0
    fsubs 1, 2, 1
    fmadds 0, 1, 0, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 6, 0x5c(1)
    cmpwi 6, 0x0
    .4byte 0x408100EC # ble .L_8042F688
    addi 3, 1, 0x20
    li 4, 0xf
    .4byte 0x38A20B80 # li r5, lbl_80543B20@sda21
    crclr 6
    bl fn_8006B414
    mr 3, 30
    addi 4, 1, 0x20
    bl strcat
    .4byte 0x480000C8 # b .L_8042F688
L_8042F5C4:
    cmpwi 0, 0x1a
    .4byte 0x40820050 # bne .L_8042F618
    lbz 0, 0x2(27)
    cmpwi 0, 0x3
    .4byte 0x40820034 # bne .L_8042F608
    li 0, 0x0
    stb 26, 0x1c(1)
    mr 31, 26
    mr 3, 30
    stb 0, 0x1d(1)
    addi 4, 1, 0x1c
    bl strcat
    lbz 4, 0x5(27)
    mr 3, 29
    mr 5, 28
    mr 6, 30
    bl fn_80430368
L_8042F608:
    lbz 0, 0x1(27)
    extsb 0, 0
    add 25, 25, 0
    .4byte 0x48000074 # b .L_8042F688
L_8042F618:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    mr 4, 31
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x40(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_8042F668
    lbz 5, 0x0(27)
    li 0, 0x0
    mr 3, 30
    addi 4, 1, 0x1c
    stb 5, 0x1c(1)
    lbz 5, 0x1(27)
    stb 5, 0x1d(1)
    stb 0, 0x1e(1)
    bl strcat
    addi 25, 25, 0x2
    .4byte 0x48000024 # b .L_8042F688
L_8042F668:
    lbz 5, 0x0(27)
    li 0, 0x0
    mr 3, 30
    addi 4, 1, 0x1c
    stb 5, 0x1c(1)
    stb 0, 0x1d(1)
    bl strcat
    addi 25, 25, 0x1
L_8042F688:
    add 27, 24, 25
    lbz 3, 0x0(27)
    extsb. 0, 3
    .4byte 0x4082FEA0 # bne .L_8042F534
    li 0, 0x0
    stb 3, 0x1c(1)
    mr 3, 30
    addi 4, 1, 0x1c
    stb 0, 0x1d(1)
    bl strcat
    psq_l 31, 0xb8(1), 0, 0
    lfd 31, 0xb0(1)
    psq_l 30, 0xa8(1), 0, 0
    lfd 30, 0xa0(1)
    psq_l 29, 0x98(1), 0, 0
    lfd 29, 0x90(1)
    lmw 23, 0x6c(1)
    lwz 0, 0xc4(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_8042F6DC:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    mr 29, 3
    lis 4, 0x7774
    lwz 3, 0x8(3)
    addi 6, 4, 0x3031
    .4byte 0xC0220B8C # lfs f1, lbl_80543B2C@sda21(r0)
    li 5, 0x54
    lwz 12, 0x0(3)
    lfs 0, 0xb8(29)
    lwz 12, 0x3c(12)
    fadds 30, 1, 0
    mtctr 12
    bctrl
    lwz 4, 0xe4(29)
    lis 0, 0x4330
    .4byte 0xC0020B94 # lfs f0, lbl_80543B34@sda21(r0)
    xoris 4, 4, 0x8000
    stw 0, 0x28(1)
    .4byte 0xC8820B70 # lfd f4, lbl_80543B10@sda21(r0)
    fcmpo cr0, 30, 0
    stw 4, 0x2c(1)
    lfs 2, 0x118(3)
    lfd 3, 0x28(1)
    .4byte 0xC0220B90 # lfs f1, lbl_80543B30@sda21(r0)
    fsubs 3, 3, 4
    fmadds 31, 3, 2, 1
    .4byte 0x40800008 # bge .L_8042F780
    fmr 30, 0
L_8042F780:
    .4byte 0xC0020B94 # lfs f0, lbl_80543B34@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40800008 # bge .L_8042F790
    fmr 31, 0
L_8042F790:
    .4byte 0xC0020B98 # lfs f0, lbl_80543B38@sda21(r0)
    fadds 1, 0, 30
    fadds 0, 0, 31
    fctiwz 1, 1
    fctiwz 0, 0
    stfd 1, 0x30(1)
    lwz 0, 0x34(1)
    stfd 0, 0x38(1)
    srawi 0, 0, 7
    addze 3, 0
    lwz 0, 0x3c(1)
    extsh 31, 3
    srawi 0, 0, 7
    addze 0, 0
    cmpwi 31, 0x1
    extsh 30, 0
    .4byte 0x4181000C # bgt .L_8042F7DC
    addi 0, 31, 0x1
    extsh 31, 0
L_8042F7DC:
    cmpwi 30, 0x1
    .4byte 0x4181000C # bgt .L_8042F7EC
    addi 0, 30, 0x1
    extsh 30, 0
L_8042F7EC:
    lwz 3, 0x24(29)
    lwz 4, 0x34(29)
    lfs 1, 0x18(3)
    lfs 0, 0x18(4)
    .4byte 0xC0420B88 # lfs f2, lbl_80543B28@sda21(r0)
    fsubs 0, 1, 0
    fadds 0, 30, 0
    fdivs 28, 0, 1
    fmr 1, 28
    bl fn_80402CE0
    fmr 1, 28
    lwz 3, 0x28(29)
    .4byte 0xC0420B88 # lfs f2, lbl_80543B28@sda21(r0)
    bl fn_80402CE0
    lwz 4, 0x34(29)
    lwz 3, 0x2c(29)
    lfs 0, 0x1c(4)
    lfs 2, 0x18(4)
    fdivs 29, 31, 0
    .4byte 0xC0220B88 # lfs f1, lbl_80543B28@sda21(r0)
    fdivs 28, 30, 2
    fmr 2, 29
    bl fn_80402CE0
    fmr 2, 29
    lwz 3, 0x30(29)
    .4byte 0xC0220B88 # lfs f1, lbl_80543B28@sda21(r0)
    bl fn_80402CE0
    fmr 1, 28
    lwz 3, 0x34(29)
    fmr 2, 29
    bl fn_80402CE0
    lwz 3, 0x10(29)
    lwz 4, 0x34(29)
    lfs 1, 0x18(3)
    lfs 0, 0x18(4)
    .4byte 0xC0420B88 # lfs f2, lbl_80543B28@sda21(r0)
    fsubs 0, 1, 0
    fadds 0, 30, 0
    fdivs 28, 0, 1
    fmr 1, 28
    bl fn_80402CE0
    fmr 1, 28
    lwz 3, 0x14(29)
    .4byte 0xC0420B88 # lfs f2, lbl_80543B28@sda21(r0)
    bl fn_80402CE0
    lwz 3, 0x34(29)
    lwz 4, 0x20(29)
    lfs 0, 0x1c(3)
    lfs 2, 0x1c(4)
    lfs 29, 0x18(3)
    fsubs 0, 2, 0
    lfs 28, 0x18(4)
    lwz 3, 0x18(29)
    .4byte 0xC0220B88 # lfs f1, lbl_80543B28@sda21(r0)
    fadds 0, 31, 0
    fdivs 31, 0, 2
    fmr 2, 31
    bl fn_80402CE0
    fmr 2, 31
    lwz 3, 0x1c(29)
    .4byte 0xC0220B88 # lfs f1, lbl_80543B28@sda21(r0)
    bl fn_80402CE0
    fsubs 0, 28, 29
    lwz 3, 0x20(29)
    fmr 2, 31
    fadds 0, 30, 0
    fdivs 1, 0, 28
    bl fn_80402CE0
    lwz 3, 0x34(29)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lwz 4, 0x34(29)
    lfs 1, 0x0(3)
    lfs 0, 0x8(4)
    lwz 3, 0x24(29)
    fsubs 28, 0, 1
    .4byte 0xC0420B58 # lfs f2, lbl_80543AF8@sda21(r0)
    fmr 1, 28
    bl fn_80402E08
    lwz 5, 0x34(29)
    fmr 1, 28
    lwz 3, 0x28(29)
    lwz 4, 0x4(5)
    lfs 0, 0x1c(5)
    lfs 3, 0x2c(4)
    lfs 2, 0x24(4)
    fsubs 2, 3, 2
    fsubs 2, 2, 0
    bl fn_80402E08
    lwz 3, 0x34(29)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lwz 4, 0x34(29)
    lfs 1, 0x4(3)
    lfs 0, 0xc(4)
    lwz 3, 0x2c(29)
    fsubs 28, 0, 1
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    fmr 2, 28
    bl fn_80402E08
    lwz 5, 0x34(29)
    fmr 2, 28
    lwz 3, 0x30(29)
    lwz 4, 0x4(5)
    lfs 0, 0x18(5)
    lfs 3, 0x28(4)
    lfs 1, 0x20(4)
    fsubs 1, 3, 1
    fsubs 1, 1, 0
    bl fn_80402E08
    lwz 3, 0x20(29)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lwz 4, 0x20(29)
    lfs 1, 0x0(3)
    lfs 0, 0x8(4)
    lwz 3, 0x10(29)
    fsubs 28, 0, 1
    .4byte 0xC0420B58 # lfs f2, lbl_80543AF8@sda21(r0)
    fmr 1, 28
    bl fn_80402E08
    lwz 5, 0x20(29)
    fmr 1, 28
    lwz 3, 0x14(29)
    lwz 4, 0x4(5)
    lfs 0, 0x1c(5)
    lfs 3, 0x2c(4)
    lfs 2, 0x24(4)
    fsubs 2, 3, 2
    fsubs 2, 2, 0
    bl fn_80402E08
    lwz 3, 0x20(29)
    lwz 3, 0x4(3)
    bl fn_80095FB4
    lwz 4, 0x20(29)
    lfs 1, 0x4(3)
    lfs 0, 0xc(4)
    lwz 3, 0x18(29)
    fsubs 28, 0, 1
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    fmr 2, 28
    bl fn_80402E08
    lwz 5, 0x20(29)
    fmr 2, 28
    lwz 3, 0x1c(29)
    lwz 4, 0x4(5)
    lfs 0, 0x18(5)
    lfs 3, 0x28(4)
    lfs 1, 0x20(4)
    fsubs 1, 3, 1
    fsubs 1, 1, 0
    bl fn_80402E08
    lha 3, 0x38(29)
    extsh 0, 31
    slwi 31, 0, 8
    addi 4, 1, 0x18
    sth 3, 0x18(1)
    lha 0, 0x3a(29)
    sth 0, 0x1a(1)
    lha 0, 0x78(29)
    sth 0, 0x8(1)
    lha 0, 0x7a(29)
    sth 0, 0xa(1)
    lha 0, 0x3c(29)
    sth 0, 0x1c(1)
    lha 0, 0x3e(29)
    sth 0, 0x1e(1)
    lha 0, 0x7c(29)
    sth 0, 0xc(1)
    lha 0, 0x7e(29)
    sth 0, 0xe(1)
    lha 0, 0x40(29)
    sth 0, 0x20(1)
    lha 0, 0x42(29)
    sth 0, 0x22(1)
    lha 0, 0x80(29)
    sth 0, 0x10(1)
    lha 0, 0x82(29)
    sth 0, 0x12(1)
    lha 0, 0x44(29)
    sth 0, 0x24(1)
    lha 0, 0x46(29)
    sth 0, 0x26(1)
    lha 0, 0x84(29)
    sth 0, 0x14(1)
    lha 0, 0x86(29)
    sth 0, 0x16(1)
    sth 31, 0x1c(1)
    sth 31, 0x24(1)
    sth 31, 0xc(1)
    sth 31, 0x14(1)
    lwz 3, 0x10(29)
    lwz 3, 0x4(3)
    bl fn_8009A1D0
    lwz 3, 0x24(29)
    addi 4, 1, 0x8
    lwz 3, 0x4(3)
    bl fn_8009A1D0
    lha 0, 0x48(29)
    addi 4, 1, 0x18
    sth 0, 0x18(1)
    lha 0, 0x4a(29)
    sth 0, 0x1a(1)
    lha 0, 0x88(29)
    sth 0, 0x8(1)
    lha 0, 0x8a(29)
    sth 0, 0xa(1)
    lha 0, 0x4c(29)
    sth 0, 0x1c(1)
    lha 0, 0x4e(29)
    sth 0, 0x1e(1)
    lha 0, 0x8c(29)
    sth 0, 0xc(1)
    lha 0, 0x8e(29)
    sth 0, 0xe(1)
    lha 0, 0x50(29)
    sth 0, 0x20(1)
    lha 0, 0x52(29)
    sth 0, 0x22(1)
    lha 0, 0x90(29)
    sth 0, 0x10(1)
    lha 0, 0x92(29)
    sth 0, 0x12(1)
    lha 0, 0x54(29)
    sth 0, 0x24(1)
    lha 0, 0x56(29)
    sth 0, 0x26(1)
    lha 0, 0x94(29)
    sth 0, 0x14(1)
    lha 0, 0x96(29)
    sth 0, 0x16(1)
    sth 31, 0x18(1)
    sth 31, 0x20(1)
    sth 31, 0x8(1)
    sth 31, 0x10(1)
    lwz 3, 0x14(29)
    lwz 3, 0x4(3)
    bl fn_8009A1D0
    lwz 3, 0x28(29)
    addi 4, 1, 0x8
    lwz 3, 0x4(3)
    bl fn_8009A1D0
    lha 3, 0x58(29)
    extsh 0, 30
    slwi 31, 0, 8
    addi 4, 1, 0x18
    sth 3, 0x18(1)
    lha 0, 0x5a(29)
    sth 0, 0x1a(1)
    lha 0, 0x98(29)
    sth 0, 0x8(1)
    lha 0, 0x9a(29)
    sth 0, 0xa(1)
    lha 0, 0x5c(29)
    sth 0, 0x1c(1)
    lha 0, 0x5e(29)
    sth 0, 0x1e(1)
    lha 0, 0x9c(29)
    sth 0, 0xc(1)
    lha 0, 0x9e(29)
    sth 0, 0xe(1)
    lha 0, 0x60(29)
    sth 0, 0x20(1)
    lha 0, 0x62(29)
    sth 0, 0x22(1)
    lha 0, 0xa0(29)
    sth 0, 0x10(1)
    lha 0, 0xa2(29)
    sth 0, 0x12(1)
    lha 0, 0x64(29)
    sth 0, 0x24(1)
    lha 0, 0x66(29)
    sth 0, 0x26(1)
    lha 0, 0xa4(29)
    sth 0, 0x14(1)
    lha 0, 0xa6(29)
    sth 0, 0x16(1)
    sth 31, 0x20(1)
    sth 31, 0x24(1)
    sth 31, 0x10(1)
    sth 31, 0x14(1)
    lwz 3, 0x18(29)
    lwz 3, 0x4(3)
    bl fn_8009A1D0
    lwz 3, 0x2c(29)
    addi 4, 1, 0x8
    lwz 3, 0x4(3)
    bl fn_8009A1D0
    lha 0, 0x68(29)
    addi 4, 1, 0x18
    sth 0, 0x18(1)
    lha 0, 0x6a(29)
    sth 0, 0x1a(1)
    lha 0, 0xa8(29)
    sth 0, 0x8(1)
    lha 0, 0xaa(29)
    sth 0, 0xa(1)
    lha 0, 0x6c(29)
    sth 0, 0x1c(1)
    lha 0, 0x6e(29)
    sth 0, 0x1e(1)
    lha 0, 0xac(29)
    sth 0, 0xc(1)
    lha 0, 0xae(29)
    sth 0, 0xe(1)
    lha 0, 0x70(29)
    sth 0, 0x20(1)
    lha 0, 0x72(29)
    sth 0, 0x22(1)
    lha 0, 0xb0(29)
    sth 0, 0x10(1)
    lha 0, 0xb2(29)
    sth 0, 0x12(1)
    lha 0, 0x74(29)
    sth 0, 0x24(1)
    lha 0, 0x76(29)
    sth 0, 0x26(1)
    lha 0, 0xb4(29)
    sth 0, 0x14(1)
    lha 0, 0xb6(29)
    sth 0, 0x16(1)
    sth 31, 0x18(1)
    sth 31, 0x1c(1)
    sth 31, 0x8(1)
    sth 31, 0xc(1)
    lwz 3, 0x1c(29)
    lwz 3, 0x4(3)
    bl fn_8009A1D0
    lwz 3, 0x30(29)
    addi 4, 1, 0x8
    lwz 3, 0x4(3)
    bl fn_8009A1D0
    lbz 0, 0xea(29)
    cmplwi 0, 0xff
    .4byte 0x41820608 # beq .L_8043032C
    lfs 1, 0xbc(29)
    lfs 0, 0xc0(29)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x408200E0 # bne .L_8042FE18
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x2c(30)
    lfs 0, 0x24(30)
    lwz 12, 0x18(12)
    fsubs 2, 1, 0
    lfs 1, 0xbc(29)
    mtctr 12
    bctrl
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x2c(30)
    lfs 0, 0x24(30)
    lwz 12, 0x18(12)
    fsubs 2, 1, 0
    lfs 1, 0xbc(29)
    mtctr 12
    bctrl
    .4byte 0x480000DC # b .L_8042FEF0
L_8042FE18:
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x2c(30)
    lfs 0, 0x24(30)
    lwz 12, 0x18(12)
    fsubs 2, 1, 0
    lfs 1, 0xc0(29)
    mtctr 12
    bctrl
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lfs 1, 0x2c(30)
    lfs 0, 0x24(30)
    lwz 12, 0x18(12)
    fsubs 2, 1, 0
    lfs 1, 0xc0(29)
    mtctr 12
    bctrl
L_8042FEF0:
    lwz 3, 0x8(29)
    lis 4, 0x7774
    addi 6, 4, 0x3031
    lbz 31, 0xea(29)
    lwz 12, 0x0(3)
    li 5, 0x54
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x8(29)
    lis 4, 0x7774
    li 5, 0x54
    lwz 12, 0x0(3)
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 2, 0x0(3)
    lis 4, 0x7774
    lwz 3, 0x8(29)
    addi 6, 4, 0x3031
    lfs 1, 0x28(30)
    li 5, 0x54
    lfs 0, 0x20(30)
    lwz 12, 0x0(3)
    fsubs 1, 1, 0
    .4byte 0xC0020B78 # lfs f0, lbl_80543B18@sda21(r0)
    lwz 12, 0x3c(12)
    fmadds 30, 1, 0, 2
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x8(29)
    lis 4, 0x7774
    li 5, 0x54
    lwz 12, 0x0(3)
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x2c(30)
    cmplwi 31, 0x0
    lfs 0, 0x24(30)
    lfs 2, 0x4(3)
    fsubs 1, 1, 0
    .4byte 0xC0020B78 # lfs f0, lbl_80543B18@sda21(r0)
    fmadds 31, 1, 0, 2
    .4byte 0x40820050 # bne .L_80430008
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 3, 0xbc(29)
    lfs 0, 0xc8(29)
    lfs 2, 0x28(3)
    lfs 1, 0x20(3)
    fsubs 3, 3, 0
    .4byte 0xC0020B78 # lfs f0, lbl_80543B18@sda21(r0)
    fsubs 1, 2, 1
    fsubs 1, 3, 1
    fmadds 30, 1, 0, 30
    .4byte 0x4800005C # b .L_80430060
L_80430008:
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 3, 0xc0(29)
    lfs 1, 0xc8(29)
    lfs 2, 0x28(3)
    lfs 0, 0x20(3)
    fsubs 4, 3, 1
    lfs 1, 0xd0(29)
    fsubs 3, 2, 0
    lfs 0, 0xcc(29)
    .4byte 0xC0420B78 # lfs f2, lbl_80543B18@sda21(r0)
    fsubs 0, 1, 0
    fsubs 1, 4, 3
    fmadds 0, 1, 2, 0
    fadds 30, 30, 0
L_80430060:
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x7774
    lfs 0, 0x24(3)
    addi 6, 4, 0x3031
    lwz 3, 0x8(29)
    li 5, 0x54
    fsubs 29, 1, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 28, 0x118(3)
    lis 4, 0x7774
    lwz 3, 0x8(29)
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 5, 0xe4(29)
    lis 4, 0x4330
    clrlslwi 0, 31, 24, 2
    lfs 1, 0x118(3)
    xoris 5, 5, 0x8000
    lwz 3, 0x8(29)
    stw 5, 0x3c(1)
    add 7, 29, 0
    lwz 12, 0x0(3)
    lis 5, 0x7572
    stw 4, 0x38(1)
    lis 4, 0x50
    .4byte 0xC8620B70 # lfd f3, lbl_80543B10@sda21(r0)
    fsubs 0, 28, 29
    lfd 2, 0x38(1)
    addi 6, 5, 0x3031
    .4byte 0xC0820B78 # lfs f4, lbl_80543B18@sda21(r0)
    addi 5, 4, 0x7763
    fsubs 5, 2, 3
    lfs 3, 0xd8(7)
    fmuls 0, 0, 4
    .4byte 0xC0420B88 # lfs f2, lbl_80543B28@sda21(r0)
    fnmsubs 3, 5, 4, 3
    lwz 12, 0x3c(12)
    fsubs 2, 3, 2
    fmadds 0, 2, 1, 0
    fadds 31, 31, 0
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 30
    fmr 2, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 30
    fmr 2, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 5, 0x7572
    lfs 0, 0x24(3)
    lis 4, 0x50
    lwz 3, 0x8(29)
    addi 6, 5, 0x3031
    fsubs 28, 1, 0
    addi 5, 4, 0x7763
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 5, 0xeb(29)
    lis 0, 0x4330
    .4byte 0xC0820B78 # lfs f4, lbl_80543B18@sda21(r0)
    .4byte 0x38820B48 # li r4, lbl_80543AE8@sda21
    slwi 5, 5, 1
    lfs 1, 0x28(30)
    lhax 5, 4, 5
    fmuls 2, 4, 28
    lfs 0, 0x20(30)
    li 4, 0x7a
    xoris 5, 5, 0x8000
    stw 0, 0x30(1)
    fsubs 1, 1, 0
    stw 5, 0x34(1)
    .4byte 0xC8620B70 # lfd f3, lbl_80543B10@sda21(r0)
    lfd 0, 0x30(1)
    fmuls 1, 4, 1
    fsubs 3, 0, 3
    bl fn_80096094
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 5, 0x7572
    lfs 0, 0x24(3)
    lis 4, 0x50
    lwz 3, 0x8(29)
    addi 6, 5, 0x3032
    fsubs 28, 1, 0
    addi 5, 4, 0x7763
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    lwz 3, 0x8(29)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 5, 0xeb(29)
    lis 0, 0x4330
    .4byte 0xC0820B78 # lfs f4, lbl_80543B18@sda21(r0)
    .4byte 0x38820B50 # li r4, lbl_80543AF0@sda21
    slwi 5, 5, 1
    lfs 1, 0x28(30)
    lhax 5, 4, 5
    fmuls 2, 4, 28
    lfs 0, 0x20(30)
    li 4, 0x7a
    xoris 5, 5, 0x8000
    stw 0, 0x28(1)
    fsubs 1, 1, 0
    stw 5, 0x2c(1)
    .4byte 0xC8620B70 # lfd f3, lbl_80543B10@sda21(r0)
    lfd 0, 0x28(1)
    fmuls 1, 4, 1
    fsubs 3, 0, 3
    bl fn_80096094
L_8043032C:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 0, 0x94(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80430368:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_8048F390@ha
    stw 0, 0x14(1)
    clrlwi 0, 4, 24
    cmplwi 0, 0x9
    addi 4, 3, lbl_8048F390@l
    .4byte 0x41810180 # bgt .L_80430504
    lis 3, jumptable_804B160C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804B160C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    cmpwi 5, 0x1
    .4byte 0x41820014 # beq .L_804303B8
    mr 3, 6
    addi 4, 4, 0x38
    bl strcat
    .4byte 0x48000150 # b .L_80430504
L_804303B8:
    mr 3, 6
    addi 4, 4, 0x44
    bl strcat
    .4byte 0x48000140 # b .L_80430504
    cmpwi 5, 0x1
    .4byte 0x41820014 # beq .L_804303E0
    mr 3, 6
    .4byte 0x38820B9C # li r4, lbl_80543B3C@sda21
    bl strcat
    .4byte 0x48000128 # b .L_80430504
L_804303E0:
    mr 3, 6
    .4byte 0x38820BA4 # li r4, lbl_80543B44@sda21
    bl strcat
    .4byte 0x48000118 # b .L_80430504
    cmpwi 5, 0x1
    .4byte 0x41820014 # beq .L_80430408
    mr 3, 6
    addi 4, 4, 0x50
    bl strcat
    .4byte 0x48000100 # b .L_80430504
L_80430408:
    mr 3, 6
    .4byte 0x38820BAC # li r4, lbl_80543B4C@sda21
    bl strcat
    .4byte 0x480000F0 # b .L_80430504
    cmpwi 5, 0x1
    .4byte 0x41820014 # beq .L_80430430
    mr 3, 6
    .4byte 0x38820BB4 # li r4, lbl_80543B54@sda21
    bl strcat
    .4byte 0x480000D8 # b .L_80430504
L_80430430:
    mr 3, 6
    .4byte 0x38820BBC # li r4, lbl_80543B5C@sda21
    bl strcat
    .4byte 0x480000C8 # b .L_80430504
    cmpwi 5, 0x1
    .4byte 0x41820014 # beq .L_80430458
    mr 3, 6
    addi 4, 4, 0x5c
    bl strcat
    .4byte 0x480000B0 # b .L_80430504
L_80430458:
    mr 3, 6
    .4byte 0x38820BC4 # li r4, lbl_80543B64@sda21
    bl strcat
    .4byte 0x480000A0 # b .L_80430504
    cmpwi 5, 0x1
    .4byte 0x41820014 # beq .L_80430480
    mr 3, 6
    .4byte 0x38820BCC # li r4, lbl_80543B6C@sda21
    bl strcat
    .4byte 0x48000088 # b .L_80430504
L_80430480:
    mr 3, 6
    .4byte 0x38820BD4 # li r4, lbl_80543B74@sda21
    bl strcat
    .4byte 0x48000078 # b .L_80430504
    cmpwi 5, 0x1
    .4byte 0x41820014 # beq .L_804304A8
    mr 3, 6
    .4byte 0x38820BDC # li r4, lbl_80543B7C@sda21
    bl strcat
    .4byte 0x48000060 # b .L_80430504
L_804304A8:
    mr 3, 6
    .4byte 0x38820BE4 # li r4, lbl_80543B84@sda21
    bl strcat
    .4byte 0x48000050 # b .L_80430504
    cmpwi 5, 0x1
    .4byte 0x41820014 # beq .L_804304D0
    mr 3, 6
    addi 4, 4, 0x68
    bl strcat
    .4byte 0x48000038 # b .L_80430504
L_804304D0:
    mr 3, 6
    .4byte 0x38820BEC # li r4, lbl_80543B8C@sda21
    bl strcat
    .4byte 0x48000028 # b .L_80430504
    cmpwi 5, 0x1
    .4byte 0x41820014 # beq .L_804304F8
    mr 3, 6
    addi 4, 4, 0x74
    bl strcat
    .4byte 0x48000010 # b .L_80430504
L_804304F8:
    mr 3, 6
    addi 4, 4, 0x84
    bl strcat
L_80430504:
    lwz 0, 0x14(1)
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80430518:
    stwu 1, -0x130(1)
    mflr 0
    stw 0, 0x134(1)
    stfd 31, 0x120(1)
    psq_st 31, 0x128(1), 0, 0
    stfd 30, 0x110(1)
    psq_st 30, 0x118(1), 0, 0
    stw 31, 0x10c(1)
    clrlwi 0, 4, 24
    fmr 30, 1
    cmpwi 0, 0x3
    .4byte 0xC3E20B58 # lfs f31, lbl_80543AF8@sda21(r0)
    mr 31, 5
    .4byte 0x41820508 # beq .L_80430A54
    .4byte 0x40800014 # bge .L_80430564
    cmpwi 0, 0x1
    .4byte 0x4182001C # beq .L_80430574
    .4byte 0x40800310 # bge .L_8043086C
    .4byte 0x48000B34 # b .L_80431094
L_80430564:
    cmpwi 0, 0x5
    .4byte 0x41820904 # beq .L_80430E6C
    .4byte 0x40800B28 # bge .L_80431094
    .4byte 0x48000758 # b .L_80430CC8
L_80430574:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xa8
    li 4, 0xa0
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0xa9(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xa4
    xoris 6, 4, 0x8000
    stw 0, 0xb0(1)
    lwz 3, 0x154(3)
    li 4, 0x46
    stw 6, 0xb4(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xb0(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0xa5(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xa0
    xoris 6, 4, 0x8000
    stw 0, 0xb8(1)
    lwz 3, 0x154(3)
    li 4, 0x6f
    stw 6, 0xbc(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xb8(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0xa1(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x9c
    xoris 6, 4, 0x8000
    stw 0, 0xc0(1)
    lwz 3, 0x154(3)
    li 4, 0x72
    stw 6, 0xc4(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xc0(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x9d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x98
    xoris 6, 4, 0x8000
    stw 0, 0xc8(1)
    lwz 3, 0x154(3)
    li 4, 0x63
    stw 6, 0xcc(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xc8(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x99(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x94
    xoris 6, 4, 0x8000
    stw 0, 0xd0(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0xd4(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xd0(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x95(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x90
    xoris 6, 4, 0x8000
    stw 0, 0xd8(1)
    lwz 3, 0x154(3)
    li 4, 0xa0
    stw 6, 0xdc(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xd8(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x91(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x8c
    xoris 6, 4, 0x8000
    stw 0, 0xe0(1)
    lwz 3, 0x154(3)
    li 4, 0x47
    stw 6, 0xe4(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xe0(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x8d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x88
    xoris 6, 4, 0x8000
    stw 0, 0xe8(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0xec(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xe8(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x89(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x84
    xoris 6, 4, 0x8000
    stw 0, 0xf0(1)
    lwz 3, 0x154(3)
    li 4, 0x6d
    stw 6, 0xf4(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xf0(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0x85(1)
    lis 0, 0x4330
    stw 0, 0xf8(1)
    cmpwi 31, 0x1
    xoris 0, 3, 0x8000
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    stw 0, 0xfc(1)
    lfd 0, 0xf8(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x41820874 # beq .L_80431094
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x80
    li 4, 0x73
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x81(1)
    lis 0, 0x4330
    stw 0, 0xf8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    stw 0, 0xfc(1)
    lfd 0, 0xf8(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x4800082C # b .L_80431094
L_8043086C:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x7c
    li 4, 0xa0
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x7d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x78
    xoris 6, 4, 0x8000
    stw 0, 0xf8(1)
    lwz 3, 0x154(3)
    li 4, 0x43
    stw 6, 0xfc(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xf8(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x79(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x74
    xoris 6, 4, 0x8000
    stw 0, 0xf0(1)
    lwz 3, 0x154(3)
    li 4, 0x75
    stw 6, 0xf4(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xf0(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x75(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x70
    xoris 6, 4, 0x8000
    stw 0, 0xe8(1)
    lwz 3, 0x154(3)
    li 4, 0x63
    stw 6, 0xec(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xe8(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x71(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x6c
    xoris 6, 4, 0x8000
    stw 0, 0xe0(1)
    lwz 3, 0x154(3)
    li 4, 0x63
    stw 6, 0xe4(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xe0(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x6d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x68
    xoris 6, 4, 0x8000
    stw 0, 0xd8(1)
    lwz 3, 0x154(3)
    li 4, 0x6f
    stw 6, 0xdc(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xd8(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0x69(1)
    lis 0, 0x4330
    stw 0, 0xd0(1)
    cmpwi 31, 0x1
    xoris 0, 3, 0x8000
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    stw 0, 0xd4(1)
    lfd 0, 0xd0(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x4182068C # beq .L_80431094
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x64
    li 4, 0x73
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x65(1)
    lis 0, 0x4330
    stw 0, 0xf8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    stw 0, 0xfc(1)
    lfd 0, 0xf8(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x48000644 # b .L_80431094
L_80430A54:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x60
    li 4, 0xa0
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x61(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x5c
    xoris 6, 4, 0x8000
    stw 0, 0xf8(1)
    lwz 3, 0x154(3)
    li 4, 0x62
    stw 6, 0xfc(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xf8(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x5d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x58
    xoris 6, 4, 0x8000
    stw 0, 0xf0(1)
    lwz 3, 0x154(3)
    li 4, 0x61
    stw 6, 0xf4(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xf0(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x59(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x54
    xoris 6, 4, 0x8000
    stw 0, 0xe8(1)
    lwz 3, 0x154(3)
    li 4, 0x64
    stw 6, 0xec(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xe8(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x55(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x50
    xoris 6, 4, 0x8000
    stw 0, 0xe0(1)
    lwz 3, 0x154(3)
    li 4, 0x64
    stw 6, 0xe4(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xe0(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0x51(1)
    lis 0, 0x4330
    stw 0, 0xd8(1)
    cmpwi 31, 0x1
    xoris 0, 3, 0x8000
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    stw 0, 0xdc(1)
    lfd 0, 0xd8(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x4082004C # bne .L_80430BF8
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x4c
    li 4, 0x79
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x4d(1)
    lis 0, 0x4330
    stw 0, 0xf8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    stw 0, 0xfc(1)
    lfd 0, 0xf8(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x480004A0 # b .L_80431094
L_80430BF8:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x48
    li 4, 0x69
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x49(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x44
    xoris 6, 4, 0x8000
    stw 0, 0xf8(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0xfc(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xf8(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x45(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x40
    xoris 6, 4, 0x8000
    stw 0, 0xf0(1)
    lwz 3, 0x154(3)
    li 4, 0x73
    stw 6, 0xf4(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xf0(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0x41(1)
    lis 0, 0x4330
    stw 0, 0xe8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    stw 0, 0xec(1)
    lfd 0, 0xe8(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x480003D0 # b .L_80431094
L_80430CC8:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x3c
    li 4, 0xa0
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x3d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x38
    xoris 6, 4, 0x8000
    stw 0, 0xf8(1)
    lwz 3, 0x154(3)
    li 4, 0x74
    stw 6, 0xfc(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xf8(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x39(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x34
    xoris 6, 4, 0x8000
    stw 0, 0xf0(1)
    lwz 3, 0x154(3)
    li 4, 0x69
    stw 6, 0xf4(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xf0(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x35(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x30
    xoris 6, 4, 0x8000
    stw 0, 0xe8(1)
    lwz 3, 0x154(3)
    li 4, 0x6d
    stw 6, 0xec(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xe8(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x31(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x2c
    xoris 6, 4, 0x8000
    stw 0, 0xe0(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0xe4(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xe0(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0x2d(1)
    lis 0, 0x4330
    stw 0, 0xd8(1)
    cmpwi 31, 0x1
    xoris 0, 3, 0x8000
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    stw 0, 0xdc(1)
    lfd 0, 0xd8(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x41820274 # beq .L_80431094
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x28
    li 4, 0x73
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x29(1)
    lis 0, 0x4330
    stw 0, 0xf8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    stw 0, 0xfc(1)
    lfd 0, 0xf8(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x4800022C # b .L_80431094
L_80430E6C:
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x24
    li 4, 0xa0
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 4, 0x25(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x20
    xoris 6, 4, 0x8000
    stw 0, 0xf8(1)
    lwz 3, 0x154(3)
    li 4, 0x73
    stw 6, 0xfc(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xf8(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x21(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x1c
    xoris 6, 4, 0x8000
    stw 0, 0xf0(1)
    lwz 3, 0x154(3)
    li 4, 0x79
    stw 6, 0xf4(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xf0(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x1d(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x18
    xoris 6, 4, 0x8000
    stw 0, 0xe8(1)
    lwz 3, 0x154(3)
    li 4, 0x73
    stw 6, 0xec(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xe8(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x19(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x14
    xoris 6, 4, 0x8000
    stw 0, 0xe0(1)
    lwz 3, 0x154(3)
    li 4, 0x74
    stw 6, 0xe4(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xe0(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x15(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x10
    xoris 6, 4, 0x8000
    stw 0, 0xd8(1)
    lwz 3, 0x154(3)
    li 4, 0x65
    stw 6, 0xdc(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xd8(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 4, 0x11(1)
    lis 0, 0x4330
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0xc
    xoris 6, 4, 0x8000
    stw 0, 0xd0(1)
    lwz 3, 0x154(3)
    li 4, 0x6d
    stw 6, 0xd4(1)
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    lfd 0, 0xd0(1)
    lwz 12, 0x0(3)
    fsubs 0, 0, 1
    lwz 12, 0x2c(12)
    fmadds 31, 30, 0, 31
    mtctr 12
    bctrl
    lbz 3, 0xd(1)
    lis 0, 0x4330
    stw 0, 0xc8(1)
    cmpwi 31, 0x1
    xoris 0, 3, 0x8000
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    stw 0, 0xcc(1)
    lfd 0, 0xc8(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
    .4byte 0x41820048 # beq .L_80431094
    .4byte 0x806D91B8 # lwz r3, lbl_8053AD78@sda21(r0)
    addi 5, 1, 0x8
    li 4, 0x73
    lwz 3, 0x154(3)
    lwz 12, 0x0(3)
    lwz 12, 0x2c(12)
    mtctr 12
    bctrl
    lbz 3, 0x9(1)
    lis 0, 0x4330
    stw 0, 0xf8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8220B70 # lfd f1, lbl_80543B10@sda21(r0)
    stw 0, 0xfc(1)
    lfd 0, 0xf8(1)
    fsubs 0, 0, 1
    fmadds 31, 30, 0, 31
L_80431094:
    fmr 1, 31
    psq_l 31, 0x128(1), 0, 0
    lfd 31, 0x120(1)
    psq_l 30, 0x118(1), 0, 0
    lfd 30, 0x110(1)
    lwz 0, 0x134(1)
    lwz 31, 0x10c(1)
    mtlr 0
    addi 1, 1, 0x130
    blr

fn_804310BC:
    li 0, 0x0
    sth 0, 0xe8(3)
    stb 0, 0xec(3)
    blr

fn_804310CC:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, 0x7572
    lis 4, 0x50
    stw 0, 0x14(1)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x8(3)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x8(31)
    addi 5, 4, 0x7763
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    stb 0, 0xb0(3)
    .4byte 0xC0420B5C # lfs f2, lbl_80543AFC@sda21(r0)
    lwz 3, 0xc(31)
    bl fn_80402E08
    lwz 3, 0xc(31)
    li 0, 0x0
    sth 0, 0x22(3)
    sth 0, 0xe8(31)
    stb 0, 0xeb(31)
    stb 0, 0xec(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80431174:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stfd 28, 0x40(1)
    psq_st 28, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 30, 3
    lis 6, 0x7572
    lwz 3, 0x8(3)
    lis 5, 0x50
    mr 31, 4
    addi 6, 6, 0x3031
    lwz 12, 0x0(3)
    addi 5, 5, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb0(3)
    cmplwi 0, 0x0
    .4byte 0x418204CC # beq .L_804316AC
    lha 3, 0xe8(30)
    subi 0, 3, 0x1
    sth 0, 0xe8(30)
    lha 0, 0xe8(30)
    cmpwi 0, 0x0
    .4byte 0x4181007C # bgt .L_80431274
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0020B88 # lfs f0, lbl_80543B28@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0420BF4 # lfs f2, lbl_80543B94@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 3, 0x14(1)
    addi 0, 3, 0xa
    sth 0, 0xe8(30)
    lbz 3, 0xeb(30)
    cmplwi 3, 0x2
    .4byte 0x40800010 # bge .L_8043126C
    addi 0, 3, 0x1
    stb 0, 0xeb(30)
    .4byte 0x4800000C # b .L_80431274
L_8043126C:
    li 0, 0x0
    stb 0, 0xeb(30)
L_80431274:
    lwz 3, 0x8(30)
    lis 4, 0x7774
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 29, 3
    lwz 3, 0x8(30)
    lis 4, 0x7774
    li 5, 0x54
    lwz 12, 0x0(3)
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 2, 0x0(3)
    lis 4, 0x7774
    lwz 3, 0x8(30)
    addi 6, 4, 0x3031
    lfs 1, 0x28(29)
    li 5, 0x54
    lfs 0, 0x20(29)
    lwz 12, 0x0(3)
    fsubs 1, 1, 0
    .4byte 0xC0020B78 # lfs f0, lbl_80543B18@sda21(r0)
    lwz 12, 0x3c(12)
    fmadds 30, 1, 0, 2
    mtctr 12
    bctrl
    mr 29, 3
    lwz 3, 0x8(30)
    lis 4, 0x7774
    li 5, 0x54
    lwz 12, 0x0(3)
    addi 6, 4, 0x3031
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 1, 0x2c(29)
    clrlwi. 0, 31, 24
    lfs 0, 0x24(29)
    lfs 2, 0x4(3)
    fsubs 1, 1, 0
    .4byte 0xC0020B78 # lfs f0, lbl_80543B18@sda21(r0)
    fmadds 31, 1, 0, 2
    .4byte 0x40820050 # bne .L_80431388
    lwz 3, 0x8(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 3, 0xbc(30)
    lfs 0, 0xc8(30)
    lfs 2, 0x28(3)
    lfs 1, 0x20(3)
    fsubs 3, 3, 0
    .4byte 0xC0020B78 # lfs f0, lbl_80543B18@sda21(r0)
    fsubs 1, 2, 1
    fsubs 1, 3, 1
    fmadds 30, 1, 0, 30
    .4byte 0x4800005C # b .L_804313E0
L_80431388:
    lwz 3, 0x8(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 3, 0xc0(30)
    lfs 1, 0xc8(30)
    lfs 2, 0x28(3)
    lfs 0, 0x20(3)
    fsubs 4, 3, 1
    lfs 1, 0xd0(30)
    fsubs 3, 2, 0
    lfs 0, 0xcc(30)
    .4byte 0xC0420B78 # lfs f2, lbl_80543B18@sda21(r0)
    fsubs 0, 1, 0
    fsubs 1, 4, 3
    fmadds 0, 1, 2, 0
    fadds 30, 30, 0
L_804313E0:
    lwz 3, 0x8(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x7774
    lfs 0, 0x24(3)
    addi 6, 4, 0x3031
    lwz 3, 0x8(30)
    li 5, 0x54
    fsubs 29, 1, 0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 28, 0x118(3)
    lis 4, 0x7774
    lwz 3, 0x8(30)
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 5, 0xe4(30)
    lis 4, 0x4330
    stw 4, 0x10(1)
    clrlslwi 0, 31, 24, 2
    xoris 5, 5, 0x8000
    lfs 1, 0x118(3)
    stw 5, 0x14(1)
    lis 5, 0x7572
    lwz 3, 0x8(30)
    add 7, 30, 0
    .4byte 0xC8620B70 # lfd f3, lbl_80543B10@sda21(r0)
    fsubs 0, 28, 29
    lfd 2, 0x10(1)
    lis 4, 0x50
    .4byte 0xC0820B78 # lfs f4, lbl_80543B18@sda21(r0)
    addi 6, 5, 0x3031
    fsubs 5, 2, 3
    lfs 3, 0xd8(7)
    fmuls 0, 0, 4
    lwz 12, 0x0(3)
    addi 5, 4, 0x7763
    fnmsubs 3, 5, 4, 3
    .4byte 0xC0420B88 # lfs f2, lbl_80543B28@sda21(r0)
    lwz 12, 0x3c(12)
    fsubs 2, 3, 2
    fmadds 0, 2, 1, 0
    fadds 31, 31, 0
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 30
    fmr 2, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    fmr 1, 30
    fmr 2, 31
    lwz 12, 0x10(12)
    mtctr 12
    bctrl
    lwz 3, 0x8(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 5, 0x7572
    lfs 0, 0x24(3)
    lis 4, 0x50
    lwz 3, 0x8(30)
    addi 6, 5, 0x3031
    fsubs 28, 1, 0
    addi 5, 4, 0x7763
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 31, 3
    lwz 3, 0x8(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 5, 0xeb(30)
    lis 0, 0x4330
    .4byte 0xC0820B78 # lfs f4, lbl_80543B18@sda21(r0)
    .4byte 0x38820B48 # li r4, lbl_80543AE8@sda21
    slwi 5, 5, 1
    lfs 1, 0x28(31)
    lhax 5, 4, 5
    fmuls 2, 4, 28
    lfs 0, 0x20(31)
    li 4, 0x7a
    xoris 5, 5, 0x8000
    stw 0, 0x18(1)
    fsubs 1, 1, 0
    stw 5, 0x1c(1)
    .4byte 0xC8620B70 # lfd f3, lbl_80543B10@sda21(r0)
    lfd 0, 0x18(1)
    fmuls 1, 4, 1
    fsubs 3, 0, 3
    bl fn_80096094
    lwz 3, 0x8(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 5, 0x7572
    lfs 0, 0x24(3)
    lis 4, 0x50
    lwz 3, 0x8(30)
    addi 6, 5, 0x3032
    fsubs 28, 1, 0
    addi 5, 4, 0x7763
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 31, 3
    lwz 3, 0x8(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3032
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 5, 0xeb(30)
    lis 0, 0x4330
    .4byte 0xC0820B78 # lfs f4, lbl_80543B18@sda21(r0)
    .4byte 0x38820B50 # li r4, lbl_80543AF0@sda21
    slwi 5, 5, 1
    lfs 1, 0x28(31)
    lhax 5, 4, 5
    fmuls 2, 4, 28
    lfs 0, 0x20(31)
    li 4, 0x7a
    xoris 5, 5, 0x8000
    stw 0, 0x20(1)
    fsubs 1, 1, 0
    stw 5, 0x24(1)
    .4byte 0xC8620B70 # lfd f3, lbl_80543B10@sda21(r0)
    lfd 0, 0x20(1)
    fmuls 1, 4, 1
    fsubs 3, 0, 3
    bl fn_80096094
L_804316AC:
    li 3, 0x0
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    psq_l 28, 0x48(1), 0, 0
    lfd 28, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 0, 0x84(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_804316EC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0xec(3)
    cmplwi 0, 0x0
    .4byte 0x41820024 # beq .L_8043172C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x8(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
L_8043172C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80431740:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0xec(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_80431794
    lwz 3, 0xc(31)
    li 4, 0xa
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420BF8 # lfs f2, lbl_80543B98@sda21(r0)
    bl fn_80402940
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80431788
    li 3, 0x0
    .4byte 0x48000014 # b .L_80431798
L_80431788:
    li 0, 0x0
    sth 0, 0xe8(31)
    stb 0, 0xec(31)
L_80431794:
    li 3, 0x1
L_80431798:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_804317AC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lbz 0, 0xec(3)
    cmplwi 0, 0x0
    .4byte 0x41820120 # beq .L_804318E8
    lha 3, 0xe8(31)
    addi 0, 3, 0x1
    sth 0, 0xe8(31)
    lha 0, 0xe8(31)
    cmpwi 0, 0xa
    .4byte 0x40800050 # bge .L_80431830
    subfic 3, 0, 0xa
    lis 0, 0x4330
    mullw 3, 3, 3
    stw 0, 0x10(1)
    .4byte 0xC8620B70 # lfd f3, lbl_80543B10@sda21(r0)
    .4byte 0xC0820B64 # lfs f4, lbl_80543B04@sda21(r0)
    .4byte 0xC0020C00 # lfs f0, lbl_80543BA0@sda21(r0)
    .4byte 0xC0A20BFC # lfs f5, lbl_80543B9C@sda21(r0)
    xoris 0, 3, 0x8000
    lwz 3, 0xc(31)
    stw 0, 0x14(1)
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    lfd 2, 0x10(1)
    fsubs 2, 2, 3
    fmuls 2, 4, 2
    fdivs 0, 2, 0
    fadds 2, 5, 0
    bl fn_80402E08
    .4byte 0x480000BC # b .L_804318E8
L_80431830:
    subfic 3, 0, 0xd
    lis 0, 0x4330
    mullw 4, 3, 3
    stw 0, 0x10(1)
    .4byte 0xC8620B70 # lfd f3, lbl_80543B10@sda21(r0)
    .4byte 0xC0820BFC # lfs f4, lbl_80543B9C@sda21(r0)
    .4byte 0xC0020B6C # lfs f0, lbl_80543B0C@sda21(r0)
    lwz 3, 0xc(31)
    xoris 0, 4, 0x8000
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    stw 0, 0x14(1)
    lfd 2, 0x10(1)
    fsubs 2, 2, 3
    fmuls 2, 4, 2
    fdivs 2, 2, 0
    bl fn_80402E08
    lha 0, 0xe8(31)
    cmpwi 0, 0xd
    .4byte 0x41800070 # blt .L_804318E8
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC0020B88 # lfs f0, lbl_80543B28@sda21(r0)
    lwz 5, 0xb4(6)
    li 0, 0x0
    .4byte 0xC0420BF4 # lfs f2, lbl_80543B94@sda21(r0)
    li 3, 0x1
    mullw 4, 5, 4
    addis 4, 4, 0x3c6f
    subi 4, 4, 0xca1
    stw 4, 0xb4(6)
    lwz 4, 0xb4(6)
    srwi 4, 4, 9
    oris 4, 4, 0x3f80
    stw 4, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    addi 4, 4, 0xa
    sth 4, 0xe8(31)
    lwz 4, 0xc(31)
    sth 0, 0x22(4)
    .4byte 0x48000008 # b .L_804318EC
L_804318E8:
    li 3, 0x0
L_804318EC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80431900:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    mr 29, 5
    stw 28, 0x10(1)
    mr 28, 4
    lbz 0, 0xec(3)
    cmplwi 0, 0x0
    .4byte 0x40820144 # bne .L_80431A78
    lwz 3, 0x8(30)
    lis 4, 0x7774
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 4, 3
    mr 3, 30
    mr 5, 28
    mr 6, 29
    bl fn_8042EF9C
    cmplwi 31, 0x0
    .4byte 0x41820060 # beq .L_804319D4
    lwz 3, 0x8(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x8(30)
    addi 5, 4, 0x7763
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x4800005C # b .L_80431A2C
L_804319D4:
    lwz 3, 0x8(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x8(30)
    addi 5, 4, 0x7763
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80431A2C:
    lwz 3, 0xc(30)
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    .4byte 0xC0420B5C # lfs f2, lbl_80543AFC@sda21(r0)
    bl fn_80402E08
    lwz 4, 0xc(30)
    li 5, 0x0
    li 0, 0x1
    mr 3, 30
    sth 5, 0x22(4)
    sth 5, 0xe8(30)
    stb 5, 0xeb(30)
    stb 0, 0xec(30)
    bl fn_8042F6DC
    cmplwi 31, 0x0
    .4byte 0x4182000C # beq .L_80431A70
    lbz 0, 0xea(30)
    stb 0, 0x0(31)
L_80431A70:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80431A7C
L_80431A78:
    li 3, 0x0
L_80431A7C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80431A9C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    mr 29, 5
    stw 28, 0x10(1)
    mr 28, 4
    lbz 0, 0xec(3)
    cmplwi 0, 0x0
    .4byte 0x40820144 # bne .L_80431C14
    lwz 3, 0x8(30)
    lis 4, 0x7774
    addi 6, 4, 0x3031
    li 5, 0x54
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_8009F0D0
    mr 4, 3
    mr 3, 30
    mr 5, 28
    mr 6, 29
    bl fn_8042EF9C
    cmplwi 31, 0x0
    .4byte 0x41820060 # beq .L_80431B70
    lwz 3, 0x8(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x8(30)
    addi 5, 4, 0x7763
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x1
    stb 0, 0xb0(3)
    .4byte 0x4800005C # b .L_80431BC8
L_80431B70:
    lwz 3, 0x8(30)
    lis 5, 0x7572
    lis 4, 0x50
    lwz 12, 0x0(3)
    addi 6, 5, 0x3031
    addi 5, 4, 0x7763
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7572
    stb 0, 0xb0(3)
    lis 4, 0x50
    addi 6, 5, 0x3032
    lwz 3, 0x8(30)
    addi 5, 4, 0x7763
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stb 0, 0xb0(3)
L_80431BC8:
    lwz 3, 0xc(30)
    .4byte 0xC0220B58 # lfs f1, lbl_80543AF8@sda21(r0)
    .4byte 0xC0420B5C # lfs f2, lbl_80543AFC@sda21(r0)
    bl fn_80402E08
    lwz 4, 0xc(30)
    li 5, 0x0
    li 0, 0x1
    mr 3, 30
    sth 5, 0x22(4)
    sth 5, 0xe8(30)
    stb 5, 0xeb(30)
    stb 0, 0xec(30)
    bl fn_8042F6DC
    cmplwi 31, 0x0
    .4byte 0x4182000C # beq .L_80431C0C
    lbz 0, 0xea(30)
    stb 0, 0x0(31)
L_80431C0C:
    li 3, 0x1
    .4byte 0x48000008 # b .L_80431C18
L_80431C14:
    li 3, 0x0
L_80431C18:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

