.section extab, "a"
.balign 4
.global etb_8000D8B8
etb_8000D8B8:
    .4byte 0x90080000
    .4byte 0x00000000
.size etb_8000D8B8, 8

.global etb_8000D8C0
etb_8000D8C0:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000D8C0, 8

.global etb_8000D8C8
etb_8000D8C8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000D8C8, 8

.section extabindex, "a"
.balign 4
.global eti_8001CDB0
eti_8001CDB0:
    .4byte fn_80316ABC
    .4byte 0x00000378
    .4byte etb_8000D8B8
.size eti_8001CDB0, 12

.global eti_8001CDBC
eti_8001CDBC:
    .4byte fn_80316E74
    .4byte 0x000001EC
    .4byte etb_8000D8C0
.size eti_8001CDBC, 12

.global eti_8001CDC8
eti_8001CDC8:
    .4byte fn_80317060
    .4byte 0x0000003C
    .4byte etb_8000D8C8
.size eti_8001CDC8, 12

.text
.balign 4
.global fn_80316ABC
.global fn_80316E34
.global fn_80316E50
.global fn_80316E74
.global fn_80317060

fn_80316ABC:
    stwu 1, -0x70(1)
    mflr 0
    lis 3, lbl_804AAC58@ha
    stw 0, 0x74(1)
    stmw 14, 0x28(1)
    addi 16, 3, lbl_804AAC58@l
    lis 3, lbl_80507EF8@ha
    addi 31, 3, lbl_80507EF8@l
    addi 20, 16, 0x84
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    lwz 15, 0x64(16)
    extsb. 0, 0
    lwz 0, 0x5c(16)
    stw 15, 0x24(1)
    lwz 15, 0x68(16)
    stw 0, 0x5c(20)
    lwz 0, 0x24(1)
    stw 15, 0x8(1)
    lwz 15, 0x6c(16)
    stw 0, 0x64(20)
    lwz 0, 0x8(1)
    stw 15, 0xc(1)
    lwz 15, 0x70(16)
    stw 0, 0x68(20)
    lwz 0, 0xc(1)
    stw 15, 0x10(1)
    lwz 15, 0x74(16)
    stw 0, 0x6c(20)
    lwz 0, 0x10(1)
    stw 15, 0x14(1)
    lwz 15, 0x78(16)
    stw 0, 0x70(20)
    lwz 0, 0x14(1)
    stw 15, 0x18(1)
    lwz 15, 0x7c(16)
    stw 0, 0x74(20)
    lwz 0, 0x18(1)
    stw 15, 0x1c(1)
    lwz 15, 0x80(16)
    stw 0, 0x78(20)
    lwz 0, 0x1c(1)
    lwz 17, 0x0(16)
    lwz 18, 0x4(16)
    lwz 19, 0x8(16)
    lwz 21, 0xc(16)
    lwz 22, 0x10(16)
    lwz 23, 0x14(16)
    lwz 24, 0x18(16)
    lwz 25, 0x1c(16)
    lwz 26, 0x20(16)
    lwz 27, 0x24(16)
    lwz 28, 0x28(16)
    lwz 29, 0x2c(16)
    lwz 30, 0x30(16)
    lwz 12, 0x34(16)
    lwz 11, 0x38(16)
    lwz 10, 0x3c(16)
    lwz 9, 0x40(16)
    lwz 8, 0x44(16)
    lwz 7, 0x48(16)
    lwz 6, 0x4c(16)
    lwz 5, 0x50(16)
    lwz 4, 0x54(16)
    lwz 3, 0x58(16)
    lwz 14, 0x60(16)
    stw 0, 0x7c(20)
    mr 0, 15
    stw 15, 0x20(1)
    stw 17, 0x84(16)
    stw 18, 0x88(16)
    stw 19, 0x8c(16)
    stw 21, 0xc(20)
    stw 22, 0x10(20)
    stw 23, 0x14(20)
    stw 24, 0x18(20)
    stw 25, 0x1c(20)
    stw 26, 0x20(20)
    stw 27, 0x24(20)
    stw 28, 0x28(20)
    stw 29, 0x2c(20)
    stw 30, 0x30(20)
    stw 12, 0x34(20)
    stw 11, 0x38(20)
    stw 10, 0x3c(20)
    stw 9, 0x40(20)
    stw 8, 0x44(20)
    stw 7, 0x48(20)
    stw 6, 0x4c(20)
    stw 5, 0x50(20)
    stw 4, 0x54(20)
    stw 3, 0x58(20)
    stw 14, 0x60(20)
    stw 0, 0x80(20)
    .4byte 0x40820030 # bne .L_80316C60
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
L_80316C60:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80316C98
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
L_80316C98:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80316CD0
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
L_80316CD0:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80316D08
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
L_80316D08:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80316D40
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
L_80316D40:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80316D78
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
L_80316D78:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80316DB0
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
L_80316DB0:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80316DE8
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
L_80316DE8:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80316E20
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
L_80316E20:
    lmw 14, 0x28(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80316E34:
    lwz 0, 0x4(3)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_80316E48
    lwz 3, 0x0(3)
    blr
L_80316E48:
    li 3, -0x1
    blr

fn_80316E50:
    li 0, -0x1
    psq_l 1, 0x0(5), 0, 0
    stw 0, 0x0(3)
    lfs 0, 0x8(5)
    stw 0, 0x4(3)
    stw 4, 0xc(3)
    psq_st 1, 0x10(3), 0, 0
    stfs 0, 0x18(3)
    blr

fn_80316E74:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    li 30, -0x1
    stw 29, 0x14(1)
    mr 29, 3
    mr 3, 4
    bl fn_8037E9F4
    lwz 0, 0x4(29)
    mr 31, 3
    cmpw 31, 0
    .4byte 0x4182008C # beq .L_80316F34
    stw 31, 0x4(29)
    li 0, 0x0
    cmpwi 31, 0x0
    stb 0, 0x8(29)
    stb 0, 0x9(29)
    .4byte 0x41800014 # blt .L_80316ED4
    lis 3, lbl_804715A8@ha
    slwi 0, 31, 2
    addi 3, 3, lbl_804715A8@l
    lwzx 30, 3, 0
L_80316ED4:
    cmpwi 31, 0x3
    .4byte 0x4082005C # bne .L_80316F34
    lwz 3, 0xc(29)
    cmpwi 3, 0x8
    .4byte 0x40800050 # bge .L_80316F34
    .4byte 0xC022E918 # lfs f1, lbl_805418B8@sda21(r0)
    addi 4, 29, 0x10
    li 5, 0x275
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0xc(29)
    addi 4, 29, 0x10
    .4byte 0xC022E918 # lfs f1, lbl_805418B8@sda21(r0)
    li 5, 0x276
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80316F34:
    lwz 4, 0x4(29)
    cmpwi 4, 0x0
    .4byte 0x41800104 # blt .L_80317040
    lis 3, lbl_804AADB8@ha
    lbz 0, 0x8(29)
    slwi 4, 4, 2
    addi 3, 3, lbl_804AADB8@l
    slwi 0, 0, 2
    lwzx 4, 3, 4
    lhzx 0, 4, 0
    stw 0, 0x0(29)
    lbz 0, 0x8(29)
    slwi 0, 0, 2
    add 3, 4, 0
    lha 0, 0x2(3)
    cmpwi 0, -0x1
    .4byte 0x418200CC # beq .L_80317040
    lbz 3, 0x9(29)
    extsh 0, 0
    addi 3, 3, 0x1
    stb 3, 0x9(29)
    lbz 3, 0x9(29)
    cmpw 3, 0
    .4byte 0x418000B0 # blt .L_80317040
    lbz 3, 0x8(29)
    addi 0, 3, 0x1
    stb 0, 0x8(29)
    lbz 0, 0x8(29)
    slwi 0, 0, 2
    add 3, 4, 0
    lha 0, 0x2(3)
    cmpwi 0, -0x2
    .4byte 0x40820010 # bne .L_80316FC4
    li 0, 0x0
    stb 0, 0x8(29)
    .4byte 0x48000078 # b .L_80317038
L_80316FC4:
    extsh 0, 0
    cmpwi 0, -0x1
    .4byte 0x4082006C # bne .L_80317038
    lwz 3, 0xc(29)
    cmpwi 3, 0x8
    .4byte 0x40800060 # bge .L_80317038
    cmpwi 31, 0x0
    .4byte 0x4082002C # bne .L_8031700C
    .4byte 0xC022E918 # lfs f1, lbl_805418B8@sda21(r0)
    addi 4, 29, 0x10
    li 5, 0x275
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000030 # b .L_80317038
L_8031700C:
    cmpwi 31, 0x1
    .4byte 0x40820028 # bne .L_80317038
    .4byte 0xC022E918 # lfs f1, lbl_805418B8@sda21(r0)
    addi 4, 29, 0x10
    li 5, 0x276
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_80317038:
    li 0, 0x0
    stb 0, 0x9(29)
L_80317040:
    lwz 0, 0x24(1)
    mr 3, 30
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80317060:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr. 31, 3
    .4byte 0x41820010 # beq .L_80317084
    extsh. 0, 4
    .4byte 0x40810008 # ble .L_80317084
    bl dtor_80084580
L_80317084:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_80316ABC
