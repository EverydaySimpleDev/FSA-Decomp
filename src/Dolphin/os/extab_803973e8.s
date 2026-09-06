# fn_803973E8 - MASTER CONSTRUCTOR (0x12b8, largest ctor in the gap) - installs this actor's own vtable plus constructs all 4 embedded sub-objects/components
.section extab, "a"
.balign 4
.global etb_8000EFF8
etb_8000EFF8:
    .4byte 0x304A0000
    .4byte 0x00000190
    .4byte 0x000000D0
    .4byte 0x000001A8
    .4byte 0x000000D8
    .4byte 0x000001DC
    .4byte 0x000000E0
    .4byte 0x00000208
    .4byte 0x000000E8
    .4byte 0x00000234
    .4byte 0x000000F0
    .4byte 0x0000027C
    .4byte 0x000000F8
    .4byte 0x000002AC
    .4byte 0x00000100
    .4byte 0x000002DC
    .4byte 0x00000108
    .4byte 0x0000030C
    .4byte 0x00000110
    .4byte 0x0000033C
    .4byte 0x00000118
    .4byte 0x0000036C
    .4byte 0x00000120
    .4byte 0x0000039C
    .4byte 0x00000128
    .4byte 0x000003CC
    .4byte 0x00000130
    .4byte 0x000003FC
    .4byte 0x00000138
    .4byte 0x0000042C
    .4byte 0x00000140
    .4byte 0x0000045C
    .4byte 0x00000148
    .4byte 0x00000DB0
    .4byte 0x00000150
    .4byte 0x00000EAC
    .4byte 0x00000158
    .4byte 0x00000ECC
    .4byte 0x00000160
    .4byte 0x00000F30
    .4byte 0x00000168
    .4byte 0x00000F78
    .4byte 0x0000017C
    .4byte 0x00000F94
    .4byte 0x00000170
    .4byte 0x00001214
    .4byte 0x0006018C
    .4byte 0x00001244
    .4byte 0x00000184
    .4byte 0x00001250
    .4byte 0x0002018C
    .4byte 0x00000000
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x0680001A
    .4byte 0x00000000
    .4byte dtor_800788C0
    .4byte 0x8A80001A
    .4byte dtor_80084580
    .4byte 0x0200004C
    .4byte BmcMesgArchive_dtor
    .4byte 0x82000054
    .4byte BmgMesgArchive_dtor
.size etb_8000EFF8, 404

.section extabindex, "a"
.balign 4
.global eti_8001EE98
eti_8001EE98:
    .4byte fn_803973E8
    .4byte 0x000012B8
    .4byte etb_8000EFF8
.size eti_8001EE98, 12

.text
.balign 4
.global fn_803973E8
.type fn_803973E8, @function

fn_803973E8:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stmw 26, 0x68(1)
    lis 7, lbl_804AF5A0@ha
    lis 8, lbl_80475768@ha
    addi 0, 7, lbl_804AF5A0@l
    mr 29, 5
    stw 0, 0x0(3)
    mr 31, 3
    lis 3, 0x3f3f
    mr 5, 6
    stw 31, 0x3c0(31)
    addi 30, 8, lbl_80475768@l
    stw 4, 0x3b8(31)
    addi 4, 3, 0x3f3f
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xa8(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    stw 3, 0x18(31)
    li 5, 0x0
    li 4, -0x1
    li 3, 0x7
    stw 5, 0x1c(31)
    li 0, 0x1
    .4byte 0xC3E2023C # lfs f31, lbl_805431DC@sda21(r0)
    li 28, 0xff
    stw 5, 0x15c(31)
    mr 27, 31
    li 26, 0x0
    stw 5, 0x164(31)
    stw 5, 0x16c(31)
    stb 5, 0x1a0(31)
    stb 5, 0x1a1(31)
    stw 4, 0x168(31)
    stw 29, 0x160(31)
    stw 5, 0x14c(31)
    stb 3, 0x3ae(31)
    stb 5, 0x3b0(31)
    stb 0, 0x3af(31)
    stb 5, 0x1aa(31)
    stw 4, 0x180(31)
    stw 4, 0x184(31)
    stw 4, 0x188(31)
    stw 4, 0x18c(31)
    sth 5, 0x190(31)
    sth 5, 0x192(31)
    stw 5, 0x178(31)
    stw 5, 0x17c(31)
    sth 5, 0x194(31)
    sth 5, 0x196(31)
    stb 5, 0x1a2(31)
    stfs 31, 0x98(31)
    stfs 31, 0x9c(31)
    stfs 31, 0xa0(31)
    stb 5, 0x1ab(31)
    stb 5, 0x2ab(31)
    stb 5, 0x3ab(31)
    stw 5, 0x170(31)
    stw 4, 0x154(31)
    stw 28, 0x158(31)
    stb 5, 0x19f(31)
    stb 5, 0x1a9(31)
    stb 5, 0x3b1(31)
    stw 4, 0x174(31)
L_80397500:
    li 3, 0xc
    bl fn_80084370
    stw 3, 0x68(27)
    addi 26, 26, 0x1
    cmpwi 26, 0xc
    lwz 3, 0x68(27)
    stfs 31, 0x0(3)
    lwz 3, 0x68(27)
    stfs 31, 0x4(3)
    lwz 3, 0x68(27)
    addi 27, 27, 0x4
    stb 28, 0x8(3)
    .4byte 0x4180FFD0 # blt .L_80397500
    li 0, 0x0
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    stb 0, 0x3b2(31)
    li 3, 0x60
    stb 0, 0x3b3(31)
    stb 0, 0x3b4(31)
    stfs 0, 0xa4(31)
    stfs 0, 0xa8(31)
    stfs 0, 0xac(31)
    bl fn_80084370
    mr. 26, 3
    .4byte 0x41820018 # beq .L_80397578
    extsb 4, 29
    addi 5, 31, 0xa4
    li 6, 0x0
    li 7, 0x8
    bl fn_8045B46C
L_80397578:
    stw 26, 0x3bc(31)
    li 3, 0x118
    bl fn_80084370
    mr. 26, 3
    .4byte 0x41820008 # beq .L_80397590
    bl fn_8009C4EC
L_80397590:
    stw 26, 0x20(31)
    lis 3, lbl_80529DEC@ha
    addi 29, 3, lbl_80529DEC@l
    addi 4, 30, 0x670
    lwz 3, 0x20(31)
    lis 5, 0x110
    lwz 6, 0x20(29)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 26, 3
    .4byte 0x41820008 # beq .L_803975C4
    bl fn_8009C4EC
L_803975C4:
    stw 26, 0x24(31)
    addi 4, 30, 0x680
    lis 5, 0x110
    lwz 3, 0x24(31)
    lwz 6, 0x20(29)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 26, 3
    .4byte 0x41820008 # beq .L_803975F0
    bl fn_8009C4EC
L_803975F0:
    stw 26, 0x28(31)
    addi 4, 30, 0x694
    lis 5, 0x110
    lwz 3, 0x28(31)
    lwz 6, 0x20(29)
    bl fn_8009C69C
    li 3, 0x118
    bl fn_80084370
    mr. 26, 3
    .4byte 0x41820008 # beq .L_8039761C
    bl fn_8009C4EC
L_8039761C:
    stw 26, 0x2c(31)
    addi 4, 30, 0x6a8
    lis 5, 0x110
    lwz 3, 0x2c(31)
    lwz 6, 0x20(29)
    bl fn_8009C69C
    lis 3, 0x5449
    addi 4, 30, 0x6b8
    addi 3, 3, 0x4d47
    bl fn_804030C4
    mr 0, 3
    li 3, 0x168
    mr 27, 0
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_80397664
    mr 4, 27
    bl fn_80097800
L_80397664:
    lis 3, 0x5449
    stw 26, 0x30(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x6cc
    bl fn_804030C4
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_80397694
    mr 4, 27
    bl fn_80097800
L_80397694:
    lis 3, 0x5449
    stw 26, 0x34(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x6e0
    bl fn_804030C4
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_803976C4
    mr 4, 27
    bl fn_80097800
L_803976C4:
    lis 3, 0x5449
    stw 26, 0x38(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x6f4
    bl fn_804030C4
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_803976F4
    mr 4, 27
    bl fn_80097800
L_803976F4:
    lis 3, 0x5449
    stw 26, 0x3c(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x708
    bl fn_804030C4
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_80397724
    mr 4, 27
    bl fn_80097800
L_80397724:
    lis 3, 0x5449
    stw 26, 0x40(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x718
    bl fn_804030C4
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_80397754
    mr 4, 27
    bl fn_80097800
L_80397754:
    lis 3, 0x5449
    stw 26, 0x44(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x728
    bl fn_804030C4
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_80397784
    mr 4, 27
    bl fn_80097800
L_80397784:
    lis 3, 0x5449
    stw 26, 0x48(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x738
    bl fn_804030C4
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_803977B4
    mr 4, 27
    bl fn_80097800
L_803977B4:
    lis 3, 0x5449
    stw 26, 0x4c(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x744
    bl fn_804030C4
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_803977E4
    mr 4, 27
    bl fn_80097800
L_803977E4:
    lis 3, 0x5449
    stw 26, 0x50(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x754
    bl fn_804030C4
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_80397814
    mr 4, 27
    bl fn_80097800
L_80397814:
    lis 3, 0x5449
    stw 26, 0x54(31)
    addi 3, 3, 0x4d47
    addi 4, 30, 0x764
    bl fn_804030C4
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_80397844
    mr 4, 27
    bl fn_80097800
L_80397844:
    stw 26, 0x58(31)
    lis 3, 0x506d
    addi 6, 3, 0x3030
    li 5, 0x0
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lis 4, 0x506d
    lfs 0, 0x20(3)
    addi 6, 4, 0x3030
    li 5, 0x0
    fsubs 0, 1, 0
    stfs 0, 0xb8(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x7461
    lfs 0, 0x24(3)
    lis 3, 0x4e6d
    addi 6, 4, 0x3031
    fsubs 0, 1, 0
    addi 5, 3, 0x6461
    stfs 0, 0xbc(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 4, 0x7461
    lis 3, 0x4e6d
    stfs 0, 0xc0(31)
    addi 6, 4, 0x3031
    addi 5, 3, 0x6461
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, 0x546d
    addi 6, 3, 0x3031
    li 5, 0x0
    stfs 0, 0xc4(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 3, 0x546d
    addi 6, 3, 0x3031
    li 5, 0x0
    stfs 0, 0xc8(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, 0x546d
    addi 6, 3, 0x3031
    li 5, 0x0
    stfs 0, 0xcc(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 4, 0x546d
    lwz 3, 0x20(31)
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 3, 0x546d
    addi 6, 3, 0x3031
    li 5, 0x0
    fsubs 0, 0, 31
    stfs 0, 0xd0(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 4, 0x546d
    lwz 3, 0x20(31)
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, 0x546d
    addi 6, 3, 0x3031
    li 5, 0x0
    fsubs 0, 0, 31
    stfs 0, 0xd4(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lis 4, 0x546d
    lfs 0, 0x20(3)
    addi 6, 4, 0x3031
    li 5, 0x0
    fsubs 0, 1, 0
    stfs 0, 0xe8(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x524f
    lfs 0, 0x24(3)
    addi 6, 4, 0x4f54
    li 5, 0x0
    fsubs 0, 1, 0
    stfs 0, 0xec(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 3, 0x524f
    addi 6, 3, 0x4f54
    li 5, 0x0
    stfs 0, 0x11c(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, 0x5031
    addi 6, 3, 0x6172
    li 5, 0x0
    stfs 0, 0x120(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 3, 0x5031
    addi 6, 3, 0x6172
    li 5, 0x0
    stfs 0, 0xf8(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, 0x5031
    addi 6, 3, 0x6172
    li 5, 0x0
    stfs 0, 0xfc(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lis 4, 0x5031
    lfs 0, 0x20(3)
    addi 6, 4, 0x6172
    li 5, 0x0
    fsubs 0, 1, 0
    stfs 0, 0x100(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x5031
    lfs 0, 0x24(3)
    addi 6, 4, 0x6172
    li 5, 0x0
    fsubs 0, 1, 0
    stfs 0, 0x104(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x3162
    addi 6, 3, 0x3031
    li 5, 0x50
    stb 0, 0x1a3(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x3162
    addi 6, 3, 0x3031
    li 5, 0x50
    stb 0, 0x1a5(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x316e
    addi 6, 3, 0x3032
    li 5, 0x50
    stb 0, 0x1a6(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x316e
    addi 6, 3, 0x3031
    li 5, 0x50
    stb 0, 0x1a7(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x546d
    addi 6, 3, 0x3031
    li 5, 0x0
    stb 0, 0x1a8(31)
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 3, 0x546d
    addi 6, 3, 0x3031
    li 5, 0x0
    stfs 0, 0xd8(31)
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, 0x546d
    addi 6, 3, 0x3031
    li 5, 0x0
    stfs 0, 0xdc(31)
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lis 4, 0x546d
    lfs 0, 0x20(3)
    addi 6, 4, 0x3031
    li 5, 0x0
    fsubs 0, 1, 0
    stfs 0, 0xf0(31)
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x546d
    lfs 0, 0x24(3)
    addi 6, 4, 0x3031
    li 5, 0x0
    fsubs 0, 1, 0
    stfs 0, 0xf4(31)
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x0(3)
    lis 4, 0x546d
    lwz 3, 0x2c(31)
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 3, 0x546d
    addi 6, 3, 0x3031
    li 5, 0x0
    fsubs 0, 0, 31
    stfs 0, 0xe0(31)
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 31, 0x4(3)
    lis 4, 0x546d
    lwz 3, 0x2c(31)
    addi 6, 4, 0x3032
    li 5, 0x0
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, 0x5031
    addi 6, 3, 0x6172
    li 5, 0x0
    fsubs 0, 0, 31
    stfs 0, 0xe4(31)
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x0(3)
    lis 3, 0x5031
    addi 6, 3, 0x6172
    li 5, 0x0
    stfs 0, 0x108(31)
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    bl fn_80095FB4
    lfs 0, 0x4(3)
    lis 3, 0x5031
    addi 6, 3, 0x6172
    li 5, 0x0
    stfs 0, 0x10c(31)
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x28(3)
    lis 4, 0x5031
    lfs 0, 0x20(3)
    addi 6, 4, 0x6172
    li 5, 0x0
    fsubs 0, 1, 0
    stfs 0, 0x110(31)
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 1, 0x2c(3)
    lis 4, 0x5031
    lfs 0, 0x24(3)
    addi 6, 4, 0x6172
    li 5, 0x0
    fsubs 0, 1, 0
    stfs 0, 0x114(31)
    lwz 3, 0x2c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lbz 0, 0xb2(3)
    lis 3, 0x546d
    addi 6, 3, 0x3031
    li 5, 0x0
    stb 0, 0x1a3(31)
    lwz 3, 0x20(31)
    .4byte 0x808D91B8 # lwz r4, lbl_8053AD78@sda21(r0)
    lwz 12, 0x0(3)
    lwz 28, 0x154(4)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x24(31)
    lis 4, 0x546d
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x0
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x28(31)
    lis 4, 0x546d
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x0
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x2c(31)
    lis 4, 0x546d
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3031
    lwz 12, 0x0(3)
    li 5, 0x0
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x2c(31)
    lis 4, 0x546d
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x0
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x20(31)
    lis 4, 0x546d
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x0
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x24(31)
    lis 4, 0x546d
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x0
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lwz 3, 0x28(31)
    lis 4, 0x546d
    .4byte 0x80ED91B8 # lwz r7, lbl_8053AD78@sda21(r0)
    addi 6, 4, 0x3032
    lwz 12, 0x0(3)
    li 5, 0x0
    lwz 28, 0x154(7)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    mr 4, 28
    lwz 12, 0x9c(12)
    mtctr 12
    bctrl
    lis 3, lbl_8050DB0C@ha
    li 8, 0xff
    addi 12, 3, lbl_8050DB0C@l
    li 0, 0x0
    lbz 11, 0x304(12)
    lis 3, 0x546d
    lbz 10, 0x305(12)
    addi 6, 3, 0x3032
    lbz 9, 0x306(12)
    li 5, 0x0
    lbz 7, 0x307(12)
    lbz 4, 0x308(12)
    lbz 3, 0x309(12)
    stb 11, 0x24(1)
    stb 10, 0x25(1)
    stb 9, 0x26(1)
    stb 8, 0x27(1)
    lwz 8, 0x24(1)
    stb 7, 0x2c(1)
    stb 4, 0x2d(1)
    stb 3, 0x2e(1)
    stb 0, 0x2f(1)
    lwz 0, 0x2c(1)
    stw 8, 0x28(1)
    stw 0, 0x30(1)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    addi 4, 1, 0x30
    addi 5, 1, 0x28
    lwz 12, 0xac(12)
    mtctr 12
    bctrl
    lwz 3, 0x2c(31)
    lis 5, 0x7461
    lis 4, 0x4e
    lwz 12, 0x0(3)
    addi 6, 5, 0x3035
    addi 5, 4, 0x6461
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 5, 0x7461
    stb 0, 0xb0(3)
    lis 4, 0x4e
    addi 6, 5, 0x3031
    lwz 3, 0x2c(31)
    addi 5, 4, 0x6461
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    lis 4, 0x5449
    stb 0, 0xb0(3)
    addi 4, 4, 0x4d47
    addi 5, 30, 0x774
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    mr 27, 3
    li 3, 0x168
    bl fn_80084370
    mr. 26, 3
    .4byte 0x4182000C # beq .L_80398198
    mr 4, 27
    bl fn_80097800
L_80398198:
    li 7, 0xff
    li 6, 0x8c
    li 0, 0x0
    stb 7, 0x14(1)
    addi 4, 1, 0x20
    addi 5, 1, 0x18
    stb 7, 0x15(1)
    stb 6, 0x16(1)
    stb 7, 0x17(1)
    stb 7, 0x1c(1)
    lwz 3, 0x14(1)
    stw 26, 0x5c(31)
    stb 7, 0x1d(1)
    stb 6, 0x1e(1)
    stb 0, 0x1f(1)
    lwz 0, 0x1c(1)
    stw 3, 0x18(1)
    stw 0, 0x20(1)
    lwz 3, 0x5c(31)
    lwz 12, 0x0(3)
    lwz 12, 0x130(12)
    mtctr 12
    bctrl
    lwz 3, 0x5c(31)
    li 4, 0x7a
    .4byte 0xC0220284 # lfs f1, lbl_80543224@sda21(r0)
    .4byte 0xC0420288 # lfs f2, lbl_80543228@sda21(r0)
    .4byte 0xC06202A0 # lfs f3, lbl_80543240@sda21(r0)
    bl fn_80096094
    .4byte 0xC022023C # lfs f1, lbl_805431DC@sda21(r0)
    lis 3, 0x19
    addi 5, 3, 0x660d
    .4byte 0xC002027C # lfs f0, lbl_8054321C@sda21(r0)
    stfs 1, 0x118(31)
    li 4, -0x60
    .4byte 0xC042028C # lfs f2, lbl_8054322C@sda21(r0)
    li 0, 0x0
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    li 3, 0x20
    lwz 6, 0xb4(7)
    mullw 5, 6, 5
    addis 5, 5, 0x3c6f
    subi 5, 5, 0xca1
    stw 5, 0xb4(7)
    lwz 5, 0xb4(7)
    srwi 5, 5, 9
    oris 5, 5, 0x3f80
    stw 5, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 5, 0x64(1)
    addi 5, 5, 0xa
    sth 5, 0x198(31)
    sth 4, 0x19a(31)
    sth 0, 0x19c(31)
    stw 0, 0x4(31)
    bl fn_80084370
    mr. 26, 3
    .4byte 0x41820008 # beq .L_80398294
    bl fn_8007729C
L_80398294:
    stw 26, 0x4(31)
    li 0, 0x0
    li 3, 0x38
    stw 0, 0x8(31)
    bl fn_80084370
    mr. 26, 3
    .4byte 0x41820008 # beq .L_803982B4
    bl fn_80078B20
L_803982B4:
    stw 26, 0x8(31)
    li 0, 0x0
    li 3, 0x8
    stw 0, 0xc(31)
    bl fn_80084370
    cmplwi 3, 0x0
    .4byte 0x41820024 # beq .L_803982F0
    lis 5, lbl_80498B00@ha
    lis 4, lbl_804AF6D4@ha
    addi 0, 5, lbl_80498B00@l
    li 5, 0x0
    stw 0, 0x0(3)
    addi 0, 4, lbl_804AF6D4@l
    stw 5, 0x4(3)
    stw 0, 0x0(3)
L_803982F0:
    stw 3, 0xc(31)
    li 0, 0x0
    li 3, 0x64
    stw 0, 0x10(31)
    bl fn_80084370
    mr. 26, 3
    .4byte 0x41820024 # beq .L_8039832C
    lwz 4, 0xc(31)
    lwz 5, 0x8(31)
    bl fn_8007800C
    lis 3, lbl_804AF774@ha
    li 0, 0x1
    addi 3, 3, lbl_804AF774@l
    stw 3, 0x0(26)
    stb 0, 0x5c(26)
L_8039832C:
    stw 26, 0x10(31)
    li 0, 0x0
    li 3, 0x2dc
    lwz 5, 0x3c0(31)
    lwz 4, 0x10(31)
    stw 5, 0x60(4)
    stw 0, 0x14(31)
    bl fn_80084370
    mr. 26, 3
    .4byte 0x41820048 # beq .L_80398398
    lwz 28, 0xc(31)
    mr 4, 28
    bl fn_80078884
    lis 3, lbl_804AF72C@ha
    addi 27, 26, 0x38
    addi 0, 3, lbl_804AF72C@l
    mr 4, 28
    stw 0, 0x0(26)
    mr 3, 27
    bl fn_80078884
    lis 3, lbl_804AF6E4@ha
    li 0, 0x0
    addi 3, 3, lbl_804AF6E4@l
    stw 3, 0x0(27)
    stw 0, 0x1d8(27)
    stw 0, 0x1dc(27)
    stb 0, 0x1e8(27)
L_80398398:
    stw 26, 0x14(31)
    lis 3, 0x546d
    addi 6, 3, 0x3031
    li 5, 0x0
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lwz 12, 0x0(3)
    lwz 12, 0xa0(12)
    mtctr 12
    bctrl
    lwz 5, 0x14(31)
    lis 4, 0x546d
    addi 7, 31, 0x1ab
    addi 0, 31, 0x2ab
    stw 3, 0x2bc(5)
    addi 6, 4, 0x3031
    li 5, 0x0
    lwz 3, 0x14(31)
    stw 7, 0x2c0(3)
    stw 0, 0x2c4(3)
    lwz 0, 0x3c0(31)
    lwz 3, 0x14(31)
    stw 0, 0x2d8(3)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x11c(3)
    lis 4, 0x546d
    addi 6, 4, 0x3031
    li 5, 0x0
    stfs 0, 0x60(31)
    lfs 0, 0x120(3)
    stfs 0, 0x64(31)
    lwz 3, 0x20(31)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    lfs 0, 0x118(3)
    lis 3, 0x546d
    .4byte 0xC042027C # lfs f2, lbl_8054321C@sda21(r0)
    addi 6, 3, 0x3031
    stfs 0, 0xb0(31)
    li 5, 0x0
    stfs 2, 0xb4(31)
    lfs 1, 0x60(31)
    lfs 0, 0x64(31)
    fmuls 1, 1, 2
    lwz 3, 0x20(31)
    fmuls 0, 0, 2
    lwz 12, 0x0(3)
    stfs 1, 0x34(1)
    lwz 12, 0x3c(12)
    stfs 0, 0x38(1)
    lwz 4, 0x34(1)
    lwz 0, 0x38(1)
    stw 4, 0x3c(1)
    stw 0, 0x40(1)
    mtctr 12
    bctrl
    lfs 1, 0x3c(1)
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    lfs 2, 0x40(1)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_803984B4
    .4byte 0x48000008 # b .L_803984B8
L_803984B4:
    fmr 1, 0
L_803984B8:
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    stfs 1, 0x11c(3)
    fcmpo cr0, 2, 0
    .4byte 0x40810008 # ble .L_803984CC
    .4byte 0x48000008 # b .L_803984D0
L_803984CC:
    fmr 2, 0
L_803984D0:
    stfs 2, 0x120(3)
    lis 3, 0x546d
    .4byte 0xC002027C # lfs f0, lbl_8054321C@sda21(r0)
    addi 6, 3, 0x3031
    lwz 3, 0x20(31)
    li 5, 0x0
    lfs 1, 0xb0(31)
    lwz 12, 0x0(3)
    fmuls 31, 1, 0
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stfs 31, 0x118(3)
    lis 3, 0x546d
    lwz 4, 0x34(1)
    addi 6, 3, 0x3032
    lwz 3, 0x20(31)
    li 5, 0x0
    lwz 0, 0x38(1)
    lwz 12, 0x0(3)
    stw 4, 0x44(1)
    lwz 12, 0x3c(12)
    stw 0, 0x48(1)
    mtctr 12
    bctrl
    lfs 1, 0x44(1)
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    lfs 2, 0x48(1)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_8039854C
    .4byte 0x48000008 # b .L_80398550
L_8039854C:
    fmr 1, 0
L_80398550:
    .4byte 0xC002023C # lfs f0, lbl_805431DC@sda21(r0)
    stfs 1, 0x11c(3)
    fcmpo cr0, 2, 0
    .4byte 0x40810008 # ble .L_80398564
    .4byte 0x48000008 # b .L_80398568
L_80398564:
    fmr 2, 0
L_80398568:
    stfs 2, 0x120(3)
    lis 3, 0x546d
    .4byte 0xC002027C # lfs f0, lbl_8054321C@sda21(r0)
    addi 6, 3, 0x3032
    lwz 3, 0x20(31)
    li 5, 0x0
    lfs 1, 0xb0(31)
    lwz 12, 0x0(3)
    fmuls 31, 1, 0
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    stfs 31, 0x118(3)
    addi 3, 1, 0x54
    .4byte 0xC002027C # lfs f0, lbl_8054321C@sda21(r0)
    lfs 1, 0x60(31)
    lwz 4, 0x14(31)
    stfs 0, 0x2c8(4)
    stfs 0, 0x7c(4)
    stfs 1, 0x80(4)
    lwz 0, 0x4(31)
    lwz 4, 0xc(31)
    stw 0, 0x4(4)
    lwz 0, 0x10(31)
    lwz 4, 0x8(31)
    stw 0, 0x4(4)
    lwz 0, 0x14(31)
    lwz 4, 0x8(31)
    stw 0, 0x8(4)
    lwz 4, 0x4(31)
    bl BmgMesgArchive_ctor
    lwz 0, 0x18(31)
    addi 3, 1, 0x54
    addi 4, 1, 0x10
    li 5, 0x0
    stw 0, 0x10(1)
    bl fn_8008775C
    lwz 0, 0x1c(31)
    cmplwi 0, 0x0
    .4byte 0x41820034 # beq .L_80398638
    lwz 4, 0x4(31)
    addi 3, 1, 0x4c
    bl BmcMesgArchive_ctor
    lwz 0, 0x1c(31)
    addi 3, 1, 0x4c
    addi 4, 1, 0xc
    li 5, 0x0
    stw 0, 0xc(1)
    bl fn_8008775C
    addi 3, 1, 0x4c
    li 4, -0x1
    bl BmcMesgArchive_dtor
L_80398638:
    lwz 3, 0x8(31)
    bl fn_80078BAC
    lwz 4, 0x8(31)
    lwz 3, 0x4(4)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80398658
    li 0, 0x0
    stw 0, 0x8(3)
L_80398658:
    lwz 3, 0x8(4)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8039866C
    li 0, 0x0
    stw 0, 0x8(3)
L_8039866C:
    li 0, 0x0
    addi 3, 1, 0x54
    stw 0, 0x10(4)
    li 4, -0x1
    bl BmgMesgArchive_dtor
    mr 3, 31
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    lmw 26, 0x68(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

