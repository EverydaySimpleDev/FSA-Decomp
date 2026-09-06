# fn_803D3EC8 - helper (0x1A0)
.section extab, "a"
.balign 4
.global etb_8000F9E4
etb_8000F9E4:
    .4byte 0x600A0000
    .4byte 0x00000000
.size etb_8000F9E4, 8

.section extabindex, "a"
.balign 4
.global eti_8001F858
eti_8001F858:
    .4byte fn_803D3EC8
    .4byte 0x000001A0
    .4byte etb_8000F9E4
.size eti_8001F858, 12

.text
.balign 4
.global fn_803D3EC8

fn_803D3EC8:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 20, 0x10(1)
    mr 22, 3
    lis 3, lbl_8050DB0C@ha
    li 25, 0x0
    addi 4, 3, lbl_8050DB0C@l
    li 24, 0x0
    li 23, 0x0
    lha 3, 0x84(22)
    lha 5, 0xee(4)
    lha 31, 0xf0(4)
    addi 0, 3, 0x1
    lha 30, 0xf2(4)
    lha 29, 0xf4(4)
    lha 28, 0xf6(4)
    lha 27, 0xf8(4)
    lha 26, 0xfa(4)
    sth 0, 0x84(22)
    lha 0, 0x84(22)
    cmpw 0, 5
    .4byte 0x408100A0 # ble .L_803D3FC0
    lwz 3, 0x24(22)
    mr 4, 31
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420524 # lfs f2, lbl_805434C4@sda21(r0)
    bl fn_80402940
    lbz 0, 0x2176(22)
    mr 25, 3
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_803D3F64
    lwz 3, 0x4c(22)
    mr 4, 31
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420528 # lfs f2, lbl_805434C8@sda21(r0)
    bl fn_80402940
L_803D3F64:
    lwz 3, 0x14(22)
    mr 4, 31
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    li 20, 0x0
    mr 21, 22
L_803D3F80:
    lwz 3, 0x2c(21)
    mr 4, 31
    .4byte 0xC022052C # lfs f1, lbl_805434CC@sda21(r0)
    .4byte 0xC0420530 # lfs f2, lbl_805434D0@sda21(r0)
    bl fn_8040271C
    lwz 3, 0x2c(21)
    mr 4, 31
    li 6, 0x0
    lbz 5, 0x28(3)
    bl fn_80402628
    addi 20, 20, 0x1
    addi 21, 21, 0x4
    cmpwi 20, 0x8
    .4byte 0x4180FFCC # blt .L_803D3F80
    mr 3, 22
    bl fn_803D49A4
L_803D3FC0:
    lha 0, 0x84(22)
    cmpw 0, 30
    .4byte 0x40810020 # ble .L_803D3FE8
    lwz 3, 0x18(22)
    mr 4, 29
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420524 # lfs f2, lbl_805434C4@sda21(r0)
    bl fn_80402940
    mr 24, 3
L_803D3FE8:
    mr 29, 22
    li 20, 0x0
    li 21, 0x0
L_803D3FF4:
    lha 3, 0x84(22)
    add 0, 28, 21
    cmpw 3, 0
    .4byte 0x40810020 # ble .L_803D4020
    lwz 3, 0x1c(29)
    mr 4, 27
    .4byte 0xC0220520 # lfs f1, lbl_805434C0@sda21(r0)
    li 5, 0x0
    .4byte 0xC0420534 # lfs f2, lbl_805434D4@sda21(r0)
    bl fn_80402940
    mr 23, 3
L_803D4020:
    addi 20, 20, 0x1
    add 21, 21, 26
    cmpwi 20, 0x2
    addi 29, 29, 0x4
    .4byte 0x4180FFC4 # blt .L_803D3FF4
    clrlwi. 0, 25, 24
    .4byte 0x4182001C # beq .L_803D4054
    clrlwi. 0, 24, 24
    .4byte 0x41820014 # beq .L_803D4054
    clrlwi. 0, 23, 24
    .4byte 0x4182000C # beq .L_803D4054
    lbz 0, 0x216d(22)
    stb 0, 0x216c(22)
L_803D4054:
    lmw 20, 0x10(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

