# fn_803AC154 - helper (0x5a8) - reads both nearby data tables (804AF888/8CC)
.section extab, "a"
.balign 4
.global etb_8000F40C
etb_8000F40C:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_8000F40C, 8

.section extabindex, "a"
.balign 4
.global eti_8001F12C
eti_8001F12C:
    .4byte fn_803AC154
    .4byte 0x000005A8
    .4byte etb_8000F40C
.size eti_8001F12C, 12

.text
.balign 4
.global fn_803AC154

fn_803AC154:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 27, 0x3c(1)
    mr 30, 3
    li 31, 0x0
    lbz 0, 0x4c8(3)
    cmplwi 0, 0xff
    .4byte 0x41820200 # beq .L_803AC384
    lbz 4, 0x4c4(30)
    lis 3, lbl_804AF8CC@ha
    addi 3, 3, lbl_804AF8CC@l
    slwi 0, 4, 2
    lwzx 3, 3, 0
    cmpwi 3, -0x1
    .4byte 0x41820024 # beq .L_803AC1C4
    lbz 0, 0x4c6(30)
    cmpw 0, 3
    .4byte 0x4180000C # blt .L_803AC1B8
    addi 0, 4, 0x1
    stb 0, 0x4c4(30)
L_803AC1B8:
    lbz 3, 0x4c6(30)
    addi 0, 3, 0x1
    stb 0, 0x4c6(30)
L_803AC1C4:
    lis 3, lbl_804AF888@ha
    mr 8, 30
    addi 6, 3, lbl_804AF888@l
    li 7, 0x0
    li 5, 0x3e
    .4byte 0x48000040 # b .L_803AC218
L_803AC1DC:
    lbz 0, 0x4c4(30)
    slwi 0, 0, 2
    lwzx 3, 6, 0
    cmpwi 3, -0x1
    .4byte 0x4082000C # bne .L_803AC1F8
    stw 5, 0x3c0(8)
    .4byte 0x4800001C # b .L_803AC210
L_803AC1F8:
    addi 0, 7, 0x4ac
    addi 4, 3, 0xdb
    lbzx 0, 30, 0
    slwi 3, 0, 2
    addi 0, 3, 0x3c0
    stwx 4, 30, 0
L_803AC210:
    addi 8, 8, 0x4
    addi 7, 7, 0x1
L_803AC218:
    lbz 3, 0x4c8(30)
    addi 0, 3, 0x1
    cmpw 7, 0
    .4byte 0x4180FFB8 # blt .L_803AC1DC
    lbz 0, 0x4c4(30)
    lis 3, lbl_804AF8CC@ha
    addi 3, 3, lbl_804AF8CC@l
    slwi 0, 0, 2
    lwzx 0, 3, 0
    cmpwi 0, -0x1
    .4byte 0x40820134 # bne .L_803AC374
    lis 3, 0x2
    .4byte 0xC3C20474 # lfs f30, lbl_80543414@sda21(r0)
    .4byte 0xC3E20478 # lfs f31, lbl_80543418@sda21(r0)
    addi 29, 3, 0xe
    li 28, 0x0
    .4byte 0x48000104 # b .L_803AC35C
L_803AC25C:
    addi 27, 28, 0x4ac
    .4byte 0xC0220434 # lfs f1, lbl_805433D4@sda21(r0)
    lbzx 0, 30, 27
    addi 4, 1, 0xc
    li 3, 0x0
    li 5, 0xcb
    mulli 0, 0, 0xc
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    add 11, 30, 0
    li 9, 0x0
    lfs 2, 0x2f4(11)
    li 10, 0x1
    lfs 0, 0x2f0(11)
    fsubs 2, 2, 30
    lfs 3, 0x2f8(11)
    fadds 0, 31, 0
    stfs 3, 0x14(1)
    stfs 0, 0xc(1)
    stfs 2, 0x10(1)
    bl fn_8013CC50
    lbzx 0, 30, 27
    addi 4, 1, 0x18
    .4byte 0xC0220434 # lfs f1, lbl_805433D4@sda21(r0)
    li 3, 0x0
    mulli 0, 0, 0xc
    li 5, 0xcc
    li 6, 0x1
    li 7, 0x0
    add 11, 30, 0
    li 8, 0x0
    lfs 2, 0x2f4(11)
    li 9, 0x0
    lfs 0, 0x2f0(11)
    li 10, 0x1
    fsubs 2, 2, 30
    lfs 3, 0x2f8(11)
    fadds 0, 31, 0
    stfs 3, 0x20(1)
    stfs 0, 0x18(1)
    stfs 2, 0x1c(1)
    bl fn_8013CC50
    lbzx 0, 30, 27
    addi 4, 1, 0x8
    mulli 3, 0, 0xc
    addi 3, 3, 0x2f0
    add 3, 30, 3
    lfs 0, 0x0(3)
    stfs 0, 0x244(30)
    lfs 0, 0x4(3)
    stfs 0, 0x248(30)
    lfs 0, 0x8(3)
    stfs 0, 0x24c(30)
    stw 29, 0x8(1)
    lbzx 0, 30, 27
    slwi 3, 0, 2
    addi 0, 3, 0x174
    lwzx 3, 30, 0
    lwz 12, 0x8(3)
    lwz 12, 0x14(12)
    mtctr 12
    bctrl
    addi 28, 28, 0x1
L_803AC35C:
    lbz 3, 0x4c8(30)
    addi 0, 3, 0x1
    cmpw 28, 0
    .4byte 0x4180FEF4 # blt .L_803AC25C
    li 0, 0x1
    .4byte 0x48000008 # b .L_803AC378
L_803AC374:
    li 0, 0x0
L_803AC378:
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_803AC384
    li 31, 0x1
L_803AC384:
    lbz 0, 0x4c8(30)
    cmplwi 0, 0xff
    .4byte 0x4182000C # beq .L_803AC398
    cmpwi 31, 0x0
    .4byte 0x41820344 # beq .L_803AC6D8
L_803AC398:
    li 3, 0xff
    li 0, 0x0
    stb 3, 0x4c8(30)
    li 5, 0x0
    lwz 3, 0x454(30)
    cmpwi 3, 0x0
    .4byte 0x408102A8 # ble .L_803AC658
    cmpwi 3, 0x8
    subi 7, 3, 0x8
    .4byte 0x40810230 # ble .L_803AC5EC
    addi 6, 7, 0x7
    mr 3, 30
    srwi 6, 6, 3
    addi 4, 1, 0x24
    mtctr 6
    cmpwi 7, 0x0
    .4byte 0x40810214 # ble .L_803AC5EC
L_803AC3DC:
    lwz 7, 0x350(3)
    lwz 6, 0x340(3)
    lwz 8, 0x360(3)
    add 6, 6, 7
    lwz 9, 0x370(3)
    add 6, 6, 8
    lwz 7, 0x320(3)
    add 6, 6, 9
    lwz 8, 0x380(3)
    add 6, 7, 6
    lwz 9, 0x3b0(3)
    subf 6, 8, 6
    lwz 7, 0x3a0(3)
    add 6, 6, 9
    add 6, 7, 6
    stw 6, 0x0(4)
    lwz 7, 0x354(3)
    lwz 6, 0x344(3)
    lwz 8, 0x364(3)
    add 6, 6, 7
    lwz 9, 0x374(3)
    add 6, 6, 8
    lwz 7, 0x324(3)
    add 6, 6, 9
    lwz 8, 0x384(3)
    add 6, 7, 6
    lwz 9, 0x3b4(3)
    subf 6, 8, 6
    lwz 7, 0x3a4(3)
    add 6, 6, 9
    add 6, 7, 6
    stw 6, 0x4(4)
    lwz 7, 0x358(3)
    lwz 6, 0x348(3)
    lwz 8, 0x368(3)
    add 6, 6, 7
    lwz 9, 0x378(3)
    add 6, 6, 8
    lwz 7, 0x328(3)
    add 6, 6, 9
    lwz 8, 0x388(3)
    add 6, 7, 6
    lwz 9, 0x3b8(3)
    subf 6, 8, 6
    lwz 7, 0x3a8(3)
    add 6, 6, 9
    add 6, 7, 6
    stw 6, 0x8(4)
    lwz 7, 0x35c(3)
    lwz 6, 0x34c(3)
    lwz 8, 0x36c(3)
    add 6, 6, 7
    lwz 9, 0x37c(3)
    add 6, 6, 8
    lwz 7, 0x32c(3)
    add 6, 6, 9
    lwz 8, 0x38c(3)
    add 6, 7, 6
    lwz 9, 0x3bc(3)
    subf 6, 8, 6
    lwz 7, 0x3ac(3)
    add 6, 6, 9
    add 6, 7, 6
    stw 6, 0xc(4)
    lwz 7, 0x360(3)
    lwz 6, 0x350(3)
    lwz 8, 0x370(3)
    add 6, 6, 7
    lwz 9, 0x380(3)
    add 6, 6, 8
    lwz 7, 0x330(3)
    add 6, 6, 9
    lwz 8, 0x390(3)
    add 6, 7, 6
    lwz 9, 0x3c0(3)
    subf 6, 8, 6
    lwz 7, 0x3b0(3)
    add 6, 6, 9
    add 6, 7, 6
    stw 6, 0x10(4)
    lwz 7, 0x364(3)
    lwz 6, 0x354(3)
    lwz 8, 0x374(3)
    add 6, 6, 7
    lwz 9, 0x384(3)
    add 6, 6, 8
    lwz 7, 0x334(3)
    add 6, 6, 9
    lwz 8, 0x394(3)
    add 6, 7, 6
    lwz 9, 0x3c4(3)
    subf 6, 8, 6
    lwz 7, 0x3b4(3)
    add 6, 6, 9
    add 6, 7, 6
    stw 6, 0x14(4)
    lwz 7, 0x368(3)
    lwz 6, 0x358(3)
    lwz 8, 0x378(3)
    add 6, 6, 7
    lwz 9, 0x388(3)
    add 6, 6, 8
    lwz 7, 0x338(3)
    add 6, 6, 9
    lwz 8, 0x398(3)
    add 6, 7, 6
    lwz 9, 0x3c8(3)
    subf 6, 8, 6
    lwz 7, 0x3b8(3)
    add 6, 6, 9
    add 6, 7, 6
    stw 6, 0x18(4)
    lwz 7, 0x36c(3)
    addi 5, 5, 0x8
    lwz 6, 0x35c(3)
    lwz 8, 0x37c(3)
    add 6, 6, 7
    lwz 9, 0x38c(3)
    add 6, 6, 8
    lwz 7, 0x33c(3)
    add 6, 6, 9
    lwz 8, 0x39c(3)
    add 6, 7, 6
    lwz 9, 0x3cc(3)
    subf 6, 8, 6
    lwz 7, 0x3bc(3)
    add 6, 6, 9
    addi 3, 3, 0x20
    add 6, 7, 6
    stw 6, 0x1c(4)
    addi 4, 4, 0x20
    .4byte 0x4200FDF4 # bdnz .L_803AC3DC
L_803AC5EC:
    slwi 3, 5, 2
    addi 9, 1, 0x24
    add 8, 30, 3
    add 9, 9, 3
    .4byte 0x48000050 # b .L_803AC64C
L_803AC600:
    lwz 4, 0x350(8)
    addi 5, 5, 0x1
    lwz 3, 0x340(8)
    lwz 6, 0x360(8)
    add 3, 3, 4
    lwz 7, 0x370(8)
    add 3, 3, 6
    lwz 4, 0x320(8)
    add 3, 3, 7
    lwz 6, 0x380(8)
    add 3, 4, 3
    lwz 7, 0x3b0(8)
    subf 3, 6, 3
    lwz 4, 0x3a0(8)
    add 3, 3, 7
    addi 8, 8, 0x4
    add 3, 4, 3
    stw 3, 0x0(9)
    addi 9, 9, 0x4
L_803AC64C:
    lwz 3, 0x454(30)
    cmpw 5, 3
    .4byte 0x4180FFAC # blt .L_803AC600
L_803AC658:
    addi 4, 1, 0x24
    li 6, 0x0
    .4byte 0x4800005C # b .L_803AC6BC
L_803AC664:
    lwz 5, 0x0(4)
    cmpw 0, 5
    .4byte 0x40800020 # bge .L_803AC68C
    li 3, 0x0
    mr 0, 5
    stb 3, 0x4c8(30)
    lbz 3, 0x4c8(30)
    addi 3, 3, 0x4ac
    stbx 6, 30, 3
    .4byte 0x4800002C # b .L_803AC6B4
L_803AC68C:
    cmpwi 0, 0x0
    .4byte 0x40810024 # ble .L_803AC6B4
    cmpw 0, 5
    .4byte 0x4082001C # bne .L_803AC6B4
    lbz 3, 0x4c8(30)
    addi 3, 3, 0x1
    stb 3, 0x4c8(30)
    lbz 3, 0x4c8(30)
    addi 3, 3, 0x4ac
    stbx 6, 30, 3
L_803AC6B4:
    addi 4, 4, 0x4
    addi 6, 6, 0x1
L_803AC6BC:
    lwz 3, 0x454(30)
    cmpw 6, 3
    .4byte 0x4180FFA0 # blt .L_803AC664
    li 3, 0x96
    li 0, 0x1f
    stw 3, 0x440(30)
    stb 0, 0x4c1(30)
L_803AC6D8:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 27, 0x3c(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

