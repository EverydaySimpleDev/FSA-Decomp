# fn_803AEF08 - helper (0x2a8) - reads the 804AF888/8CC data tables
.section extab, "a"
.balign 4
.global etb_8000F474
etb_8000F474:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_8000F474, 8

.section extabindex, "a"
.balign 4
.global eti_8001F1C8
eti_8001F1C8:
    .4byte fn_803AEF08
    .4byte 0x000002A8
    .4byte etb_8000F474
.size eti_8001F1C8, 12

.text
.balign 4
.global fn_803AEF08

fn_803AEF08:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stmw 27, 0x2c(1)
    mr 30, 3
    li 31, 0x0
    lbz 0, 0x4c8(3)
    cmplwi 0, 0xff
    .4byte 0x4182021C # beq .L_803AF154
    lbz 4, 0x4c4(30)
    lis 3, lbl_804AF8CC@ha
    addi 3, 3, lbl_804AF8CC@l
    slwi 0, 4, 2
    lwzx 3, 3, 0
    cmpwi 3, -0x1
    .4byte 0x41820024 # beq .L_803AEF78
    lbz 0, 0x4c6(30)
    cmpw 0, 3
    .4byte 0x4180000C # blt .L_803AEF6C
    addi 0, 4, 0x1
    stb 0, 0x4c4(30)
L_803AEF6C:
    lbz 3, 0x4c6(30)
    addi 0, 3, 0x1
    stb 0, 0x4c6(30)
L_803AEF78:
    lis 3, lbl_804AF888@ha
    mr 8, 30
    addi 6, 3, lbl_804AF888@l
    li 7, 0x0
    li 5, 0x3e
    .4byte 0x48000040 # b .L_803AEFCC
L_803AEF90:
    lbz 0, 0x4c4(30)
    slwi 0, 0, 2
    lwzx 3, 6, 0
    cmpwi 3, -0x1
    .4byte 0x4082000C # bne .L_803AEFAC
    stw 5, 0x3c0(8)
    .4byte 0x4800001C # b .L_803AEFC4
L_803AEFAC:
    addi 0, 7, 0x4ac
    addi 4, 3, 0xdb
    lbzx 0, 30, 0
    slwi 3, 0, 2
    addi 0, 3, 0x3c0
    stwx 4, 30, 0
L_803AEFC4:
    addi 8, 8, 0x4
    addi 7, 7, 0x1
L_803AEFCC:
    lbz 3, 0x4c8(30)
    addi 0, 3, 0x1
    cmpw 7, 0
    .4byte 0x4180FFB8 # blt .L_803AEF90
    lbz 0, 0x4c4(30)
    lis 3, lbl_804AF8CC@ha
    addi 3, 3, lbl_804AF8CC@l
    slwi 0, 0, 2
    lwzx 0, 3, 0
    cmpwi 0, -0x1
    .4byte 0x40820134 # bne .L_803AF128
    lis 3, 0x2
    .4byte 0xC3C20474 # lfs f30, lbl_80543414@sda21(r0)
    .4byte 0xC3E20478 # lfs f31, lbl_80543418@sda21(r0)
    addi 29, 3, 0xe
    li 28, 0x0
    .4byte 0x48000104 # b .L_803AF110
L_803AF010:
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
L_803AF110:
    lbz 3, 0x4c8(30)
    addi 0, 3, 0x1
    cmpw 28, 0
    .4byte 0x4180FEF4 # blt .L_803AF010
    li 0, 0x1
    .4byte 0x48000008 # b .L_803AF12C
L_803AF128:
    li 0, 0x0
L_803AF12C:
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_803AF138
    li 31, 0x1
L_803AF138:
    cmpwi 31, 0x0
    .4byte 0x41820050 # beq .L_803AF18C
    li 3, 0xff
    li 0, 0xf
    stb 3, 0x4c8(30)
    stb 0, 0x4c1(30)
    .4byte 0x4800003C # b .L_803AF18C
L_803AF154:
    lwz 3, 0x440(30)
    subi 0, 3, 0x1
    stw 0, 0x440(30)
    lwz 0, 0x440(30)
    cmpwi 0, 0x0
    .4byte 0x40820024 # bne .L_803AF18C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x2d
    li 5, -0x1
    bl fn_80458880
    li 3, 0x96
    li 0, 0xf
    stw 3, 0x440(30)
    stb 0, 0x4c1(30)
L_803AF18C:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lmw 27, 0x2c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

