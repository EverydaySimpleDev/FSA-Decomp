# fn_8039A638 - helper (0x698) - string formatting (strcat x14 + strlen)
.section extab, "a"
.balign 4
.global etb_8000F1C4
etb_8000F1C4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000F1C4, 8

.section extabindex, "a"
.balign 4
.global eti_8001EEF8
eti_8001EEF8:
    .4byte fn_8039A638
    .4byte 0x00000698
    .4byte etb_8000F1C4
.size eti_8001EEF8, 12

.text
.balign 4
.global fn_8039A638

fn_8039A638:
    stwu 1, -0x30(1)
    mflr 0
    lis 5, lbl_8050EC80@ha
    extsh. 4, 4
    stw 0, 0x34(1)
    addi 5, 5, lbl_8050EC80@l
    li 0, 0x0
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    lwz 4, 0x10(5)
    stb 0, 0xa(1)
    mulli 3, 4, 0xc8
    stb 0, 0x9(1)
    add 3, 5, 3
    stb 0, 0x8(1)
    lbz 29, 0x79(3)
    lbz 30, 0x78(3)
    .4byte 0x40820374 # bne .L_8039A9F8
    lbz 3, 0x2d6(31)
    cmplwi 3, 0x0
    .4byte 0x418201EC # beq .L_8039A87C
    lwz 4, 0x2cc(31)
    cmpwi 4, 0x20
    .4byte 0x40800038 # bge .L_8039A6D4
    li 7, 0x1
    lwz 6, 0x74(31)
    slw 5, 7, 4
    srawi 3, 5, 31
    and 5, 6, 5
    and 3, 0, 3
    xor 5, 5, 0
    xor 3, 3, 0
    or. 3, 5, 3
    .4byte 0x41820008 # beq .L_8039A6CC
    .4byte 0x48000050 # b .L_8039A718
L_8039A6CC:
    mr 7, 0
    .4byte 0x48000048 # b .L_8039A718
L_8039A6D4:
    cmpwi 4, 0x40
    .4byte 0x4080003C # bge .L_8039A714
    subi 3, 4, 0x20
    li 7, 0x1
    slw 5, 7, 3
    lwz 6, 0x78(31)
    srawi 3, 5, 31
    and 5, 6, 5
    and 3, 0, 3
    xor 5, 5, 0
    xor 3, 3, 0
    or. 3, 5, 3
    .4byte 0x41820008 # beq .L_8039A70C
    .4byte 0x48000010 # b .L_8039A718
L_8039A70C:
    mr 7, 0
    .4byte 0x48000008 # b .L_8039A718
L_8039A714:
    mr 7, 0
L_8039A718:
    cmpwi 7, 0x0
    .4byte 0x40820158 # bne .L_8039A874
    lwz 3, 0x2d8(31)
    lwz 0, 0x16c(3)
    cmpwi 0, 0x0
    .4byte 0x41820094 # beq .L_8039A7C0
    cmpwi 4, 0x20
    .4byte 0x4080003C # bge .L_8039A770
    li 8, 0x1
    lwz 7, 0x74(31)
    slw 5, 8, 4
    li 6, 0x0
    srawi 0, 5, 31
    and 5, 7, 5
    and 0, 6, 0
    xor 5, 5, 6
    xor 0, 0, 6
    or. 0, 5, 0
    .4byte 0x41820008 # beq .L_8039A768
    .4byte 0x48000054 # b .L_8039A7B8
L_8039A768:
    mr 8, 6
    .4byte 0x4800004C # b .L_8039A7B8
L_8039A770:
    cmpwi 4, 0x40
    .4byte 0x40800040 # bge .L_8039A7B4
    subi 0, 4, 0x20
    li 8, 0x1
    slw 5, 8, 0
    lwz 7, 0x78(31)
    srawi 0, 5, 31
    li 6, 0x0
    and 5, 7, 5
    and 0, 6, 0
    xor 5, 5, 6
    xor 0, 0, 6
    or. 0, 5, 0
    .4byte 0x41820008 # beq .L_8039A7AC
    .4byte 0x48000010 # b .L_8039A7B8
L_8039A7AC:
    mr 8, 6
    .4byte 0x48000008 # b .L_8039A7B8
L_8039A7B4:
    li 8, 0x0
L_8039A7B8:
    cmpwi 8, 0x0
    .4byte 0x408200B8 # bne .L_8039A874
L_8039A7C0:
    lwz 5, 0x3b8(3)
    lhz 0, 0x28(5)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820018 # bne .L_8039A7E4
    slwi 0, 4, 2
    lfs 3, 0xe8(3)
    add 3, 31, 0
    lfs 0, 0x84(3)
    .4byte 0x48000024 # b .L_8039A804
L_8039A7E4:
    slwi 0, 4, 2
    .4byte 0xC0220248 # lfs f1, lbl_805431E8@sda21(r0)
    add 4, 31, 0
    lfs 3, 0xf0(3)
    lfs 2, 0x12c(4)
    lfs 0, 0x84(4)
    fsubs 1, 2, 1
    fadds 0, 0, 1
L_8039A804:
    fsubs 1, 3, 0
    .4byte 0xC0020244 # lfs f0, lbl_805431E4@sda21(r0)
    fmadds 0, 1, 0, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 6, 0x14(1)
    cmpwi 6, 0x0
    .4byte 0x40810054 # ble .L_8039A874
    lis 3, lbl_8050E548@ha
    li 4, 0xf
    addi 3, 3, lbl_8050E548@l
    .4byte 0x38A202F8 # li r5, lbl_80543298@sda21
    crclr 6
    bl fn_8006B414
    lis 4, lbl_8050E548@ha
    lwz 3, 0x2c0(31)
    addi 4, 4, lbl_8050E548@l
    bl strcat
    lis 4, lbl_8050E548@ha
    lwz 3, 0x2c4(31)
    addi 4, 4, lbl_8050E548@l
    bl strcat
    lis 3, lbl_8050E548@ha
    addi 3, 3, lbl_8050E548@l
    bl strlen
    lwz 0, 0x2d0(31)
    add 0, 0, 3
    stw 0, 0x2d0(31)
L_8039A874:
    li 0, 0x0
    stb 0, 0x2d6(31)
L_8039A87C:
    cmpwi 29, 0x63
    .4byte 0x40810008 # ble .L_8039A888
    li 29, 0x63
L_8039A888:
    lis 3, 0x6666
    addi 0, 3, 0x6667
    mulhw 0, 0, 29
    srawi 4, 0, 2
    srawi 0, 0, 2
    srwi 3, 0, 31
    srwi 5, 4, 31
    add 0, 0, 3
    mulli 0, 0, 0xa
    add. 3, 4, 5
    subf 29, 0, 29
    .4byte 0x40810030 # ble .L_8039A8E4
    addi 0, 3, 0x30
    addi 4, 1, 0x8
    stb 0, 0x8(1)
    lwz 3, 0x2c0(31)
    bl strcat
    lwz 3, 0x2c4(31)
    addi 4, 1, 0x8
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
L_8039A8E4:
    addi 0, 29, 0x30
    addi 4, 1, 0x8
    stb 0, 0x8(1)
    lwz 3, 0x2c0(31)
    bl strcat
    lwz 3, 0x2c4(31)
    addi 4, 1, 0x8
    bl strcat
    lwz 3, 0x2d0(31)
    .4byte 0x38820300 # li r4, lbl_805432A0@sda21
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    lwz 3, 0x2c0(31)
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x38820300 # li r4, lbl_805432A0@sda21
    bl strcat
    lwz 3, 0x2d0(31)
    cmpwi 30, 0x63
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    .4byte 0x40810008 # ble .L_8039A940
    li 30, 0x63
L_8039A940:
    lis 3, 0x6666
    addi 4, 1, 0x8
    addi 0, 3, 0x6667
    mulhw 0, 0, 30
    srawi 0, 0, 2
    srwi 3, 0, 31
    add 3, 0, 3
    addi 0, 3, 0x30
    stb 0, 0x8(1)
    lwz 3, 0x2c0(31)
    bl strcat
    lwz 3, 0x2c4(31)
    addi 4, 1, 0x8
    bl strcat
    lis 3, 0x6666
    lwz 5, 0x2d0(31)
    addi 0, 3, 0x6667
    addi 4, 1, 0x8
    mulhw 0, 0, 30
    addi 3, 5, 0x1
    stw 3, 0x2d0(31)
    srawi 0, 0, 2
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0xa
    subf 3, 0, 30
    addi 0, 3, 0x30
    stb 0, 0x8(1)
    lwz 3, 0x2c0(31)
    bl strcat
    lwz 3, 0x2c4(31)
    addi 4, 1, 0x8
    bl strcat
    lwz 3, 0x2d0(31)
    .4byte 0x38820304 # li r4, lbl_805432A4@sda21
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    lwz 3, 0x2c0(31)
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x38820304 # li r4, lbl_805432A4@sda21
    bl strcat
    lwz 3, 0x2d0(31)
    addi 0, 3, 0x2
    stw 0, 0x2d0(31)
    .4byte 0x480002C0 # b .L_8039ACB4
L_8039A9F8:
    cmpwi 29, 0x63
    .4byte 0x40810008 # ble .L_8039AA04
    li 29, 0x63
L_8039AA04:
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
    subf 7, 0, 29
    .4byte 0x40810080 # ble .L_8039AAB0
    addi 0, 4, 0x30
    lis 3, lbl_80475830@ha
    addi 3, 3, lbl_80475830@l
    li 4, 0x0
    clrlwi 0, 0, 16
    .4byte 0x4800002C # b .L_8039AA74
L_8039AA4C:
    cmplw 0, 5
    .4byte 0x4082001C # bne .L_8039AA6C
    lis 3, lbl_80475830@ha
    slwi 0, 4, 2
    addi 3, 3, lbl_80475830@l
    add 3, 3, 0
    lhz 6, 0x2(3)
    .4byte 0x4800001C # b .L_8039AA84
L_8039AA6C:
    addi 3, 3, 0x4
    addi 4, 4, 0x1
L_8039AA74:
    lhz 5, 0x0(3)
    cmplwi 5, 0xffff
    .4byte 0x4082FFD0 # bne .L_8039AA4C
    li 6, 0x1420
L_8039AA84:
    lwz 3, 0x2d0(31)
    extrwi 5, 6, 8, 16
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
L_8039AAB0:
    lis 3, lbl_80475830@ha
    addi 0, 7, 0x30
    addi 3, 3, lbl_80475830@l
    li 5, 0x0
    clrlwi 0, 0, 16
    mr 4, 3
    .4byte 0x4800002C # b .L_8039AAF4
L_8039AACC:
    cmplw 0, 6
    .4byte 0x4082001C # bne .L_8039AAEC
    lis 4, lbl_80475830@ha
    slwi 0, 5, 2
    addi 4, 4, lbl_80475830@l
    add 4, 4, 0
    lhz 9, 0x2(4)
    .4byte 0x4800001C # b .L_8039AB04
L_8039AAEC:
    addi 4, 4, 0x4
    addi 5, 5, 0x1
L_8039AAF4:
    lhz 6, 0x0(4)
    cmplwi 6, 0xffff
    .4byte 0x4082FFD0 # bne .L_8039AACC
    li 9, 0x1420
L_8039AB04:
    lwz 4, 0x2d0(31)
    extrwi 8, 9, 8, 16
    lwz 5, 0x2c0(31)
    li 7, 0x39
    addi 0, 4, 0x1
    cmpwi 30, 0x63
    stw 0, 0x2d0(31)
    li 6, -0x20
    stbx 8, 5, 4
    lwz 4, 0x2d0(31)
    lwz 5, 0x2c0(31)
    addi 0, 4, 0x1
    stw 0, 0x2d0(31)
    stbx 9, 5, 4
    lwz 4, 0x2d0(31)
    lwz 5, 0x2c0(31)
    addi 0, 4, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 5, 4
    lwz 4, 0x2d0(31)
    lwz 5, 0x2c0(31)
    addi 0, 4, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 5, 4
    .4byte 0x40810008 # ble .L_8039AB6C
    li 30, 0x63
L_8039AB6C:
    lis 4, 0x6666
    mr 7, 3
    addi 0, 4, 0x6667
    li 6, 0x0
    mulhw 0, 0, 30
    srawi 4, 0, 2
    srwi 5, 4, 31
    srawi 0, 0, 2
    add 4, 4, 5
    mulli 5, 4, 0xa
    srwi 4, 0, 31
    add 4, 0, 4
    addi 0, 4, 0x30
    subf 8, 5, 30
    clrlwi 0, 0, 16
    .4byte 0x4800002C # b .L_8039ABD4
L_8039ABAC:
    cmplw 0, 4
    .4byte 0x4082001C # bne .L_8039ABCC
    lis 4, lbl_80475830@ha
    slwi 0, 6, 2
    addi 4, 4, lbl_80475830@l
    add 4, 4, 0
    lhz 7, 0x2(4)
    .4byte 0x4800001C # b .L_8039ABE4
L_8039ABCC:
    addi 7, 7, 0x4
    addi 6, 6, 0x1
L_8039ABD4:
    lhz 4, 0x0(7)
    cmplwi 4, 0xffff
    .4byte 0x4082FFD0 # bne .L_8039ABAC
    li 7, 0x1420
L_8039ABE4:
    lwz 4, 0x2d0(31)
    extrwi 6, 7, 8, 16
    lwz 5, 0x2c0(31)
    addi 8, 8, 0x30
    addi 0, 4, 0x1
    stw 0, 0x2d0(31)
    clrlwi 0, 8, 16
    li 8, 0x0
    stbx 6, 5, 4
    lwz 5, 0x2d0(31)
    lwz 6, 0x2c0(31)
    addi 4, 5, 0x1
    stw 4, 0x2d0(31)
    stbx 7, 6, 5
    .4byte 0x4800002C # b .L_8039AC48
L_8039AC20:
    cmplw 0, 4
    .4byte 0x4082001C # bne .L_8039AC40
    lis 3, lbl_80475830@ha
    slwi 0, 8, 2
    addi 3, 3, lbl_80475830@l
    add 3, 3, 0
    lhz 8, 0x2(3)
    .4byte 0x4800001C # b .L_8039AC58
L_8039AC40:
    addi 3, 3, 0x4
    addi 8, 8, 0x1
L_8039AC48:
    lhz 4, 0x0(3)
    cmplwi 4, 0xffff
    .4byte 0x4082FFD0 # bne .L_8039AC20
    li 8, 0x1420
L_8039AC58:
    lwz 3, 0x2d0(31)
    extrwi 7, 8, 8, 16
    lwz 4, 0x2c0(31)
    li 6, 0x3c
    addi 0, 3, 0x1
    li 5, -0x60
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 8, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039ACB4:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

