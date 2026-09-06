.section extab, "a"
.balign 4
.global etb_80006468
etb_80006468:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006468, 8

.global etb_80006470
etb_80006470:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006470, 8

.global etb_80006478
etb_80006478:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80006478, 8

.global etb_80006480
etb_80006480:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006480, 8

.global etb_80006488
etb_80006488:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006488, 8

.global etb_80006490
etb_80006490:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80006490, 8

.global etb_80006498
etb_80006498:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006498, 8

.global etb_800064A0
etb_800064A0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800064A0, 8

.global etb_800064A8
etb_800064A8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800064A8, 8

.section extabindex, "a"
.balign 4
.global eti_80012B08
eti_80012B08:
    .4byte fn_80125934
    .4byte 0x00000224
    .4byte etb_80006468
.size eti_80012B08, 12

.global eti_80012B14
eti_80012B14:
    .4byte fn_80125B58
    .4byte 0x0000009C
    .4byte etb_80006470
.size eti_80012B14, 12

.global eti_80012B20
eti_80012B20:
    .4byte fn_80125BF4
    .4byte 0x00000064
    .4byte etb_80006478
.size eti_80012B20, 12

.global eti_80012B2C
eti_80012B2C:
    .4byte fn_80125C58
    .4byte 0x00000084
    .4byte etb_80006480
.size eti_80012B2C, 12

.global eti_80012B38
eti_80012B38:
    .4byte fn_80125CDC
    .4byte 0x00000220
    .4byte etb_80006488
.size eti_80012B38, 12

.global eti_80012B44
eti_80012B44:
    .4byte fn_80125EFC
    .4byte 0x000004A0
    .4byte etb_80006490
.size eti_80012B44, 12

.global eti_80012B50
eti_80012B50:
    .4byte fn_8012639C
    .4byte 0x000001DC
    .4byte etb_80006498
.size eti_80012B50, 12

.global eti_80012B5C
eti_80012B5C:
    .4byte fn_80126578
    .4byte 0x00000224
    .4byte etb_800064A0
.size eti_80012B5C, 12

.global eti_80012B68
eti_80012B68:
    .4byte fn_8012679C
    .4byte 0x0000002C
    .4byte etb_800064A8
.size eti_80012B68, 12

.text
.balign 4
.global fn_80125934
.global fn_80125B58
.global fn_80125BF4
.global fn_80125C58
.global fn_80125CDC
.global fn_80125EFC
.global fn_8012639C
.global fn_80126578
.global fn_8012679C

fn_80125934:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BCF60@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BCF60@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80125984
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
L_80125984:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801259BC
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
L_801259BC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801259F4
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
L_801259F4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80125A2C
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
L_80125A2C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80125A64
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
L_80125A64:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80125A9C
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
L_80125A9C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80125AD4
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
L_80125AD4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80125B0C
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
L_80125B0C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80125B44
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
L_80125B44:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80125B58:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820064 # beq .L_80125BD8
    lis 3, lbl_8049E350@ha
    addic. 0, 30, 0x27c
    addi 0, 3, lbl_8049E350@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_80125BA0
    addic. 0, 30, 0x2a0
    .4byte 0x41820010 # beq .L_80125BA0
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x2a0(30)
L_80125BA0:
    addic. 0, 30, 0x244
    .4byte 0x41820018 # beq .L_80125BBC
    addic. 0, 30, 0x268
    .4byte 0x41820010 # beq .L_80125BBC
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x268(30)
L_80125BBC:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80125BD8
    mr 3, 30
    bl dtor_80084580
L_80125BD8:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80125BF4:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC0029AD8 # lfs f0, lbl_8053CA78@sda21(r0)
    li 5, 0x33a
    stw 0, 0x24(1)
    addi 4, 1, 0x8
    li 6, 0x0
    li 7, 0x0
    psq_l 1, 0xc(3), 0, 0
    li 8, 0x0
    lfs 3, 0x14(3)
    li 9, 0x0
    li 10, 0x1
    psq_st 1, 0x0(4), 0, 0
    .4byte 0xC0229ADC # lfs f1, lbl_8053CA7C@sda21(r0)
    lfs 2, 0xc(1)
    stfs 3, 0x10(1)
    fadds 0, 2, 0
    stfs 0, 0xc(1)
    lwz 3, 0x4(3)
    bl fn_8013CC50
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80125C58:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stb 4, 0x231(3)
    lbz 0, 0x231(3)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_80125CC8
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80125C90
    .4byte 0x40800020 # bge .L_80125CA8
    .4byte 0x4800001C # b .L_80125CA8
L_80125C90:
    addi 3, 31, 0x27c
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000018 # b .L_80125CBC
L_80125CA8:
    addi 3, 31, 0x27c
    li 4, 0x1
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
L_80125CBC:
    .4byte 0xC0229AD0 # lfs f1, lbl_8053CA70@sda21(r0)
    addi 3, 31, 0x27c
    bl fn_801D1F14
L_80125CC8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80125CDC:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    bl fn_801F5778
    li 0, -0x1
    addi 9, 1, 0x14
    stw 0, 0x24(1)
    li 10, 0x0
    stw 0, 0x28(1)
    .4byte 0x48000064 # b .L_80125D6C
L_80125D0C:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_80125D6C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80125D0C
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x24(1)
    stw 5, 0x28(1)
    stw 5, 0x2c(1)
    stb 5, 0x30(1)
    stb 5, 0x31(1)
    stb 5, 0x32(1)
    stb 4, 0x33(1)
    stb 4, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stb 5, 0x37(1)
    stb 5, 0x38(1)
    stb 5, 0x39(1)
    stb 4, 0x3a(1)
    stw 3, 0x3c(1)
    stb 4, 0x40(1)
    stb 5, 0x41(1)
    stb 5, 0x42(1)
    stw 6, 0x44(1)
    stw 5, 0x48(1)
    stw 0, 0x4c(1)
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80125DF4
    .4byte 0x40800010 # bge .L_80125DFC
    .4byte 0x4800000C # b .L_80125DFC
L_80125DF4:
    li 5, 0x2d2
    .4byte 0x48000008 # b .L_80125E00
L_80125DFC:
    li 5, 0x2e6
L_80125E00:
    .4byte 0xC0229ADC # lfs f1, lbl_8053CA7C@sda21(r0)
    lis 3, lbl_80464EE8@ha
    lwz 0, 0x254(31)
    addi 4, 3, lbl_80464EE8@l
    fmr 2, 1
    mr 3, 31
    add 5, 5, 0
    addi 6, 1, 0x14
    li 7, 0x407
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    lbz 0, 0x231(31)
    cmplwi 0, 0x0
    .4byte 0x418200B0 # beq .L_80125EE8
    psq_l 1, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    .4byte 0xC0029AE0 # lfs f0, lbl_8053CA80@sda21(r0)
    psq_st 1, 0x8(1), 0, 0
    lfs 1, 0xc(1)
    stfs 2, 0x10(1)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x40820014 # bne .L_80125E78
    lfs 1, 0x8(1)
    .4byte 0xC0029AE4 # lfs f0, lbl_8053CA84@sda21(r0)
    fadds 0, 1, 0
    .4byte 0x48000010 # b .L_80125E84
L_80125E78:
    lfs 1, 0x8(1)
    .4byte 0xC0029AE8 # lfs f0, lbl_8053CA88@sda21(r0)
    fadds 0, 1, 0
L_80125E84:
    stfs 0, 0x8(1)
    lwz 0, 0x4(31)
    lwz 3, 0x28c(31)
    cmpwi 0, 0x8
    addi 31, 3, 0x2a3
    .4byte 0x40800050 # bge .L_80125EE8
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80464EFC@ha
    addi 5, 3, lbl_80464EFC@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC0229ADC # lfs f1, lbl_8053CA7C@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 31
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(4)
    addi 4, 1, 0x8
    bl fn_802F86CC
L_80125EE8:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80125EFC:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    bl fn_801F5930
    lfs 1, 0x60(31)
    stfs 1, 0x30(1)
    lfs 4, 0x64(31)
    stfs 4, 0x34(1)
    lfs 2, 0x68(31)
    stfs 2, 0x38(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x3c(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x30(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x38(1)
    fadds 0, 3, 2
    stfs 1, 0x34(1)
    stfs 0, 0x3c(1)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x41820100 # beq .L_8012606C
    .4byte 0x40800010 # bge .L_80125F80
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80125F8C
    .4byte 0x48000354 # b .L_801262D0
L_80125F80:
    cmpwi 0, 0x3
    .4byte 0x4080034C # bge .L_801262D0
    .4byte 0x48000288 # b .L_80126210
L_80125F8C:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x4081032C # ble .L_801262D0
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820310 # beq .L_801262D0
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_80125FD8
    li 0, 0x0
    stw 0, 0x98(31)
L_80125FD8:
    li 0, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_80126014
    .4byte 0x40800010 # bge .L_80125FFC
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80126008
    .4byte 0x480002D8 # b .L_801262D0
L_80125FFC:
    cmpwi 0, 0x3
    .4byte 0x408002D0 # bge .L_801262D0
    .4byte 0x48000044 # b .L_80126048
L_80126008:
    li 0, 0x0
    stb 0, 0x230(31)
    .4byte 0x480002C0 # b .L_801262D0
L_80126014:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 3, 0x1
    li 0, -0x1
    stb 3, 0x230(31)
    stb 3, 0x11d(31)
    stw 0, 0x23c(31)
    .4byte 0x4800028C # b .L_801262D0
L_80126048:
    lwz 30, 0x240(31)
    cmpwi 30, 0x0
    .4byte 0x40810280 # ble .L_801262D0
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000268 # b .L_801262D0
L_8012606C:
    lwz 0, 0x238(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80126080
    .4byte 0x40800010 # bge .L_80126088
    .4byte 0x4800000C # b .L_80126088
L_80126080:
    li 29, 0x4c0
    .4byte 0x48000008 # b .L_8012608C
L_80126088:
    li 29, 0x4bf
L_8012608C:
    lfs 1, 0x60(31)
    addi 3, 1, 0x8
    li 6, 0x1
    li 7, 0x0
    stfs 1, 0x8(1)
    lfs 4, 0x64(31)
    stfs 4, 0xc(1)
    lfs 2, 0x68(31)
    stfs 2, 0x10(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x14(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x8(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x10(1)
    fadds 0, 3, 2
    stfs 1, 0xc(1)
    stfs 0, 0x14(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x4080000C # bge .L_80126104
    li 30, -0x1
    .4byte 0x48000070 # b .L_80126170
L_80126104:
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80126118
    li 30, -0x1
    .4byte 0x4800005C # b .L_80126170
L_80126118:
    psq_l 0, 0xc(31), 0, 0
    addi 7, 1, 0x24
    lfs 2, 0x14(31)
    mr 3, 30
    psq_st 0, 0x18(1), 0, 0
    clrlwi 4, 29, 16
    .4byte 0xC0029AD4 # lfs f0, lbl_8053CA74@sda21(r0)
    li 8, 0x28
    lfs 1, 0x1c(1)
    lwz 5, 0x198(31)
    fsubs 0, 1, 0
    lwz 6, 0x4(31)
    stfs 2, 0x20(1)
    stfs 0, 0x1c(1)
    psq_l 0, 0x18(1), 0, 0
    stfs 2, 0x2c(1)
    psq_st 0, 0x0(7), 0, 0
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8012616C
    .4byte 0x48000008 # b .L_80126170
L_8012616C:
    li 30, -0x1
L_80126170:
    cmpwi 30, 0x0
    .4byte 0x4180015C # blt .L_801262D0
    stw 30, 0x23c(31)
    li 0, 0x2
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_801261B8
    .4byte 0x40800010 # bge .L_801261A0
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801261AC
    .4byte 0x48000134 # b .L_801262D0
L_801261A0:
    cmpwi 0, 0x3
    .4byte 0x4080012C # bge .L_801262D0
    .4byte 0x48000044 # b .L_801261EC
L_801261AC:
    li 0, 0x0
    stb 0, 0x230(31)
    .4byte 0x4800011C # b .L_801262D0
L_801261B8:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 3, 0x1
    li 0, -0x1
    stb 3, 0x230(31)
    stb 3, 0x11d(31)
    stw 0, 0x23c(31)
    .4byte 0x480000E8 # b .L_801262D0
L_801261EC:
    lwz 30, 0x240(31)
    cmpwi 30, 0x0
    .4byte 0x408100DC # ble .L_801262D0
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x480000C4 # b .L_801262D0
L_80126210:
    lwz 3, 0x23c(31)
    addi 4, 1, 0x30
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x23c(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820094 # beq .L_801262D0
    li 0, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_8012627C
    .4byte 0x40800010 # bge .L_80126264
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80126270
    .4byte 0x48000070 # b .L_801262D0
L_80126264:
    cmpwi 0, 0x3
    .4byte 0x40800068 # bge .L_801262D0
    .4byte 0x48000044 # b .L_801262B0
L_80126270:
    li 0, 0x0
    stb 0, 0x230(31)
    .4byte 0x48000058 # b .L_801262D0
L_8012627C:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 3, 0x1
    li 0, -0x1
    stb 3, 0x230(31)
    stb 3, 0x11d(31)
    stw 0, 0x23c(31)
    .4byte 0x48000024 # b .L_801262D0
L_801262B0:
    lwz 30, 0x240(31)
    cmpwi 30, 0x0
    .4byte 0x40810018 # ble .L_801262D0
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_801262D0:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_801262EC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
L_801262EC:
    lbz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80126308
    lwz 4, 0x4(31)
    addi 3, 1, 0x30
    lwz 5, 0x198(31)
    bl fn_80239914
L_80126308:
    lwz 4, 0x98(31)
    cmpwi 4, 0x0
    .4byte 0x41800030 # blt .L_80126340
    stw 4, 0x98(31)
    lwz 0, 0x24c(31)
    cmpw 4, 0
    .4byte 0x41820020 # beq .L_80126340
    addi 3, 31, 0x244
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229AD0 # lfs f1, lbl_8053CA70@sda21(r0)
    addi 3, 31, 0x244
    bl fn_801D1F14
L_80126340:
    lbz 0, 0x231(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80126358
    .4byte 0xC0029AEC # lfs f0, lbl_8053CA8C@sda21(r0)
    stfs 0, 0x274(31)
    .4byte 0x4800000C # b .L_80126360
L_80126358:
    .4byte 0xC0029ADC # lfs f0, lbl_8053CA7C@sda21(r0)
    stfs 0, 0x274(31)
L_80126360:
    addi 3, 31, 0x244
    bl fn_801D1C18
    addi 3, 31, 0x27c
    bl fn_801D1C18
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8012639C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    lwz 0, 0x90(31)
    lis 3, lbl_8049E330@ha
    addi 4, 3, lbl_8049E330@l
    .4byte 0xC0229AF0 # lfs f1, lbl_8053CA90@sda21(r0)
    clrlwi 0, 0, 31
    .4byte 0xC0029AF4 # lfs f0, lbl_8053CA94@sda21(r0)
    stw 0, 0x238(31)
    li 0, 0x2
    addi 3, 31, 0x244
    li 5, 0x4
    lwz 6, 0x90(31)
    extrwi 6, 6, 5, 5
    stw 6, 0x240(31)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x80(31)
    lfs 0, 0x64(31)
    stfs 0, 0x84(31)
    lfs 0, 0x68(31)
    stfs 0, 0x88(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x8c(31)
    stw 0, 0x98(31)
    bl fn_801D2608
    addi 3, 31, 0x244
    li 4, 0x2
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229AD0 # lfs f1, lbl_8053CA70@sda21(r0)
    addi 3, 31, 0x244
    bl fn_801D1F14
    lis 4, lbl_8049E340@ha
    addi 3, 31, 0x27c
    addi 4, 4, lbl_8049E340@l
    li 5, 0x4
    bl fn_801D2608
    addi 3, 31, 0x27c
    li 4, 0x0
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229AD0 # lfs f1, lbl_8053CA70@sda21(r0)
    addi 3, 31, 0x27c
    bl fn_801D1F14
    li 0, 0x0
    mr 3, 31
    stb 0, 0x11d(31)
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801264D4
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820094 # beq .L_80126564
L_801264D4:
    li 0, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_80126510
    .4byte 0x40800010 # bge .L_801264F8
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80126504
    .4byte 0x48000070 # b .L_80126564
L_801264F8:
    cmpwi 0, 0x3
    .4byte 0x40800068 # bge .L_80126564
    .4byte 0x48000044 # b .L_80126544
L_80126504:
    li 0, 0x0
    stb 0, 0x230(31)
    .4byte 0x48000058 # b .L_80126564
L_80126510:
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 3, 0x1
    li 0, -0x1
    stb 3, 0x230(31)
    stb 3, 0x11d(31)
    stw 0, 0x23c(31)
    .4byte 0x48000024 # b .L_80126564
L_80126544:
    lwz 31, 0x240(31)
    cmpwi 31, 0x0
    .4byte 0x40810018 # ble .L_80126564
    bl GetRoomConfigRecord
    mr 4, 31
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_80126564:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80126578:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BD060@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BD060@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801265C8
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
L_801265C8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80126600
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
L_80126600:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80126638
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
L_80126638:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80126670
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
L_80126670:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801266A8
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
L_801266A8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801266E0
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
L_801266E0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80126718
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
L_80126718:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80126750
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
L_80126750:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80126788
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
L_80126788:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012679C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_801F5938
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_80125934
    .4byte fn_80126578
