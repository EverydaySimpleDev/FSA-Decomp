.section extab, "a"
.balign 4
.global etb_800068B4
etb_800068B4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800068B4, 8

.global etb_800068BC
etb_800068BC:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_800068BC, 8

.global etb_800068C4
etb_800068C4:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_800068C4, 8

.global etb_800068CC
etb_800068CC:
    .4byte 0x380A0000
    .4byte 0x00000000
.size etb_800068CC, 8

.global etb_800068D4
etb_800068D4:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800068D4, 8

.global etb_800068DC
etb_800068DC:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_800068DC, 8

.global etb_800068E4
etb_800068E4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800068E4, 8

.global etb_800068EC
etb_800068EC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800068EC, 8

.section extabindex, "a"
.balign 4
.global eti_80013120
eti_80013120:
    .4byte fn_80133728
    .4byte 0x00000224
    .4byte etb_800068B4
.size eti_80013120, 12

.global eti_8001312C
eti_8001312C:
    .4byte fn_8013394C
    .4byte 0x000000A0
    .4byte etb_800068BC
.size eti_8001312C, 12

.global eti_80013138
eti_80013138:
    .4byte fn_801339EC
    .4byte 0x0000016C
    .4byte etb_800068C4
.size eti_80013138, 12

.global eti_80013144
eti_80013144:
    .4byte fn_80133B58
    .4byte 0x00000114
    .4byte etb_800068CC
.size eti_80013144, 12

.global eti_80013150
eti_80013150:
    .4byte fn_80133C6C
    .4byte 0x00000164
    .4byte etb_800068D4
.size eti_80013150, 12

.global eti_8001315C
eti_8001315C:
    .4byte fn_80133DD0
    .4byte 0x0000039C
    .4byte etb_800068DC
.size eti_8001315C, 12

.global eti_80013168
eti_80013168:
    .4byte fn_8013416C
    .4byte 0x00000130
    .4byte etb_800068E4
.size eti_80013168, 12

.global eti_80013174
eti_80013174:
    .4byte fn_8013429C
    .4byte 0x00000224
    .4byte etb_800068EC
.size eti_80013174, 12

.text
.balign 4
.global fn_80133728
.global fn_8013394C
.global fn_801339EC
.global fn_80133B58
.global fn_80133C6C
.global fn_80133DD0
.global fn_8013416C
.global fn_8013429C

fn_80133728:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BE620@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BE620@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80133778
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
L_80133778:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801337B0
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
L_801337B0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801337E8
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
L_801337E8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80133820
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
L_80133820:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80133858
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
L_80133858:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80133890
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
L_80133890:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801338C8
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
L_801338C8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80133900
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
L_80133900:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80133938
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
L_80133938:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8013394C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    .4byte 0x41820070 # beq .L_801339D4
    lis 3, lbl_8049ED30@ha
    li 30, 0x0
    addi 0, 3, lbl_8049ED30@l
    mr 29, 27
    stw 0, 0x0(27)
    mr 31, 30
L_80133980:
    lwz 3, 0x278(29)
    bl fn_801EE434
    addi 30, 30, 0x1
    stw 31, 0x278(29)
    cmpwi 30, 0x2
    addi 29, 29, 0x4
    .4byte 0x4180FFE8 # blt .L_80133980
    addic. 0, 27, 0x240
    .4byte 0x41820018 # beq .L_801339B8
    addic. 0, 27, 0x264
    .4byte 0x41820010 # beq .L_801339B8
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x264(27)
L_801339B8:
    mr 3, 27
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 28
    .4byte 0x4081000C # ble .L_801339D4
    mr 3, 27
    bl dtor_80084580
L_801339D4:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801339EC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 27, 0x2c(1)
    mr 31, 3
    .4byte 0x880D8F28 # lbz r0, lbl_8053AAE8@sda21(r0)
    extsb. 0, 0
    .4byte 0x408200D4 # bne .L_80133ADC
    li 29, 0xff
    li 27, 0x2d
    li 10, 0xa0
    li 7, 0x1e
    li 3, 0xdc
    li 28, 0x78
    li 11, 0xc8
    li 9, 0x28
    li 8, 0x4b
    li 6, 0xbe
    li 5, 0x41
    li 4, 0x37
    lis 12, lbl_804BE720@ha
    li 0, 0x1
    stb 27, 0x1c(1)
    addi 30, 12, lbl_804BE720@l
    stb 28, 0x1d(1)
    stb 29, 0x1e(1)
    stb 29, 0x1f(1)
    lwz 12, 0x1c(1)
    stb 11, 0x18(1)
    stb 10, 0x19(1)
    stb 9, 0x1a(1)
    stb 29, 0x1b(1)
    lwz 9, 0x18(1)
    stb 8, 0x14(1)
    stb 29, 0x15(1)
    stb 27, 0x16(1)
    stb 29, 0x17(1)
    lwz 8, 0x14(1)
    stb 7, 0x10(1)
    stb 10, 0x11(1)
    stb 6, 0x12(1)
    stb 29, 0x13(1)
    lwz 6, 0x10(1)
    stb 29, 0xc(1)
    stb 5, 0xd(1)
    stb 4, 0xe(1)
    stb 29, 0xf(1)
    lwz 4, 0xc(1)
    stb 3, 0x8(1)
    stb 7, 0x9(1)
    stb 3, 0xa(1)
    stb 29, 0xb(1)
    lwz 3, 0x8(1)
    stw 12, 0x0(30)
    stw 9, 0x4(30)
    stw 8, 0x8(30)
    stw 6, 0xc(30)
    stw 4, 0x10(30)
    stw 3, 0x14(30)
    .4byte 0x980D8F28 # stb r0, lbl_8053AAE8@sda21(r0)
L_80133ADC:
    lis 3, lbl_804BE720@ha
    mr 27, 31
    addi 30, 3, lbl_804BE720@l
    li 28, 0x0
L_80133AEC:
    lwz 3, 0x278(27)
    cmplwi 3, 0x0
    .4byte 0x41820040 # beq .L_80133B34
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    lwz 0, 0x234(31)
    lwz 5, 0x278(27)
    slwi 0, 0, 2
    add 6, 30, 0
    lbz 4, 0x2(6)
    lbz 3, 0x1(6)
    lbz 0, 0x0(6)
    stb 0, 0xbc(5)
    stb 3, 0xbd(5)
    stb 4, 0xbe(5)
L_80133B34:
    addi 28, 28, 0x1
    addi 27, 27, 0x4
    cmpwi 28, 0x2
    .4byte 0x4180FFAC # blt .L_80133AEC
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_80133B58:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    li 31, 0x1
    bl SpatialRegistry_GetBase
    lis 4, 0x4352
    addi 4, 4, 0x4e56
    bl fn_801F7A08
    lis 30, 0x4352
    mr 26, 3
    .4byte 0x480000C8 # b .L_80133C4C
L_80133B88:
    bl SpatialRegistry_GetBase
    mr 4, 26
    bl fn_801F666C
    mr. 25, 3
    .4byte 0x418200BC # beq .L_80133C54
    lwz 0, 0x230(25)
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_80133BB0
    li 0, 0x0
    .4byte 0x48000080 # b .L_80133C2C
L_80133BB0:
    li 0, 0x2
    stw 0, 0x230(25)
    lwz 0, 0x230(25)
    cmpwi 0, 0x2
    .4byte 0x4182002C # beq .L_80133BEC
    .4byte 0x40800010 # bge .L_80133BD4
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80133BE0
    .4byte 0x48000058 # b .L_80133C28
L_80133BD4:
    cmpwi 0, 0x4
    .4byte 0x40800050 # bge .L_80133C28
    .4byte 0x4800001C # b .L_80133BF8
L_80133BE0:
    li 0, -0x1
    stw 0, 0x238(25)
    .4byte 0x48000040 # b .L_80133C28
L_80133BEC:
    .4byte 0xC0029D94 # lfs f0, lbl_8053CD34@sda21(r0)
    stfs 0, 0x23c(25)
    .4byte 0x48000034 # b .L_80133C28
L_80133BF8:
    li 28, 0x0
    mr 27, 25
    mr 29, 28
L_80133C04:
    lwz 3, 0x278(27)
    bl fn_801EE434
    addi 28, 28, 0x1
    stw 29, 0x278(27)
    cmpwi 28, 0x2
    addi 27, 27, 0x4
    .4byte 0x4180FFE8 # blt .L_80133C04
    mr 3, 25
    bl fn_801F3668
L_80133C28:
    li 0, 0x1
L_80133C2C:
    clrlwi. 0, 0, 24
    .4byte 0x40820008 # bne .L_80133C38
    li 31, 0x0
L_80133C38:
    bl SpatialRegistry_GetBase
    mr 5, 26
    addi 4, 30, 0x4e56
    bl fn_801F78F4
    mr 26, 3
L_80133C4C:
    cmpwi 26, -0x1
    .4byte 0x4082FF38 # bne .L_80133B88
L_80133C54:
    mr 3, 31
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80133C6C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    bl fn_801F5778
    li 0, -0x1
    addi 9, 1, 0x8
    stw 0, 0x18(1)
    li 10, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_80133D00
L_80133CA0:
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
L_80133D00:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80133CA0
    li 12, 0x0
    li 11, 0x1
    li 30, -0x1
    li 10, 0x3
    li 0, 0x2
    stw 30, 0x18(1)
    .4byte 0xC0229D90 # lfs f1, lbl_8053CD30@sda21(r0)
    lis 3, lbl_804652C0@ha
    stw 12, 0x1c(1)
    addi 5, 3, lbl_804652C0@l
    lis 4, lbl_804652D8@ha
    fmr 2, 1
    stw 12, 0x20(1)
    addi 4, 4, lbl_804652D8@l
    mr 3, 31
    addi 6, 1, 0x8
    stb 12, 0x24(1)
    li 7, 0x7
    li 8, 0x0
    stb 12, 0x25(1)
    li 9, 0x0
    stb 12, 0x26(1)
    stb 11, 0x27(1)
    stb 11, 0x28(1)
    stb 12, 0x29(1)
    stb 12, 0x2a(1)
    stb 12, 0x2b(1)
    stb 12, 0x2c(1)
    stb 12, 0x2d(1)
    stb 11, 0x2e(1)
    stw 10, 0x30(1)
    stb 11, 0x34(1)
    stb 12, 0x35(1)
    stb 12, 0x36(1)
    stw 30, 0x38(1)
    stw 12, 0x3c(1)
    stw 0, 0x40(1)
    lwz 10, 0x234(31)
    lwz 0, 0x250(31)
    slwi 10, 10, 2
    lwzx 5, 5, 10
    add 5, 5, 0
    bl fn_801F02BC
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80133DD0:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    bl fn_801F5930
    lfs 1, 0x60(31)
    stfs 1, 0x24(1)
    lfs 4, 0x64(31)
    stfs 4, 0x28(1)
    lfs 2, 0x68(31)
    stfs 2, 0x2c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x30(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x24(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x2c(1)
    fadds 0, 3, 2
    stfs 1, 0x28(1)
    stfs 0, 0x30(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x4182023C # beq .L_80134080
    .4byte 0x408002EC # bge .L_80134134
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_80133E60
    .4byte 0x40800184 # bge .L_80133FD8
    .4byte 0x480002DC # b .L_80134134
    .4byte 0x480002D8 # b .L_80134134
L_80133E60:
    mr 3, 31
    bl fn_801339EC
    lwz 0, 0x234(31)
    lis 3, lbl_804652A4@ha
    lfs 1, 0x60(31)
    addi 4, 3, lbl_804652A4@l
    slwi 0, 0, 2
    addi 3, 1, 0x8
    stfs 1, 0x8(1)
    li 6, 0x1
    lwzx 29, 4, 0
    li 7, 0x0
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
    .4byte 0x4180000C # blt .L_80133EF4
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_80133EFC
L_80133EF4:
    li 30, -0x1
    .4byte 0x48000054 # b .L_80133F4C
L_80133EFC:
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80133F10
    li 30, -0x1
    .4byte 0x48000040 # b .L_80133F4C
L_80133F10:
    lwz 5, 0x198(31)
    addi 7, 1, 0x18
    lwz 6, 0x4(31)
    mr 3, 30
    psq_l 1, 0xc(31), 0, 0
    mr 4, 29
    lfs 0, 0x14(31)
    li 8, 0x28
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x20(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80133F48
    .4byte 0x48000008 # b .L_80133F4C
L_80133F48:
    li 30, -0x1
L_80133F4C:
    stw 30, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x418001DC # blt .L_80134134
    li 0, 0x1
    stw 0, 0x230(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x4182002C # beq .L_80133F98
    .4byte 0x40800010 # bge .L_80133F80
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80133F8C
    .4byte 0x480001B8 # b .L_80134134
L_80133F80:
    cmpwi 0, 0x4
    .4byte 0x408001B0 # bge .L_80134134
    .4byte 0x4800001C # b .L_80133FA4
L_80133F8C:
    li 0, -0x1
    stw 0, 0x238(31)
    .4byte 0x480001A0 # b .L_80134134
L_80133F98:
    .4byte 0xC0029D94 # lfs f0, lbl_8053CD34@sda21(r0)
    stfs 0, 0x23c(31)
    .4byte 0x48000194 # b .L_80134134
L_80133FA4:
    li 29, 0x0
    mr 28, 31
    mr 30, 29
L_80133FB0:
    lwz 3, 0x278(28)
    bl fn_801EE434
    addi 29, 29, 0x1
    stw 30, 0x278(28)
    cmpwi 29, 0x2
    addi 28, 28, 0x4
    .4byte 0x4180FFE8 # blt .L_80133FB0
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000160 # b .L_80134134
L_80133FD8:
    lwz 3, 0x238(31)
    addi 4, 1, 0x24
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x238(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820130 # beq .L_80134134
    li 30, 0x0
    stw 30, 0x230(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x4182002C # beq .L_80134044
    .4byte 0x40800010 # bge .L_8013402C
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_80134038
    .4byte 0x4800010C # b .L_80134134
L_8013402C:
    cmpwi 0, 0x4
    .4byte 0x40800104 # bge .L_80134134
    .4byte 0x4800001C # b .L_80134050
L_80134038:
    li 0, -0x1
    stw 0, 0x238(31)
    .4byte 0x480000F4 # b .L_80134134
L_80134044:
    .4byte 0xC0029D94 # lfs f0, lbl_8053CD34@sda21(r0)
    stfs 0, 0x23c(31)
    .4byte 0x480000E8 # b .L_80134134
L_80134050:
    mr 29, 30
    mr 28, 31
L_80134058:
    lwz 3, 0x278(28)
    bl fn_801EE434
    addi 29, 29, 0x1
    stw 30, 0x278(28)
    cmpwi 29, 0x2
    addi 28, 28, 0x4
    .4byte 0x4180FFE8 # blt .L_80134058
    mr 3, 31
    bl fn_801F3668
    .4byte 0x480000B8 # b .L_80134134
L_80134080:
    .4byte 0xC0229D98 # lfs f1, lbl_8053CD38@sda21(r0)
    addi 3, 31, 0x23c
    .4byte 0xC0429D9C # lfs f2, lbl_8053CD3C@sda21(r0)
    bl fn_801CD950
    .4byte 0xC0229DA0 # lfs f1, lbl_8053CD40@sda21(r0)
    addi 3, 31, 0x14
    lfs 2, 0x23c(31)
    bl fn_801CD950
    mr 3, 31
    bl fn_801339EC
    lfs 1, 0x14(31)
    .4byte 0xC0029DA4 # lfs f0, lbl_8053CD44@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082007C # bne .L_80134134
    li 0, 0x3
    stw 0, 0x230(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x4182002C # beq .L_801340F8
    .4byte 0x40800010 # bge .L_801340E0
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_801340EC
    .4byte 0x48000058 # b .L_80134134
L_801340E0:
    cmpwi 0, 0x4
    .4byte 0x40800050 # bge .L_80134134
    .4byte 0x4800001C # b .L_80134104
L_801340EC:
    li 0, -0x1
    stw 0, 0x238(31)
    .4byte 0x48000040 # b .L_80134134
L_801340F8:
    .4byte 0xC0029D94 # lfs f0, lbl_8053CD34@sda21(r0)
    stfs 0, 0x23c(31)
    .4byte 0x48000034 # b .L_80134134
L_80134104:
    li 29, 0x0
    mr 28, 31
    mr 30, 29
L_80134110:
    lwz 3, 0x278(28)
    bl fn_801EE434
    addi 29, 29, 0x1
    stw 30, 0x278(28)
    cmpwi 29, 0x2
    addi 28, 28, 0x4
    .4byte 0x4180FFE8 # blt .L_80134110
    mr 3, 31
    bl fn_801F3668
L_80134134:
    lwz 4, 0x4(31)
    addi 3, 1, 0x24
    lwz 5, 0x198(31)
    bl fn_80239914
    addi 3, 31, 0x240
    bl fn_801D1C18
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8013416C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    lwz 0, 0x90(31)
    addi 3, 31, 0x240
    .4byte 0xC0229DA8 # lfs f1, lbl_8053CD48@sda21(r0)
    .4byte 0x388D8390 # li r4, lbl_80539F50@sda21
    clrlwi 0, 0, 27
    .4byte 0xC0029DAC # lfs f0, lbl_8053CD4C@sda21(r0)
    stw 0, 0x234(31)
    li 5, 0x1
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
    bl fn_801D2608
    addi 3, 31, 0x240
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229D94 # lfs f1, lbl_8053CD34@sda21(r0)
    addi 3, 31, 0x240
    bl fn_801D1F14
    lwz 0, 0x278(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80134250
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229D90 # lfs f1, lbl_8053CD30@sda21(r0)
    li 5, 0x32c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x278(31)
L_80134250:
    lwz 0, 0x27c(31)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_80134288
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229D90 # lfs f1, lbl_8053CD30@sda21(r0)
    li 5, 0x183
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x27c(31)
L_80134288:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8013429C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BE720@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BE720@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801342EC
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x18
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_801342EC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80134324
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x24
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_80134324:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8013435C
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x30
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_8013435C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80134394
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x3c
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_80134394:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801343CC
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x48
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_801343CC:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80134404
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x54
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_80134404:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8013443C
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_8013443C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80134474
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0x6c
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_80134474:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801344AC
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0x78
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_801344AC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_80133728
    .4byte fn_8013429C
