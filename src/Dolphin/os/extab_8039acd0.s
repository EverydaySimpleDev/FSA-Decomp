# fn_8039ACD0 - helper (0x71c) - string formatting (strcat x14 + strlen)
.section extab, "a"
.balign 4
.global etb_8000F1CC
etb_8000F1CC:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000F1CC, 8

.section extabindex, "a"
.balign 4
.global eti_8001EF04
eti_8001EF04:
    .4byte fn_8039ACD0
    .4byte 0x0000071C
    .4byte etb_8000F1CC
.size eti_8001EF04, 12

.text
.balign 4
.global fn_8039ACD0

fn_8039ACD0:
    stwu 1, -0x30(1)
    mflr 0
    li 8, 0x0
    lis 6, 0x91a3
    stw 0, 0x34(1)
    lis 5, 0x8889
    subi 0, 6, 0x4c3b
    stw 31, 0x2c(1)
    subi 6, 5, 0x7777
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    stb 8, 0xa(1)
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    stb 8, 0x9(1)
    stb 8, 0x8(1)
    lwz 7, 0x44(7)
    mulhw 3, 0, 7
    mulhw 0, 6, 7
    add 3, 3, 7
    srawi 5, 3, 11
    add 0, 0, 7
    srwi 7, 5, 31
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 29, 5, 7
    add 5, 0, 3
    mulhw 0, 6, 5
    add 0, 0, 5
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x3c
    subf. 3, 0, 5
    .4byte 0x40820008 # bne .L_8039AD64
    li 3, 0x1
L_8039AD64:
    extsh. 0, 4
    mr 30, 3
    .4byte 0x40820388 # bne .L_8039B0F4
    lbz 0, 0x2d6(31)
    cmplwi 0, 0x0
    .4byte 0x418201F4 # beq .L_8039AF6C
    lwz 4, 0x2cc(31)
    cmpwi 4, 0x20
    .4byte 0x4080003C # bge .L_8039ADC0
    li 7, 0x1
    lwz 6, 0x74(31)
    slw 3, 7, 4
    li 5, 0x0
    srawi 0, 3, 31
    and 3, 6, 3
    and 0, 5, 0
    xor 3, 3, 5
    xor 0, 0, 5
    or. 0, 3, 0
    .4byte 0x41820008 # beq .L_8039ADB8
    .4byte 0x48000054 # b .L_8039AE08
L_8039ADB8:
    mr 7, 5
    .4byte 0x4800004C # b .L_8039AE08
L_8039ADC0:
    cmpwi 4, 0x40
    .4byte 0x40800040 # bge .L_8039AE04
    subi 0, 4, 0x20
    li 7, 0x1
    slw 3, 7, 0
    lwz 6, 0x78(31)
    srawi 0, 3, 31
    li 5, 0x0
    and 3, 6, 3
    and 0, 5, 0
    xor 3, 3, 5
    xor 0, 0, 5
    or. 0, 3, 0
    .4byte 0x41820008 # beq .L_8039ADFC
    .4byte 0x48000010 # b .L_8039AE08
L_8039ADFC:
    mr 7, 5
    .4byte 0x48000008 # b .L_8039AE08
L_8039AE04:
    li 7, 0x0
L_8039AE08:
    cmpwi 7, 0x0
    .4byte 0x40820158 # bne .L_8039AF64
    lwz 3, 0x2d8(31)
    lwz 0, 0x16c(3)
    cmpwi 0, 0x0
    .4byte 0x41820094 # beq .L_8039AEB0
    cmpwi 4, 0x20
    .4byte 0x4080003C # bge .L_8039AE60
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
    .4byte 0x41820008 # beq .L_8039AE58
    .4byte 0x48000054 # b .L_8039AEA8
L_8039AE58:
    mr 8, 6
    .4byte 0x4800004C # b .L_8039AEA8
L_8039AE60:
    cmpwi 4, 0x40
    .4byte 0x40800040 # bge .L_8039AEA4
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
    .4byte 0x41820008 # beq .L_8039AE9C
    .4byte 0x48000010 # b .L_8039AEA8
L_8039AE9C:
    mr 8, 6
    .4byte 0x48000008 # b .L_8039AEA8
L_8039AEA4:
    li 8, 0x0
L_8039AEA8:
    cmpwi 8, 0x0
    .4byte 0x408200B8 # bne .L_8039AF64
L_8039AEB0:
    lwz 5, 0x3b8(3)
    lhz 0, 0x28(5)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820018 # bne .L_8039AED4
    slwi 0, 4, 2
    lfs 3, 0xe8(3)
    add 3, 31, 0
    lfs 0, 0x84(3)
    .4byte 0x48000024 # b .L_8039AEF4
L_8039AED4:
    slwi 0, 4, 2
    .4byte 0xC0220248 # lfs f1, lbl_805431E8@sda21(r0)
    add 4, 31, 0
    lfs 3, 0xf0(3)
    lfs 2, 0x12c(4)
    lfs 0, 0x84(4)
    fsubs 1, 2, 1
    fadds 0, 0, 1
L_8039AEF4:
    fsubs 1, 3, 0
    .4byte 0xC0020244 # lfs f0, lbl_805431E4@sda21(r0)
    fmadds 0, 1, 0, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 6, 0x14(1)
    cmpwi 6, 0x0
    .4byte 0x40810054 # ble .L_8039AF64
    lis 3, lbl_8050E538@ha
    li 4, 0xf
    addi 3, 3, lbl_8050E538@l
    .4byte 0x38A202F8 # li r5, lbl_80543298@sda21
    crclr 6
    bl fn_8006B414
    lis 4, lbl_8050E538@ha
    lwz 3, 0x2c0(31)
    addi 4, 4, lbl_8050E538@l
    bl strcat
    lis 4, lbl_8050E538@ha
    lwz 3, 0x2c4(31)
    addi 4, 4, lbl_8050E538@l
    bl strcat
    lis 3, lbl_8050E538@ha
    addi 3, 3, lbl_8050E538@l
    bl strlen
    lwz 0, 0x2d0(31)
    add 0, 0, 3
    stw 0, 0x2d0(31)
L_8039AF64:
    li 0, 0x0
    stb 0, 0x2d6(31)
L_8039AF6C:
    cmpwi 29, 0x0
    .4byte 0x408100C0 # ble .L_8039B030
    cmpwi 29, 0x63
    .4byte 0x4081000C # ble .L_8039AF84
    li 29, 0x63
    li 30, 0x3b
L_8039AF84:
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
    subf 28, 0, 29
    .4byte 0x40810030 # ble .L_8039AFE0
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
L_8039AFE0:
    addi 0, 28, 0x30
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
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
L_8039B030:
    cmpwi 30, 0x3b
    .4byte 0x40810008 # ble .L_8039B03C
    li 30, 0x3b
L_8039B03C:
    lis 3, 0x6666
    addi 0, 3, 0x6667
    mulhw 0, 0, 30
    srawi 4, 0, 2
    srawi 0, 0, 2
    srwi 3, 0, 31
    srwi 5, 4, 31
    add 0, 0, 3
    mulli 0, 0, 0xa
    add. 3, 4, 5
    subf 30, 0, 30
    .4byte 0x4181000C # bgt .L_8039B074
    cmpwi 29, 0x0
    .4byte 0x40810030 # ble .L_8039B0A0
L_8039B074:
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
L_8039B0A0:
    addi 0, 30, 0x30
    addi 4, 1, 0x8
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
    .4byte 0x480002DC # b .L_8039B3CC
L_8039B0F4:
    cmpwi 29, 0x63
    .4byte 0x4081000C # ble .L_8039B104
    li 29, 0x63
    li 30, 0x3b
L_8039B104:
    lis 3, 0x6666
    cmpwi 29, 0x0
    addi 0, 3, 0x6667
    mulhw 0, 0, 29
    srawi 4, 0, 2
    srawi 0, 0, 2
    srwi 3, 0, 31
    srwi 5, 4, 31
    add 0, 0, 3
    mulli 0, 0, 0xa
    add 4, 4, 5
    subf 7, 0, 29
    .4byte 0x40810134 # ble .L_8039B268
    cmpwi 4, 0x0
    .4byte 0x40810080 # ble .L_8039B1BC
    addi 0, 4, 0x30
    lis 3, lbl_80475830@ha
    addi 3, 3, lbl_80475830@l
    li 4, 0x0
    clrlwi 0, 0, 16
    .4byte 0x4800002C # b .L_8039B180
L_8039B158:
    cmplw 0, 5
    .4byte 0x4082001C # bne .L_8039B178
    lis 3, lbl_80475830@ha
    slwi 0, 4, 2
    addi 3, 3, lbl_80475830@l
    add 3, 3, 0
    lhz 6, 0x2(3)
    .4byte 0x4800001C # b .L_8039B190
L_8039B178:
    addi 3, 3, 0x4
    addi 4, 4, 0x1
L_8039B180:
    lhz 5, 0x0(3)
    cmplwi 5, 0xffff
    .4byte 0x4082FFD0 # bne .L_8039B158
    li 6, 0x1420
L_8039B190:
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
L_8039B1BC:
    lis 3, lbl_80475830@ha
    addi 0, 7, 0x30
    addi 3, 3, lbl_80475830@l
    li 4, 0x0
    clrlwi 0, 0, 16
    .4byte 0x4800002C # b .L_8039B1FC
L_8039B1D4:
    cmplw 0, 5
    .4byte 0x4082001C # bne .L_8039B1F4
    lis 3, lbl_80475830@ha
    slwi 0, 4, 2
    addi 3, 3, lbl_80475830@l
    add 3, 3, 0
    lhz 8, 0x2(3)
    .4byte 0x4800001C # b .L_8039B20C
L_8039B1F4:
    addi 3, 3, 0x4
    addi 4, 4, 0x1
L_8039B1FC:
    lhz 5, 0x0(3)
    cmplwi 5, 0xffff
    .4byte 0x4082FFD0 # bne .L_8039B1D4
    li 8, 0x1420
L_8039B20C:
    lwz 3, 0x2d0(31)
    extrwi 7, 8, 8, 16
    lwz 4, 0x2c0(31)
    li 6, 0x39
    addi 0, 3, 0x1
    li 5, -0x20
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
L_8039B268:
    cmpwi 30, 0x3b
    .4byte 0x40810008 # ble .L_8039B274
    li 30, 0x3b
L_8039B274:
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
    subf 7, 0, 30
    .4byte 0x40810080 # ble .L_8039B320
    addi 0, 4, 0x30
    lis 3, lbl_80475830@ha
    addi 3, 3, lbl_80475830@l
    li 4, 0x0
    clrlwi 0, 0, 16
    .4byte 0x4800002C # b .L_8039B2E4
L_8039B2BC:
    cmplw 0, 5
    .4byte 0x4082001C # bne .L_8039B2DC
    lis 3, lbl_80475830@ha
    slwi 0, 4, 2
    addi 3, 3, lbl_80475830@l
    add 3, 3, 0
    lhz 6, 0x2(3)
    .4byte 0x4800001C # b .L_8039B2F4
L_8039B2DC:
    addi 3, 3, 0x4
    addi 4, 4, 0x1
L_8039B2E4:
    lhz 5, 0x0(3)
    cmplwi 5, 0xffff
    .4byte 0x4082FFD0 # bne .L_8039B2BC
    li 6, 0x1420
L_8039B2F4:
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
L_8039B320:
    lis 3, lbl_80475830@ha
    addi 0, 7, 0x30
    addi 3, 3, lbl_80475830@l
    li 4, 0x0
    clrlwi 0, 0, 16
    .4byte 0x4800002C # b .L_8039B360
L_8039B338:
    cmplw 0, 5
    .4byte 0x4082001C # bne .L_8039B358
    lis 3, lbl_80475830@ha
    slwi 0, 4, 2
    addi 3, 3, lbl_80475830@l
    add 3, 3, 0
    lhz 8, 0x2(3)
    .4byte 0x4800001C # b .L_8039B370
L_8039B358:
    addi 3, 3, 0x4
    addi 4, 4, 0x1
L_8039B360:
    lhz 5, 0x0(3)
    cmplwi 5, 0xffff
    .4byte 0x4082FFD0 # bne .L_8039B338
    li 8, 0x1420
L_8039B370:
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
L_8039B3CC:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

