.section extab, "a"
.balign 4
.global etb_80008B7C
etb_80008B7C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008B7C, 8

.global etb_80008B84
etb_80008B84:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008B84, 8

.global etb_80008B8C
etb_80008B8C:
    .4byte 0x934A0000
    .4byte 0x00000000
.size etb_80008B8C, 8

.global etb_80008B94
etb_80008B94:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008B94, 8

.global etb_80008B9C
etb_80008B9C:
    .4byte 0x090A0000
    .4byte 0x00000000
.size etb_80008B9C, 8

.global etb_80008BA4
etb_80008BA4:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80008BA4, 8

.global etb_80008BAC
etb_80008BAC:
    .4byte 0x090A0000
    .4byte 0x00000000
.size etb_80008BAC, 8

.global etb_80008BB4
etb_80008BB4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008BB4, 8

.section extabindex, "a"
.balign 4
.global eti_80016150
eti_80016150:
    .4byte fn_801E7DF8
    .4byte 0x00000224
    .4byte etb_80008B7C
.size eti_80016150, 12

.global eti_8001615C
eti_8001615C:
    .4byte fn_801E801C
    .4byte 0x00000064
    .4byte etb_80008B84
.size eti_8001615C, 12

.global eti_80016168
eti_80016168:
    .4byte fn_801E8080
    .4byte 0x00000A9C
    .4byte etb_80008B8C
.size eti_80016168, 12

.global eti_80016174
eti_80016174:
    .4byte fn_801E8B1C
    .4byte 0x00000158
    .4byte etb_80008B94
.size eti_80016174, 12

.global eti_80016180
eti_80016180:
    .4byte fn_801E8C74
    .4byte 0x00000240
    .4byte etb_80008B9C
.size eti_80016180, 12

.global eti_8001618C
eti_8001618C:
    .4byte fn_801E8EE8
    .4byte 0x00000038
    .4byte etb_80008BA4
.size eti_8001618C, 12

.global eti_80016198
eti_80016198:
    .4byte fn_801E8F20
    .4byte 0x000000C8
    .4byte etb_80008BAC
.size eti_80016198, 12

.global eti_800161A4
eti_800161A4:
    .4byte fn_801E8FE8
    .4byte 0x000000D4
    .4byte etb_80008BB4
.size eti_800161A4, 12

.text
.balign 4
.global fn_801E7DF8
.global fn_801E801C
.global fn_801E8080
.global fn_801E8B1C
.global fn_801E8C74
.global fn_801E8EB4
.global fn_801E8EE8
.global fn_801E8F20
.global fn_801E8FE8

fn_801E7DF8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CA158@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CA158@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E7E48
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x0
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_801E7E48:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E7E80
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0xc
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_801E7E80:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E7EB8
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_801E7EB8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E7EF0
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_801E7EF0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E7F28
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_801E7F28:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E7F60
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_801E7F60:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E7F98
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_801E7F98:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E7FD0
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_801E7FD0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801E8008
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_801E8008:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E801C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0x880D908C # lbz r0, lbl_8053AC4C@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820014 # bne .L_801E804C
    .4byte 0xC002C658 # lfs f0, lbl_8053F5F8@sda21(r0)
    li 0, 0x1
    .4byte 0x980D908C # stb r0, lbl_8053AC4C@sda21(r0)
    .4byte 0xD00D9088 # stfs f0, lbl_8053AC48@sda21(r0)
L_801E804C:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_801E806C
    bl fn_801E9AFC
    lha 5, 0x3bc(31)
    addi 4, 31, 0xc
    .4byte 0xC02D9088 # lfs f1, lbl_8053AC48@sda21(r0)
    bl fn_801EA108
L_801E806C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E8080:
    stwu 1, -0x160(1)
    mflr 0
    stw 0, 0x164(1)
    stfd 31, 0x150(1)
    psq_st 31, 0x158(1), 0, 0
    stfd 30, 0x140(1)
    psq_st 30, 0x148(1), 0, 0
    stfd 29, 0x130(1)
    psq_st 29, 0x138(1), 0, 0
    stfd 28, 0x120(1)
    psq_st 28, 0x128(1), 0, 0
    stfd 27, 0x110(1)
    psq_st 27, 0x118(1), 0, 0
    stfd 26, 0x100(1)
    psq_st 26, 0x108(1), 0, 0
    stfd 25, 0xf0(1)
    psq_st 25, 0xf8(1), 0, 0
    stfd 24, 0xe0(1)
    psq_st 24, 0xe8(1), 0, 0
    stfd 23, 0xd0(1)
    psq_st 23, 0xd8(1), 0, 0
    stfd 22, 0xc0(1)
    psq_st 22, 0xc8(1), 0, 0
    stfd 21, 0xb0(1)
    psq_st 21, 0xb8(1), 0, 0
    stfd 20, 0xa0(1)
    psq_st 20, 0xa8(1), 0, 0
    stfd 19, 0x90(1)
    psq_st 19, 0x98(1), 0, 0
    stmw 14, 0x48(1)
    mr 15, 3
    lbz 3, 0x2ad(3)
    .4byte 0xC3E2C65C # lfs f31, lbl_8053F5FC@sda21(r0)
    li 14, 0x0
    subi 0, 3, 0x1
    slwi 3, 0, 5
    addi 0, 3, 0x2
    stw 0, 0x40(1)
    bl fn_801E9AFC
    lfs 21, 0x178(3)
    bl fn_801E9AFC
    lbz 0, 0x3b0(15)
    fmr 22, 21
    lfs 27, 0x17c(3)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_801E8154
    .4byte 0xC022C65C # lfs f1, lbl_8053F5FC@sda21(r0)
    lfs 0, 0x3b4(15)
    fcmpu cr0, 1, 0
    .4byte 0x40820010 # bne .L_801E8154
    bl fn_801E9AFC
    bl fn_801EA344
    .4byte 0x48000020 # b .L_801E8170
L_801E8154:
    bl fn_801E9AFC
    bl fn_801EA304
    lwz 0, 0x230(15)
    fmr 22, 27
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x40820008 # bne .L_801E8170
    li 14, 0x1
L_801E8170:
    clrlwi. 0, 14, 24
    .4byte 0x41820680 # beq .L_801E87F4
    .4byte 0xC022C660 # lfs f1, lbl_8053F600@sda21(r0)
    li 3, 0x98
    lfs 0, 0x3b4(15)
    li 4, 0x0
    lbz 0, 0x3b0(15)
    fadds 0, 1, 0
    slwi 6, 0, 5
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    clrlslwi 5, 0, 24, 1
    clrlwi 0, 0, 24
    addi 14, 5, 0x2
    stw 0, 0x44(1)
    add 14, 6, 14
    clrlwi 5, 14, 16
    bl fn_8005C24C
    lfs 1, 0x2b0(15)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x2b4(15)
    addi 29, 3, lbl_80534C00@l
    stfs 1, 0x8(1)
    subi 30, 14, 0x2
    .4byte 0xC382C668 # lfs f28, lbl_8053F608@sda21(r0)
    li 16, 0x0
    stfs 0, 0xc(1)
    li 18, 0x0
    .4byte 0xC2C2C65C # lfs f22, lbl_8053F5FC@sda21(r0)
    lbz 31, 0x3b0(15)
    .4byte 0x480001FC # b .L_801E83E8
L_801E81F0:
    clrlslwi 0, 18, 24, 3
    clrlwi 28, 18, 24
    add 3, 15, 0
    li 17, 0x1
    addi 26, 3, 0x2b0
    addi 25, 3, 0x2b4
    addi 24, 3, 0x2b8
    addi 23, 3, 0x2bc
    addi 22, 3, 0x2a8
    addi 21, 3, 0x2ac
    addi 20, 3, 0x2c0
    addi 19, 3, 0x2c4
    .4byte 0x480001B8 # b .L_801E83D8
L_801E8224:
    clrlwi 0, 17, 24
    cmpwi 0, 0x10
    .4byte 0x41820020 # beq .L_801E824C
    .4byte 0x40800028 # bge .L_801E8258
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801E8240
    .4byte 0x4800001C # b .L_801E8258
L_801E8240:
    lfs 19, 0x0(26)
    lfs 20, 0x0(25)
    .4byte 0x480000AC # b .L_801E82F4
L_801E824C:
    lfs 19, 0x0(24)
    lfs 20, 0x0(23)
    .4byte 0x480000A0 # b .L_801E82F4
L_801E8258:
    clrlwi. 0, 18, 24
    .4byte 0x40820010 # bne .L_801E826C
    lfs 26, 0x2b0(15)
    lfs 1, 0x2b4(15)
    .4byte 0x4800000C # b .L_801E8274
L_801E826C:
    lfs 26, 0x0(22)
    lfs 1, 0x0(21)
L_801E8274:
    lbz 3, 0x2ad(15)
    lfs 23, 0x0(24)
    subi 0, 3, 0x2
    lfs 3, 0x0(23)
    cmpw 28, 0
    lfs 25, 0x0(26)
    lfs 2, 0x0(25)
    .4byte 0x40820010 # bne .L_801E82A0
    fmr 24, 23
    fmr 4, 3
    .4byte 0x4800000C # b .L_801E82A8
L_801E82A0:
    lfs 24, 0x0(20)
    lfs 4, 0x0(19)
L_801E82A8:
    clrlwi 3, 17, 24
    lis 0, 0x4330
    stw 3, 0x14(1)
    .4byte 0xC8A2C678 # lfd f5, lbl_8053F618@sda21(r0)
    stw 0, 0x10(1)
    .4byte 0xC0C2C664 # lfs f6, lbl_8053F604@sda21(r0)
    lfd 0, 0x10(1)
    fsubs 0, 0, 5
    fmuls 19, 6, 0
    fmr 5, 19
    bl fn_801CD6D8
    fmr 20, 1
    fmr 1, 26
    fmr 2, 25
    fmr 3, 23
    fmr 4, 24
    fmr 5, 19
    bl fn_801CD6D8
    fmr 19, 1
L_801E82F4:
    lfs 1, 0x8(1)
    cmplwi 28, 0x0
    lfs 0, 0xc(1)
    fsubs 23, 19, 1
    fsubs 24, 20, 0
    .4byte 0x40820018 # bne .L_801E8320
    clrlwi 0, 17, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_801E8320
    fmr 29, 23
    fmr 30, 24
L_801E8320:
    fmr 1, 23
    mr 3, 29
    fmr 2, 24
    bl fn_80093340
    fmuls 0, 1, 28
    mr 3, 29
    fmr 1, 29
    fmr 2, 30
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 27, 0x14(1)
    bl fn_80093340
    fmuls 0, 1, 28
    mr 3, 15
    fmr 1, 31
    mr 6, 27
    fmr 2, 27
    addi 4, 1, 0x8
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 5, 0x1c(1)
    bl fn_801E8B1C
    fmuls 0, 24, 24
    stfs 19, 0x8(1)
    fmr 29, 23
    fmr 30, 24
    stfs 20, 0xc(1)
    fmadds 4, 23, 23, 0
    fcmpo cr0, 4, 22
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801E83A0
    .4byte 0x48000028 # b .L_801E83C4
L_801E83A0:
    frsqrte 3, 4
    .4byte 0xC042C66C # lfs f2, lbl_8053F60C@sda21(r0)
    .4byte 0xC002C670 # lfs f0, lbl_8053F610@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_801E83C4:
    addi 16, 16, 0x2
    fadds 31, 31, 4
    cmpw 16, 30
    .4byte 0x40800024 # bge .L_801E83F4
    addi 17, 17, 0x1
L_801E83D8:
    clrlwi 0, 17, 24
    cmplwi 0, 0x10
    .4byte 0x4081FE44 # ble .L_801E8224
    addi 18, 18, 0x1
L_801E83E8:
    clrlwi 0, 18, 24
    cmplw 0, 31
    .4byte 0x4081FE00 # ble .L_801E81F0
L_801E83F4:
    fmuls 1, 30, 30
    .4byte 0xC002C65C # lfs f0, lbl_8053F5FC@sda21(r0)
    fmadds 4, 29, 29, 1
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801E8410
    .4byte 0x48000028 # b .L_801E8434
L_801E8410:
    frsqrte 3, 4
    .4byte 0xC042C66C # lfs f2, lbl_8053F60C@sda21(r0)
    .4byte 0xC002C670 # lfs f0, lbl_8053F610@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_801E8434:
    lfs 5, 0x3b4(15)
    lis 0, 0x4330
    lis 3, lbl_80534C00@ha
    stw 0, 0x10(1)
    fctiwz 0, 5
    .4byte 0xC862C678 # lfd f3, lbl_8053F618@sda21(r0)
    fsubs 20, 31, 4
    addi 3, 3, lbl_80534C00@l
    fmr 1, 29
    stfd 0, 0x18(1)
    fmr 2, 30
    lwz 0, 0x1c(1)
    clrlwi 0, 0, 24
    stw 0, 0x14(1)
    lfd 0, 0x10(1)
    fsubs 0, 0, 3
    fsubs 0, 5, 0
    fmadds 20, 4, 0, 20
    bl fn_80093340
    .4byte 0xC002C668 # lfs f0, lbl_8053F608@sda21(r0)
    lis 3, lbl_80534C00@ha
    fmr 2, 30
    addi 3, 3, lbl_80534C00@l
    fmuls 0, 1, 0
    fmr 1, 29
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 16, 0x24(1)
    bl fn_80093340
    .4byte 0xC002C668 # lfs f0, lbl_8053F608@sda21(r0)
    fmr 2, 27
    mr 3, 15
    mr 6, 16
    fmuls 0, 1, 0
    addi 4, 15, 0xc
    fmr 1, 20
    fctiwz 0, 0
    stfd 0, 0x28(1)
    lwz 5, 0x2c(1)
    bl fn_801E8B1C
    bl fn_801E9AFC
    bl fn_801EA344
    lwz 0, 0x40(1)
    li 3, 0x98
    subf 4, 14, 0
    addi 0, 4, 0x4
    li 4, 0x0
    clrlwi 5, 0, 16
    bl fn_8005C24C
    fmr 1, 29
    lis 3, lbl_80534C00@ha
    fmr 2, 30
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002C668 # lfs f0, lbl_8053F608@sda21(r0)
    lis 3, lbl_80534C00@ha
    fmr 2, 30
    addi 3, 3, lbl_80534C00@l
    fmuls 0, 1, 0
    fmr 1, 29
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 14, 0x34(1)
    bl fn_80093340
    .4byte 0xC002C668 # lfs f0, lbl_8053F608@sda21(r0)
    fmr 2, 21
    mr 3, 15
    mr 6, 14
    fmuls 0, 1, 0
    addi 4, 15, 0xc
    fmr 1, 20
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 5, 0x3c(1)
    bl fn_801E8B1C
    lwz 3, 0x44(1)
    lbz 16, 0x3b0(15)
    addi 25, 3, 0x1
    lbz 3, 0x2ad(15)
    mr 27, 16
    subi 29, 3, 0x1
    .4byte 0x48000204 # b .L_801E877C
L_801E857C:
    clrlslwi 3, 27, 24, 3
    slwi 0, 26, 3
    add 4, 15, 0
    clrlwi 14, 27, 24
    add 3, 15, 3
    li 28, 0x1
    addi 17, 3, 0x2b0
    addi 19, 4, 0x2b8
    addi 18, 3, 0x2b4
    addi 20, 4, 0x2bc
    addi 21, 4, 0x2a8
    addi 22, 4, 0x2ac
    addi 23, 4, 0x2c0
    addi 24, 4, 0x2c4
    .4byte 0x480001B8 # b .L_801E876C
L_801E85B8:
    cmplw 14, 16
    .4byte 0x41810010 # bgt .L_801E85CC
    clrlwi 0, 28, 24
    cmpw 0, 25
    .4byte 0x418001A0 # blt .L_801E8768
L_801E85CC:
    clrlwi 0, 28, 24
    cmpwi 0, 0x10
    .4byte 0x41820020 # beq .L_801E85F4
    .4byte 0x40800028 # bge .L_801E8600
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801E85E8
    .4byte 0x4800001C # b .L_801E8600
L_801E85E8:
    lfs 19, 0x0(17)
    lfs 25, 0x0(18)
    .4byte 0x480000AC # b .L_801E869C
L_801E85F4:
    lfs 19, 0x0(19)
    lfs 25, 0x0(20)
    .4byte 0x480000A0 # b .L_801E869C
L_801E8600:
    clrlwi. 0, 27, 24
    .4byte 0x40820010 # bne .L_801E8614
    lfs 20, 0x2b0(15)
    lfs 1, 0x2b4(15)
    .4byte 0x4800000C # b .L_801E861C
L_801E8614:
    lfs 20, 0x0(21)
    lfs 1, 0x0(22)
L_801E861C:
    lbz 3, 0x2ad(15)
    lfs 24, 0x0(19)
    subi 0, 3, 0x2
    lfs 3, 0x0(20)
    cmpw 26, 0
    lfs 22, 0x0(17)
    lfs 2, 0x0(18)
    .4byte 0x40820010 # bne .L_801E8648
    fmr 23, 24
    fmr 4, 3
    .4byte 0x4800000C # b .L_801E8650
L_801E8648:
    lfs 23, 0x0(23)
    lfs 4, 0x0(24)
L_801E8650:
    clrlwi 3, 28, 24
    lis 0, 0x4330
    stw 3, 0x3c(1)
    .4byte 0xC8A2C678 # lfd f5, lbl_8053F618@sda21(r0)
    stw 0, 0x38(1)
    .4byte 0xC0C2C664 # lfs f6, lbl_8053F604@sda21(r0)
    lfd 0, 0x38(1)
    fsubs 0, 0, 5
    fmuls 19, 6, 0
    fmr 5, 19
    bl fn_801CD6D8
    fmr 25, 1
    fmr 1, 20
    fmr 2, 22
    fmr 3, 24
    fmr 4, 23
    fmr 5, 19
    bl fn_801CD6D8
    fmr 19, 1
L_801E869C:
    lfs 1, 0x8(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0xc(1)
    addi 3, 3, lbl_80534C00@l
    fsubs 20, 19, 1
    fsubs 22, 25, 0
    fmr 1, 20
    fmr 2, 22
    bl fn_80093340
    .4byte 0xC002C668 # lfs f0, lbl_8053F608@sda21(r0)
    lis 3, lbl_80534C00@ha
    fmr 2, 30
    addi 3, 3, lbl_80534C00@l
    fmuls 0, 1, 0
    fmr 1, 29
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 30, 0x3c(1)
    bl fn_80093340
    .4byte 0xC002C668 # lfs f0, lbl_8053F608@sda21(r0)
    fmr 2, 21
    mr 3, 15
    mr 6, 30
    fmuls 0, 1, 0
    addi 4, 1, 0x8
    fmr 1, 31
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 5, 0x34(1)
    bl fn_801E8B1C
    fmuls 1, 22, 22
    .4byte 0xC002C65C # lfs f0, lbl_8053F5FC@sda21(r0)
    fmr 29, 20
    stfs 19, 0x8(1)
    fmr 30, 22
    fmadds 4, 20, 20, 1
    stfs 25, 0xc(1)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801E8740
    .4byte 0x48000028 # b .L_801E8764
L_801E8740:
    frsqrte 3, 4
    .4byte 0xC042C66C # lfs f2, lbl_8053F60C@sda21(r0)
    .4byte 0xC002C670 # lfs f0, lbl_8053F610@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_801E8764:
    fadds 31, 31, 4
L_801E8768:
    addi 28, 28, 0x1
L_801E876C:
    clrlwi 0, 28, 24
    cmplwi 0, 0x10
    .4byte 0x4081FE44 # ble .L_801E85B8
    addi 27, 27, 0x1
L_801E877C:
    clrlwi 26, 27, 24
    cmpw 26, 29
    .4byte 0x4180FDF8 # blt .L_801E857C
    fmr 1, 29
    lis 3, lbl_80534C00@ha
    fmr 2, 30
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002C668 # lfs f0, lbl_8053F608@sda21(r0)
    lis 3, lbl_80534C00@ha
    fmr 2, 30
    addi 3, 3, lbl_80534C00@l
    fmuls 0, 1, 0
    fmr 1, 29
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 14, 0x3c(1)
    bl fn_80093340
    .4byte 0xC002C668 # lfs f0, lbl_8053F608@sda21(r0)
    fmr 2, 21
    mr 3, 15
    mr 6, 14
    fmuls 0, 1, 0
    addi 4, 1, 0x8
    fmr 1, 31
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 5, 0x34(1)
    bl fn_801E8B1C
    .4byte 0x480002B0 # b .L_801E8AA0
L_801E87F4:
    lwz 0, 0x40(1)
    li 3, 0x98
    li 4, 0x0
    clrlwi 5, 0, 16
    bl fn_8005C24C
    lfs 1, 0x2b0(15)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x2b4(15)
    addi 28, 3, lbl_80534C00@l
    lbz 3, 0x2ad(15)
    li 25, 0x0
    stfs 1, 0x8(1)
    .4byte 0xC2E2C668 # lfs f23, lbl_8053F608@sda21(r0)
    subi 27, 3, 0x1
    stfs 0, 0xc(1)
    .4byte 0xC2A2C65C # lfs f21, lbl_8053F5FC@sda21(r0)
    .4byte 0x480001F8 # b .L_801E8A2C
L_801E8838:
    clrlslwi 3, 25, 24, 3
    slwi 0, 24, 3
    add 4, 15, 0
    clrlwi 14, 25, 24
    add 3, 15, 3
    li 26, 0x1
    addi 16, 3, 0x2b0
    addi 18, 4, 0x2b8
    addi 17, 3, 0x2b4
    addi 19, 4, 0x2bc
    addi 20, 4, 0x2a8
    addi 21, 4, 0x2ac
    addi 22, 4, 0x2c0
    addi 23, 4, 0x2c4
    .4byte 0x480001AC # b .L_801E8A1C
L_801E8874:
    clrlwi 0, 26, 24
    cmpwi 0, 0x10
    .4byte 0x41820020 # beq .L_801E889C
    .4byte 0x40800028 # bge .L_801E88A8
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_801E8890
    .4byte 0x4800001C # b .L_801E88A8
L_801E8890:
    lfs 19, 0x0(16)
    lfs 27, 0x0(17)
    .4byte 0x480000AC # b .L_801E8944
L_801E889C:
    lfs 19, 0x0(18)
    lfs 27, 0x0(19)
    .4byte 0x480000A0 # b .L_801E8944
L_801E88A8:
    clrlwi. 0, 25, 24
    .4byte 0x40820010 # bne .L_801E88BC
    lfs 20, 0x2b0(15)
    lfs 1, 0x2b4(15)
    .4byte 0x4800000C # b .L_801E88C4
L_801E88BC:
    lfs 20, 0x0(20)
    lfs 1, 0x0(21)
L_801E88C4:
    lbz 3, 0x2ad(15)
    lfs 26, 0x0(18)
    subi 0, 3, 0x2
    lfs 3, 0x0(19)
    cmpw 24, 0
    lfs 24, 0x0(16)
    lfs 2, 0x0(17)
    .4byte 0x40820010 # bne .L_801E88F0
    fmr 25, 26
    fmr 4, 3
    .4byte 0x4800000C # b .L_801E88F8
L_801E88F0:
    lfs 25, 0x0(22)
    lfs 4, 0x0(23)
L_801E88F8:
    clrlwi 3, 26, 24
    lis 0, 0x4330
    stw 3, 0x3c(1)
    .4byte 0xC8A2C678 # lfd f5, lbl_8053F618@sda21(r0)
    stw 0, 0x38(1)
    .4byte 0xC0C2C664 # lfs f6, lbl_8053F604@sda21(r0)
    lfd 0, 0x38(1)
    fsubs 0, 0, 5
    fmuls 19, 6, 0
    fmr 5, 19
    bl fn_801CD6D8
    fmr 27, 1
    fmr 1, 20
    fmr 2, 24
    fmr 3, 26
    fmr 4, 25
    fmr 5, 19
    bl fn_801CD6D8
    fmr 19, 1
L_801E8944:
    lfs 1, 0x8(1)
    cmplwi 14, 0x0
    lfs 0, 0xc(1)
    fsubs 20, 19, 1
    fsubs 24, 27, 0
    .4byte 0x40820018 # bne .L_801E8970
    clrlwi 0, 26, 24
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_801E8970
    fmr 29, 20
    fmr 30, 24
L_801E8970:
    fmr 1, 20
    mr 3, 28
    fmr 2, 24
    bl fn_80093340
    fmuls 0, 1, 23
    mr 3, 28
    fmr 1, 29
    fmr 2, 30
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 29, 0x3c(1)
    bl fn_80093340
    fmuls 0, 1, 23
    mr 3, 15
    fmr 1, 31
    mr 6, 29
    fmr 2, 22
    addi 4, 1, 0x8
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 5, 0x34(1)
    bl fn_801E8B1C
    fmuls 0, 24, 24
    stfs 19, 0x8(1)
    fmr 29, 20
    fmr 30, 24
    stfs 27, 0xc(1)
    fmadds 4, 20, 20, 0
    fcmpo cr0, 4, 21
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801E89F0
    .4byte 0x48000028 # b .L_801E8A14
L_801E89F0:
    frsqrte 3, 4
    .4byte 0xC042C66C # lfs f2, lbl_8053F60C@sda21(r0)
    .4byte 0xC002C670 # lfs f0, lbl_8053F610@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_801E8A14:
    fadds 31, 31, 4
    addi 26, 26, 0x1
L_801E8A1C:
    clrlwi 0, 26, 24
    cmplwi 0, 0x10
    .4byte 0x4081FE50 # ble .L_801E8874
    addi 25, 25, 0x1
L_801E8A2C:
    clrlwi 24, 25, 24
    cmpw 24, 27
    .4byte 0x4180FE04 # blt .L_801E8838
    fmr 1, 29
    lis 3, lbl_80534C00@ha
    fmr 2, 30
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002C668 # lfs f0, lbl_8053F608@sda21(r0)
    lis 3, lbl_80534C00@ha
    fmr 2, 30
    addi 3, 3, lbl_80534C00@l
    fmuls 0, 1, 0
    fmr 1, 29
    fctiwz 0, 0
    stfd 0, 0x38(1)
    lwz 14, 0x3c(1)
    bl fn_80093340
    .4byte 0xC002C668 # lfs f0, lbl_8053F608@sda21(r0)
    fmr 2, 22
    mr 3, 15
    mr 6, 14
    fmuls 0, 1, 0
    addi 4, 1, 0x8
    fmr 1, 31
    fctiwz 0, 0
    stfd 0, 0x30(1)
    lwz 5, 0x34(1)
    bl fn_801E8B1C
L_801E8AA0:
    psq_l 31, 0x158(1), 0, 0
    lfd 31, 0x150(1)
    psq_l 30, 0x148(1), 0, 0
    lfd 30, 0x140(1)
    psq_l 29, 0x138(1), 0, 0
    lfd 29, 0x130(1)
    psq_l 28, 0x128(1), 0, 0
    lfd 28, 0x120(1)
    psq_l 27, 0x118(1), 0, 0
    lfd 27, 0x110(1)
    psq_l 26, 0x108(1), 0, 0
    lfd 26, 0x100(1)
    psq_l 25, 0xf8(1), 0, 0
    lfd 25, 0xf0(1)
    psq_l 24, 0xe8(1), 0, 0
    lfd 24, 0xe0(1)
    psq_l 23, 0xd8(1), 0, 0
    lfd 23, 0xd0(1)
    psq_l 22, 0xc8(1), 0, 0
    lfd 22, 0xc0(1)
    psq_l 21, 0xb8(1), 0, 0
    lfd 21, 0xb0(1)
    psq_l 20, 0xa8(1), 0, 0
    lfd 20, 0xa0(1)
    psq_l 19, 0x98(1), 0, 0
    lfd 19, 0x90(1)
    lmw 14, 0x48(1)
    lwz 0, 0x164(1)
    mtlr 0
    addi 1, 1, 0x160
    blr

fn_801E8B1C:
    stwu 1, -0x20(1)
    .4byte 0x880D9084 # lbz r0, lbl_8053AC44@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820014 # bne .L_801E8B3C
    .4byte 0xC002C658 # lfs f0, lbl_8053F5F8@sda21(r0)
    li 0, 0x1
    .4byte 0x980D9084 # stb r0, lbl_8053AC44@sda21(r0)
    .4byte 0xD00D9080 # stfs f0, lbl_8053AC40@sda21(r0)
L_801E8B3C:
    clrlwi 7, 5, 16
    clrlwi 0, 6, 16
    add 3, 7, 0
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    stw 0, 0x8(1)
    .4byte 0xC882C690 # lfd f4, lbl_8053F630@sda21(r0)
    stw 3, 0xc(1)
    .4byte 0xC0A2C66C # lfs f5, lbl_8053F60C@sda21(r0)
    lfd 3, 0x8(1)
    .4byte 0xC002C65C # lfs f0, lbl_8053F5FC@sda21(r0)
    fsubs 3, 3, 4
    fmuls 3, 5, 3
    fcmpo cr0, 3, 0
    .4byte 0x40810008 # ble .L_801E8B7C
    .4byte 0x48000008 # b .L_801E8B80
L_801E8B7C:
    .4byte 0xC0A2C680 # lfs f5, lbl_8053F620@sda21(r0)
L_801E8B80:
    .4byte 0xC002C688 # lfs f0, lbl_8053F628@sda21(r0)
    fadds 3, 3, 5
    lis 3, lbl_8052EBC0@ha
    srawi 0, 7, 5
    fmuls 0, 0, 2
    addi 6, 3, lbl_8052EBC0@l
    .4byte 0xC0A2C660 # lfs f5, lbl_8053F600@sda21(r0)
    fctiwz 3, 3
    slwi 0, 0, 3
    fdivs 0, 5, 0
    addi 7, 6, 0x4
    lfsx 6, 6, 0
    stfd 3, 0x10(1)
    lfsx 8, 7, 0
    lis 3, 0xcc01
    lwz 0, 0x14(1)
    fmuls 12, 1, 0
    lfs 4, 0x4(4)
    extsh 0, 0
    lfs 3, 0x0(4)
    subf 0, 5, 0
    .4byte 0xC042C684 # lfs f2, lbl_8053F624@sda21(r0)
    extsh 4, 0
    .4byte 0xC16D9080 # lfs f11, lbl_8053AC40@sda21(r0)
    rlwinm 0, 4, 30, 18, 28
    .4byte 0xC002C65C # lfs f0, lbl_8053F5FC@sda21(r0)
    lfsx 1, 7, 0
    subi 0, 4, 0x4000
    extsh 0, 0
    fdivs 1, 5, 1
    neg 0, 0
    rlwinm 0, 0, 30, 18, 28
    lfsx 9, 7, 0
    lfsx 10, 6, 0
    fmuls 7, 2, 1
    fmuls 1, 8, 9
    fmuls 2, 8, 10
    fmadds 8, 6, 10, 1
    fmsubs 6, 6, 9, 2
    fmuls 8, 8, 7
    fmuls 6, 6, 7
    fadds 2, 4, 8
    fadds 1, 3, 6
    fneg 7, 6
    fadds 6, 11, 2
    stfs 1, -0x8000(3)
    fneg 8, 8
    fadds 1, 3, 7
    stfs 6, -0x8000(3)
    fadds 2, 4, 8
    stfs 11, -0x8000(3)
    stfs 5, -0x8000(3)
    fadds 2, 11, 2
    stfs 12, -0x8000(3)
    stfs 1, -0x8000(3)
    stfs 2, -0x8000(3)
    stfs 11, -0x8000(3)
    stfs 0, -0x8000(3)
    stfs 12, -0x8000(3)
    addi 1, 1, 0x20
    blr

fn_801E8C74:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stfd 28, 0x20(1)
    psq_st 28, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    mr 31, 3
    li 3, 0x0
    stw 4, 0x3b8(31)
    li 0, 0x8
    li 5, 0x1
    li 6, 0x0
    stb 3, 0x2ad(31)
    li 4, 0x1
    mtctr 0
L_801E8CC8:
    lwz 3, 0x2a8(31)
    slw 0, 4, 6
    and. 0, 3, 0
    .4byte 0x4182001C # beq .L_801E8CF0
    clrlwi. 0, 5, 24
    .4byte 0x41820018 # beq .L_801E8CF4
    lbz 3, 0x2ad(31)
    addi 0, 3, 0x1
    stb 0, 0x2ad(31)
    .4byte 0x48000008 # b .L_801E8CF4
L_801E8CF0:
    li 5, 0x0
L_801E8CF4:
    addi 6, 6, 0x1
    lwz 3, 0x2a8(31)
    slw 0, 4, 6
    and. 0, 3, 0
    .4byte 0x4182001C # beq .L_801E8D20
    clrlwi. 0, 5, 24
    .4byte 0x41820018 # beq .L_801E8D24
    lbz 3, 0x2ad(31)
    addi 0, 3, 0x1
    stb 0, 0x2ad(31)
    .4byte 0x48000008 # b .L_801E8D24
L_801E8D20:
    li 5, 0x0
L_801E8D24:
    addi 6, 6, 0x1
    lwz 3, 0x2a8(31)
    slw 0, 4, 6
    and. 0, 3, 0
    .4byte 0x4182001C # beq .L_801E8D50
    clrlwi. 0, 5, 24
    .4byte 0x41820018 # beq .L_801E8D54
    lbz 3, 0x2ad(31)
    addi 0, 3, 0x1
    stb 0, 0x2ad(31)
    .4byte 0x48000008 # b .L_801E8D54
L_801E8D50:
    li 5, 0x0
L_801E8D54:
    addi 6, 6, 0x1
    lwz 3, 0x2a8(31)
    slw 0, 4, 6
    and. 0, 3, 0
    .4byte 0x4182001C # beq .L_801E8D80
    clrlwi. 0, 5, 24
    .4byte 0x41820018 # beq .L_801E8D84
    lbz 3, 0x2ad(31)
    addi 0, 3, 0x1
    stb 0, 0x2ad(31)
    .4byte 0x48000008 # b .L_801E8D84
L_801E8D80:
    li 5, 0x0
L_801E8D84:
    addi 6, 6, 0x1
    .4byte 0x4200FF40 # bdnz .L_801E8CC8
    lfs 2, 0x2b4(31)
    lfs 1, 0x2b0(31)
    .4byte 0xC002C65C # lfs f0, lbl_8053F5FC@sda21(r0)
    stfs 1, 0xc(31)
    stfs 2, 0x10(31)
    stfs 0, 0x14(31)
    lbz 3, 0x2ad(31)
    lfs 29, 0x2b0(31)
    subic. 0, 3, 0x2
    lfs 2, 0x2b4(31)
    lfs 28, 0x2b8(31)
    lfs 3, 0x2bc(31)
    .4byte 0x40820010 # bne .L_801E8DCC
    fmr 30, 28
    fmr 4, 3
    .4byte 0x4800000C # b .L_801E8DD4
L_801E8DCC:
    lfs 30, 0x2c0(31)
    lfs 4, 0x2c4(31)
L_801E8DD4:
    fmr 1, 2
    .4byte 0xC0A2C664 # lfs f5, lbl_8053F604@sda21(r0)
    bl fn_801CD6D8
    fmr 31, 1
    .4byte 0xC0A2C664 # lfs f5, lbl_8053F604@sda21(r0)
    fmr 1, 29
    fmr 2, 29
    fmr 3, 28
    fmr 4, 30
    bl fn_801CD6D8
    lfs 0, 0xc(31)
    lis 3, lbl_80534C00@ha
    lfs 2, 0x10(31)
    addi 3, 3, lbl_80534C00@l
    fsubs 0, 0, 1
    fsubs 2, 2, 31
    fmr 1, 0
    bl fn_80093340
    .4byte 0xC002C668 # lfs f0, lbl_8053F608@sda21(r0)
    addi 4, 1, 0x8
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    sth 0, 0x3bc(31)
    lha 3, 0x3bc(31)
    bl fn_801E9C00
    lfs 1, 0x60(31)
    lfs 0, 0x8(1)
    fadds 0, 1, 0
    stfs 0, 0x60(31)
    lfs 1, 0x64(31)
    lfs 0, 0xc(1)
    fadds 0, 1, 0
    stfs 0, 0x64(31)
    lfs 1, 0x68(31)
    lfs 0, 0x8(1)
    fadds 0, 1, 0
    stfs 0, 0x68(31)
    lfs 1, 0x6c(31)
    lfs 0, 0xc(1)
    fadds 0, 1, 0
    stfs 0, 0x6c(31)
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    psq_l 28, 0x28(1), 0, 0
    lfd 28, 0x20(1)
    lwz 0, 0x64(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_801E8EB4:
    clrlwi 0, 4, 24
    li 5, 0x1
    lwz 7, 0x2a8(3)
    slw 0, 5, 0
    clrlslwi 4, 4, 24, 3
    lfs 1, 0x0(6)
    or 0, 7, 0
    lfs 0, 0x4(6)
    stw 0, 0x2a8(3)
    add 3, 3, 4
    stfs 1, 0x2b0(3)
    stfs 0, 0x2b4(3)
    blr

fn_801E8EE8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820014 # beq .L_801E8F10
    .4byte 0x80AD8F50 # lwz r5, lbl_8053AB10@sda21(r0)
    addi 4, 3, 0xc
    lwz 3, 0x24(5)
    bl fn_8030C210
L_801E8F10:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801E8F20:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stfd 29, 0x20(1)
    psq_st 29, 0x28(1), 0, 0
    stfd 28, 0x10(1)
    psq_st 28, 0x18(1), 0, 0
    stw 31, 0xc(1)
    lwz 0, 0x230(3)
    mr 31, 3
    li 4, 0x0
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820050 # beq .L_801E8FB0
    lfs 31, 0x60(31)
    li 4, 0x0
    lfs 30, 0x64(31)
    li 5, -0x1
    lfs 29, 0x68(31)
    li 6, 0x16
    lfs 28, 0x6c(31)
    .4byte 0xC022C698 # lfs f1, lbl_8053F638@sda21(r0)
    .4byte 0xC002C69C # lfs f0, lbl_8053F63C@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    bl fn_801F2B7C
    stfs 31, 0x60(31)
    mr 4, 3
    stfs 30, 0x64(31)
    stfs 29, 0x68(31)
    stfs 28, 0x6c(31)
L_801E8FB0:
    mr 3, 4
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    psq_l 29, 0x28(1), 0, 0
    lfd 29, 0x20(1)
    psq_l 28, 0x18(1), 0, 0
    lfd 28, 0x10(1)
    lwz 0, 0x54(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_801E8FE8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    .4byte 0x408200A0 # bne .L_801E90A4
    lfs 1, 0x68(31)
    lfs 0, 0x60(31)
    .4byte 0xC042C65C # lfs f2, lbl_8053F5FC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810088 # ble .L_801E90A4
    lfs 1, 0x6c(31)
    lfs 0, 0x64(31)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810074 # ble .L_801E90A4
    bl fn_801E9B58
    cmpwi 3, 0x0
    .4byte 0x41800068 # blt .L_801E90A4
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
    lwz 0, 0x3c0(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_801E9068
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x3c0(31)
    bl fn_800EC240
L_801E9068:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022C660 # lfs f1, lbl_8053F600@sda21(r0)
    li 5, 0x260
    li 6, 0x0
    li 7, -0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x3c0(31)
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
L_801E90A4:
    lwz 0, 0x14(1)
    li 3, 0x0
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_801E7DF8
