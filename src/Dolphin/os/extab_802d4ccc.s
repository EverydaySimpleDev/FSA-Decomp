# Fresh project-wide gap hunt continuation: 1 functions, 7,632 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_8000CD64
etb_8000CD64:
    .4byte 0x90080000
    .4byte 0x00000000
.size etb_8000CD64, 8

.section extabindex, "a"
.balign 4
.global eti_8001BD90
eti_8001BD90:
    .4byte fn_802D4CCC
    .4byte 0x00001DD0
    .4byte etb_8000CD64
.size eti_8001BD90, 12

.text
.balign 4
.global fn_802D4CCC

fn_802D4CCC:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stmw 14, 0x38(1)
    mr 29, 4
    cmpwi 29, 0x8
    stw 3, 0x10(1)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(5)
    lwz 5, 0xc(3)
    .4byte 0x40800030 # bge .L_802D4D24
    lwz 3, 0x18(5)
    lwz 0, 0x14(5)
    mulli 3, 3, 0x280
    slwi 0, 0, 6
    add 3, 5, 3
    add 3, 3, 0
    lwz 0, 0x1048(3)
    stw 0, 0x20(1)
    lwz 0, 0x104c(3)
    stw 0, 0x24(1)
    .4byte 0x48000034 # b .L_802D4D54
L_802D4D24:
    lwz 4, 0x18(5)
    slwi 0, 29, 3
    lwz 3, 0x14(5)
    mulli 4, 4, 0x280
    slwi 3, 3, 6
    add 4, 5, 4
    add 3, 4, 3
    add 3, 3, 0
    lwz 0, 0x1010(3)
    stw 0, 0x20(1)
    lwz 0, 0x1014(3)
    stw 0, 0x24(1)
L_802D4D54:
    lwz 3, 0x10(1)
    slwi 0, 29, 1
    li 28, 0x0
    cmpwi 29, 0x8
    addis 4, 3, 0x1
    li 18, 0x1
    add 3, 4, 0
    li 19, 0x0
    sth 28, 0x31b8(3)
    add 3, 4, 29
    li 17, 0x0
    li 16, 0x0
    stb 28, 0x31df(3)
    li 31, 0x0
    .4byte 0x40800570 # bge .L_802D52FC
    addis 17, 29, 0x1
    mr 14, 28
    mr 15, 29
    li 20, 0x0
    addi 17, 17, 0x31df
L_802D4DA4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 20
    lwz 3, 0x20(3)
    bl fn_802F9908
    clrlwi 3, 3, 16
    cmplwi 3, 0x17
    .4byte 0x4182000C # beq .L_802D4DCC
    cmplwi 3, 0x16
    .4byte 0x40820118 # bne .L_802D4EE0
L_802D4DCC:
    mr 4, 16
    addi 3, 29, 0x1
    bl fn_802DED40
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    subfic 0, 28, 0x3c
    slwi 4, 0, 1
    lwz 5, 0x4(5)
    clrlwi. 0, 3, 16
    addi 0, 4, 0x2948
    lwz 4, 0xc(5)
    sthx 20, 4, 0
    .4byte 0x408200B0 # bne .L_802D4EA8
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 5, 20
    addi 4, 29, 0x1
    lwz 3, 0x20(3)
    bl fn_802F9908
    clrlwi 5, 3, 16
    cmpwi 5, 0xb0
    .4byte 0x40800024 # bge .L_802D4E3C
    cmpwi 5, 0x28
    .4byte 0x40800010 # bge .L_802D4E30
    cmpwi 5, 0x0
    .4byte 0x41820064 # beq .L_802D4E8C
    .4byte 0x480003D4 # b .L_802D5200
L_802D4E30:
    cmpwi 5, 0x30
    .4byte 0x408003CC # bge .L_802D5200
    .4byte 0x4800001C # b .L_802D4E54
L_802D4E3C:
    cmpwi 5, 0x100f
    .4byte 0x41820030 # beq .L_802D4E70
    .4byte 0x408003BC # bge .L_802D5200
    cmpwi 5, 0xb4
    .4byte 0x408003B4 # bge .L_802D5200
    .4byte 0x48000020 # b .L_802D4E70
L_802D4E54:
    mr 3, 29
    mr 4, 16
    subi 5, 5, 0x26
    bl fn_802DEC40
    addi 16, 16, 0x1
    addi 28, 28, 0x4
    .4byte 0x48000394 # b .L_802D5200
L_802D4E70:
    mr 3, 29
    mr 4, 16
    subi 5, 5, 0xa6
    bl fn_802DEC40
    addi 16, 16, 0x1
    addi 28, 28, 0x4
    .4byte 0x48000378 # b .L_802D5200
L_802D4E8C:
    mr 3, 29
    mr 4, 16
    li 5, 0x1
    bl fn_802DEC40
    addi 16, 16, 0x1
    addi 28, 28, 0x4
    .4byte 0x4800035C # b .L_802D5200
L_802D4EA8:
    lis 4, lbl_8046E190@ha
    clrlslwi 5, 3, 16, 2
    addi 0, 4, lbl_8046E190@l
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    add 6, 0, 5
    mr 4, 20
    lhz 7, 0x0(6)
    mr 5, 15
    lhz 8, 0x2(6)
    li 6, 0x1
    bl fn_8029EC84
    addi 16, 16, 0x1
    addi 28, 28, 0x4
    .4byte 0x48000324 # b .L_802D5200
L_802D4EE0:
    cmplwi 3, 0x30
    .4byte 0x4182007C # beq .L_802D4F60
    cmplwi 3, 0x10
    .4byte 0x41820074 # beq .L_802D4F60
    cmplwi 3, 0xaa
    .4byte 0x4182006C # beq .L_802D4F60
    cmplwi 3, 0x68
    .4byte 0x41820064 # beq .L_802D4F60
    subi 0, 3, 0x19c
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x40810054 # ble .L_802D4F60
    cmplwi 3, 0x22
    .4byte 0x4180000C # blt .L_802D4F20
    cmplwi 3, 0x25
    .4byte 0x40810044 # ble .L_802D4F60
L_802D4F20:
    subi 0, 3, 0x80
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x40810034 # ble .L_802D4F60
    cmplwi 3, 0xe5
    .4byte 0x4182002C # beq .L_802D4F60
    cmplwi 3, 0x9b
    .4byte 0x41820024 # beq .L_802D4F60
    cmplwi 3, 0xfa
    .4byte 0x4182001C # beq .L_802D4F60
    cmplwi 3, 0x3eb
    .4byte 0x41820014 # beq .L_802D4F60
    cmplwi 3, 0xdc
    .4byte 0x4182000C # beq .L_802D4F60
    cmplwi 3, 0xdd
    .4byte 0x40820278 # bne .L_802D51D4
L_802D4F60:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    cmplwi 3, 0xfa
    addi 0, 14, 0x2948
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    sthx 20, 4, 0
    .4byte 0x40820014 # bne .L_802D4F8C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 4, 0x4(4)
    lwz 4, 0xc(4)
    sthx 20, 4, 0
L_802D4F8C:
    lwz 0, 0x24(1)
    li 5, 0x0
    and 4, 0, 18
    lwz 0, 0x20(1)
    xor 4, 4, 5
    and 0, 0, 19
    xor 0, 0, 5
    or. 0, 4, 0
    .4byte 0x4182020C # beq .L_802D51B8
    cmpwi 3, 0xdc
    .4byte 0x418201B4 # beq .L_802D5168
    .4byte 0x4080004C # bge .L_802D5004
    cmpwi 3, 0x81
    .4byte 0x41820138 # beq .L_802D50F8
    .4byte 0x40800028 # bge .L_802D4FEC
    cmpwi 3, 0x68
    .4byte 0x418200BC # beq .L_802D5088
    .4byte 0x40800010 # bge .L_802D4FE0
    cmpwi 3, 0x30
    .4byte 0x41820074 # beq .L_802D504C
    .4byte 0x480001DC # b .L_802D51B8
L_802D4FE0:
    cmpwi 3, 0x80
    .4byte 0x408000F8 # bge .L_802D50DC
    .4byte 0x480001D0 # b .L_802D51B8
L_802D4FEC:
    cmpwi 3, 0xaa
    .4byte 0x41820078 # beq .L_802D5068
    .4byte 0x408001C4 # bge .L_802D51B8
    cmpwi 3, 0x9b
    .4byte 0x41820118 # beq .L_802D5114
    .4byte 0x480001B8 # b .L_802D51B8
L_802D5004:
    cmpwi 3, 0x19c
    .4byte 0x4182009C # beq .L_802D50A4
    .4byte 0x40800028 # bge .L_802D5034
    cmpwi 3, 0xe5
    .4byte 0x418200E4 # beq .L_802D50F8
    .4byte 0x40800010 # bge .L_802D5028
    cmpwi 3, 0xde
    .4byte 0x40800198 # bge .L_802D51B8
    .4byte 0x48000160 # b .L_802D5184
L_802D5028:
    cmpwi 3, 0xfa
    .4byte 0x41820120 # beq .L_802D514C
    .4byte 0x48000188 # b .L_802D51B8
L_802D5034:
    cmpwi 3, 0x3eb
    .4byte 0x41820168 # beq .L_802D51A0
    .4byte 0x4080017C # bge .L_802D51B8
    cmpwi 3, 0x19e
    .4byte 0x40800174 # bge .L_802D51B8
    .4byte 0x48000078 # b .L_802D50C0
L_802D504C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 20
    li 6, 0x10
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000154 # b .L_802D51B8
L_802D5068:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 15
    mr 5, 20
    li 6, 0x0
    li 7, 0xbc
    li 8, 0xbd
    bl fn_8029DEBC
    .4byte 0x48000134 # b .L_802D51B8
L_802D5088:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 20
    li 6, 0x12
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000118 # b .L_802D51B8
L_802D50A4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 20
    li 6, 0x19e
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480000FC # b .L_802D51B8
L_802D50C0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 20
    li 6, 0x19f
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480000E0 # b .L_802D51B8
L_802D50DC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 20
    li 6, 0x9e
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480000C4 # b .L_802D51B8
L_802D50F8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 20
    li 6, 0x9d
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480000A8 # b .L_802D51B8
L_802D5114:
    subi 4, 20, 0x10
    rlwinm 5, 20, 0, 23, 23
    rlwinm 0, 4, 0, 23, 23
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    cmpw 5, 0
    .4byte 0x41820008 # beq .L_802D5130
    subi 4, 20, 0x110
L_802D5130:
    mr 5, 15
    li 6, 0x6e
    li 7, 0x6f
    li 8, 0x7e
    li 9, 0x7f
    bl fn_8029DF80
    .4byte 0x48000070 # b .L_802D51B8
L_802D514C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 20
    li 6, 0x5a
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000054 # b .L_802D51B8
L_802D5168:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 20
    li 6, 0x9e
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000038 # b .L_802D51B8
L_802D5184:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 20
    li 6, 0x20
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x4800001C # b .L_802D51B8
L_802D51A0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 20
    li 6, 0x3e0
    lwz 3, 0x20(3)
    bl fn_802F9974
L_802D51B8:
    slwi 0, 19, 1
    slwi 3, 18, 1
    rlwimi 0, 18, 1, 31, 31
    addi 14, 14, 0x2
    mr 18, 3
    mr 19, 0
    .4byte 0x48000030 # b .L_802D5200
L_802D51D4:
    lis 4, lbl_8046CB88@ha
    clrlslwi 0, 3, 16, 1
    addi 3, 4, lbl_8046CB88@l
    lhzx 0, 3, 0
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_802D51F4
    cmplwi 0, 0x3b
    .4byte 0x40820010 # bne .L_802D5200
L_802D51F4:
    lwz 3, 0x10(1)
    li 0, 0x1
    stbx 0, 3, 17
L_802D5200:
    addi 20, 20, 0x1
    cmpwi 20, 0x800
    .4byte 0x4180FB9C # blt .L_802D4DA4
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046E7D4@ha
    addi 5, 3, lbl_8046E7D4@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x180
    li 7, 0x40
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0xc0
    bl fn_802FA160
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x4(4)
    lwz 3, 0xc(3)
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x40821820 # bne .L_802D6A88
    lwz 3, 0xa4(4)
    lis 4, lbl_8046E7D4@ha
    addi 5, 4, lbl_8046E7D4@l
    lwz 12, 0x0(3)
    lis 4, 0x5343
    addi 4, 4, 0x4820
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x2c0
    li 7, 0x5c0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x40
    bl fn_802FA160
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046E7D4@ha
    addi 5, 3, lbl_8046E7D4@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x300
    li 7, 0x7c0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x40
    bl fn_802FA160
    .4byte 0x48001790 # b .L_802D6A88
L_802D52FC:
    subi 3, 29, 0x7
    addis 0, 29, 0x1
    slwi 30, 3, 7
    stw 0, 0x18(1)
    mr 3, 0
    addi 3, 3, 0x31df
    stw 3, 0x18(1)
L_802D5318:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    lwz 3, 0x20(3)
    bl fn_802F9908
    clrlwi 27, 3, 16
    cmplwi 27, 0x17
    .4byte 0x4182000C # beq .L_802D5340
    cmplwi 27, 0x16
    .4byte 0x4082011C # bne .L_802D5458
L_802D5340:
    mr 3, 29
    mr 4, 16
    bl fn_802DED40
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    subfic 4, 31, 0x3c
    clrlwi. 0, 3, 16
    lwz 5, 0x4(5)
    slwi 4, 4, 1
    lwz 0, 0xc(5)
    add 4, 0, 4
    addi 0, 4, 0x2948
    sthx 28, 30, 0
    .4byte 0x408200B0 # bne .L_802D5420
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 5, 28
    addi 4, 29, 0x8
    lwz 3, 0x20(3)
    bl fn_802F9908
    clrlwi 5, 3, 16
    cmpwi 5, 0xb0
    .4byte 0x40800024 # bge .L_802D53B4
    cmpwi 5, 0x28
    .4byte 0x40800010 # bge .L_802D53A8
    cmpwi 5, 0x0
    .4byte 0x41820064 # beq .L_802D5404
    .4byte 0x480016D8 # b .L_802D6A7C
L_802D53A8:
    cmpwi 5, 0x30
    .4byte 0x408016D0 # bge .L_802D6A7C
    .4byte 0x4800001C # b .L_802D53CC
L_802D53B4:
    cmpwi 5, 0x100f
    .4byte 0x41820030 # beq .L_802D53E8
    .4byte 0x408016C0 # bge .L_802D6A7C
    cmpwi 5, 0xb4
    .4byte 0x408016B8 # bge .L_802D6A7C
    .4byte 0x48000020 # b .L_802D53E8
L_802D53CC:
    mr 3, 29
    mr 4, 16
    subi 5, 5, 0x26
    bl fn_802DEC40
    addi 16, 16, 0x1
    addi 31, 31, 0x4
    .4byte 0x48001698 # b .L_802D6A7C
L_802D53E8:
    mr 3, 29
    mr 4, 16
    subi 5, 5, 0xa6
    bl fn_802DEC40
    addi 16, 16, 0x1
    addi 31, 31, 0x4
    .4byte 0x4800167C # b .L_802D6A7C
L_802D5404:
    mr 3, 29
    mr 4, 16
    li 5, 0x1
    bl fn_802DEC40
    addi 16, 16, 0x1
    addi 31, 31, 0x4
    .4byte 0x48001660 # b .L_802D6A7C
L_802D5420:
    lis 4, lbl_8046E190@ha
    clrlslwi 5, 3, 16, 2
    addi 0, 4, lbl_8046E190@l
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    add 6, 0, 5
    mr 4, 28
    lhz 7, 0x0(6)
    mr 5, 29
    lhz 8, 0x2(6)
    li 6, 0x8
    bl fn_8029EC84
    addi 16, 16, 0x1
    addi 31, 31, 0x4
    .4byte 0x48001628 # b .L_802D6A7C
L_802D5458:
    subi 0, 27, 0x26
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x40810014 # ble .L_802D5478
    cmplwi 27, 0x36
    .4byte 0x4182000C # beq .L_802D5478
    cmplwi 27, 0x37
    .4byte 0x4082014C # bne .L_802D55C0
L_802D5478:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slwi 0, 17, 1
    cmplwi 27, 0x26
    lwz 3, 0x4(3)
    lwz 3, 0xc(3)
    add 3, 3, 0
    addi 3, 3, 0x2948
    sthx 28, 30, 3
    .4byte 0x40820028 # bne .L_802D54C0
    subi 4, 28, 0x10
    rlwinm 5, 28, 0, 23, 23
    rlwinm 3, 4, 0, 23, 23
    cmpw 5, 3
    .4byte 0x4182000C # beq .L_802D54B8
    subi 14, 28, 0x110
    .4byte 0x48000070 # b .L_802D5524
L_802D54B8:
    mr 14, 4
    .4byte 0x48000068 # b .L_802D5524
L_802D54C0:
    cmplwi 27, 0x27
    .4byte 0x40820028 # bne .L_802D54EC
    addi 4, 28, 0x10
    rlwinm 5, 28, 0, 23, 23
    rlwinm 3, 4, 0, 23, 23
    cmpw 5, 3
    .4byte 0x4182000C # beq .L_802D54E4
    addi 14, 28, 0x110
    .4byte 0x48000044 # b .L_802D5524
L_802D54E4:
    mr 14, 4
    .4byte 0x4800003C # b .L_802D5524
L_802D54EC:
    cmplwi 27, 0x36
    .4byte 0x4082001C # bne .L_802D550C
    clrlwi. 3, 28, 28
    .4byte 0x4082000C # bne .L_802D5504
    subi 14, 28, 0xf1
    .4byte 0x48000024 # b .L_802D5524
L_802D5504:
    subi 14, 28, 0x1
    .4byte 0x4800001C # b .L_802D5524
L_802D550C:
    addi 4, 28, 0x1
    clrlwi. 3, 4, 28
    .4byte 0x4082000C # bne .L_802D5520
    addi 14, 28, 0xf1
    .4byte 0x48000008 # b .L_802D5524
L_802D5520:
    mr 14, 4
L_802D5524:
    lwz 3, 0x24(1)
    li 5, 0x0
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    and 4, 3, 18
    lwz 3, 0x20(1)
    lwz 6, 0x4(6)
    xor 4, 4, 5
    and 3, 3, 19
    xor 3, 3, 5
    lwz 5, 0xc(6)
    or. 3, 4, 3
    add 3, 5, 0
    addi 0, 3, 0x294a
    sthx 14, 30, 0
    .4byte 0x41820048 # beq .L_802D55A4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 14
    lwz 3, 0x20(3)
    bl fn_802F9908
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    clrlwi 6, 3, 16
    mr 4, 29
    lwz 3, 0x20(5)
    mr 5, 28
    bl fn_802F9974
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 14
    li 6, 0x20
    lwz 3, 0x20(3)
    bl fn_802F9974
L_802D55A4:
    slwi 0, 19, 2
    slwi 3, 18, 2
    rlwimi 0, 18, 2, 30, 31
    addi 17, 17, 0x2
    mr 18, 3
    mr 19, 0
    .4byte 0x480014C0 # b .L_802D6A7C
L_802D55C0:
    cmplwi 27, 0x12
    .4byte 0x4180000C # blt .L_802D55D0
    cmplwi 27, 0x15
    .4byte 0x40810264 # ble .L_802D5830
L_802D55D0:
    cmplwi 27, 0x50
    .4byte 0x4180000C # blt .L_802D55E0
    cmplwi 27, 0x52
    .4byte 0x40810254 # ble .L_802D5830
L_802D55E0:
    cmplwi 27, 0x21
    .4byte 0x4180000C # blt .L_802D55F0
    cmplwi 27, 0x25
    .4byte 0x40810244 # ble .L_802D5830
L_802D55F0:
    cmplwi 27, 0x30
    .4byte 0x4182023C # beq .L_802D5830
    cmplwi 27, 0x10
    .4byte 0x41820234 # beq .L_802D5830
    cmplwi 27, 0xaa
    .4byte 0x4182022C # beq .L_802D5830
    cmplwi 27, 0x40
    .4byte 0x4180000C # blt .L_802D5618
    cmplwi 27, 0x44
    .4byte 0x4081021C # ble .L_802D5830
L_802D5618:
    cmplwi 27, 0x45
    .4byte 0x4180000C # blt .L_802D5628
    cmplwi 27, 0x49
    .4byte 0x4081020C # ble .L_802D5830
L_802D5628:
    subi 0, 27, 0x4e
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x408101FC # ble .L_802D5830
    subi 0, 27, 0x99
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x408101EC # ble .L_802D5830
    cmplwi 27, 0x76
    .4byte 0x418201E4 # beq .L_802D5830
    cmplwi 27, 0x3a
    .4byte 0x418201DC # beq .L_802D5830
    cmplwi 27, 0xbf
    .4byte 0x418201D4 # beq .L_802D5830
    cmplwi 27, 0xac
    .4byte 0x418201CC # beq .L_802D5830
    cmplwi 27, 0x3ec
    .4byte 0x418201C4 # beq .L_802D5830
    cmplwi 27, 0xb8
    .4byte 0x418201BC # beq .L_802D5830
    subi 0, 27, 0x80
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x408101AC # ble .L_802D5830
    subi 0, 27, 0xdc
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081019C # ble .L_802D5830
    subi 0, 27, 0x1
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081018C # ble .L_802D5830
    cmplwi 27, 0xea
    .4byte 0x4180000C # blt .L_802D56B8
    cmplwi 27, 0xec
    .4byte 0x4081017C # ble .L_802D5830
L_802D56B8:
    cmplwi 27, 0x2e0
    .4byte 0x41820174 # beq .L_802D5830
    cmplwi 27, 0x2f0
    .4byte 0x4182016C # beq .L_802D5830
    subi 0, 27, 0x2e2
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081015C # ble .L_802D5830
    cmplwi 27, 0x300
    .4byte 0x41820154 # beq .L_802D5830
    cmplwi 27, 0x348
    .4byte 0x4182014C # beq .L_802D5830
    cmplwi 27, 0x358
    .4byte 0x41820144 # beq .L_802D5830
    subi 0, 27, 0x34a
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x40810134 # ble .L_802D5830
    subi 0, 27, 0x302
    clrlwi 0, 0, 16
    cmplwi 0, 0x2
    .4byte 0x40810124 # ble .L_802D5830
    cmplwi 27, 0x314
    .4byte 0x4182011C # beq .L_802D5830
    subi 0, 27, 0x306
    clrlwi 0, 0, 16
    cmplwi 0, 0x4
    .4byte 0x4081010C # ble .L_802D5830
    subi 0, 27, 0x318
    clrlwi 0, 0, 16
    cmplwi 0, 0x2
    .4byte 0x408100FC # ble .L_802D5830
    cmplwi 27, 0x330
    .4byte 0x418200F4 # beq .L_802D5830
    cmplwi 27, 0x322
    .4byte 0x418200EC # beq .L_802D5830
    subi 0, 27, 0x325
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x408100DC # ble .L_802D5830
    subi 0, 27, 0x30c
    clrlwi 0, 0, 16
    cmplwi 0, 0x4
    .4byte 0x408100CC # ble .L_802D5830
    subi 0, 27, 0x31e
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x408100BC # ble .L_802D5830
    cmplwi 27, 0x3a8
    .4byte 0x418200B4 # beq .L_802D5830
    cmplwi 27, 0x3b8
    .4byte 0x418200AC # beq .L_802D5830
    subi 0, 27, 0x3aa
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081009C # ble .L_802D5830
    cmplwi 27, 0x390
    .4byte 0x41820094 # beq .L_802D5830
    cmplwi 27, 0x382
    .4byte 0x4182008C # beq .L_802D5830
    subi 0, 27, 0x385
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081007C # ble .L_802D5830
    cmplwi 27, 0x68
    .4byte 0x41820074 # beq .L_802D5830
    subi 0, 27, 0x6a
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x40810064 # ble .L_802D5830
    cmplwi 27, 0xae
    .4byte 0x4182005C # beq .L_802D5830
    subi 0, 27, 0xf9
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081004C # ble .L_802D5830
    subi 0, 27, 0x74
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x4081003C # ble .L_802D5830
    cmplwi 27, 0x146
    .4byte 0x41820034 # beq .L_802D5830
    subi 0, 27, 0x19c
    clrlwi 0, 0, 16
    cmplwi 0, 0x1
    .4byte 0x40810024 # ble .L_802D5830
    cmplwi 27, 0x5f
    .4byte 0x4182001C # beq .L_802D5830
    cmplwi 27, 0x38
    .4byte 0x41820014 # beq .L_802D5830
    cmplwi 27, 0x70
    .4byte 0x41801228 # blt .L_802D6A4C
    cmplwi 27, 0x72
    .4byte 0x41811220 # bgt .L_802D6A4C
L_802D5830:
    subi 3, 28, 0x10
    rlwinm 4, 28, 0, 23, 23
    rlwinm 0, 3, 0, 23, 23
    li 15, 0x0
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_802D584C
    subi 3, 28, 0x110
L_802D584C:
    clrlwi. 0, 28, 28
    mr 26, 3
    subi 0, 28, 0xf1
    .4byte 0x41820008 # beq .L_802D5860
    subi 0, 28, 0x1
L_802D5860:
    addi 5, 28, 0x10
    mr 24, 0
    rlwinm 0, 5, 0, 23, 23
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_802D5878
    addi 5, 28, 0x110
L_802D5878:
    addi 4, 5, 0x10
    rlwinm 3, 5, 0, 23, 23
    rlwinm 0, 4, 0, 23, 23
    mr 25, 5
    cmpw 3, 0
    .4byte 0x41820008 # beq .L_802D5894
    addi 4, 5, 0x110
L_802D5894:
    addi 3, 28, 0x1
    mr 20, 4
    clrlwi. 0, 3, 28
    addi 5, 28, 0xf1
    .4byte 0x41820008 # beq .L_802D58AC
    mr 5, 3
L_802D58AC:
    addi 4, 5, 0x1
    addi 0, 5, 0xf1
    clrlwi. 3, 4, 28
    stw 0, 0x28(1)
    mr 23, 5
    .4byte 0x41820008 # beq .L_802D58C8
    stw 4, 0x28(1)
L_802D58C8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 26
    lwz 3, 0x20(3)
    bl fn_802F9908
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    clrlwi 22, 3, 16
    mr 4, 29
    mr 5, 25
    lwz 3, 0x20(6)
    bl fn_802F9908
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    clrlwi 0, 3, 16
    sth 0, 0x14(1)
    mr 4, 29
    lwz 3, 0x20(6)
    mr 5, 24
    bl fn_802F9908
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    clrlwi 21, 3, 16
    mr 4, 29
    mr 5, 23
    lwz 3, 0x20(6)
    bl fn_802F9908
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    clrlwi 14, 3, 16
    mr 4, 29
    mr 5, 20
    lwz 3, 0x20(6)
    bl fn_802F9908
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    clrlwi 20, 3, 16
    lwz 5, 0x28(1)
    mr 4, 29
    lwz 3, 0x20(6)
    bl fn_802F9908
    cmplwi 27, 0x300
    clrlwi 0, 3, 16
    .4byte 0x40820014 # bne .L_802D5974
    cmplwi 21, 0x30a
    .4byte 0x41820238 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x48000230 # b .L_802D5BA0
L_802D5974:
    cmplwi 27, 0x310
    .4byte 0x40820014 # bne .L_802D598C
    cmplwi 21, 0x31a
    .4byte 0x41820220 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x48000218 # b .L_802D5BA0
L_802D598C:
    cmplwi 27, 0x302
    .4byte 0x40820014 # bne .L_802D59A4
    cmplwi 22, 0x30c
    .4byte 0x41820208 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x48000200 # b .L_802D5BA0
L_802D59A4:
    cmplwi 27, 0x303
    .4byte 0x40820014 # bne .L_802D59BC
    cmplwi 22, 0x30d
    .4byte 0x418201F0 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x480001E8 # b .L_802D5BA0
L_802D59BC:
    cmplwi 27, 0x30a
    .4byte 0x40820014 # bne .L_802D59D4
    cmplwi 0, 0x300
    .4byte 0x418201D8 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x480001D0 # b .L_802D5BA0
L_802D59D4:
    cmplwi 27, 0x31a
    .4byte 0x40820014 # bne .L_802D59EC
    cmplwi 0, 0x310
    .4byte 0x418201C0 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x480001B8 # b .L_802D5BA0
L_802D59EC:
    cmplwi 27, 0x30c
    .4byte 0x40820014 # bne .L_802D5A04
    cmplwi 20, 0x302
    .4byte 0x418201A8 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x480001A0 # b .L_802D5BA0
L_802D5A04:
    cmplwi 27, 0x30d
    .4byte 0x40820014 # bne .L_802D5A1C
    cmplwi 20, 0x303
    .4byte 0x41820190 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x48000188 # b .L_802D5BA0
L_802D5A1C:
    cmplwi 27, 0x304
    .4byte 0x40820014 # bne .L_802D5A34
    cmplwi 21, 0x30a
    .4byte 0x41820178 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x48000170 # b .L_802D5BA0
L_802D5A34:
    cmplwi 27, 0x314
    .4byte 0x40820014 # bne .L_802D5A4C
    cmplwi 21, 0x31a
    .4byte 0x41820160 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x48000158 # b .L_802D5BA0
L_802D5A4C:
    cmplwi 27, 0x306
    .4byte 0x40820014 # bne .L_802D5A64
    cmplwi 22, 0x30c
    .4byte 0x41820148 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x48000140 # b .L_802D5BA0
L_802D5A64:
    cmplwi 27, 0x307
    .4byte 0x40820014 # bne .L_802D5A7C
    cmplwi 22, 0x30d
    .4byte 0x41820130 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x48000128 # b .L_802D5BA0
L_802D5A7C:
    cmplwi 27, 0x308
    .4byte 0x40820014 # bne .L_802D5A94
    cmplwi 21, 0x30a
    .4byte 0x41820118 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x48000110 # b .L_802D5BA0
L_802D5A94:
    cmplwi 27, 0x318
    .4byte 0x40820014 # bne .L_802D5AAC
    cmplwi 21, 0x31a
    .4byte 0x41820100 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x480000F8 # b .L_802D5BA0
L_802D5AAC:
    cmplwi 27, 0x309
    .4byte 0x40820014 # bne .L_802D5AC4
    cmplwi 22, 0x30c
    .4byte 0x418200E8 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x480000E0 # b .L_802D5BA0
L_802D5AC4:
    cmplwi 27, 0x319
    .4byte 0x40820014 # bne .L_802D5ADC
    cmplwi 22, 0x30d
    .4byte 0x418200D0 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x480000C8 # b .L_802D5BA0
L_802D5ADC:
    cmplwi 27, 0x330
    .4byte 0x40820014 # bne .L_802D5AF4
    cmplwi 14, 0x331
    .4byte 0x418200B8 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x480000B0 # b .L_802D5BA0
L_802D5AF4:
    cmplwi 27, 0x322
    .4byte 0x40820014 # bne .L_802D5B0C
    cmplwi 14, 0x323
    .4byte 0x418200A0 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x48000098 # b .L_802D5BA0
L_802D5B0C:
    cmplwi 27, 0x325
    .4byte 0x40820018 # bne .L_802D5B28
    lhz 0, 0x14(1)
    cmplwi 0, 0x335
    .4byte 0x41820084 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x4800007C # b .L_802D5BA0
L_802D5B28:
    cmplwi 27, 0x326
    .4byte 0x40820018 # bne .L_802D5B44
    lhz 0, 0x14(1)
    cmplwi 0, 0x336
    .4byte 0x41820068 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x48000060 # b .L_802D5BA0
L_802D5B44:
    cmplwi 27, 0x30e
    .4byte 0x40820014 # bne .L_802D5B5C
    cmplwi 21, 0x330
    .4byte 0x41820050 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x48000048 # b .L_802D5BA0
L_802D5B5C:
    cmplwi 27, 0x31e
    .4byte 0x40820014 # bne .L_802D5B74
    cmplwi 21, 0x322
    .4byte 0x41820038 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x48000030 # b .L_802D5BA0
L_802D5B74:
    cmplwi 27, 0x30f
    .4byte 0x40820014 # bne .L_802D5B8C
    cmplwi 22, 0x325
    .4byte 0x41820020 # beq .L_802D5BA0
    li 15, 0x1
    .4byte 0x48000018 # b .L_802D5BA0
L_802D5B8C:
    cmplwi 27, 0x31f
    .4byte 0x40820010 # bne .L_802D5BA0
    cmplwi 22, 0x326
    .4byte 0x41820008 # beq .L_802D5BA0
    li 15, 0x1
L_802D5BA0:
    cmpwi 15, 0x0
    .4byte 0x40820ED8 # bne .L_802D6A7C
    cmpwi 29, 0x8
    li 14, 0x8
    .4byte 0x40800008 # bge .L_802D5BB8
    li 14, 0x1
L_802D5BB8:
    lwz 0, 0x24(1)
    li 4, 0x0
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    and 3, 0, 18
    lwz 0, 0x20(1)
    lwz 6, 0x4(5)
    xor 3, 3, 4
    and 0, 0, 19
    slwi 5, 17, 1
    xor 0, 0, 4
    lwz 4, 0xc(6)
    or. 0, 3, 0
    add 3, 4, 5
    addi 0, 3, 0x2948
    sthx 28, 30, 0
    .4byte 0x41820E3C # beq .L_802D6A30
    cmpwi 27, 0xfa
    .4byte 0x41820468 # beq .L_802D6064
    .4byte 0x408001E0 # bge .L_802D5DE0
    cmpwi 27, 0x68
    .4byte 0x418203D0 # beq .L_802D5FD8
    .4byte 0x408000EC # bge .L_802D5CF8
    cmpwi 27, 0x40
    .4byte 0x41820534 # beq .L_802D6148
    .4byte 0x40800070 # bge .L_802D5C88
    cmpwi 27, 0x14
    .4byte 0x41820608 # beq .L_802D6228
    .4byte 0x40800034 # bge .L_802D5C58
    cmpwi 27, 0x10
    .4byte 0x418204E0 # beq .L_802D610C
    .4byte 0x4080001C # bge .L_802D5C4C
    cmpwi 27, 0x2
    .4byte 0x418206B4 # beq .L_802D62EC
    .4byte 0x40800D6C # bge .L_802D69A8
    cmpwi 27, 0x1
    .4byte 0x40800590 # bge .L_802D61D4
    .4byte 0x48000D60 # b .L_802D69A8
L_802D5C4C:
    cmpwi 27, 0x12
    .4byte 0x418205BC # beq .L_802D620C
    .4byte 0x48000D54 # b .L_802D69A8
L_802D5C58:
    cmpwi 27, 0x30
    .4byte 0x41820494 # beq .L_802D60F0
    .4byte 0x40800010 # bge .L_802D5C70
    cmpwi 27, 0x20
    .4byte 0x41820588 # beq .L_802D61F0
    .4byte 0x48000D3C # b .L_802D69A8
L_802D5C70:
    cmpwi 27, 0x3a
    .4byte 0x41820608 # beq .L_802D627C
    .4byte 0x41800D30 # blt .L_802D69A8
    cmpwi 27, 0x3f
    .4byte 0x40800618 # bge .L_802D6298
    .4byte 0x48000D24 # b .L_802D69A8
L_802D5C88:
    cmpwi 27, 0x49
    .4byte 0x418204F4 # beq .L_802D6180
    .4byte 0x40800038 # bge .L_802D5CC8
    cmpwi 27, 0x45
    .4byte 0x418204E8 # beq .L_802D6180
    .4byte 0x4080001C # bge .L_802D5CB8
    cmpwi 27, 0x43
    .4byte 0x418204C0 # beq .L_802D6164
    .4byte 0x408004A0 # bge .L_802D6148
    cmpwi 27, 0x42
    .4byte 0x40800498 # bge .L_802D6148
    .4byte 0x48000CF4 # b .L_802D69A8
L_802D5CB8:
    cmpwi 27, 0x47
    .4byte 0x418204C4 # beq .L_802D6180
    .4byte 0x408004F8 # bge .L_802D61B8
    .4byte 0x480004D8 # b .L_802D619C
L_802D5CC8:
    cmpwi 27, 0x52
    .4byte 0x4182055C # beq .L_802D6228
    .4byte 0x4080001C # bge .L_802D5CEC
    cmpwi 27, 0x50
    .4byte 0x4182056C # beq .L_802D6244
    .4byte 0x40800CCC # bge .L_802D69A8
    cmpwi 27, 0x4e
    .4byte 0x40800464 # bge .L_802D6148
    .4byte 0x48000CC0 # b .L_802D69A8
L_802D5CEC:
    cmpwi 27, 0x5f
    .4byte 0x41820358 # beq .L_802D6048
    .4byte 0x48000CB4 # b .L_802D69A8
L_802D5CF8:
    cmpwi 27, 0xaa
    .4byte 0x4182042C # beq .L_802D6128
    .4byte 0x4080007C # bge .L_802D5D7C
    cmpwi 27, 0x74
    .4byte 0x41820378 # beq .L_802D6080
    .4byte 0x40800038 # bge .L_802D5D44
    cmpwi 27, 0x70
    .4byte 0x418202A8 # beq .L_802D5FBC
    .4byte 0x4080001C # bge .L_802D5D34
    cmpwi 27, 0x6b
    .4byte 0x4182029C # beq .L_802D5FBC
    .4byte 0x40800C84 # bge .L_802D69A8
    cmpwi 27, 0x6a
    .4byte 0x408002C8 # bge .L_802D5FF4
    .4byte 0x48000C78 # b .L_802D69A8
L_802D5D34:
    cmpwi 27, 0x72
    .4byte 0x418202F4 # beq .L_802D602C
    .4byte 0x40800C6C # bge .L_802D69A8
    .4byte 0x480002D0 # b .L_802D6010
L_802D5D44:
    cmpwi 27, 0x81
    .4byte 0x418205C0 # beq .L_802D6308
    .4byte 0x4080001C # bge .L_802D5D68
    cmpwi 27, 0x76
    .4byte 0x4182050C # beq .L_802D6260
    .4byte 0x41800264 # blt .L_802D5FBC
    cmpwi 27, 0x80
    .4byte 0x408005C4 # bge .L_802D6324
    .4byte 0x48000C44 # b .L_802D69A8
L_802D5D68:
    cmpwi 27, 0x9b
    .4byte 0x40800C3C # bge .L_802D69A8
    cmpwi 27, 0x99
    .4byte 0x4080040C # bge .L_802D6180
    .4byte 0x48000C30 # b .L_802D69A8
L_802D5D7C:
    cmpwi 27, 0xdc
    .4byte 0x418205C0 # beq .L_802D6340
    .4byte 0x40800028 # bge .L_802D5DAC
    cmpwi 27, 0xae
    .4byte 0x41820310 # beq .L_802D609C
    .4byte 0x40800010 # bge .L_802D5DA0
    cmpwi 27, 0xac
    .4byte 0x41820538 # beq .L_802D62D0
    .4byte 0x48000C0C # b .L_802D69A8
L_802D5DA0:
    cmpwi 27, 0xbf
    .4byte 0x41820510 # beq .L_802D62B4
    .4byte 0x48000C00 # b .L_802D69A8
L_802D5DAC:
    cmpwi 27, 0xeb
    .4byte 0x418205E4 # beq .L_802D6394
    .4byte 0x40800018 # bge .L_802D5DCC
    cmpwi 27, 0xea
    .4byte 0x408005BC # bge .L_802D6378
    cmpwi 27, 0xde
    .4byte 0x40800BE4 # bge .L_802D69A8
    .4byte 0x48000594 # b .L_802D635C
L_802D5DCC:
    cmpwi 27, 0xf9
    .4byte 0x408005FC # bge .L_802D63CC
    cmpwi 27, 0xed
    .4byte 0x40800BD0 # bge .L_802D69A8
    .4byte 0x480005D4 # b .L_802D63B0
L_802D5DE0:
    cmpwi 27, 0x319
    .4byte 0x418207CC # beq .L_802D65B0
    .4byte 0x408000F0 # bge .L_802D5ED8
    cmpwi 27, 0x304
    .4byte 0x41820678 # beq .L_802D6468
    .4byte 0x40800074 # bge .L_802D5E68
    cmpwi 27, 0x2e2
    .4byte 0x4182062C # beq .L_802D6428
    .4byte 0x40800034 # bge .L_802D5E34
    cmpwi 27, 0x19d
    .4byte 0x418202CC # beq .L_802D60D4
    .4byte 0x4080001C # bge .L_802D5E28
    cmpwi 27, 0x146
    .4byte 0x4182026C # beq .L_802D6080
    .4byte 0x41800B90 # blt .L_802D69A8
    cmpwi 27, 0x19c
    .4byte 0x40800298 # bge .L_802D60B8
    .4byte 0x48000B84 # b .L_802D69A8
L_802D5E28:
    cmpwi 27, 0x2e0
    .4byte 0x418205BC # beq .L_802D63E8
    .4byte 0x48000B78 # b .L_802D69A8
L_802D5E34:
    cmpwi 27, 0x300
    .4byte 0x41820630 # beq .L_802D6468
    .4byte 0x4080001C # bge .L_802D5E58
    cmpwi 27, 0x2f0
    .4byte 0x418205C4 # beq .L_802D6408
    .4byte 0x40800B60 # bge .L_802D69A8
    cmpwi 27, 0x2e4
    .4byte 0x40800B58 # bge .L_802D69A8
    .4byte 0x480005F4 # b .L_802D6448
L_802D5E58:
    cmpwi 27, 0x302
    .4byte 0x4182065C # beq .L_802D64B8
    .4byte 0x40800680 # bge .L_802D64E0
    .4byte 0x48000B44 # b .L_802D69A8
L_802D5E68:
    cmpwi 27, 0x30d
    .4byte 0x41820744 # beq .L_802D65B0
    .4byte 0x40800038 # bge .L_802D5EA8
    cmpwi 27, 0x309
    .4byte 0x41820700 # beq .L_802D6578
    .4byte 0x4080001C # bge .L_802D5E98
    cmpwi 27, 0x307
    .4byte 0x4182065C # beq .L_802D64E0
    .4byte 0x40800680 # bge .L_802D6508
    cmpwi 27, 0x306
    .4byte 0x40800628 # bge .L_802D64B8
    .4byte 0x48000B14 # b .L_802D69A8
L_802D5E98:
    cmpwi 27, 0x30b
    .4byte 0x41820B0C # beq .L_802D69A8
    .4byte 0x408006D8 # bge .L_802D6578
    .4byte 0x48000664 # b .L_802D6508
L_802D5EA8:
    cmpwi 27, 0x314
    .4byte 0x418205E4 # beq .L_802D6490
    .4byte 0x4080001C # bge .L_802D5ECC
    cmpwi 27, 0x310
    .4byte 0x418205D8 # beq .L_802D6490
    .4byte 0x40800AEC # bge .L_802D69A8
    cmpwi 27, 0x30f
    .4byte 0x408008C4 # bge .L_802D6788
    .4byte 0x48000820 # b .L_802D66E8
L_802D5ECC:
    cmpwi 27, 0x318
    .4byte 0x40800670 # bge .L_802D6540
    .4byte 0x48000AD4 # b .L_802D69A8
L_802D5ED8:
    cmpwi 27, 0x358
    .4byte 0x4182052C # beq .L_802D6408
    .4byte 0x4080007C # bge .L_802D5F5C
    cmpwi 27, 0x326
    .4byte 0x418207C0 # beq .L_802D66A8
    .4byte 0x4080003C # bge .L_802D5F28
    cmpwi 27, 0x31f
    .4byte 0x418208E4 # beq .L_802D67D8
    .4byte 0x40800018 # bge .L_802D5F10
    cmpwi 27, 0x31e
    .4byte 0x40800838 # bge .L_802D6738
    cmpwi 27, 0x31b
    .4byte 0x40800AA0 # bge .L_802D69A8
    .4byte 0x48000634 # b .L_802D6540
L_802D5F10:
    cmpwi 27, 0x322
    .4byte 0x41820714 # beq .L_802D6628
    .4byte 0x41800A90 # blt .L_802D69A8
    cmpwi 27, 0x325
    .4byte 0x40800748 # bge .L_802D6668
    .4byte 0x48000A84 # b .L_802D69A8
L_802D5F28:
    cmpwi 27, 0x349
    .4byte 0x41820A7C # beq .L_802D69A8
    .4byte 0x4080001C # bge .L_802D5F4C
    cmpwi 27, 0x330
    .4byte 0x418206B0 # beq .L_802D65E8
    .4byte 0x41800A6C # blt .L_802D69A8
    cmpwi 27, 0x348
    .4byte 0x408004A4 # bge .L_802D63E8
    .4byte 0x48000A60 # b .L_802D69A8
L_802D5F4C:
    cmpwi 27, 0x34b
    .4byte 0x418204F8 # beq .L_802D6448
    .4byte 0x40800A54 # bge .L_802D69A8
    .4byte 0x480004D0 # b .L_802D6428
L_802D5F5C:
    cmpwi 27, 0x3a8
    .4byte 0x418208C8 # beq .L_802D6828
    .4byte 0x40800034 # bge .L_802D5F98
    cmpwi 27, 0x386
    .4byte 0x418209FC # beq .L_802D6968
    .4byte 0x4080001C # bge .L_802D5F8C
    cmpwi 27, 0x382
    .4byte 0x41820970 # beq .L_802D68E8
    .4byte 0x41800A2C # blt .L_802D69A8
    cmpwi 27, 0x385
    .4byte 0x408009A4 # bge .L_802D6928
    .4byte 0x48000A20 # b .L_802D69A8
L_802D5F8C:
    cmpwi 27, 0x390
    .4byte 0x41820918 # beq .L_802D68A8
    .4byte 0x48000A14 # b .L_802D69A8
L_802D5F98:
    cmpwi 27, 0x3ab
    .4byte 0x418208EC # beq .L_802D6888
    .4byte 0x40800010 # bge .L_802D5FB0
    cmpwi 27, 0x3aa
    .4byte 0x408008C0 # bge .L_802D6868
    .4byte 0x480009FC # b .L_802D69A8
L_802D5FB0:
    cmpwi 27, 0x3b8
    .4byte 0x41820894 # beq .L_802D6848
    .4byte 0x480009F0 # b .L_802D69A8
L_802D5FBC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x79
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000A5C # b .L_802D6A30
L_802D5FD8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x12
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000A40 # b .L_802D6A30
L_802D5FF4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x50
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000A24 # b .L_802D6A30
L_802D6010:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x7b
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000A08 # b .L_802D6A30
L_802D602C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x7c
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480009EC # b .L_802D6A30
L_802D6048:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x83
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480009D0 # b .L_802D6A30
L_802D6064:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x5a
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480009B4 # b .L_802D6A30
L_802D6080:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x7d
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000998 # b .L_802D6A30
L_802D609C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0xaf
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x4800097C # b .L_802D6A30
L_802D60B8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x19e
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000960 # b .L_802D6A30
L_802D60D4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x19f
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000944 # b .L_802D6A30
L_802D60F0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x10
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000928 # b .L_802D6A30
L_802D610C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x10
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x4800090C # b .L_802D6A30
L_802D6128:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x0
    li 7, 0xbc
    li 8, 0xbd
    bl fn_8029DEBC
    .4byte 0x480008EC # b .L_802D6A30
L_802D6148:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x11
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480008D0 # b .L_802D6A30
L_802D6164:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x50
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480008B4 # b .L_802D6A30
L_802D6180:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x15
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000898 # b .L_802D6A30
L_802D619C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x14
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x4800087C # b .L_802D6A30
L_802D61B8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x52
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000860 # b .L_802D6A30
L_802D61D4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x3e0
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000844 # b .L_802D6A30
L_802D61F0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x20
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000828 # b .L_802D6A30
L_802D620C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x13
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x4800080C # b .L_802D6A30
L_802D6228:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x15
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480007F0 # b .L_802D6A30
L_802D6244:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x51
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480007D4 # b .L_802D6A30
L_802D6260:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x77
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480007B8 # b .L_802D6A30
L_802D627C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x3b
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x4800079C # b .L_802D6A30
L_802D6298:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x3e
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000780 # b .L_802D6A30
L_802D62B4:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0xbe
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000764 # b .L_802D6A30
L_802D62D0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x35
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000748 # b .L_802D6A30
L_802D62EC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0xb8
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x4800072C # b .L_802D6A30
L_802D6308:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x9d
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000710 # b .L_802D6A30
L_802D6324:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x9e
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480006F4 # b .L_802D6A30
L_802D6340:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x9e
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480006D8 # b .L_802D6A30
L_802D635C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x20
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480006BC # b .L_802D6A30
L_802D6378:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x252
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x480006A0 # b .L_802D6A30
L_802D6394:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x253
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000684 # b .L_802D6A30
L_802D63B0:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x254
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x48000668 # b .L_802D6A30
L_802D63CC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x25b
    lwz 3, 0x20(3)
    bl fn_802F9974
    .4byte 0x4800064C # b .L_802D6A30
L_802D63E8:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x0
    li 7, 0x350
    li 8, 0x351
    bl fn_8029DEBC
    .4byte 0x4800062C # b .L_802D6A30
L_802D6408:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x0
    li 7, 0x342
    li 8, 0x343
    bl fn_8029DEBC
    .4byte 0x4800060C # b .L_802D6A30
L_802D6428:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x1
    li 7, 0x345
    li 8, 0x355
    bl fn_8029DEBC
    .4byte 0x480005EC # b .L_802D6A30
L_802D6448:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x1
    li 7, 0x346
    li 8, 0x356
    bl fn_8029DEBC
    .4byte 0x480005CC # b .L_802D6A30
L_802D6468:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x0
    li 7, 0x2ea
    li 8, 0x2ee
    li 9, 0x2ee
    li 10, 0x2eb
    bl fn_8029DD50
    .4byte 0x480005A4 # b .L_802D6A30
L_802D6490:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x0
    li 7, 0x2fa
    li 8, 0x2fe
    li 9, 0x2fe
    li 10, 0x2fb
    bl fn_8029DD50
    .4byte 0x4800057C # b .L_802D6A30
L_802D64B8:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x2
    li 7, 0x2ec
    li 8, 0x2ef
    li 9, 0x2ef
    li 10, 0x2fc
    bl fn_8029DD50
    .4byte 0x48000554 # b .L_802D6A30
L_802D64E0:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x2
    li 7, 0x2ed
    li 8, 0x2ff
    li 9, 0x2ff
    li 10, 0x2fd
    bl fn_8029DD50
    .4byte 0x4800052C # b .L_802D6A30
L_802D6508:
    li 3, 0x2ee
    li 0, 0x2eb
    stw 3, 0x8(1)
    mr 4, 29
    mr 5, 28
    li 6, 0x0
    stw 0, 0xc(1)
    li 7, 0x2ea
    li 8, 0x2ee
    li 9, 0x2ee
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 10, 0x2ee
    bl fn_8029DB2C
    .4byte 0x480004F4 # b .L_802D6A30
L_802D6540:
    li 3, 0x2fe
    li 0, 0x2fb
    stw 3, 0x8(1)
    mr 4, 29
    mr 5, 28
    li 6, 0x0
    stw 0, 0xc(1)
    li 7, 0x2fa
    li 8, 0x2fe
    li 9, 0x2fe
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 10, 0x2fe
    bl fn_8029DB2C
    .4byte 0x480004BC # b .L_802D6A30
L_802D6578:
    li 3, 0x2ef
    li 0, 0x2fc
    stw 3, 0x8(1)
    mr 4, 29
    mr 5, 28
    li 6, 0x2
    stw 0, 0xc(1)
    li 7, 0x2ec
    li 8, 0x2ef
    li 9, 0x2ef
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 10, 0x2ef
    bl fn_8029DB2C
    .4byte 0x48000484 # b .L_802D6A30
L_802D65B0:
    li 3, 0x2ff
    li 0, 0x2fd
    stw 3, 0x8(1)
    mr 4, 29
    mr 5, 28
    li 6, 0x2
    stw 0, 0xc(1)
    li 7, 0x2ed
    li 8, 0x2ff
    li 9, 0x2ff
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    li 10, 0x2ff
    bl fn_8029DB2C
    .4byte 0x4800044C # b .L_802D6A30
L_802D65E8:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x0
    li 7, 0x338
    li 8, 0x339
    bl fn_8029DEBC
    clrlwi 0, 14, 24
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 26
    li 6, 0x0
    add 4, 29, 0
    li 7, 0x328
    li 8, 0x329
    bl fn_8029DEBC
    .4byte 0x4800040C # b .L_802D6A30
L_802D6628:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x0
    li 7, 0x32a
    li 8, 0x32b
    bl fn_8029DEBC
    clrlwi 0, 14, 24
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 25
    li 6, 0x0
    add 4, 29, 0
    li 7, 0x33a
    li 8, 0x33b
    bl fn_8029DEBC
    .4byte 0x480003CC # b .L_802D6A30
L_802D6668:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x1
    li 7, 0x32d
    li 8, 0x33d
    bl fn_8029DEBC
    clrlwi 0, 14, 24
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 24
    li 6, 0x1
    add 4, 29, 0
    li 7, 0x32c
    li 8, 0x33c
    bl fn_8029DEBC
    .4byte 0x4800038C # b .L_802D6A30
L_802D66A8:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x1
    li 7, 0x32e
    li 8, 0x33e
    bl fn_8029DEBC
    clrlwi 0, 14, 24
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 23
    li 6, 0x1
    add 4, 29, 0
    li 7, 0x32f
    li 8, 0x33f
    bl fn_8029DEBC
    .4byte 0x4800034C # b .L_802D6A30
L_802D66E8:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x0
    li 7, 0x2ca
    li 8, 0x2ce
    li 9, 0x2ce
    li 10, 0x2cb
    bl fn_8029DD50
    clrlwi 0, 14, 24
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 26
    li 6, 0x0
    add 4, 29, 0
    li 7, 0x2c4
    li 8, 0x2c5
    li 9, 0x2c5
    li 10, 0x2c6
    bl fn_8029DD50
    .4byte 0x480002FC # b .L_802D6A30
L_802D6738:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x0
    li 7, 0x2da
    li 8, 0x2de
    li 9, 0x2de
    li 10, 0x2db
    bl fn_8029DD50
    clrlwi 0, 14, 24
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 25
    li 6, 0x0
    add 4, 29, 0
    li 7, 0x2d4
    li 8, 0x2d5
    li 9, 0x2d5
    li 10, 0x2d6
    bl fn_8029DD50
    .4byte 0x480002AC # b .L_802D6A30
L_802D6788:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x1
    li 7, 0x2cc
    li 8, 0x2cf
    li 9, 0x2cf
    li 10, 0x2dc
    bl fn_8029DD50
    clrlwi 0, 14, 24
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 24
    li 6, 0x1
    add 4, 29, 0
    li 7, 0x2c7
    li 8, 0x2c8
    li 9, 0x2c8
    li 10, 0x2c9
    bl fn_8029DD50
    .4byte 0x4800025C # b .L_802D6A30
L_802D67D8:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x1
    li 7, 0x2cd
    li 8, 0x2df
    li 9, 0x2df
    li 10, 0x2dd
    bl fn_8029DD50
    clrlwi 0, 14, 24
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 23
    li 6, 0x1
    add 4, 29, 0
    li 7, 0x2d7
    li 8, 0x2d8
    li 9, 0x2d8
    li 10, 0x2d9
    bl fn_8029DD50
    .4byte 0x4800020C # b .L_802D6A30
L_802D6828:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x0
    li 7, 0x3b0
    li 8, 0x3b1
    bl fn_8029DEBC
    .4byte 0x480001EC # b .L_802D6A30
L_802D6848:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x0
    li 7, 0x3a2
    li 8, 0x3a3
    bl fn_8029DEBC
    .4byte 0x480001CC # b .L_802D6A30
L_802D6868:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x1
    li 7, 0x3a5
    li 8, 0x3b5
    bl fn_8029DEBC
    .4byte 0x480001AC # b .L_802D6A30
L_802D6888:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x1
    li 7, 0x3a6
    li 8, 0x3b6
    bl fn_8029DEBC
    .4byte 0x4800018C # b .L_802D6A30
L_802D68A8:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x0
    li 7, 0x398
    li 8, 0x399
    bl fn_8029DEBC
    clrlwi 0, 14, 24
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 26
    li 6, 0x0
    add 4, 29, 0
    li 7, 0x388
    li 8, 0x389
    bl fn_8029DEBC
    .4byte 0x4800014C # b .L_802D6A30
L_802D68E8:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x0
    li 7, 0x38a
    li 8, 0x38b
    bl fn_8029DEBC
    clrlwi 0, 14, 24
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 25
    li 6, 0x0
    add 4, 29, 0
    li 7, 0x39a
    li 8, 0x39b
    bl fn_8029DEBC
    .4byte 0x4800010C # b .L_802D6A30
L_802D6928:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x1
    li 7, 0x38d
    li 8, 0x39d
    bl fn_8029DEBC
    clrlwi 0, 14, 24
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 24
    li 6, 0x1
    add 4, 29, 0
    li 7, 0x38c
    li 8, 0x39c
    bl fn_8029DEBC
    .4byte 0x480000CC # b .L_802D6A30
L_802D6968:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 4, 29
    mr 5, 28
    li 6, 0x1
    li 7, 0x38e
    li 8, 0x39e
    bl fn_8029DEBC
    clrlwi 0, 14, 24
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 23
    li 6, 0x1
    add 4, 29, 0
    li 7, 0x38f
    li 8, 0x39f
    bl fn_8029DEBC
    .4byte 0x4800008C # b .L_802D6A30
L_802D69A8:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    mr 5, 17
    li 3, 0x0
    li 4, 0x1
    lwz 14, 0x4(6)
    lwz 15, 0xc(14)
    bl __shl2i
    lwz 5, 0x18(15)
    li 6, 0x8
    li 0, -0x1
    lwz 7, 0x14(15)
    mulli 8, 5, 0x280
    subfc 5, 6, 29
    srwi 6, 6, 31
    lwz 9, 0xc(14)
    srwi 5, 29, 31
    slwi 7, 7, 6
    subfe 6, 5, 6
    subi 5, 29, 0x7
    andc 5, 5, 6
    add 6, 8, 7
    slwi 5, 5, 3
    xor 7, 4, 0
    add 4, 6, 5
    xor 5, 3, 0
    addi 3, 4, 0x1048
    add 4, 9, 3
    lwz 0, 0x0(4)
    add 3, 9, 3
    lwz 4, 0x4(4)
    and 0, 0, 5
    and 4, 4, 7
    stw 4, 0x4(3)
    stw 0, 0x0(3)
L_802D6A30:
    slwi 0, 19, 1
    slwi 3, 18, 1
    rlwimi 0, 18, 1, 31, 31
    addi 17, 17, 0x1
    mr 18, 3
    mr 19, 0
    .4byte 0x48000034 # b .L_802D6A7C
L_802D6A4C:
    lis 3, lbl_8046CB88@ha
    clrlslwi 0, 27, 16, 1
    addi 3, 3, lbl_8046CB88@l
    lhzx 0, 3, 0
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_802D6A6C
    cmplwi 0, 0x3b
    .4byte 0x40820014 # bne .L_802D6A7C
L_802D6A6C:
    lwz 3, 0x10(1)
    li 4, 0x1
    lwz 0, 0x18(1)
    stbx 4, 3, 0
L_802D6A7C:
    addi 28, 28, 0x1
    cmpwi 28, 0x800
    .4byte 0x4180E894 # blt .L_802D5318
L_802D6A88:
    lmw 14, 0x38(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

