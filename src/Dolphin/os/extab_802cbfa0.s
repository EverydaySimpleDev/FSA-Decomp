.section extab, "a"
.balign 4
.global etb_8000CB84
etb_8000CB84:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000CB84, 8

.global etb_8000CB8C
etb_8000CB8C:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000CB8C, 8

.global etb_8000CB94
etb_8000CB94:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000CB94, 8

.section extabindex, "a"
.balign 4
.global eti_8001BAC0
eti_8001BAC0:
    .4byte fn_802CBFA0
    .4byte 0x00000224
    .4byte etb_8000CB84
.size eti_8001BAC0, 12

.global eti_8001BACC
eti_8001BACC:
    .4byte fn_802CC1C4
    .4byte 0x00000058
    .4byte etb_8000CB8C
.size eti_8001BACC, 12

.global eti_8001BAD8
eti_8001BAD8:
    .4byte fn_802CC21C
    .4byte 0x000007F4
    .4byte etb_8000CB94
.size eti_8001BAD8, 12

.text
.balign 4
.global fn_802CBFA0
.global fn_802CC1C4
.global fn_802CC21C

fn_802CBFA0:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804D3668@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804D3668@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CBFF0
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
L_802CBFF0:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CC028
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
L_802CC028:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CC060
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
L_802CC060:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CC098
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
L_802CC098:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CC0D0
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
L_802CC0D0:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CC108
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
L_802CC108:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CC140
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
L_802CC140:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CC178
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
L_802CC178:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_802CC1B0
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
L_802CC1B0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CC1C4:
    stwu 1, -0x10(1)
    mflr 0
    li 7, 0x0
    addi 5, 3, 0xc
    stw 0, 0x14(1)
    li 0, 0x80
    .4byte 0xC022DE30 # lfs f1, lbl_80540DD0@sda21(r0)
    addi 6, 1, 0x8
    stb 7, 0xc(1)
    lwz 4, 0x4(3)
    stb 7, 0xd(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 7, 0xe(1)
    stb 0, 0xf(1)
    lwz 0, 0xc(1)
    stw 0, 0x8(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_802CC21C:
    stwu 1, -0xa0(1)
    mflr 0
    .4byte 0xC042DE34 # lfs f2, lbl_80540DD4@sda21(r0)
    li 6, 0x1
    stw 0, 0xa4(1)
    addi 5, 1, 0x8
    stw 31, 0x9c(1)
    mr 31, 3
    stw 30, 0x98(1)
    lfs 1, 0x10(3)
    addi 3, 1, 0x88
    lfs 0, 0xc(31)
    fadds 5, 2, 1
    fadds 1, 2, 0
    stfs 5, 0xc(1)
    stfs 1, 0x8(1)
    lfs 0, 0x60(31)
    stfs 0, 0x88(1)
    fadds 3, 0, 1
    lfs 0, 0x64(31)
    stfs 0, 0x8c(1)
    fadds 2, 0, 5
    lfs 0, 0x68(31)
    stfs 0, 0x90(1)
    fadds 1, 0, 1
    lfs 4, 0x6c(31)
    fadds 0, 4, 5
    stfs 4, 0x94(1)
    stfs 3, 0x88(1)
    stfs 2, 0x8c(1)
    stfs 1, 0x90(1)
    stfs 0, 0x94(1)
    lwz 4, 0x4(31)
    bl fn_8023BA68
    li 4, 0x0
    mr 30, 3
    stw 4, 0xd8(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x2
    .4byte 0x418203B0 # beq .L_802CC668
    .4byte 0x40800014 # bge .L_802CC2D0
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802CC2DC
    .4byte 0x4080037C # bge .L_802CC644
    .4byte 0x48000724 # b .L_802CC9F0
L_802CC2D0:
    cmpwi 0, 0x4
    .4byte 0x4080071C # bge .L_802CC9F0
    .4byte 0x480006F8 # b .L_802CC9D0
L_802CC2DC:
    cmpwi 30, 0x0
    .4byte 0x40800028 # bge .L_802CC308
    lis 4, 0x4842
    lis 5, 0x4e55
    mr 3, 31
    li 6, 0x0
    addi 4, 4, 0x4d42
    addi 5, 5, 0x4c4c
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x4182021C # beq .L_802CC520
L_802CC308:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 30
    lwz 6, 0x4(31)
    addi 4, 31, 0xc
    li 7, 0xaf
    bl fn_802A3948
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046D908@ha
    addi 5, 3, lbl_8046D908@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
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
    lis 3, lbl_8046D908@ha
    addi 5, 3, lbl_8046D908@l
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
    li 0, 0x1
    lis 4, 0x3
    stw 0, 0x240(31)
    mr 3, 31
    addi 4, 4, 0x51
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x3c
    stw 0, 0x244(31)
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D790C
    .4byte 0xC042DE34 # lfs f2, lbl_80540DD4@sda21(r0)
    addi 4, 1, 0x7c
    lfs 1, 0x10(31)
    li 5, 0x42a
    lfs 0, 0xc(31)
    li 6, 0x1
    lfs 4, 0x14(31)
    fadds 3, 2, 1
    fadds 0, 2, 0
    .4byte 0xC022DE38 # lfs f1, lbl_80540DD8@sda21(r0)
    stfs 4, 0x84(1)
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x7c(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x80(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC042DE34 # lfs f2, lbl_80540DD4@sda21(r0)
    addi 4, 1, 0x70
    lfs 1, 0x10(31)
    li 5, 0x426
    lfs 0, 0xc(31)
    li 6, 0x1
    lfs 4, 0x14(31)
    fadds 3, 2, 1
    fadds 0, 2, 0
    .4byte 0xC022DE38 # lfs f1, lbl_80540DD8@sda21(r0)
    stfs 4, 0x78(1)
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x70(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x74(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x230(31)
    addi 4, 1, 0x64
    .4byte 0xC042DE34 # lfs f2, lbl_80540DD4@sda21(r0)
    li 5, 0x427
    lfs 1, 0x10(31)
    li 6, 0x1
    lfs 0, 0xc(31)
    li 7, 0x0
    fadds 3, 2, 1
    lfs 4, 0x14(31)
    fadds 0, 2, 0
    .4byte 0xC022DE38 # lfs f1, lbl_80540DD8@sda21(r0)
    stfs 4, 0x6c(1)
    li 8, 0x0
    stfs 0, 0x64(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x68(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    lwz 5, 0x238(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802CC4F4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x238(31)
L_802CC4F4:
    lwz 5, 0x23c(31)
    cmplwi 5, 0x0
    .4byte 0x418204FC # beq .L_802CC9F8
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x23c(31)
    .4byte 0x480004DC # b .L_802CC9F8
L_802CC520:
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x0
    .4byte 0x408204CC # bne .L_802CC9F8
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 30
    lwz 6, 0x4(31)
    addi 4, 31, 0xc
    li 7, 0xaf
    bl fn_802A3948
    .4byte 0xC042DE34 # lfs f2, lbl_80540DD4@sda21(r0)
    addi 4, 1, 0x58
    lfs 1, 0x10(31)
    li 5, 0x426
    lfs 0, 0xc(31)
    li 6, 0x1
    lfs 4, 0x14(31)
    fadds 3, 2, 1
    fadds 0, 2, 0
    .4byte 0xC022DE38 # lfs f1, lbl_80540DD8@sda21(r0)
    stfs 4, 0x60(1)
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x58(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x5c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x230(31)
    addi 4, 1, 0x4c
    .4byte 0xC042DE34 # lfs f2, lbl_80540DD4@sda21(r0)
    li 5, 0x427
    lfs 1, 0x10(31)
    li 6, 0x1
    lfs 0, 0xc(31)
    li 7, 0x0
    fadds 3, 2, 1
    lfs 4, 0x14(31)
    fadds 0, 2, 0
    .4byte 0xC022DE38 # lfs f1, lbl_80540DD8@sda21(r0)
    stfs 4, 0x54(1)
    li 8, 0x0
    stfs 0, 0x4c(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x50(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x234(31)
    lwz 5, 0x238(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802CC610
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x238(31)
L_802CC610:
    lwz 5, 0x23c(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802CC638
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x23c(31)
L_802CC638:
    li 0, 0x2
    stw 0, 0x240(31)
    .4byte 0x480003B8 # b .L_802CC9F8
L_802CC644:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_802CC65C
    li 0, 0x2
    stw 0, 0x240(31)
    .4byte 0x480003A0 # b .L_802CC9F8
L_802CC65C:
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    .4byte 0x48000394 # b .L_802CC9F8
L_802CC668:
    cmpwi 30, 0x0
    .4byte 0x40800028 # bge .L_802CC694
    lis 4, 0x4842
    lis 5, 0x4e55
    mr 3, 31
    li 6, 0x0
    addi 4, 4, 0x4d42
    addi 5, 5, 0x4c4c
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x4182021C # beq .L_802CC8AC
L_802CC694:
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 30
    lwz 6, 0x4(31)
    addi 4, 31, 0xc
    li 7, 0xae
    bl fn_802A3884
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046D908@ha
    addi 5, 3, lbl_8046D908@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x240
    li 7, 0x5c0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x40
    bl fn_802FA160
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046D908@ha
    addi 5, 3, lbl_8046D908@l
    lis 4, 0x5343
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4820
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 3
    li 5, 0x280
    li 7, 0x7c0
    lwz 3, 0x20(6)
    li 6, 0x0
    li 8, 0x40
    bl fn_802FA160
    li 0, 0x3
    lis 4, 0x3
    stw 0, 0x240(31)
    mr 3, 31
    addi 4, 4, 0x51
    li 5, 0x0
    bl fn_801F0E34
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D790C
    .4byte 0xC042DE34 # lfs f2, lbl_80540DD4@sda21(r0)
    addi 4, 1, 0x40
    lfs 1, 0x10(31)
    li 5, 0x42c
    lfs 0, 0xc(31)
    li 6, 0x1
    lfs 4, 0x14(31)
    fadds 3, 2, 1
    fadds 0, 2, 0
    .4byte 0xC022DE38 # lfs f1, lbl_80540DD8@sda21(r0)
    stfs 4, 0x48(1)
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x40(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x44(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    .4byte 0xC042DE34 # lfs f2, lbl_80540DD4@sda21(r0)
    addi 4, 1, 0x34
    lfs 1, 0x10(31)
    li 5, 0x42d
    lfs 0, 0xc(31)
    li 6, 0x1
    lfs 4, 0x14(31)
    fadds 3, 2, 1
    fadds 0, 2, 0
    .4byte 0xC022DE38 # lfs f1, lbl_80540DD8@sda21(r0)
    stfs 4, 0x3c(1)
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x34(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x38(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x238(31)
    addi 4, 1, 0x28
    .4byte 0xC042DE34 # lfs f2, lbl_80540DD4@sda21(r0)
    li 5, 0x42e
    lfs 1, 0x10(31)
    li 6, 0x1
    lfs 0, 0xc(31)
    li 7, 0x0
    fadds 3, 2, 1
    lfs 4, 0x14(31)
    fadds 0, 2, 0
    .4byte 0xC022DE38 # lfs f1, lbl_80540DD8@sda21(r0)
    stfs 4, 0x30(1)
    li 8, 0x0
    stfs 0, 0x28(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x2c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x23c(31)
    lwz 5, 0x230(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802CC878
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x230(31)
L_802CC878:
    lwz 5, 0x234(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802CC8A0
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x234(31)
L_802CC8A0:
    li 0, 0x3c
    stw 0, 0x244(31)
    .4byte 0x48000150 # b .L_802CC9F8
L_802CC8AC:
    bl GetRoomConfigRecord
    lbz 0, 0x171(3)
    cmplwi 0, 0x1
    .4byte 0x40820140 # bne .L_802CC9F8
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    mr 5, 30
    lwz 6, 0x4(31)
    addi 4, 31, 0xc
    li 7, 0xae
    bl fn_802A3884
    .4byte 0xC042DE34 # lfs f2, lbl_80540DD4@sda21(r0)
    addi 4, 1, 0x1c
    lfs 1, 0x10(31)
    li 5, 0x42d
    lfs 0, 0xc(31)
    li 6, 0x1
    lfs 4, 0x14(31)
    fadds 3, 2, 1
    fadds 0, 2, 0
    .4byte 0xC022DE38 # lfs f1, lbl_80540DD8@sda21(r0)
    stfs 4, 0x24(1)
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x1c(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x20(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x238(31)
    addi 4, 1, 0x10
    .4byte 0xC042DE34 # lfs f2, lbl_80540DD4@sda21(r0)
    li 5, 0x42e
    lfs 1, 0x10(31)
    li 6, 0x1
    lfs 0, 0xc(31)
    li 7, 0x0
    fadds 3, 2, 1
    lfs 4, 0x14(31)
    fadds 0, 2, 0
    .4byte 0xC022DE38 # lfs f1, lbl_80540DD8@sda21(r0)
    stfs 4, 0x18(1)
    li 8, 0x0
    stfs 0, 0x10(1)
    li 9, 0x0
    li 10, 0x1
    stfs 3, 0x14(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x23c(31)
    lwz 5, 0x230(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802CC99C
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x230(31)
L_802CC99C:
    lwz 5, 0x234(31)
    cmplwi 5, 0x0
    .4byte 0x41820020 # beq .L_802CC9C4
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x234(31)
L_802CC9C4:
    li 0, 0x0
    stw 0, 0x240(31)
    .4byte 0x4800002C # b .L_802CC9F8
L_802CC9D0:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_802CC9E4
    stw 4, 0x240(31)
    .4byte 0x48000018 # b .L_802CC9F8
L_802CC9E4:
    subi 0, 3, 0x1
    stw 0, 0x244(31)
    .4byte 0x4800000C # b .L_802CC9F8
L_802CC9F0:
    li 0, 0x0
    stb 0, 0x11c(31)
L_802CC9F8:
    lwz 0, 0xa4(1)
    lwz 31, 0x9c(1)
    lwz 30, 0x98(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_802CBFA0
