# fn_803A8F5C - leading helper (0x844) - string helper fn_8009F0D0/fn_8006B414 heavy
.section extab, "a"
.balign 4
.global etb_8000F3CC
etb_8000F3CC:
    .4byte 0x580A0000
    .4byte 0x00000000
.size etb_8000F3CC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F0CC
eti_8001F0CC:
    .4byte fn_803A8F5C
    .4byte 0x00000844
    .4byte etb_8000F3CC
.size eti_8001F0CC, 12

.text
.balign 4
.global fn_803A8F5C

fn_803A8F5C:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stmw 21, 0x94(1)
    mr 31, 3
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lbz 0, 0x4c0(31)
    cmplwi 0, 0x2
    .4byte 0x418003D4 # blt .L_803A9354
    lis 6, 0x68dc
    lis 5, 0x1062
    lis 4, 0x51ec
    lis 3, 0x6666
    mr 26, 31
    subi 30, 6, 0x7453
    addi 27, 5, 0x4dd3
    subi 29, 4, 0x7ae1
    addi 28, 3, 0x6667
    li 25, 0x0
    .4byte 0x4800039C # b .L_803A9348
L_803A8FB0:
    lwz 24, 0x3e0(26)
    li 23, 0x0
    li 22, 0x0
    cmpwi 24, 0x0
    .4byte 0x4080000C # bge .L_803A8FCC
    mulli 24, 24, -0x1
    li 22, 0x1
L_803A8FCC:
    mulhw 0, 30, 24
    lwz 3, 0xa8(26)
    li 5, 0x0
    stb 5, 0xb0(3)
    lwz 4, 0xf8(26)
    srawi 0, 0, 12
    srwi 3, 0, 31
    stb 5, 0xb0(4)
    add 0, 0, 3
    mulli 0, 0, 0x2710
    subf 0, 0, 24
    mulhw 0, 27, 0
    srawi 0, 0, 6
    srwi 3, 0, 31
    add. 21, 0, 3
    .4byte 0x418200A4 # beq .L_803A90AC
    lwz 3, 0xb8(26)
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 3, 0x108(26)
    stb 0, 0xb0(3)
    lwz 3, 0xb8(26)
    bl fn_8009F0D0
    mr 6, 21
    li 4, 0x2
    .4byte 0x38A20420 # li r5, lbl_805433C0@sda21
    crclr 6
    bl fn_8006B414
    lwz 3, 0x108(26)
    bl fn_8009F0D0
    mr 6, 21
    li 4, 0x2
    .4byte 0x38A20420 # li r5, lbl_805433C0@sda21
    crclr 6
    bl fn_8006B414
    clrlwi. 0, 22, 24
    .4byte 0x41820048 # beq .L_803A90A4
    lwz 3, 0xa8(26)
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 3, 0xf8(26)
    stb 0, 0xb0(3)
    lwz 3, 0xa8(26)
    bl fn_8009F0D0
    li 4, 0x2
    .4byte 0x38A20424 # li r5, lbl_805433C4@sda21
    crclr 6
    bl fn_8006B414
    lwz 3, 0xf8(26)
    bl fn_8009F0D0
    li 4, 0x2
    .4byte 0x38A20424 # li r5, lbl_805433C4@sda21
    crclr 6
    bl fn_8006B414
L_803A90A4:
    li 23, 0x1
    .4byte 0x48000014 # b .L_803A90BC
L_803A90AC:
    lwz 3, 0xb8(26)
    stb 5, 0xb0(3)
    lwz 3, 0x108(26)
    stb 5, 0xb0(3)
L_803A90BC:
    mulhw 0, 27, 24
    srawi 0, 0, 6
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x3e8
    subf 0, 0, 24
    mulhw 0, 29, 0
    srawi 0, 0, 5
    srwi 3, 0, 31
    add. 21, 0, 3
    .4byte 0x4082000C # bne .L_803A90F0
    clrlwi. 0, 23, 24
    .4byte 0x418200AC # beq .L_803A9198
L_803A90F0:
    lwz 3, 0xc8(26)
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 3, 0x118(26)
    stb 0, 0xb0(3)
    lwz 3, 0xc8(26)
    bl fn_8009F0D0
    mr 6, 21
    li 4, 0x2
    .4byte 0x38A20420 # li r5, lbl_805433C0@sda21
    crclr 6
    bl fn_8006B414
    lwz 3, 0x118(26)
    bl fn_8009F0D0
    mr 6, 21
    li 4, 0x2
    .4byte 0x38A20420 # li r5, lbl_805433C0@sda21
    crclr 6
    bl fn_8006B414
    clrlwi. 0, 23, 24
    .4byte 0x4082006C # bne .L_803A91AC
    clrlwi. 0, 22, 24
    .4byte 0x41820048 # beq .L_803A9190
    lwz 3, 0xb8(26)
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 3, 0x108(26)
    stb 0, 0xb0(3)
    lwz 3, 0xb8(26)
    bl fn_8009F0D0
    li 4, 0x2
    .4byte 0x38A20424 # li r5, lbl_805433C4@sda21
    crclr 6
    bl fn_8006B414
    lwz 3, 0x108(26)
    bl fn_8009F0D0
    li 4, 0x2
    .4byte 0x38A20424 # li r5, lbl_805433C4@sda21
    crclr 6
    bl fn_8006B414
L_803A9190:
    li 23, 0x1
    .4byte 0x48000018 # b .L_803A91AC
L_803A9198:
    lwz 3, 0xc8(26)
    li 0, 0x0
    stb 0, 0xb0(3)
    lwz 3, 0x118(26)
    stb 0, 0xb0(3)
L_803A91AC:
    mulhw 0, 29, 24
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 0, 0, 3
    mulli 0, 0, 0x64
    subf 0, 0, 24
    mulhw 0, 28, 0
    srawi 0, 0, 2
    srwi 3, 0, 31
    add. 21, 0, 3
    .4byte 0x4082000C # bne .L_803A91E0
    clrlwi. 0, 23, 24
    .4byte 0x418200AC # beq .L_803A9288
L_803A91E0:
    lwz 3, 0xd8(26)
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 3, 0x128(26)
    stb 0, 0xb0(3)
    lwz 3, 0xd8(26)
    bl fn_8009F0D0
    mr 6, 21
    li 4, 0x2
    .4byte 0x38A20420 # li r5, lbl_805433C0@sda21
    crclr 6
    bl fn_8006B414
    lwz 3, 0x128(26)
    bl fn_8009F0D0
    mr 6, 21
    li 4, 0x2
    .4byte 0x38A20420 # li r5, lbl_805433C0@sda21
    crclr 6
    bl fn_8006B414
    clrlwi. 0, 23, 24
    .4byte 0x4082006C # bne .L_803A929C
    clrlwi. 0, 22, 24
    .4byte 0x41820048 # beq .L_803A9280
    lwz 3, 0xc8(26)
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 3, 0x118(26)
    stb 0, 0xb0(3)
    lwz 3, 0xc8(26)
    bl fn_8009F0D0
    li 4, 0x2
    .4byte 0x38A20424 # li r5, lbl_805433C4@sda21
    crclr 6
    bl fn_8006B414
    lwz 3, 0x118(26)
    bl fn_8009F0D0
    li 4, 0x2
    .4byte 0x38A20424 # li r5, lbl_805433C4@sda21
    crclr 6
    bl fn_8006B414
L_803A9280:
    li 23, 0x1
    .4byte 0x48000018 # b .L_803A929C
L_803A9288:
    lwz 3, 0xd8(26)
    li 0, 0x0
    stb 0, 0xb0(3)
    lwz 3, 0x128(26)
    stb 0, 0xb0(3)
L_803A929C:
    mulhw 0, 28, 24
    lwz 3, 0xe8(26)
    srawi 0, 0, 2
    srwi 4, 0, 31
    add 0, 0, 4
    mulli 0, 0, 0xa
    subf 24, 0, 24
    bl fn_8009F0D0
    mr 6, 24
    li 4, 0x2
    .4byte 0x38A20420 # li r5, lbl_805433C0@sda21
    crclr 6
    bl fn_8006B414
    lwz 3, 0x138(26)
    bl fn_8009F0D0
    mr 6, 24
    li 4, 0x2
    .4byte 0x38A20420 # li r5, lbl_805433C0@sda21
    crclr 6
    bl fn_8006B414
    clrlwi. 0, 23, 24
    .4byte 0x40820050 # bne .L_803A9340
    clrlwi. 0, 22, 24
    .4byte 0x41820048 # beq .L_803A9340
    lwz 3, 0xd8(26)
    li 0, 0x1
    stb 0, 0xb0(3)
    lwz 3, 0x128(26)
    stb 0, 0xb0(3)
    lwz 3, 0xd8(26)
    bl fn_8009F0D0
    li 4, 0x2
    .4byte 0x38A20424 # li r5, lbl_805433C4@sda21
    crclr 6
    bl fn_8006B414
    lwz 3, 0x128(26)
    bl fn_8009F0D0
    li 4, 0x2
    .4byte 0x38A20424 # li r5, lbl_805433C4@sda21
    crclr 6
    bl fn_8006B414
L_803A9340:
    addi 26, 26, 0x4
    addi 25, 25, 0x1
L_803A9348:
    lwz 0, 0x454(31)
    cmpw 25, 0
    .4byte 0x4180FC60 # blt .L_803A8FB0
L_803A9354:
    lwz 0, 0x450(31)
    .4byte 0xC0220428 # lfs f1, lbl_805433C8@sda21(r0)
    slwi 0, 0, 2
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    add 3, 31, 0
    fmr 2, 1
    lwz 3, 0x4(3)
    lwz 4, 0x10(4)
    bl fn_8009D340
    .4byte 0xC0420428 # lfs f2, lbl_805433C8@sda21(r0)
    addi 4, 1, 0x8
    .4byte 0xC022042C # lfs f1, lbl_805433CC@sda21(r0)
    li 5, 0x1
    .4byte 0xC0020430 # lfs f0, lbl_805433D0@sda21(r0)
    stfs 2, 0x8(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 2, 0xc(1)
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    bl fn_8013B414
    lis 3, lbl_8047641C@ha
    mr 26, 31
    mr 27, 31
    addi 28, 1, 0x54
    addi 30, 3, lbl_8047641C@l
    li 22, 0x0
    lis 29, 0x534f
    .4byte 0x48000308 # b .L_803A96C8
L_803A93C4:
    li 0, -0x1
    li 9, 0x0
    stw 0, 0x64(1)
    stw 0, 0x68(1)
    .4byte 0x48000064 # b .L_803A9438
L_803A93D8:
    clrlwi 0, 9, 24
    addi 7, 9, 0x5
    addi 5, 9, 0x1
    stbx 9, 28, 0
    clrlwi 0, 5, 24
    addi 3, 9, 0x2
    stbx 5, 28, 0
    clrlwi 0, 3, 24
    addi 4, 9, 0x3
    addi 8, 9, 0x4
    stbx 3, 28, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 9, 0x6
    stbx 4, 28, 0
    clrlwi 0, 8, 24
    addi 3, 9, 0x7
    clrlwi 4, 5, 24
    stbx 8, 28, 0
    clrlwi 0, 3, 24
    addi 9, 9, 0x8
    stbx 7, 28, 6
    stbx 5, 28, 4
    stbx 3, 28, 0
L_803A9438:
    clrlwi 0, 9, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803A93D8
    li 5, 0x1
    li 6, 0x0
    stb 5, 0x7a(1)
    li 7, -0x1
    addi 0, 22, 0xc
    li 4, 0x3
    li 3, 0x2
    stw 7, 0x64(1)
    stw 6, 0x68(1)
    stw 6, 0x6c(1)
    stb 6, 0x70(1)
    stb 6, 0x71(1)
    stb 6, 0x72(1)
    stb 5, 0x73(1)
    stb 5, 0x74(1)
    stb 6, 0x75(1)
    stb 6, 0x76(1)
    stb 6, 0x77(1)
    stb 6, 0x78(1)
    stb 6, 0x79(1)
    stw 4, 0x7c(1)
    stb 5, 0x80(1)
    stb 6, 0x81(1)
    stb 6, 0x82(1)
    stw 7, 0x84(1)
    stw 6, 0x88(1)
    stw 3, 0x8c(1)
    stb 0, 0x5b(1)
    stb 5, 0x7a(1)
    lbz 0, 0x4c0(31)
    cmplwi 0, 0x3
    .4byte 0x4180000C # blt .L_803A94CC
    stb 7, 0x71(1)
    stb 7, 0x70(1)
L_803A94CC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    mr 5, 30
    addi 4, 29, 0x4220
    lwz 23, 0x3c0(26)
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC0220434 # lfs f1, lbl_805433D4@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 23
    fmr 2, 1
    addi 7, 1, 0x54
    lwz 3, 0x20(4)
    addi 4, 27, 0x2f0
    bl fn_802F86CC
    li 0, 0x1
    lbz 3, 0x4db(31)
    slw 0, 0, 22
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x41820194 # beq .L_803A96BC
    li 0, -0x1
    addi 9, 1, 0x18
    stw 0, 0x28(1)
    li 10, 0x0
    stw 0, 0x2c(1)
    .4byte 0x48000064 # b .L_803A95A4
L_803A9544:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_803A95A4:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_803A9544
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 3, 0x2
    addi 0, 22, 0x4
    slw 0, 5, 0
    stw 7, 0x28(1)
    clrlwi 0, 0, 24
    stw 6, 0x2c(1)
    stw 6, 0x30(1)
    stb 6, 0x34(1)
    stb 6, 0x35(1)
    stb 6, 0x36(1)
    stb 5, 0x37(1)
    stb 5, 0x38(1)
    stb 6, 0x39(1)
    stb 6, 0x3a(1)
    stb 6, 0x3b(1)
    stb 6, 0x3c(1)
    stb 6, 0x3d(1)
    stb 5, 0x3e(1)
    stw 4, 0x40(1)
    stb 5, 0x44(1)
    stb 6, 0x45(1)
    stb 6, 0x46(1)
    stw 7, 0x48(1)
    stw 6, 0x4c(1)
    stw 3, 0x50(1)
    lbz 3, 0x4db(31)
    and. 0, 3, 0
    .4byte 0x41820010 # beq .L_803A963C
    lbz 0, 0x4dd(31)
    stb 0, 0x2b(1)
    .4byte 0x4800000C # b .L_803A9644
L_803A963C:
    lbz 0, 0x4dc(31)
    stb 0, 0x2b(1)
L_803A9644:
    li 3, 0x7
    li 0, 0x1
    stb 3, 0x1f(1)
    stb 0, 0x3e(1)
    lbz 0, 0x4c0(31)
    cmplwi 0, 0x3
    .4byte 0x41800010 # blt .L_803A966C
    li 0, -0x1
    stb 0, 0x35(1)
    stb 0, 0x34(1)
L_803A966C:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8047641C@ha
    addi 5, 3, lbl_8047641C@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 23, 0x3c0(26)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC0220434 # lfs f1, lbl_805433D4@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 23
    fmr 2, 1
    addi 7, 1, 0x18
    lwz 3, 0x20(4)
    addi 4, 27, 0x2f0
    bl fn_802F86CC
L_803A96BC:
    addi 26, 26, 0x4
    addi 27, 27, 0xc
    addi 22, 22, 0x1
L_803A96C8:
    lwz 0, 0x454(31)
    cmpw 22, 0
    .4byte 0x4180FCF4 # blt .L_803A93C4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    bl fn_8013B490
    lwz 0, 0x450(31)
    .4byte 0xC0220428 # lfs f1, lbl_805433C8@sda21(r0)
    slwi 0, 0, 2
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    add 3, 31, 0
    fmr 2, 1
    lwz 3, 0x10(3)
    lwz 4, 0x10(4)
    bl fn_8009D340
    .4byte 0xC0220428 # lfs f1, lbl_805433C8@sda21(r0)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    fmr 2, 1
    lwz 3, 0x20(31)
    lwz 4, 0x10(4)
    bl fn_8009D340
    lbz 0, 0x4c0(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_803A972C
    cmplwi 0, 0x4
    .4byte 0x4082001C # bne .L_803A9744
L_803A972C:
    .4byte 0x806D9208 # lwz r3, lbl_8053ADC8@sda21(r0)
    li 4, 0x1
    li 0, 0x4
    stb 4, 0x20(3)
    .4byte 0x806D9208 # lwz r3, lbl_8053ADC8@sda21(r0)
    stb 0, 0x21(3)
L_803A9744:
    lwz 3, 0x170(31)
    lbz 4, 0x4c2(31)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x170(31)
    li 4, 0x0
    .4byte 0xC0220428 # lfs f1, lbl_805433C8@sda21(r0)
    li 5, 0x0
    lwz 12, 0x0(3)
    li 6, 0x0
    fmr 2, 1
    .4byte 0xC0620438 # lfs f3, lbl_805433D8@sda21(r0)
    lwz 12, 0xec(12)
    .4byte 0xC082043C # lfs f4, lbl_805433DC@sda21(r0)
    mtctr 12
    bctrl
    lmw 21, 0x94(1)
    lwz 0, 0xc4(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

