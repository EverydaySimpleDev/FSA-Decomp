.section extab, "a"
.balign 4
.global etb_8000D8D0
etb_8000D8D0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D8D0, 8

.global etb_8000D8D8
etb_8000D8D8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D8D8, 8

.global etb_8000D8E0
etb_8000D8E0:
    .4byte 0x304A0000
    .4byte 0x00000000
.size etb_8000D8E0, 8

.global etb_8000D8E8
etb_8000D8E8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000D8E8, 8

.section extabindex, "a"
.balign 4
.global eti_8001CDD4
eti_8001CDD4:
    .4byte fn_803170B8
    .4byte 0x00000224
    .4byte etb_8000D8D0
.size eti_8001CDD4, 12

.global eti_8001CDE0
eti_8001CDE0:
    .4byte fn_803172DC
    .4byte 0x0000009C
    .4byte etb_8000D8D8
.size eti_8001CDE0, 12

.global eti_8001CDEC
eti_8001CDEC:
    .4byte fn_80317378
    .4byte 0x00000790
    .4byte etb_8000D8E0
.size eti_8001CDEC, 12

.global eti_8001CDF8
eti_8001CDF8:
    .4byte fn_80317B08
    .4byte 0x000000B0
    .4byte etb_8000D8E8
.size eti_8001CDF8, 12

.text
.balign 4
.global fn_803170B8
.global fn_803172DC
.global fn_80317378
.global fn_80317B08

fn_803170B8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_80507FF8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_80507FF8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80317108
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
L_80317108:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80317140
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
L_80317140:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80317178
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
L_80317178:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803171B0
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
L_803171B0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803171E8
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
L_803171E8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80317220
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
L_80317220:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80317258
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
L_80317258:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80317290
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
L_80317290:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_803172C8
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
L_803172C8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_803172DC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0xc
    .4byte 0x4182006C # beq .L_80317364
    cmpwi 0, 0xb
    .4byte 0x40820008 # bne .L_80317308
    .4byte 0x48000060 # b .L_80317364
L_80317308:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x23c(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0xc0
    bl fn_803075AC
    .4byte 0xC022E924 # lfs f1, lbl_805418C4@sda21(r0)
    lis 3, lbl_80471620@ha
    lwz 5, 0x23c(31)
    addi 4, 3, lbl_80471620@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0xc0
    li 6, 0x0
    li 7, 0x7
    bl fn_801F06F0
L_80317364:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80317378:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stmw 26, 0x48(1)
    mr 31, 3
    lfs 1, 0x60(3)
    stfs 1, 0x2c(1)
    lfs 4, 0x64(3)
    stfs 4, 0x30(1)
    lfs 2, 0x68(3)
    stfs 2, 0x34(1)
    lfs 3, 0x6c(3)
    stfs 3, 0x38(1)
    lfs 0, 0xc(3)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x2c(1)
    lfs 2, 0x10(3)
    fadds 1, 4, 2
    stfs 0, 0x34(1)
    fadds 0, 3, 2
    stfs 1, 0x30(1)
    stfs 0, 0x38(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x9
    .4byte 0x40800014 # bge .L_803173F8
    lwz 4, 0x4(31)
    addi 3, 1, 0x2c
    lwz 5, 0x198(31)
    bl fn_80239914
L_803173F8:
    lwz 0, 0x230(31)
    cmplwi 0, 0xd
    .4byte 0x418105E0 # bgt .L_803179E0
    lis 3, jumptable_804AAE2C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AAE2C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41810048 # bgt .L_80317478
    li 26, 0x0
L_80317438:
    lwz 27, 0x4(31)
    mr 3, 26
    bl fn_8023DE58
    cmpw 3, 27
    .4byte 0x4082001C # bne .L_80317464
    mr 3, 26
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80317464
    mr 3, 26
    bl fn_80230C6C
L_80317464:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFCC # blt .L_80317438
    li 0, 0x1
    stw 0, 0x230(31)
L_80317478:
    lbz 0, 0x270(31)
    cmplwi 0, 0x0
    .4byte 0x40820560 # bne .L_803179E0
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x25
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    li 0, 0x1
    stb 0, 0x270(31)
    .4byte 0x4800053C # b .L_803179E0
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x4182052C # beq .L_803179E0
    li 28, 0x0
L_803174BC:
    lwz 27, 0x4(31)
    mr 3, 28
    bl fn_8023DE58
    cmpw 3, 27
    .4byte 0x4082008C # bne .L_80317558
    mr 3, 28
    bl fn_80233E40
    clrlwi. 0, 3, 24
    .4byte 0x4082007C # bne .L_80317558
    mr 3, 28
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x4082006C # bne .L_80317558
    mr 3, 28
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x4082005C # bne .L_80317558
    mr 3, 28
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(31)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80317520
    li 26, 0x1
    .4byte 0x48000008 # b .L_80317524
L_80317520:
    li 26, 0x0
L_80317524:
    mr 3, 28
    bl fn_8023E724
    mr 4, 3
    mr 3, 28
    addi 5, 26, 0x3c
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    mr 3, 28
    mr 4, 26
    bl fn_80230BF4
L_80317558:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF5C # blt .L_803174BC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    li 27, 0x0
    .4byte 0xC3E2E920 # lfs f31, lbl_805418C0@sda21(r0)
    mr 30, 3
    mr 29, 27
    .4byte 0x48000060 # b .L_803175DC
L_80317580:
    mr 3, 29
    bl fn_8022EA0C
    lwz 26, 0x4(31)
    mr 28, 3
    bl fn_8023DE58
    cmpw 3, 26
    .4byte 0x40820040 # bne .L_803175D8
    mr 3, 28
    bl fn_8023E724
    psq_l 1, 0x10(31), 0, 0
    psq_l 0, 0x4(3), 0, 0
    psq_l 2, 0xc(31), 0, 0
    ps_sub 1, 1, 0
    psq_l 0, 0x0(3), 0, 0
    ps_sub 0, 2, 0
    ps_mul 1, 1, 1
    ps_madd 0, 0, 0, 1
    ps_sum0 0, 0, 1, 1
    fcmpo cr0, 0, 31
    .4byte 0x4080000C # bge .L_803175D8
    fmr 31, 0
    mr 27, 28
L_803175D8:
    addi 29, 29, 0x1
L_803175DC:
    cmpw 29, 30
    .4byte 0x4180FFA0 # blt .L_80317580
    stw 27, 0x234(31)
    li 3, 0x3c
    lis 4, 0x5
    li 0, 0x2
    stw 3, 0x238(31)
    mr 3, 31
    addi 4, 4, 0x50
    li 5, 0x0
    stw 0, 0x230(31)
    bl fn_801F0E34
    .4byte 0x480003D4 # b .L_803179E0
    li 3, 0x78
    li 0, 0x4
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x480003C0 # b .L_803179E0
    lwz 3, 0x234(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    cmpwi 3, 0x0
    .4byte 0x41800398 # blt .L_803179E0
    lwz 5, 0x198(31)
    addi 7, 1, 0x20
    lwz 6, 0x4(31)
    li 4, 0x50d
    psq_l 1, 0xc(31), 0, 0
    li 8, 0x102
    lfs 0, 0x14(31)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x28(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820368 # beq .L_803179E0
    li 0, 0x6
    addi 5, 1, 0x14
    stw 0, 0x230(31)
    lwz 4, 0x4(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x1c(1)
    lwz 3, 0x24c(31)
    bl fn_80316E50
    .4byte 0x4800033C # b .L_803179E0
    lwz 3, 0x234(31)
    li 6, 0x1
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x234(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820314 # beq .L_803179E0
    li 0, 0x7
    stw 0, 0x230(31)
    .4byte 0x48000308 # b .L_803179E0
    lwz 3, 0x234(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x234(31)
    li 4, 0x50e
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x418202DC # beq .L_803179E0
    li 0, 0x8
    addi 5, 1, 0x8
    stw 0, 0x230(31)
    lwz 4, 0x4(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x10(1)
    lwz 3, 0x24c(31)
    bl fn_80316E50
    .4byte 0x480002B0 # b .L_803179E0
    lwz 3, 0x234(31)
    li 6, 0x1
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820284 # beq .L_803179E0
    li 0, 0x9
    li 4, -0x1
    stw 0, 0x230(31)
    li 3, 0x1
    li 0, 0x0
    stw 4, 0x234(31)
    stw 3, 0x240(31)
    stw 0, 0x244(31)
    stw 0, 0x248(31)
    .4byte 0x4800025C # b .L_803179E0
    lwz 0, 0x240(31)
    cmpwi 0, 0x2
    .4byte 0x41800024 # blt .L_803177B4
    .4byte 0xC022E928 # lfs f1, lbl_805418C8@sda21(r0)
    li 0, 0xa
    .4byte 0xC002E92C # lfs f0, lbl_805418CC@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 0, 0x44(31)
    stw 0, 0x230(31)
    bl SpatialRegistry_GetBase
    bl fn_801F6884
L_803177B4:
    lfs 1, 0x14(31)
    .4byte 0xC002E930 # lfs f0, lbl_805418D0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_803177D0
    .4byte 0xC002E934 # lfs f0, lbl_805418D4@sda21(r0)
    stfs 0, 0x44(31)
L_803177D0:
    psq_l 1, 0xc(31), 0, 0
    addi 4, 1, 0x2c
    psq_l 0, 0x3c(31), 0, 0
    li 5, 0x1
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lfs 1, 0x260(31)
    stfs 1, 0x2c(1)
    lfs 4, 0x264(31)
    stfs 4, 0x30(1)
    lfs 2, 0x268(31)
    stfs 2, 0x34(1)
    lfs 3, 0x26c(31)
    stfs 3, 0x38(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x2c(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x34(1)
    fadds 0, 3, 2
    stfs 1, 0x30(1)
    stfs 0, 0x38(1)
    lwz 3, 0x4(31)
    bl fn_8022B978
    clrlwi. 0, 3, 24
    .4byte 0x40820194 # bne .L_803179E0
    li 3, 0x3c
    li 0, 0xb
    stw 3, 0x238(31)
    stw 0, 0x230(31)
    .4byte 0x48000180 # b .L_803179E0
    .4byte 0xC002E938 # lfs f0, lbl_805418D8@sda21(r0)
    li 3, 0x0
    .4byte 0xC022E93C # lfs f1, lbl_805418DC@sda21(r0)
    li 0, 0xc
    stfs 0, 0xc(31)
    addi 4, 31, 0xc
    .4byte 0xC002E934 # lfs f0, lbl_805418D4@sda21(r0)
    stfs 1, 0x10(31)
    .4byte 0xC022E940 # lfs f1, lbl_805418E0@sda21(r0)
    stfs 0, 0x14(31)
    .4byte 0xC002E92C # lfs f0, lbl_805418CC@sda21(r0)
    stw 3, 0x4(31)
    stfs 1, 0x3c(31)
    stfs 0, 0x44(31)
    stw 0, 0x230(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    .4byte 0x4800012C # b .L_803179E0
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41810020 # bgt .L_803178EC
    li 0, 0xd
    lis 4, 0x5
    stw 0, 0x230(31)
    mr 3, 31
    addi 4, 4, 0x1b
    li 5, 0x0
    bl fn_801F0E34
L_803178EC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x480000E4 # b .L_803179E0
    lfs 1, 0x14(31)
    .4byte 0xC002E930 # lfs f0, lbl_805418D0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082000C # bne .L_8031791C
    .4byte 0xC002E934 # lfs f0, lbl_805418D4@sda21(r0)
    stfs 0, 0x44(31)
L_8031791C:
    psq_l 1, 0xc(31), 0, 0
    addi 4, 1, 0x2c
    psq_l 0, 0x3c(31), 0, 0
    li 5, 0x1
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lfs 1, 0x260(31)
    stfs 1, 0x2c(1)
    lfs 4, 0x264(31)
    stfs 4, 0x30(1)
    lfs 2, 0x268(31)
    stfs 2, 0x34(1)
    lfs 3, 0x26c(31)
    stfs 3, 0x38(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x2c(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x34(1)
    fadds 0, 3, 2
    stfs 1, 0x30(1)
    stfs 0, 0x38(1)
    lwz 3, 0x4(31)
    bl fn_8022B978
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_803179A8
    mr 3, 31
    bl fn_801F35AC
    .4byte 0x4800003C # b .L_803179E0
L_803179A8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x48000028 # b .L_803179E0
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x41810010 # bgt .L_803179E0
    lwz 3, 0x230(31)
    addi 0, 3, 0x1
    stw 0, 0x230(31)
L_803179E0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x8
    .4byte 0x40820068 # bne .L_80317A50
    lwz 4, 0x234(31)
    cmpwi 4, 0x0
    .4byte 0x4180005C # blt .L_80317A50
    lwz 3, 0x24c(31)
    bl fn_80316E74
    mr 0, 3
    lwz 3, 0x24c(31)
    mr 26, 0
    bl fn_80316E34
    cmpwi 3, 0x0
    .4byte 0x41800030 # blt .L_80317A44
    lwz 3, 0x24c(31)
    bl fn_80316E34
    addis 0, 26, 0x1
    stw 3, 0x23c(31)
    cmplwi 0, 0xffff
    .4byte 0x418200C0 # beq .L_80317AEC
    mr 3, 31
    mr 4, 26
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000AC # b .L_80317AEC
L_80317A44:
    li 0, 0x14
    stw 0, 0x23c(31)
    .4byte 0x480000A0 # b .L_80317AEC
L_80317A50:
    cmpwi 0, 0x3
    .4byte 0x41800098 # blt .L_80317AEC
    lwz 4, 0x240(31)
    lis 3, lbl_804AADC8@ha
    lwz 0, 0x244(31)
    addi 3, 3, lbl_804AADC8@l
    slwi 4, 4, 2
    lwzx 5, 3, 4
    slwi 0, 0, 2
    lhax 0, 5, 0
    stw 0, 0x23c(31)
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    add 3, 5, 0
    lha 4, 0x2(3)
    cmpwi 4, 0x0
    .4byte 0x4081005C # ble .L_80317AEC
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpw 0, 4
    .4byte 0x41800044 # blt .L_80317AEC
    li 4, 0x0
    stw 4, 0x248(31)
    lwz 3, 0x244(31)
    addi 0, 3, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    slwi 0, 0, 2
    lhax 0, 5, 0
    cmpwi 0, 0x0
    .4byte 0x4080001C # bge .L_80317AEC
    stw 4, 0x244(31)
    lwz 3, 0x240(31)
    cmpwi 3, 0x3
    .4byte 0x4080000C # bge .L_80317AEC
    addi 0, 3, 0x1
    stw 0, 0x240(31)
L_80317AEC:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    lmw 26, 0x48(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80317B08:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002E944 # lfs f0, lbl_805418E4@sda21(r0)
    li 6, 0x0
    stw 0, 0x24(1)
    li 4, 0x32
    .4byte 0xC022E948 # lfs f1, lbl_805418E8@sda21(r0)
    li 0, 0x1d
    stw 31, 0x1c(1)
    mr 31, 3
    addi 5, 1, 0x8
    stfs 0, 0x60(3)
    .4byte 0xC002E94C # lfs f0, lbl_805418EC@sda21(r0)
    stfs 1, 0x64(3)
    li 3, -0x1
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    stw 6, 0x230(31)
    stw 4, 0x238(31)
    stw 3, 0x234(31)
    stw 0, 0x23c(31)
    stw 6, 0x240(31)
    stw 6, 0x244(31)
    stw 6, 0x248(31)
    lwz 4, 0x4(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x10(1)
    lwz 3, 0x24c(31)
    bl fn_80316E50
    .4byte 0xC022E950 # lfs f1, lbl_805418F0@sda21(r0)
    li 0, 0x0
    .4byte 0xC002E954 # lfs f0, lbl_805418F4@sda21(r0)
    stfs 1, 0x260(31)
    stfs 1, 0x264(31)
    stfs 0, 0x268(31)
    stfs 0, 0x26c(31)
    stb 0, 0x270(31)
    lwz 31, 0x1c(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_803170B8
