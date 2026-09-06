# fn_803D4484 - helper (0x2EC)
.section extab, "a"
.balign 4
.global etb_8000F9FC
etb_8000F9FC:
    .4byte 0x504A0000
    .4byte 0x00000000
.size etb_8000F9FC, 8

.section extabindex, "a"
.balign 4
.global eti_8001F87C
eti_8001F87C:
    .4byte fn_803D4484
    .4byte 0x000002EC
    .4byte etb_8000F9FC
.size eti_8001F87C, 12

.text
.balign 4
.global fn_803D4484

fn_803D4484:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stmw 22, 0x38(1)
    mr 26, 3
    lis 3, lbl_8050DB0C@ha
    addi 4, 3, lbl_8050DB0C@l
    lha 3, 0x86(26)
    lha 31, 0xe4(4)
    li 23, 0x0
    lha 30, 0xe6(4)
    addi 0, 3, 0x1
    lha 29, 0xe8(4)
    lha 28, 0xea(4)
    lha 27, 0xec(4)
    stb 23, 0xa(1)
    sth 0, 0x86(26)
    lbz 0, 0x216f(26)
    stb 23, 0x9(1)
    cmplwi 0, 0x1
    stb 23, 0x8(1)
    .4byte 0x40820090 # bne .L_803D4570
    mr 25, 26
    addi 24, 1, 0x8
    li 22, 0x0
L_803D44F0:
    lha 3, 0x86(26)
    add 0, 29, 23
    cmpw 3, 0
    .4byte 0x40810020 # ble .L_803D451C
    lwz 3, 0x1c(25)
    mr 4, 28
    .4byte 0xC0220534 # lfs f1, lbl_805434D4@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420520 # lfs f2, lbl_805434C0@sda21(r0)
    bl fn_80402940
    stb 3, 0x0(24)
L_803D451C:
    addi 22, 22, 0x1
    add 23, 23, 27
    cmpwi 22, 0x2
    addi 25, 25, 0x4
    addi 24, 24, 0x1
    .4byte 0x4180FFC0 # blt .L_803D44F0
    lbz 0, 0x8(1)
    cmplwi 0, 0x0
    .4byte 0x418200DC # beq .L_803D4618
    lbz 0, 0x9(1)
    cmplwi 0, 0x0
    .4byte 0x418200D0 # beq .L_803D4618
    li 0, 0x3
    li 3, 0x1e
    stb 0, 0x216f(26)
    li 0, 0x1
    sth 3, 0x80(26)
    lwz 3, 0x28(26)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    .4byte 0x480000AC # b .L_803D4618
L_803D4570:
    cmplwi 0, 0x2
    .4byte 0x40820098 # bne .L_803D460C
    mr 24, 26
    addi 25, 1, 0x8
    li 22, 0x0
L_803D4584:
    lha 3, 0x86(26)
    add 0, 29, 23
    cmpw 3, 0
    .4byte 0x40810020 # ble .L_803D45B0
    lwz 3, 0x1c(24)
    mr 4, 28
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420534 # lfs f2, lbl_805434D4@sda21(r0)
    bl fn_80402940
    stb 3, 0x0(25)
L_803D45B0:
    addi 22, 22, 0x1
    add 23, 23, 27
    cmpwi 22, 0x2
    addi 24, 24, 0x4
    addi 25, 25, 0x1
    .4byte 0x4180FFC0 # blt .L_803D4584
    lha 3, 0x86(26)
    addi 0, 29, 0x1
    cmpw 3, 0
    .4byte 0x40810014 # ble .L_803D45E8
    lwz 3, 0x28(26)
    li 0, 0x0
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
L_803D45E8:
    lbz 0, 0x8(1)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_803D4618
    lbz 0, 0x9(1)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_803D4618
    li 0, 0x0
    stb 0, 0x216f(26)
    .4byte 0x48000010 # b .L_803D4618
L_803D460C:
    li 0, 0x1
    stb 0, 0x9(1)
    stb 0, 0x8(1)
L_803D4618:
    lha 0, 0x86(26)
    cmpw 0, 31
    .4byte 0x408100AC # ble .L_803D46CC
    subf 0, 31, 0
    lis 4, 0x4330
    xoris 3, 0, 0x8000
    xoris 0, 30, 0x8000
    stw 3, 0x14(1)
    lwz 3, 0xc(26)
    stw 4, 0x10(1)
    .4byte 0xC8820540 # lfd f4, lbl_805434E0@sda21(r0)
    lfd 0, 0x10(1)
    stw 0, 0x1c(1)
    fsubs 3, 0, 4
    lwz 12, 0x0(3)
    stw 4, 0x18(1)
    .4byte 0xC002052C # lfs f0, lbl_805434CC@sda21(r0)
    lfd 2, 0x18(1)
    .4byte 0xC0220538 # lfs f1, lbl_805434D8@sda21(r0)
    fsubs 2, 2, 4
    lwz 12, 0x24(12)
    fdivs 31, 3, 2
    fsubs 0, 0, 31
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    mtctr 12
    bctrl
    .4byte 0xC0020538 # lfs f0, lbl_805434D8@sda21(r0)
    lwz 3, 0x10(26)
    fmuls 0, 0, 31
    lwz 12, 0x0(3)
    fctiwz 0, 0
    lwz 12, 0x24(12)
    stfd 0, 0x28(1)
    lwz 4, 0x2c(1)
    mtctr 12
    bctrl
    lha 3, 0x86(26)
    add 0, 30, 31
    cmpw 3, 0
    .4byte 0x4180000C # blt .L_803D46CC
    li 0, 0x1
    stb 0, 0xa(1)
L_803D46CC:
    lbz 0, 0x8(1)
    cmplwi 0, 0x0
    .4byte 0x41820080 # beq .L_803D4754
    lbz 0, 0x9(1)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_803D4754
    lbz 0, 0xa(1)
    cmplwi 0, 0x0
    .4byte 0x41820068 # beq .L_803D4754
    lwz 0, 0x54(26)
    cmplwi 0, 0x80
    .4byte 0x40820014 # bne .L_803D470C
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x5b
    li 5, -0x1
    bl fn_80458880
L_803D470C:
    lwz 3, 0xc(26)
    bl fn_8009F0D0
    addi 4, 26, 0x88
    bl strcpy
    lwz 3, 0xc(26)
    li 4, 0xff
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lwz 3, 0x10(26)
    li 4, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    lbz 0, 0x216d(26)
    stb 0, 0x216c(26)
L_803D4754:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    lmw 22, 0x38(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

