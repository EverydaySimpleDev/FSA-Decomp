# fn_803D4770 - helper (0x234)
.section extab, "a"
.balign 4
.global etb_8000FA04
etb_8000FA04:
    .4byte 0x800A0000
    .4byte 0x00000000
.size etb_8000FA04, 8

.section extabindex, "a"
.balign 4
.global eti_8001F888
eti_8001F888:
    .4byte fn_803D4770
    .4byte 0x00000234
    .4byte etb_8000FA04
.size eti_8001F888, 12

.text
.balign 4
.global fn_803D4770

fn_803D4770:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 16, 0x10(1)
    mr 31, 3
    lis 3, lbl_8050DB0C@ha
    li 26, 0x0
    addi 5, 3, lbl_8050DB0C@l
    li 25, 0x0
    li 24, 0x0
    li 23, 0x0
    li 22, 0x0
    lha 3, 0x84(31)
    lha 6, 0xc8(5)
    lha 4, 0xca(5)
    addi 0, 3, 0x1
    lha 18, 0xcc(5)
    lha 21, 0xce(5)
    lha 20, 0xd0(5)
    lha 19, 0xd2(5)
    lha 17, 0xe2(5)
    lha 30, 0xd4(5)
    lha 29, 0xd6(5)
    lha 28, 0xd8(5)
    lha 16, 0xde(5)
    lha 27, 0xe0(5)
    sth 0, 0x84(31)
    lha 0, 0x84(31)
    cmpw 0, 6
    .4byte 0x40810018 # ble .L_803D47FC
    lwz 3, 0x14(31)
    li 5, 0x0
    lbz 6, 0x28(3)
    bl fn_80402628
    mr 26, 3
L_803D47FC:
    lha 0, 0x84(31)
    cmpw 0, 18
    .4byte 0x40810044 # ble .L_803D4848
    lwz 3, 0x24(31)
    mr 4, 21
    .4byte 0xC0220548 # lfs f1, lbl_805434E8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420520 # lfs f2, lbl_805434C0@sda21(r0)
    bl fn_80402940
    lbz 0, 0x2176(31)
    mr 25, 3
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_803D4848
    lwz 3, 0x4c(31)
    mr 4, 21
    .4byte 0xC0220528 # lfs f1, lbl_805434C8@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420520 # lfs f2, lbl_805434C0@sda21(r0)
    bl fn_80402940
L_803D4848:
    lha 3, 0x84(31)
    add 0, 20, 19
    cmpw 3, 0
    .4byte 0x40810024 # ble .L_803D4878
    lwz 3, 0x18(31)
    mr 4, 17
    .4byte 0xC022054C # lfs f1, lbl_805434EC@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420520 # lfs f2, lbl_805434C0@sda21(r0)
    bl fn_80402940
    mr 24, 3
    .4byte 0x48000024 # b .L_803D4898
L_803D4878:
    cmpw 3, 20
    .4byte 0x4081001C # ble .L_803D4898
    lwz 3, 0x18(31)
    mr 4, 19
    .4byte 0xC0220550 # lfs f1, lbl_805434F0@sda21(r0)
    li 5, 0x0
    .4byte 0xC042054C # lfs f2, lbl_805434EC@sda21(r0)
    bl fn_80402940
L_803D4898:
    mr 18, 31
    li 19, 0x0
    li 17, 0x0
L_803D48A4:
    lha 3, 0x84(31)
    add 0, 30, 17
    cmpw 3, 0
    .4byte 0x40810020 # ble .L_803D48D0
    lwz 3, 0x1c(18)
    mr 4, 29
    .4byte 0xC0220534 # lfs f1, lbl_805434D4@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420520 # lfs f2, lbl_805434C0@sda21(r0)
    bl fn_80402940
    mr 23, 3
L_803D48D0:
    addi 19, 19, 0x1
    add 17, 17, 28
    cmpwi 19, 0x2
    addi 18, 18, 0x4
    .4byte 0x4180FFC4 # blt .L_803D48A4
    lha 0, 0x84(31)
    cmpw 0, 16
    .4byte 0x40810054 # ble .L_803D4940
    li 17, 0x0
    mr 16, 31
L_803D48F8:
    lwz 3, 0x2c(16)
    mr 4, 27
    .4byte 0xC0220530 # lfs f1, lbl_805434D0@sda21(r0)
    .4byte 0xC042052C # lfs f2, lbl_805434CC@sda21(r0)
    bl fn_8040271C
    lwz 5, 0x2c(16)
    mr 22, 3
    mr 4, 27
    lbz 6, 0x28(5)
    mr 3, 5
    li 5, 0x0
    bl fn_80402628
    addi 17, 17, 0x1
    addi 16, 16, 0x4
    cmpwi 17, 0x8
    .4byte 0x4180FFC4 # blt .L_803D48F8
    mr 3, 31
    bl fn_803D49A4
L_803D4940:
    clrlwi. 0, 26, 24
    .4byte 0x4182004C # beq .L_803D4990
    clrlwi. 0, 25, 24
    .4byte 0x41820044 # beq .L_803D4990
    clrlwi. 0, 24, 24
    .4byte 0x4182003C # beq .L_803D4990
    clrlwi. 0, 23, 24
    .4byte 0x41820034 # beq .L_803D4990
    clrlwi. 0, 22, 24
    .4byte 0x4182002C # beq .L_803D4990
    li 0, 0x3
    li 3, 0x1e
    stb 0, 0x216f(31)
    li 0, 0x1
    sth 3, 0x80(31)
    lwz 3, 0x28(31)
    lwz 3, 0x4(3)
    stb 0, 0xb0(3)
    lbz 0, 0x216d(31)
    stb 0, 0x216c(31)
L_803D4990:
    lmw 16, 0x10(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

