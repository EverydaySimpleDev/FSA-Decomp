.section extab, "a"
.balign 4
.global etb_80007E3C
etb_80007E3C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007E3C, 8

.global etb_80007E44
etb_80007E44:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80007E44, 8

.global etb_80007E4C
etb_80007E4C:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_80007E4C, 8

.global etb_80007E54
etb_80007E54:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_80007E54, 8

.section extabindex, "a"
.balign 4
.global eti_80014ED8
eti_80014ED8:
    .4byte fn_801BCEE4
    .4byte 0x00000224
    .4byte etb_80007E3C
.size eti_80014ED8, 12

.global eti_80014EE4
eti_80014EE4:
    .4byte fn_801BD108
    .4byte 0x00000090
    .4byte etb_80007E44
.size eti_80014EE4, 12

.global eti_80014EF0
eti_80014EF0:
    .4byte fn_801BD198
    .4byte 0x000001B0
    .4byte etb_80007E4C
.size eti_80014EF0, 12

.global eti_80014EFC
eti_80014EFC:
    .4byte fn_801BD348
    .4byte 0x000002F8
    .4byte etb_80007E54
.size eti_80014EFC, 12

.text
.balign 4
.global fn_801BCD70
.global fn_801BCEE4
.global fn_801BD108
.global fn_801BD198
.global fn_801BD348

fn_801BCD70:
    extrwi 0, 4, 3, 24
    stw 0, 0x0(3)
    lwz 0, 0x0(3)
    cmplwi 0, 0x7
    .4byte 0x418100F8 # bgt .L_801BCE78
    lis 4, jumptable_804A3F6C@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A3F6C@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    li 0, 0x3
    li 4, 0x0
    stw 0, 0x4(3)
    li 0, 0x2
    stw 4, 0x8(3)
    stw 0, 0xc(3)
    .4byte 0x480000C4 # b .L_801BCE78
    li 0, 0x3
    li 4, 0x1
    stw 0, 0x4(3)
    li 0, 0x2
    stw 4, 0x8(3)
    stw 0, 0xc(3)
    .4byte 0x480000A8 # b .L_801BCE78
    li 0, 0x1
    li 4, 0x3
    stw 0, 0x4(3)
    li 0, 0x0
    stw 4, 0x8(3)
    stw 0, 0xc(3)
    .4byte 0x4800008C # b .L_801BCE78
    li 0, 0x1
    li 4, 0x2
    stw 0, 0x4(3)
    li 0, 0x0
    stw 4, 0x8(3)
    stw 0, 0xc(3)
    .4byte 0x48000070 # b .L_801BCE78
    li 0, 0x2
    li 4, 0x0
    stw 0, 0x4(3)
    li 0, 0x3
    stw 4, 0x8(3)
    stw 0, 0xc(3)
    .4byte 0x48000054 # b .L_801BCE78
    li 0, 0x2
    li 4, 0x1
    stw 0, 0x4(3)
    li 0, 0x3
    stw 4, 0x8(3)
    stw 0, 0xc(3)
    .4byte 0x48000038 # b .L_801BCE78
    li 0, 0x0
    li 4, 0x3
    stw 0, 0x4(3)
    li 0, 0x1
    stw 4, 0x8(3)
    stw 0, 0xc(3)
    .4byte 0x4800001C # b .L_801BCE78
    li 0, 0x0
    li 4, 0x2
    stw 0, 0x4(3)
    li 0, 0x1
    stw 4, 0x8(3)
    stw 0, 0xc(3)
L_801BCE78:
    lwz 0, 0x0(3)
    cmpwi 0, 0x4
    .4byte 0x40800018 # bge .L_801BCE98
    cmpwi 0, 0x2
    .4byte 0x40800024 # bge .L_801BCEAC
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_801BCEA0
    .4byte 0x48000018 # b .L_801BCEAC
L_801BCE98:
    cmpwi 0, 0x6
    .4byte 0x40800010 # bge .L_801BCEAC
L_801BCEA0:
    li 0, 0x1e0
    stw 0, 0x14(3)
    .4byte 0x4800000C # b .L_801BCEB4
L_801BCEAC:
    li 0, 0xf0
    stw 0, 0x14(3)
L_801BCEB4:
    li 0, 0x28
    li 5, 0x0
    stw 0, 0x18(3)
    stw 0, 0x10(3)
    stw 5, 0x1c(3)
    lwz 0, 0x1c(3)
    slwi 0, 0, 2
    add 4, 3, 0
    lwz 0, 0x4(4)
    stw 0, 0x20(3)
    stw 5, 0x24(3)
    blr

fn_801BCEE4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C7870@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C7870@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BCF34
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
L_801BCF34:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BCF6C
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
L_801BCF6C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BCFA4
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
L_801BCFA4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BCFDC
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
L_801BCFDC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BD014
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
L_801BD014:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BD04C
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
L_801BD04C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BD084
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
L_801BD084:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BD0BC
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
L_801BD0BC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801BD0F4
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
L_801BD0F4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BD108:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820058 # beq .L_801BD17C
    lis 3, lbl_804A3F90@ha
    addi 0, 3, lbl_804A3F90@l
    stw 0, 0x0(30)
    .4byte 0x41820038 # beq .L_801BD16C
    lis 3, lbl_804A4808@ha
    addic. 0, 30, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_801BD160
    addic. 0, 30, 0x294
    .4byte 0x41820010 # beq .L_801BD160
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
L_801BD160:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
L_801BD16C:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_801BD17C
    mr 3, 30
    bl dtor_80084580
L_801BD17C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801BD198:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    lwz 29, 0x2f0(3)
    mr 31, 3
    lha 30, 0x2f8(3)
    cmpwi 29, 0x0
    .4byte 0x41820020 # beq .L_801BD1F0
    bl GetRoomConfigRecord
    mr 4, 29
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801BD1F0
    neg 0, 30
    extsh 30, 0
L_801BD1F0:
    lha 0, 0x2fa(31)
    add 0, 0, 30
    sth 0, 0x2fa(31)
    lwz 29, 0x2f0(31)
    lha 30, 0x2f8(31)
    cmpwi 29, 0x0
    .4byte 0x41820020 # beq .L_801BD228
    bl GetRoomConfigRecord
    mr 4, 29
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801BD228
    neg 0, 30
    extsh 30, 0
L_801BD228:
    extsh. 0, 30
    .4byte 0x40800014 # bge .L_801BD240
    lha 3, 0x2fa(31)
    subi 0, 3, 0x4000
    sth 0, 0x2fc(31)
    .4byte 0x48000010 # b .L_801BD24C
L_801BD240:
    lha 3, 0x2fa(31)
    addi 0, 3, 0x4000
    sth 0, 0x2fc(31)
L_801BD24C:
    lha 3, 0x2fa(31)
    lis 0, 0x4330
    lis 4, lbl_8052EBC0@ha
    psq_l 0, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    addi 4, 4, lbl_8052EBC0@l
    rlwinm 5, 3, 30, 18, 28
    stw 0, 0x18(1)
    add 3, 4, 5
    lfsx 31, 4, 5
    psq_st 0, 0x8(1), 0, 0
    mr 29, 31
    .4byte 0xC002BCD0 # lfs f0, lbl_8053EC70@sda21(r0)
    li 30, 0x0
    stfs 1, 0x10(1)
    lfs 1, 0x4(3)
    fmuls 31, 31, 0
    lwz 3, 0x2f4(31)
    stw 0, 0x20(1)
    fmuls 30, 1, 0
    xoris 0, 3, 0x8000
    .4byte 0xC882BCD8 # lfd f4, lbl_8053EC78@sda21(r0)
    stw 0, 0x1c(1)
    lfs 2, 0x8(1)
    stw 0, 0x24(1)
    lfd 1, 0x18(1)
    lfd 0, 0x20(1)
    fsubs 3, 1, 4
    fsubs 1, 0, 4
    lfs 0, 0xc(1)
    fmadds 2, 3, 31, 2
    fmadds 0, 1, 30, 0
    stfs 2, 0x8(1)
    stfs 0, 0xc(1)
    .4byte 0x4800003C # b .L_801BD310
L_801BD2D8:
    bl SpatialRegistry_GetBase
    lwz 4, 0x2ac(29)
    bl fn_801F666C
    lha 5, 0x2fc(31)
    addi 4, 1, 0x8
    bl fn_801BD8C0
    lfs 1, 0x8(1)
    addi 29, 29, 0x4
    lfs 0, 0xc(1)
    addi 30, 30, 0x1
    fadds 1, 1, 31
    fadds 0, 0, 30
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
L_801BD310:
    lwz 0, 0x2a8(31)
    cmpw 30, 0
    .4byte 0x4180FFC0 # blt .L_801BD2D8
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 0, 0x64(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_801BD348:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stmw 27, 0x2c(1)
    mr 31, 3
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    extrwi. 0, 0, 1, 14
    .4byte 0x4082000C # bne .L_801BD384
    mr 3, 31
    bl fn_801D0E58
L_801BD384:
    lwz 0, 0x90(31)
    srwi 0, 0, 31
    xori 0, 0, 0x1
    stb 0, 0x2ec(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 1
    stw 0, 0x2f0(31)
    lwz 0, 0x90(31)
    extrwi 29, 0, 2, 6
    cmpwi 29, 0x2
    .4byte 0x4081000C # ble .L_801BD3B8
    li 29, 0x2
    .4byte 0x48000010 # b .L_801BD3C4
L_801BD3B8:
    cmpwi 29, 0x0
    .4byte 0x40800008 # bge .L_801BD3C4
    li 29, 0x0
L_801BD3C4:
    extrwi 3, 0, 4, 8
    addi 0, 3, 0x1
    stw 0, 0x2f4(31)
    lwz 0, 0x90(31)
    extrwi 3, 0, 8, 16
    extrwi 30, 0, 1, 15
    cmpwi 3, 0x3
    .4byte 0x4081000C # ble .L_801BD3EC
    li 3, 0x3
    .4byte 0x48000010 # b .L_801BD3F8
L_801BD3EC:
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_801BD3F8
    li 3, 0x0
L_801BD3F8:
    clrlwi 0, 0, 24
    cmpwi 0, 0x10
    .4byte 0x4081000C # ble .L_801BD40C
    li 0, 0x10
    .4byte 0x48000010 # b .L_801BD418
L_801BD40C:
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_801BD418
    li 0, 0x1
L_801BD418:
    stw 0, 0x2a8(31)
    bl fn_801F6874
    cmpwi 29, 0x1
    sth 3, 0x2fa(31)
    .4byte 0x41820020 # beq .L_801BD448
    .4byte 0x40800028 # bge .L_801BD454
    cmpwi 29, 0x0
    .4byte 0x40800008 # bge .L_801BD43C
    .4byte 0x4800001C # b .L_801BD454
L_801BD43C:
    li 0, 0x80
    sth 0, 0x2f8(31)
    .4byte 0x48000018 # b .L_801BD45C
L_801BD448:
    li 0, 0x100
    sth 0, 0x2f8(31)
    .4byte 0x4800000C # b .L_801BD45C
L_801BD454:
    li 0, 0x40
    sth 0, 0x2f8(31)
L_801BD45C:
    cmplwi 30, 0x0
    .4byte 0x40820010 # bne .L_801BD470
    lha 0, 0x2f8(31)
    neg 0, 0
    sth 0, 0x2f8(31)
L_801BD470:
    .4byte 0xC042BCE0 # lfs f2, lbl_8053EC80@sda21(r0)
    li 3, 0x0
    .4byte 0xC022BCE4 # lfs f1, lbl_8053EC84@sda21(r0)
    li 0, 0x2
    stfs 2, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stw 3, 0xb0(31)
    stw 0, 0x98(31)
    lwz 27, 0x2f0(31)
    lha 29, 0x2f8(31)
    cmpwi 27, 0x0
    .4byte 0x41820020 # beq .L_801BD4F4
    bl GetRoomConfigRecord
    mr 4, 27
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801BD4F4
    neg 0, 29
    extsh 29, 0
L_801BD4F4:
    extsh. 0, 29
    .4byte 0x40800014 # bge .L_801BD50C
    lha 3, 0x2fa(31)
    subi 0, 3, 0x4000
    sth 0, 0x2fc(31)
    .4byte 0x48000010 # b .L_801BD518
L_801BD50C:
    lha 3, 0x2fa(31)
    addi 0, 3, 0x4000
    sth 0, 0x2fc(31)
L_801BD518:
    lha 3, 0x2fa(31)
    lis 0, 0x4330
    lis 4, lbl_8052EBC0@ha
    psq_l 0, 0xc(31), 0, 0
    lfs 1, 0x14(31)
    addi 4, 4, lbl_8052EBC0@l
    rlwinm 5, 3, 30, 18, 28
    stw 0, 0x18(1)
    add 3, 4, 5
    lfsx 31, 4, 5
    psq_st 0, 0x8(1), 0, 0
    mr 27, 31
    .4byte 0xC002BCD0 # lfs f0, lbl_8053EC70@sda21(r0)
    li 29, 0x0
    stfs 1, 0x10(1)
    lis 30, 0x4642
    lfs 1, 0x4(3)
    fmuls 31, 31, 0
    lwz 3, 0x2f4(31)
    stw 0, 0x20(1)
    fmuls 30, 1, 0
    xoris 0, 3, 0x8000
    .4byte 0xC882BCD8 # lfd f4, lbl_8053EC78@sda21(r0)
    stw 0, 0x1c(1)
    lfs 2, 0x8(1)
    stw 0, 0x24(1)
    lfd 1, 0x18(1)
    lfd 0, 0x20(1)
    fsubs 3, 1, 4
    fsubs 1, 0, 4
    lfs 0, 0xc(1)
    fmadds 2, 3, 31, 2
    fmadds 0, 1, 30, 0
    stfs 2, 0x8(1)
    stfs 0, 0xc(1)
    .4byte 0x4800006C # b .L_801BD610
L_801BD5A8:
    lbz 0, 0x2ec(31)
    cntlzw 0, 0
    srwi 28, 0, 5
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    mr 7, 28
    addi 4, 30, 0x4f42
    addi 6, 1, 0x8
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x2ac(27)
    bl SpatialRegistry_GetBase
    lwz 4, 0x2ac(27)
    bl fn_801F666C
    lha 5, 0x2fc(31)
    addi 4, 1, 0x8
    bl fn_801BD8C0
    lfs 1, 0x8(1)
    addi 27, 27, 0x4
    lfs 0, 0xc(1)
    addi 29, 29, 0x1
    fadds 1, 1, 31
    fadds 0, 0, 30
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
L_801BD610:
    lwz 0, 0x2a8(31)
    cmpw 29, 0
    .4byte 0x4180FF90 # blt .L_801BD5A8
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lmw 27, 0x2c(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_801BCEE4
