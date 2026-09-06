# fn_8039D770 - component C: vtable-slot function (0x1dd0, largest single vtable-body piece in this gap)
.section extab, "a"
.balign 4
.global etb_8000F1FC
etb_8000F1FC:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000F1FC, 8

.section extabindex, "a"
.balign 4
.global eti_8001EF4C
eti_8001EF4C:
    .4byte fn_8039D770
    .4byte 0x00001DD0
    .4byte etb_8000F1FC
.size eti_8001EF4C, 12

.text
.balign 4
.global fn_8039D770

fn_8039D770:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    mr 30, 5
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    lwz 7, 0x2d8(3)
    lbz 0, 0x1aa(7)
    cmplwi 0, 0x0
    .4byte 0x40820990 # bne .L_8039E130
    lis 6, 0x2
    addi 0, 6, 0x19
    cmpw 4, 0
    .4byte 0x40800110 # bge .L_8039D8C0
    lis 5, 0x1
    addi 0, 5, 0xa
    cmpw 4, 0
    .4byte 0x41820284 # beq .L_8039DA44
    .4byte 0x40800070 # bge .L_8039D834
    addi 0, 5, 0x3
    cmpw 4, 0
    .4byte 0x41820234 # beq .L_8039DA04
    .4byte 0x4080002C # bge .L_8039D800
    cmpw 4, 5
    .4byte 0x418201F8 # beq .L_8039D9D4
    .4byte 0x40800010 # bge .L_8039D7F0
    cmpwi 4, 0x0
    .4byte 0x418201E4 # beq .L_8039D9CC
    .4byte 0x48001D30 # b .L_8039F51C
L_8039D7F0:
    addi 0, 5, 0x2
    cmpw 4, 0
    .4byte 0x408001FC # bge .L_8039D9F4
    .4byte 0x480001E8 # b .L_8039D9E4
L_8039D800:
    addi 0, 5, 0x7
    cmpw 4, 0
    .4byte 0x4182020C # beq .L_8039DA14
    .4byte 0x40800018 # bge .L_8039D824
    addi 0, 5, 0x5
    cmpw 4, 0
    .4byte 0x4182024C # beq .L_8039DA64
    .4byte 0x40800258 # bge .L_8039DA74
    .4byte 0x48000234 # b .L_8039DA54
L_8039D824:
    addi 0, 5, 0x9
    cmpw 4, 0
    .4byte 0x40800208 # bge .L_8039DA34
    .4byte 0x480001F4 # b .L_8039DA24
L_8039D834:
    cmpw 4, 6
    .4byte 0x40800044 # bge .L_8039D87C
    addi 0, 5, 0x11
    cmpw 4, 0
    .4byte 0x4182029C # beq .L_8039DAE0
    .4byte 0x40800020 # bge .L_8039D868
    addi 0, 5, 0x10
    cmpw 4, 0
    .4byte 0x40800238 # bge .L_8039DA8C
    addi 0, 5, 0xd
    cmpw 4, 0
    .4byte 0x40801CBC # bge .L_8039F51C
    .4byte 0x48000220 # b .L_8039DA84
L_8039D868:
    addi 0, 5, 0x13
    cmpw 4, 0
    .4byte 0x41820318 # beq .L_8039DB88
    .4byte 0x40801CA8 # bge .L_8039F51C
    .4byte 0x480002BC # b .L_8039DB34
L_8039D87C:
    addi 0, 6, 0xd
    cmpw 4, 0
    .4byte 0x40800020 # bge .L_8039D8A4
    addi 0, 6, 0x9
    cmpw 4, 0
    .4byte 0x408003F4 # bge .L_8039DC84
    addi 0, 6, 0x4
    cmpw 4, 0
    .4byte 0x408004D0 # bge .L_8039DD6C
    .4byte 0x4800033C # b .L_8039DBDC
L_8039D8A4:
    addi 0, 6, 0x15
    cmpw 4, 0
    .4byte 0x408004C8 # bge .L_8039DD74
    addi 0, 6, 0x11
    cmpw 4, 0
    .4byte 0x40800378 # bge .L_8039DC30
    .4byte 0x480004B8 # b .L_8039DD74
L_8039D8C0:
    addi 0, 6, 0x32
    cmpw 4, 0
    .4byte 0x41820618 # beq .L_8039DEE0
    .4byte 0x40800084 # bge .L_8039D950
    addi 0, 6, 0x2c
    cmpw 4, 0
    .4byte 0x418205D8 # beq .L_8039DEB0
    .4byte 0x40800044 # bge .L_8039D920
    addi 0, 6, 0x25
    cmpw 4, 0
    .4byte 0x40800024 # bge .L_8039D90C
    addi 0, 6, 0x1e
    cmpw 4, 0
    .4byte 0x41820488 # beq .L_8039DD7C
    .4byte 0x40800574 # bge .L_8039DE6C
    addi 0, 6, 0x1d
    cmpw 4, 0
    .4byte 0x40800470 # bge .L_8039DD74
    .4byte 0x480003F0 # b .L_8039DCF8
L_8039D90C:
    addi 0, 6, 0x29
    cmpw 4, 0
    .4byte 0x41820568 # beq .L_8039DE7C
    .4byte 0x40800590 # bge .L_8039DEA8
    .4byte 0x48000558 # b .L_8039DE74
L_8039D920:
    addi 0, 6, 0x2f
    cmpw 4, 0
    .4byte 0x418205A0 # beq .L_8039DEC8
    .4byte 0x40800014 # bge .L_8039D940
    addi 0, 6, 0x2e
    cmpw 4, 0
    .4byte 0x40800588 # bge .L_8039DEC0
    .4byte 0x4800057C # b .L_8039DEB8
L_8039D940:
    addi 0, 6, 0x31
    cmpw 4, 0
    .4byte 0x40800590 # bge .L_8039DED8
    .4byte 0x48000584 # b .L_8039DED0
L_8039D950:
    lis 5, 0x3
    addi 0, 5, 0x4
    cmpw 4, 0
    .4byte 0x4182065C # beq .L_8039DFB8
    .4byte 0x4080003C # bge .L_8039D99C
    addi 0, 5, 0x1
    cmpw 4, 0
    .4byte 0x418205C4 # beq .L_8039DF30
    .4byte 0x4080001C # bge .L_8039D98C
    cmpw 4, 5
    .4byte 0x40800578 # bge .L_8039DEF0
    addi 0, 6, 0x34
    cmpw 4, 0
    .4byte 0x40801B98 # bge .L_8039F51C
    .4byte 0x48000560 # b .L_8039DEE8
L_8039D98C:
    addi 0, 5, 0x3
    cmpw 4, 0
    .4byte 0x408005E4 # bge .L_8039DF78
    .4byte 0x480005A0 # b .L_8039DF38
L_8039D99C:
    addi 0, 5, 0x7
    cmpw 4, 0
    .4byte 0x418206E4 # beq .L_8039E088
    .4byte 0x40800014 # bge .L_8039D9BC
    addi 0, 5, 0x6
    cmpw 4, 0
    .4byte 0x40800670 # bge .L_8039E024
    .4byte 0x48000640 # b .L_8039DFF8
L_8039D9BC:
    addi 0, 5, 0x9
    cmpw 4, 0
    .4byte 0x40801B58 # bge .L_8039F51C
    .4byte 0x48000724 # b .L_8039E0EC
L_8039D9CC:
    li 3, 0x1
    .4byte 0x48001B50 # b .L_8039F520
L_8039D9D4:
    li 4, 0x0
    bl fn_8039CDF8
    li 3, 0x1
    .4byte 0x48001B40 # b .L_8039F520
L_8039D9E4:
    li 4, 0x1
    bl fn_8039CDF8
    li 3, 0x1
    .4byte 0x48001B30 # b .L_8039F520
L_8039D9F4:
    li 4, 0x2
    bl fn_8039CDF8
    li 3, 0x1
    .4byte 0x48001B20 # b .L_8039F520
L_8039DA04:
    li 4, 0x3
    bl fn_8039CDF8
    li 3, 0x1
    .4byte 0x48001B10 # b .L_8039F520
L_8039DA14:
    li 4, 0x7
    bl fn_8039CDF8
    li 3, 0x1
    .4byte 0x48001B00 # b .L_8039F520
L_8039DA24:
    li 4, 0x8
    bl fn_8039CDF8
    li 3, 0x1
    .4byte 0x48001AF0 # b .L_8039F520
L_8039DA34:
    li 4, 0x9
    bl fn_8039CDF8
    li 3, 0x1
    .4byte 0x48001AE0 # b .L_8039F520
L_8039DA44:
    li 4, 0xa
    bl fn_8039CDF8
    li 3, 0x1
    .4byte 0x48001AD0 # b .L_8039F520
L_8039DA54:
    li 4, 0x4
    bl fn_8039CDF8
    li 3, 0x1
    .4byte 0x48001AC0 # b .L_8039F520
L_8039DA64:
    li 4, 0x5
    bl fn_8039CDF8
    li 3, 0x1
    .4byte 0x48001AB0 # b .L_8039F520
L_8039DA74:
    li 4, 0x6
    bl fn_8039CDF8
    li 3, 0x1
    .4byte 0x48001AA0 # b .L_8039F520
L_8039DA84:
    li 3, 0x1
    .4byte 0x48001A98 # b .L_8039F520
L_8039DA8C:
    lwz 0, 0x15c(7)
    lwz 4, 0x2cc(31)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810034 # ble .L_8039DAD8
    lwz 3, 0x2c0(31)
    .4byte 0x3882031C # li r4, lbl_805432BC@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x3882031C # li r4, lbl_805432BC@sda21
    bl strcat
    lwz 5, 0x2d0(31)
    mr 3, 31
    lbz 4, 0x0(30)
    addi 0, 5, 0x1
    stw 0, 0x2d0(31)
    bl fn_8039D0DC
L_8039DAD8:
    li 3, 0x1
    .4byte 0x48001A44 # b .L_8039F520
L_8039DAE0:
    lwz 0, 0x15c(7)
    lwz 4, 0x2cc(31)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810034 # ble .L_8039DB2C
    lwz 3, 0x2c0(31)
    .4byte 0x38820320 # li r4, lbl_805432C0@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x38820320 # li r4, lbl_805432C0@sda21
    bl strcat
    lwz 5, 0x2d0(31)
    mr 3, 31
    lbz 4, 0x0(30)
    addi 0, 5, 0x1
    stw 0, 0x2d0(31)
    bl fn_8039D0DC
L_8039DB2C:
    li 3, 0x1
    .4byte 0x480019F0 # b .L_8039F520
L_8039DB34:
    lwz 0, 0x15c(7)
    lwz 4, 0x2cc(31)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810034 # ble .L_8039DB80
    lwz 3, 0x2c0(31)
    .4byte 0x38820324 # li r4, lbl_805432C4@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x38820324 # li r4, lbl_805432C4@sda21
    bl strcat
    lwz 5, 0x2d0(31)
    mr 3, 31
    lbz 4, 0x0(30)
    addi 0, 5, 0x1
    stw 0, 0x2d0(31)
    bl fn_8039D0DC
L_8039DB80:
    li 3, 0x1
    .4byte 0x4800199C # b .L_8039F520
L_8039DB88:
    lwz 0, 0x15c(7)
    lwz 4, 0x2cc(31)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810034 # ble .L_8039DBD4
    lwz 3, 0x2c0(31)
    .4byte 0x38820328 # li r4, lbl_805432C8@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x38820328 # li r4, lbl_805432C8@sda21
    bl strcat
    lwz 5, 0x2d0(31)
    mr 3, 31
    lbz 4, 0x0(30)
    addi 0, 5, 0x1
    stw 0, 0x2d0(31)
    bl fn_8039D0DC
L_8039DBD4:
    li 3, 0x1
    .4byte 0x48001948 # b .L_8039F520
L_8039DBDC:
    lwz 0, 0x15c(7)
    lwz 4, 0x2cc(31)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810034 # ble .L_8039DC28
    lwz 3, 0x2c0(31)
    .4byte 0x3882032C # li r4, lbl_805432CC@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x3882032C # li r4, lbl_805432CC@sda21
    bl strcat
    lwz 5, 0x2d0(31)
    mr 3, 31
    lbz 4, 0x0(30)
    addi 0, 5, 0x4
    stw 0, 0x2d0(31)
    bl fn_8039D0DC
L_8039DC28:
    li 3, 0x1
    .4byte 0x480018F4 # b .L_8039F520
L_8039DC30:
    lwz 0, 0x15c(7)
    lwz 4, 0x2cc(31)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810034 # ble .L_8039DC7C
    lwz 3, 0x2c0(31)
    .4byte 0x3882032C # li r4, lbl_805432CC@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x3882032C # li r4, lbl_805432CC@sda21
    bl strcat
    lwz 5, 0x2d0(31)
    mr 3, 31
    lbz 4, 0x4(30)
    addi 0, 5, 0x4
    stw 0, 0x2d0(31)
    bl fn_8039D0DC
L_8039DC7C:
    li 3, 0x1
    .4byte 0x480018A0 # b .L_8039F520
L_8039DC84:
    lwz 0, 0x15c(7)
    lwz 4, 0x2cc(31)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810054 # ble .L_8039DCF0
    lis 3, lbl_8050DB0C@ha
    li 28, 0x0
    addi 29, 3, lbl_8050DB0C@l
    .4byte 0x48000020 # b .L_8039DCCC
L_8039DCB0:
    lwz 3, 0x2c0(31)
    .4byte 0x38820334 # li r4, lbl_805432D4@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x38820334 # li r4, lbl_805432D4@sda21
    bl strcat
    addi 28, 28, 0x1
L_8039DCCC:
    lha 5, 0x2ee(29)
    cmpw 28, 5
    .4byte 0x4180FFDC # blt .L_8039DCB0
    lwz 0, 0x2d0(31)
    mr 3, 31
    lbz 4, 0x4(30)
    add 0, 0, 5
    stw 0, 0x2d0(31)
    bl fn_8039D0DC
L_8039DCF0:
    li 3, 0x1
    .4byte 0x4800182C # b .L_8039F520
L_8039DCF8:
    lwz 0, 0x15c(7)
    lwz 4, 0x2cc(31)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810054 # ble .L_8039DD64
    lis 3, lbl_8050DB0C@ha
    li 28, 0x0
    addi 29, 3, lbl_8050DB0C@l
    .4byte 0x48000020 # b .L_8039DD40
L_8039DD24:
    lwz 3, 0x2c0(31)
    .4byte 0x38820334 # li r4, lbl_805432D4@sda21
    bl strcat
    lwz 3, 0x2c4(31)
    .4byte 0x38820334 # li r4, lbl_805432D4@sda21
    bl strcat
    addi 28, 28, 0x1
L_8039DD40:
    lha 5, 0x2ee(29)
    cmpw 28, 5
    .4byte 0x4180FFDC # blt .L_8039DD24
    lwz 0, 0x2d0(31)
    mr 3, 31
    lbz 4, 0x0(30)
    add 0, 0, 5
    stw 0, 0x2d0(31)
    bl fn_8039D0DC
L_8039DD64:
    li 3, 0x1
    .4byte 0x480017B8 # b .L_8039F520
L_8039DD6C:
    li 3, 0x1
    .4byte 0x480017B0 # b .L_8039F520
L_8039DD74:
    li 3, 0x1
    .4byte 0x480017A8 # b .L_8039F520
L_8039DD7C:
    lwz 0, 0x15c(7)
    lwz 4, 0x2cc(31)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x408100D0 # ble .L_8039DE64
    lbz 0, 0x0(30)
    cmplwi 0, 0x5
    .4byte 0x408000C4 # bge .L_8039DE64
    lis 4, lbl_80475D64@ha
    lis 3, lbl_80475DC8@ha
    clrlslwi 0, 0, 24, 2
    addi 4, 4, lbl_80475D64@l
    addi 5, 3, lbl_80475DC8@l
    lwzx 6, 4, 0
    addi 3, 1, 0x8
    li 4, 0x1e
    stw 6, 0x154(7)
    crclr 6
    bl fn_8006B414
    lwz 3, 0x2c0(31)
    addi 4, 1, 0x8
    bl strcat
    lwz 4, 0x2d8(31)
    lwz 3, 0x3b8(4)
    lhz 0, 0x28(3)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x40820010 # bne .L_8039DDFC
    lbz 0, 0x1a2(4)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_8039DE28
L_8039DDFC:
    lis 4, lbl_80475DC8@ha
    addi 3, 1, 0x8
    addi 5, 4, lbl_80475DC8@l
    li 6, 0xff
    li 4, 0x1e
    crclr 6
    bl fn_8006B414
    lwz 3, 0x2c4(31)
    addi 4, 1, 0x8
    bl strcat
    .4byte 0x4800002C # b .L_8039DE50
L_8039DE28:
    lis 4, lbl_80475DC8@ha
    addi 3, 1, 0x8
    addi 5, 4, lbl_80475DC8@l
    li 6, -0x1
    li 4, 0x1e
    crclr 6
    bl fn_8006B414
    lwz 3, 0x2c4(31)
    addi 4, 1, 0x8
    bl strcat
L_8039DE50:
    addi 3, 1, 0x8
    bl strlen
    lwz 0, 0x2d0(31)
    add 0, 0, 3
    stw 0, 0x2d0(31)
L_8039DE64:
    li 3, 0x1
    .4byte 0x480016B8 # b .L_8039F520
L_8039DE6C:
    li 3, 0x1
    .4byte 0x480016B0 # b .L_8039F520
L_8039DE74:
    li 3, 0x1
    .4byte 0x480016A8 # b .L_8039F520
L_8039DE7C:
    lwz 0, 0x15c(7)
    lwz 5, 0x2cc(31)
    add 4, 31, 0
    lbz 0, 0x23a(4)
    extsb 0, 0
    cmpw 5, 0
    .4byte 0x4081000C # ble .L_8039DEA0
    li 4, 0x0
    bl fn_8039ACD0
L_8039DEA0:
    li 3, 0x1
    .4byte 0x4800167C # b .L_8039F520
L_8039DEA8:
    li 3, 0x1
    .4byte 0x48001674 # b .L_8039F520
L_8039DEB0:
    li 3, 0x1
    .4byte 0x4800166C # b .L_8039F520
L_8039DEB8:
    li 3, 0x1
    .4byte 0x48001664 # b .L_8039F520
L_8039DEC0:
    li 3, 0x1
    .4byte 0x4800165C # b .L_8039F520
L_8039DEC8:
    li 3, 0x1
    .4byte 0x48001654 # b .L_8039F520
L_8039DED0:
    li 3, 0x1
    .4byte 0x4800164C # b .L_8039F520
L_8039DED8:
    li 3, 0x1
    .4byte 0x48001644 # b .L_8039F520
L_8039DEE0:
    li 3, 0x1
    .4byte 0x4800163C # b .L_8039F520
L_8039DEE8:
    li 3, 0x1
    .4byte 0x48001634 # b .L_8039F520
L_8039DEF0:
    lwz 0, 0x15c(7)
    lwz 5, 0x2cc(31)
    add 4, 31, 0
    lbz 0, 0x23a(4)
    extsb 0, 0
    cmpw 5, 0
    .4byte 0x40810020 # ble .L_8039DF28
    lha 4, 0x190(7)
    bl fn_8039C9A0
    lwz 5, 0x2d8(31)
    mr 3, 31
    lbz 4, 0x0(30)
    lha 5, 0x190(5)
    bl fn_8039C630
L_8039DF28:
    li 3, 0x1
    .4byte 0x480015F4 # b .L_8039F520
L_8039DF30:
    li 3, 0x1
    .4byte 0x480015EC # b .L_8039F520
L_8039DF38:
    lwz 0, 0x15c(7)
    lwz 5, 0x2cc(31)
    add 4, 31, 0
    lbz 0, 0x23a(4)
    extsb 0, 0
    cmpw 5, 0
    .4byte 0x40810020 # ble .L_8039DF70
    lha 4, 0x192(7)
    bl fn_8039C9A0
    lwz 5, 0x2d8(31)
    mr 3, 31
    lbz 4, 0x0(30)
    lha 5, 0x192(5)
    bl fn_8039C630
L_8039DF70:
    li 3, 0x1
    .4byte 0x480015AC # b .L_8039F520
L_8039DF78:
    lwz 0, 0x15c(7)
    lwz 5, 0x2cc(31)
    add 4, 31, 0
    lbz 0, 0x23a(4)
    extsb 0, 0
    cmpw 5, 0
    .4byte 0x40810020 # ble .L_8039DFB0
    lwz 4, 0x178(7)
    bl fn_8039C9A0
    lwz 5, 0x2d8(31)
    mr 3, 31
    lbz 4, 0x0(30)
    lwz 5, 0x178(5)
    bl fn_8039C630
L_8039DFB0:
    li 3, 0x1
    .4byte 0x4800156C # b .L_8039F520
L_8039DFB8:
    lwz 0, 0x15c(7)
    lwz 5, 0x2cc(31)
    add 4, 31, 0
    lbz 0, 0x23a(4)
    extsb 0, 0
    cmpw 5, 0
    .4byte 0x40810020 # ble .L_8039DFF0
    lwz 4, 0x17c(7)
    bl fn_8039C9A0
    lwz 5, 0x2d8(31)
    mr 3, 31
    lbz 4, 0x0(30)
    lwz 5, 0x17c(5)
    bl fn_8039C630
L_8039DFF0:
    li 3, 0x1
    .4byte 0x4800152C # b .L_8039F520
L_8039DFF8:
    lwz 0, 0x15c(7)
    lwz 5, 0x2cc(31)
    add 4, 31, 0
    lbz 0, 0x23a(4)
    extsb 0, 0
    cmpw 5, 0
    .4byte 0x4081000C # ble .L_8039E01C
    li 4, 0x0
    bl fn_8039A638
L_8039E01C:
    li 3, 0x1
    .4byte 0x48001500 # b .L_8039F520
L_8039E024:
    lwz 0, 0x15c(7)
    lwz 5, 0x2cc(31)
    add 4, 31, 0
    lbz 0, 0x23a(4)
    extsb 0, 0
    cmpw 5, 0
    .4byte 0x40810044 # ble .L_8039E080
    lis 4, lbl_8050EC80@ha
    addi 30, 4, lbl_8050EC80@l
    lwz 0, 0x10(30)
    mulli 0, 0, 0xc8
    add 4, 30, 0
    lhz 4, 0x34(4)
    bl fn_8039C9A0
    lwz 4, 0x10(30)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mr 3, 31
    mulli 5, 4, 0xc8
    li 4, 0x4
    add 5, 0, 5
    lhz 5, 0x34(5)
    bl fn_8039C630
L_8039E080:
    li 3, 0x1
    .4byte 0x4800149C # b .L_8039F520
L_8039E088:
    lwz 0, 0x15c(7)
    lwz 5, 0x2cc(31)
    add 4, 31, 0
    lbz 0, 0x23a(4)
    extsb 0, 0
    cmpw 5, 0
    .4byte 0x40810044 # ble .L_8039E0E4
    lis 4, lbl_8050EC80@ha
    addi 30, 4, lbl_8050EC80@l
    lwz 0, 0x10(30)
    mulli 0, 0, 0xc8
    add 4, 30, 0
    lhz 4, 0x36(4)
    bl fn_8039C9A0
    lwz 4, 0x10(30)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mr 3, 31
    mulli 5, 4, 0xc8
    li 4, 0x4
    add 5, 0, 5
    lhz 5, 0x36(5)
    bl fn_8039C630
L_8039E0E4:
    li 3, 0x1
    .4byte 0x48001438 # b .L_8039F520
L_8039E0EC:
    lwz 0, 0x15c(7)
    lwz 5, 0x2cc(31)
    add 4, 31, 0
    lbz 0, 0x23a(4)
    extsb 0, 0
    cmpw 5, 0
    .4byte 0x40810024 # ble .L_8039E128
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 4, 0x10c(4)
    bl fn_8039C9A0
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    mr 3, 31
    li 4, 0x6
    lwz 5, 0x10c(5)
    bl fn_8039C630
L_8039E128:
    li 3, 0x1
    .4byte 0x480013F4 # b .L_8039F520
L_8039E130:
    cmplwi 4, 0x0
    .4byte 0x418201B0 # beq .L_8039E2E4
    lwz 0, 0x15c(7)
    lwz 3, 0x2cc(31)
    add 5, 31, 0
    lbz 0, 0x23a(5)
    extsb 0, 0
    cmpw 3, 0
    .4byte 0x40810194 # ble .L_8039E2E4
    lbz 0, 0x2d6(31)
    cmplwi 0, 0x0
    .4byte 0x41820188 # beq .L_8039E2E4
    cmpwi 3, 0x20
    .4byte 0x4080003C # bge .L_8039E1A0
    li 9, 0x1
    lwz 8, 0x74(31)
    slw 5, 9, 3
    li 6, 0x0
    srawi 0, 5, 31
    and 5, 8, 5
    and 0, 6, 0
    xor 5, 5, 6
    xor 0, 0, 6
    or. 0, 5, 0
    .4byte 0x41820008 # beq .L_8039E198
    .4byte 0x48000054 # b .L_8039E1E8
L_8039E198:
    mr 9, 6
    .4byte 0x4800004C # b .L_8039E1E8
L_8039E1A0:
    cmpwi 3, 0x40
    .4byte 0x40800040 # bge .L_8039E1E4
    subi 0, 3, 0x20
    li 9, 0x1
    slw 5, 9, 0
    lwz 8, 0x78(31)
    srawi 0, 5, 31
    li 6, 0x0
    and 5, 8, 5
    and 0, 6, 0
    xor 5, 5, 6
    xor 0, 0, 6
    or. 0, 5, 0
    .4byte 0x41820008 # beq .L_8039E1DC
    .4byte 0x48000010 # b .L_8039E1E8
L_8039E1DC:
    mr 9, 6
    .4byte 0x48000008 # b .L_8039E1E8
L_8039E1E4:
    li 9, 0x0
L_8039E1E8:
    cmpwi 9, 0x0
    .4byte 0x408200F0 # bne .L_8039E2DC
    lwz 0, 0x16c(7)
    cmpwi 0, 0x0
    .4byte 0x41820094 # beq .L_8039E28C
    cmpwi 3, 0x20
    .4byte 0x4080003C # bge .L_8039E23C
    li 8, 0x1
    lwz 7, 0x74(31)
    slw 5, 8, 3
    li 6, 0x0
    srawi 0, 5, 31
    and 5, 7, 5
    and 0, 6, 0
    xor 5, 5, 6
    xor 0, 0, 6
    or. 0, 5, 0
    .4byte 0x41820008 # beq .L_8039E234
    .4byte 0x48000054 # b .L_8039E284
L_8039E234:
    mr 8, 6
    .4byte 0x4800004C # b .L_8039E284
L_8039E23C:
    cmpwi 3, 0x40
    .4byte 0x40800040 # bge .L_8039E280
    subi 0, 3, 0x20
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
    .4byte 0x41820008 # beq .L_8039E278
    .4byte 0x48000010 # b .L_8039E284
L_8039E278:
    mr 8, 6
    .4byte 0x48000008 # b .L_8039E284
L_8039E280:
    li 8, 0x0
L_8039E284:
    cmpwi 8, 0x0
    .4byte 0x40820054 # bne .L_8039E2DC
L_8039E28C:
    add 3, 31, 3
    lbz 0, 0x265(3)
    extsb 0, 0
    subfic 5, 0, 0x1c
    cmpwi 5, 0x0
    .4byte 0x4081003C # ble .L_8039E2DC
    cmpwi 5, 0x1c
    .4byte 0x40800034 # bge .L_8039E2DC
    lwz 3, 0x2d0(31)
    addi 6, 5, 0xd0
    lwz 5, 0x2c0(31)
    li 7, -0x1
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 5, 3
    lwz 3, 0x2d0(31)
    lwz 5, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 5, 3
L_8039E2DC:
    li 0, 0x0
    stb 0, 0x2d6(31)
L_8039E2E4:
    lis 5, 0x2
    addi 0, 5, 0x13
    cmpw 4, 0
    .4byte 0x41820D1C # beq .L_8039F00C
    .4byte 0x40800138 # bge .L_8039E42C
    lis 3, 0x1
    addi 0, 3, 0x10
    cmpw 4, 0
    .4byte 0x418209B8 # beq .L_8039ECBC
    .4byte 0x40800094 # bge .L_8039E39C
    addi 0, 3, 0x5
    cmpw 4, 0
    .4byte 0x41820848 # beq .L_8039EB5C
    .4byte 0x40800040 # bge .L_8039E358
    addi 0, 3, 0x1
    cmpw 4, 0
    .4byte 0x418202F4 # beq .L_8039E618
    .4byte 0x4080001C # bge .L_8039E344
    cmpwi 4, 0x0
    .4byte 0x4182022C # beq .L_8039E55C
    .4byte 0x418011E8 # blt .L_8039F51C
    cmpw 4, 3
    .4byte 0x40800228 # bge .L_8039E564
    .4byte 0x480011DC # b .L_8039F51C
L_8039E344:
    addi 0, 3, 0x3
    cmpw 4, 0
    .4byte 0x41820434 # beq .L_8039E780
    .4byte 0x408007B4 # bge .L_8039EB04
    .4byte 0x48000378 # b .L_8039E6CC
L_8039E358:
    addi 0, 3, 0xa
    cmpw 4, 0
    .4byte 0x418206F0 # beq .L_8039EA50
    .4byte 0x40800024 # bge .L_8039E388
    addi 0, 3, 0x8
    cmpw 4, 0
    .4byte 0x41820578 # beq .L_8039E8E8
    .4byte 0x40800628 # bge .L_8039E99C
    addi 0, 3, 0x7
    cmpw 4, 0
    .4byte 0x408004B4 # bge .L_8039E834
    .4byte 0x48000830 # b .L_8039EBB4
L_8039E388:
    addi 0, 3, 0xc
    cmpw 4, 0
    .4byte 0x418208D4 # beq .L_8039EC64
    .4byte 0x40801188 # bge .L_8039F51C
    .4byte 0x48000874 # b .L_8039EC0C
L_8039E39C:
    addi 0, 5, 0x3
    cmpw 4, 0
    .4byte 0x41820CFC # beq .L_8039F0A0
    .4byte 0x40800040 # bge .L_8039E3E8
    cmpw 4, 5
    .4byte 0x41820AD0 # beq .L_8039EE80
    .4byte 0x40800024 # bge .L_8039E3D8
    addi 0, 3, 0x13
    cmpw 4, 0
    .4byte 0x41820A04 # beq .L_8039EDC4
    .4byte 0x40801158 # bge .L_8039F51C
    addi 0, 3, 0x12
    cmpw 4, 0
    .4byte 0x4080099C # bge .L_8039ED6C
    .4byte 0x48000940 # b .L_8039ED14
L_8039E3D8:
    addi 0, 5, 0x2
    cmpw 4, 0
    .4byte 0x40800AA0 # bge .L_8039EE80
    .4byte 0x48000B94 # b .L_8039EF78
L_8039E3E8:
    addi 0, 5, 0xc
    cmpw 4, 0
    .4byte 0x41820A2C # beq .L_8039EE1C
    .4byte 0x40800024 # bge .L_8039E418
    addi 0, 5, 0xa
    cmpw 4, 0
    .4byte 0x41820A1C # beq .L_8039EE1C
    .4byte 0x40800C08 # bge .L_8039F00C
    addi 0, 5, 0x9
    cmpw 4, 0
    .4byte 0x40800AD4 # bge .L_8039EEE4
    .4byte 0x48000D20 # b .L_8039F134
L_8039E418:
    addi 0, 5, 0x11
    cmpw 4, 0
    .4byte 0x41820AC4 # beq .L_8039EEE4
    .4byte 0x408009F8 # bge .L_8039EE1C
    .4byte 0x48000D0C # b .L_8039F134
L_8039E42C:
    addi 0, 5, 0x2e
    cmpw 4, 0
    .4byte 0x41820E38 # beq .L_8039F26C
    .4byte 0x40800098 # bge .L_8039E4D0
    addi 0, 5, 0x1d
    cmpw 4, 0
    .4byte 0x41820D64 # beq .L_8039F1A8
    .4byte 0x40800048 # bge .L_8039E490
    addi 0, 5, 0x19
    cmpw 4, 0
    .4byte 0x41820A2C # beq .L_8039EE80
    .4byte 0x40800024 # bge .L_8039E47C
    addi 0, 5, 0x16
    cmpw 4, 0
    .4byte 0x41820CD8 # beq .L_8039F13C
    .4byte 0x40800D40 # bge .L_8039F1A8
    addi 0, 5, 0x15
    cmpw 4, 0
    .4byte 0x40800CC0 # bge .L_8039F134
    .4byte 0x480009A4 # b .L_8039EE1C
L_8039E47C:
    addi 0, 5, 0x1b
    cmpw 4, 0
    .4byte 0x418209FC # beq .L_8039EE80
    .4byte 0x40800C18 # bge .L_8039F0A0
    .4byte 0x48000AEC # b .L_8039EF78
L_8039E490:
    addi 0, 5, 0x29
    cmpw 4, 0
    .4byte 0x41820D88 # beq .L_8039F220
    .4byte 0x40800020 # bge .L_8039E4BC
    addi 0, 5, 0x25
    cmpw 4, 0
    .4byte 0x40800D70 # bge .L_8039F218
    addi 0, 5, 0x1f
    cmpw 4, 0
    .4byte 0x40800D5C # bge .L_8039F210
    .4byte 0x48000CF8 # b .L_8039F1B0
L_8039E4BC:
    addi 0, 5, 0x2c
    cmpw 4, 0
    .4byte 0x41820D98 # beq .L_8039F25C
    .4byte 0x40800D9C # bge .L_8039F264
    .4byte 0x48000D88 # b .L_8039F254
L_8039E4D0:
    lis 3, 0x3
    addi 0, 3, 0x2
    cmpw 4, 0
    .4byte 0x41820E10 # beq .L_8039F2EC
    .4byte 0x40800044 # bge .L_8039E524
    addi 0, 5, 0x33
    cmpw 4, 0
    .4byte 0x41820DA8 # beq .L_8039F294
    .4byte 0x40800024 # bge .L_8039E514
    addi 0, 5, 0x31
    cmpw 4, 0
    .4byte 0x41820D88 # beq .L_8039F284
    .4byte 0x40800D8C # bge .L_8039F28C
    addi 0, 5, 0x30
    cmpw 4, 0
    .4byte 0x40800D70 # bge .L_8039F27C
    .4byte 0x48000D64 # b .L_8039F274
L_8039E514:
    cmpw 4, 3
    .4byte 0x41820D84 # beq .L_8039F29C
    .4byte 0x40800DC8 # bge .L_8039F2E4
    .4byte 0x48000FFC # b .L_8039F51C
L_8039E524:
    addi 0, 3, 0x6
    cmpw 4, 0
    .4byte 0x41820ECC # beq .L_8039F3F8
    .4byte 0x40800018 # bge .L_8039E548
    addi 0, 3, 0x4
    cmpw 4, 0
    .4byte 0x41820E40 # beq .L_8039F37C
    .4byte 0x40800E84 # bge .L_8039F3C4
    .4byte 0x48000DF0 # b .L_8039F334
L_8039E548:
    addi 0, 3, 0x8
    cmpw 4, 0
    .4byte 0x41820F80 # beq .L_8039F4D0
    .4byte 0x40800FC8 # bge .L_8039F51C
    .4byte 0x48000F0C # b .L_8039F464
L_8039E55C:
    li 3, 0x1
    .4byte 0x48000FC0 # b .L_8039F520
L_8039E564:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810090 # ble .L_8039E610
    lwz 3, 0x2d0(31)
    li 9, -0x1
    lwz 4, 0x2c0(31)
    li 8, -0xf
    addi 0, 3, 0x1
    li 7, 0x3c
    stw 0, 0x2d0(31)
    li 6, -0x40
    li 5, -0x20
    stbx 9, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 8, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039E610:
    li 3, 0x1
    .4byte 0x48000F0C # b .L_8039F520
L_8039E618:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810090 # ble .L_8039E6C4
    lwz 3, 0x2d0(31)
    li 9, -0x1
    lwz 4, 0x2c0(31)
    li 8, -0xe
    addi 0, 3, 0x1
    li 7, 0x3c
    stw 0, 0x2d0(31)
    li 6, -0x40
    li 5, -0x20
    stbx 9, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 8, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039E6C4:
    li 3, 0x1
    .4byte 0x48000E58 # b .L_8039F520
L_8039E6CC:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810090 # ble .L_8039E778
    lwz 3, 0x2d0(31)
    li 9, -0x1
    lwz 4, 0x2c0(31)
    li 8, -0xd
    addi 0, 3, 0x1
    li 7, 0x3c
    stw 0, 0x2d0(31)
    li 6, -0x40
    li 5, -0x20
    stbx 9, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 8, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039E778:
    li 3, 0x1
    .4byte 0x48000DA4 # b .L_8039F520
L_8039E780:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810090 # ble .L_8039E82C
    lwz 3, 0x2d0(31)
    li 9, -0x1
    lwz 4, 0x2c0(31)
    li 8, -0xc
    addi 0, 3, 0x1
    li 7, 0x3c
    stw 0, 0x2d0(31)
    li 6, -0x40
    li 5, -0x20
    stbx 9, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 8, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039E82C:
    li 3, 0x1
    .4byte 0x48000CF0 # b .L_8039F520
L_8039E834:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810090 # ble .L_8039E8E0
    lwz 3, 0x2d0(31)
    li 9, -0x1
    lwz 4, 0x2c0(31)
    li 8, -0xb
    addi 0, 3, 0x1
    li 7, 0x3d
    stw 0, 0x2d0(31)
    li 6, 0x0
    li 5, 0x20
    stbx 9, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 8, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039E8E0:
    li 3, 0x1
    .4byte 0x48000C3C # b .L_8039F520
L_8039E8E8:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810090 # ble .L_8039E994
    lwz 3, 0x2d0(31)
    li 9, -0x1
    lwz 4, 0x2c0(31)
    li 8, -0xa
    addi 0, 3, 0x1
    li 7, 0x3d
    stw 0, 0x2d0(31)
    li 6, 0x40
    li 5, 0x60
    stbx 9, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 8, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039E994:
    li 3, 0x1
    .4byte 0x48000B88 # b .L_8039F520
L_8039E99C:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810090 # ble .L_8039EA48
    lwz 3, 0x2d0(31)
    li 9, -0x1
    lwz 4, 0x2c0(31)
    li 8, -0x9
    addi 0, 3, 0x1
    li 7, 0x3d
    stw 0, 0x2d0(31)
    li 6, -0x80
    li 5, -0x60
    stbx 9, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 8, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039EA48:
    li 3, 0x1
    .4byte 0x48000AD4 # b .L_8039F520
L_8039EA50:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810090 # ble .L_8039EAFC
    lwz 3, 0x2d0(31)
    li 9, -0x1
    lwz 4, 0x2c0(31)
    li 8, -0x8
    addi 0, 3, 0x1
    li 7, 0x3d
    stw 0, 0x2d0(31)
    li 6, -0x40
    li 5, -0x20
    stbx 9, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 8, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039EAFC:
    li 3, 0x1
    .4byte 0x48000A20 # b .L_8039F520
L_8039EB04:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810034 # ble .L_8039EB54
    lwz 3, 0x2d0(31)
    li 6, 0x3c
    lwz 4, 0x2c0(31)
    li 5, 0x0
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039EB54:
    li 3, 0x1
    .4byte 0x480009C8 # b .L_8039F520
L_8039EB5C:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810034 # ble .L_8039EBAC
    lwz 3, 0x2d0(31)
    li 6, 0x3c
    lwz 4, 0x2c0(31)
    li 5, 0x20
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039EBAC:
    li 3, 0x1
    .4byte 0x48000970 # b .L_8039F520
L_8039EBB4:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810034 # ble .L_8039EC04
    lwz 3, 0x2d0(31)
    li 6, 0x3c
    lwz 4, 0x2c0(31)
    li 5, 0x40
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039EC04:
    li 3, 0x1
    .4byte 0x48000918 # b .L_8039F520
L_8039EC0C:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810034 # ble .L_8039EC5C
    lwz 3, 0x2d0(31)
    li 6, 0x3c
    lwz 4, 0x2c0(31)
    li 5, 0x60
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039EC5C:
    li 3, 0x1
    .4byte 0x480008C0 # b .L_8039F520
L_8039EC64:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810034 # ble .L_8039ECB4
    lwz 3, 0x2d0(31)
    li 6, 0x3c
    lwz 4, 0x2c0(31)
    li 5, -0x80
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039ECB4:
    li 3, 0x1
    .4byte 0x48000868 # b .L_8039F520
L_8039ECBC:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810034 # ble .L_8039ED0C
    lwz 3, 0x2d0(31)
    li 6, 0x14
    lwz 4, 0x2c0(31)
    li 5, -0x20
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039ED0C:
    li 3, 0x1
    .4byte 0x48000810 # b .L_8039F520
L_8039ED14:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810034 # ble .L_8039ED64
    lwz 3, 0x2d0(31)
    li 6, 0x15
    lwz 4, 0x2c0(31)
    li 5, 0x0
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039ED64:
    li 3, 0x1
    .4byte 0x480007B8 # b .L_8039F520
L_8039ED6C:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810034 # ble .L_8039EDBC
    lwz 3, 0x2d0(31)
    li 6, 0x15
    lwz 4, 0x2c0(31)
    li 5, 0x40
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039EDBC:
    li 3, 0x1
    .4byte 0x48000760 # b .L_8039F520
L_8039EDC4:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810034 # ble .L_8039EE14
    lwz 3, 0x2d0(31)
    li 6, 0x15
    lwz 4, 0x2c0(31)
    li 5, 0x20
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039EE14:
    li 3, 0x1
    .4byte 0x48000708 # b .L_8039F520
L_8039EE1C:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810040 # ble .L_8039EE78
    lbz 4, 0x4(30)
    mr 3, 31
    bl fn_8039D30C
    lwz 3, 0x2d0(31)
    li 6, 0x14
    lwz 4, 0x2c0(31)
    li 5, 0x20
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039EE78:
    li 3, 0x1
    .4byte 0x480006A4 # b .L_8039F520
L_8039EE80:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810040 # ble .L_8039EEDC
    lbz 4, 0x0(30)
    mr 3, 31
    bl fn_8039D30C
    lwz 3, 0x2d0(31)
    li 6, 0x14
    lwz 4, 0x2c0(31)
    li 5, 0x20
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
L_8039EEDC:
    li 3, 0x1
    .4byte 0x48000640 # b .L_8039F520
L_8039EEE4:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810070 # ble .L_8039EF70
    lbz 4, 0x4(30)
    mr 3, 31
    bl fn_8039D30C
    lwz 3, 0x2d0(31)
    li 8, -0x1
    lwz 4, 0x2c0(31)
    li 7, -0x50
    addi 0, 3, 0x1
    li 6, 0x14
    stw 0, 0x2d0(31)
    li 5, 0x20
    stbx 8, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
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
L_8039EF70:
    li 3, 0x1
    .4byte 0x480005AC # b .L_8039F520
L_8039EF78:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810070 # ble .L_8039F004
    lbz 4, 0x0(30)
    mr 3, 31
    bl fn_8039D30C
    lwz 3, 0x2d0(31)
    li 8, -0x1
    lwz 4, 0x2c0(31)
    li 7, -0x50
    addi 0, 3, 0x1
    li 6, 0x14
    stw 0, 0x2d0(31)
    li 5, 0x20
    stbx 8, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
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
L_8039F004:
    li 3, 0x1
    .4byte 0x48000518 # b .L_8039F520
L_8039F00C:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810070 # ble .L_8039F098
    lbz 4, 0x4(30)
    mr 3, 31
    bl fn_8039D30C
    lwz 3, 0x2d0(31)
    li 8, -0x1
    lwz 4, 0x2c0(31)
    li 7, -0x4f
    addi 0, 3, 0x1
    li 6, 0x14
    stw 0, 0x2d0(31)
    li 5, 0x20
    stbx 8, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
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
L_8039F098:
    li 3, 0x1
    .4byte 0x48000484 # b .L_8039F520
L_8039F0A0:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810070 # ble .L_8039F12C
    lbz 4, 0x0(30)
    mr 3, 31
    bl fn_8039D30C
    lwz 3, 0x2d0(31)
    li 8, -0x1
    lwz 4, 0x2c0(31)
    li 7, -0x4f
    addi 0, 3, 0x1
    li 6, 0x14
    stw 0, 0x2d0(31)
    li 5, 0x20
    stbx 8, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 7, 4, 3
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
L_8039F12C:
    li 3, 0x1
    .4byte 0x480003F0 # b .L_8039F520
L_8039F134:
    li 3, 0x1
    .4byte 0x480003E8 # b .L_8039F520
L_8039F13C:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810048 # ble .L_8039F1A0
    lbz 6, 0x0(30)
    cmplwi 6, 0x5
    .4byte 0x40810010 # ble .L_8039F174
    clrlwi 0, 6, 24
    cmplwi 0, 0xb
    .4byte 0x40820030 # bne .L_8039F1A0
L_8039F174:
    lwz 3, 0x2d0(31)
    li 5, -0x3
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
L_8039F1A0:
    li 3, 0x1
    .4byte 0x4800037C # b .L_8039F520
L_8039F1A8:
    li 3, 0x1
    .4byte 0x48000374 # b .L_8039F520
L_8039F1B0:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x4081003C # ble .L_8039F208
    lbz 6, 0x0(30)
    cmplwi 6, 0x5
    .4byte 0x40800030 # bge .L_8039F208
    lwz 3, 0x2d0(31)
    li 5, -0x5
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 5, 4, 3
    lwz 3, 0x2d0(31)
    lwz 4, 0x2c0(31)
    addi 0, 3, 0x1
    stw 0, 0x2d0(31)
    stbx 6, 4, 3
L_8039F208:
    li 3, 0x1
    .4byte 0x48000314 # b .L_8039F520
L_8039F210:
    li 3, 0x1
    .4byte 0x4800030C # b .L_8039F520
L_8039F218:
    li 3, 0x1
    .4byte 0x48000304 # b .L_8039F520
L_8039F220:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810010 # ble .L_8039F24C
    mr 3, 31
    li 4, 0x1
    bl fn_8039ACD0
L_8039F24C:
    li 3, 0x1
    .4byte 0x480002D0 # b .L_8039F520
L_8039F254:
    li 3, 0x1
    .4byte 0x480002C8 # b .L_8039F520
L_8039F25C:
    li 3, 0x1
    .4byte 0x480002C0 # b .L_8039F520
L_8039F264:
    li 3, 0x1
    .4byte 0x480002B8 # b .L_8039F520
L_8039F26C:
    li 3, 0x1
    .4byte 0x480002B0 # b .L_8039F520
L_8039F274:
    li 3, 0x1
    .4byte 0x480002A8 # b .L_8039F520
L_8039F27C:
    li 3, 0x1
    .4byte 0x480002A0 # b .L_8039F520
L_8039F284:
    li 3, 0x1
    .4byte 0x48000298 # b .L_8039F520
L_8039F28C:
    li 3, 0x1
    .4byte 0x48000290 # b .L_8039F520
L_8039F294:
    li 3, 0x1
    .4byte 0x48000288 # b .L_8039F520
L_8039F29C:
    lwz 5, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(5)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810024 # ble .L_8039F2DC
    lha 4, 0x190(5)
    mr 3, 31
    bl fn_8039C258
    lwz 5, 0x2d8(31)
    mr 3, 31
    lbz 4, 0x0(30)
    lha 5, 0x190(5)
    bl fn_8039B3EC
L_8039F2DC:
    li 3, 0x1
    .4byte 0x48000240 # b .L_8039F520
L_8039F2E4:
    li 3, 0x1
    .4byte 0x48000238 # b .L_8039F520
L_8039F2EC:
    lwz 5, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(5)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810024 # ble .L_8039F32C
    lha 4, 0x192(5)
    mr 3, 31
    bl fn_8039C258
    lwz 5, 0x2d8(31)
    mr 3, 31
    lbz 4, 0x0(30)
    lha 5, 0x192(5)
    bl fn_8039B3EC
L_8039F32C:
    li 3, 0x1
    .4byte 0x480001F0 # b .L_8039F520
L_8039F334:
    lwz 5, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(5)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810024 # ble .L_8039F374
    lwz 4, 0x178(5)
    mr 3, 31
    bl fn_8039C258
    lwz 5, 0x2d8(31)
    mr 3, 31
    lbz 4, 0x0(30)
    lwz 5, 0x178(5)
    bl fn_8039B3EC
L_8039F374:
    li 3, 0x1
    .4byte 0x480001A8 # b .L_8039F520
L_8039F37C:
    lwz 5, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(5)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810024 # ble .L_8039F3BC
    lwz 4, 0x17c(5)
    mr 3, 31
    bl fn_8039C258
    lwz 5, 0x2d8(31)
    mr 3, 31
    lbz 4, 0x0(30)
    lwz 5, 0x17c(5)
    bl fn_8039B3EC
L_8039F3BC:
    li 3, 0x1
    .4byte 0x48000160 # b .L_8039F520
L_8039F3C4:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810010 # ble .L_8039F3F0
    mr 3, 31
    li 4, 0x1
    bl fn_8039A638
L_8039F3F0:
    li 3, 0x1
    .4byte 0x4800012C # b .L_8039F520
L_8039F3F8:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810048 # ble .L_8039F45C
    lis 4, lbl_8050EC80@ha
    mr 3, 31
    addi 30, 4, lbl_8050EC80@l
    lwz 0, 0x10(30)
    mulli 0, 0, 0xc8
    add 4, 30, 0
    lhz 4, 0x34(4)
    bl fn_8039C258
    lwz 4, 0x10(30)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mr 3, 31
    mulli 5, 4, 0xc8
    li 4, 0x4
    add 5, 0, 5
    lhz 5, 0x34(5)
    bl fn_8039B3EC
L_8039F45C:
    li 3, 0x1
    .4byte 0x480000C0 # b .L_8039F520
L_8039F464:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810048 # ble .L_8039F4C8
    lis 4, lbl_8050EC80@ha
    mr 3, 31
    addi 30, 4, lbl_8050EC80@l
    lwz 0, 0x10(30)
    mulli 0, 0, 0xc8
    add 4, 30, 0
    lhz 4, 0x36(4)
    bl fn_8039C258
    lwz 4, 0x10(30)
    lis 3, lbl_8050EC80@ha
    addi 0, 3, lbl_8050EC80@l
    mr 3, 31
    mulli 5, 4, 0xc8
    li 4, 0x4
    add 5, 0, 5
    lhz 5, 0x36(5)
    bl fn_8039B3EC
L_8039F4C8:
    li 3, 0x1
    .4byte 0x48000054 # b .L_8039F520
L_8039F4D0:
    lwz 3, 0x2d8(31)
    lwz 4, 0x2cc(31)
    lwz 0, 0x15c(3)
    add 3, 31, 0
    lbz 0, 0x23a(3)
    extsb 0, 0
    cmpw 4, 0
    .4byte 0x40810028 # ble .L_8039F514
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    mr 3, 31
    lwz 4, 0x10c(4)
    bl fn_8039C258
    .4byte 0x80AD91B8 # lwz r5, lbl_8053AD78@sda21(r0)
    mr 3, 31
    li 4, 0x6
    lwz 5, 0x10c(5)
    bl fn_8039B3EC
L_8039F514:
    li 3, 0x1
    .4byte 0x48000008 # b .L_8039F520
L_8039F51C:
    li 3, 0x0
L_8039F520:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

