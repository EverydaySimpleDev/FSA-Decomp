.section extab, "a"
.balign 4
.global etb_80009EF0
etb_80009EF0:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80009EF0, 8

.global etb_80009EF8
etb_80009EF8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80009EF8, 8

.global etb_80009F00
etb_80009F00:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80009F00, 8

.global etb_80009F08
etb_80009F08:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80009F08, 8

.global etb_80009F10
etb_80009F10:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80009F10, 8

.section extabindex, "a"
.balign 4
.global eti_800179B0
eti_800179B0:
    .4byte fn_8020CF7C
    .4byte 0x00000048
    .4byte etb_80009EF0
.size eti_800179B0, 12

.global eti_800179BC
eti_800179BC:
    .4byte fn_8020CFC4
    .4byte 0x000001A8
    .4byte etb_80009EF8
.size eti_800179BC, 12

.global eti_800179C8
eti_800179C8:
    .4byte fn_8020D16C
    .4byte 0x00000140
    .4byte etb_80009F00
.size eti_800179C8, 12

.global eti_800179D4
eti_800179D4:
    .4byte fn_8020D2AC
    .4byte 0x000000BC
    .4byte etb_80009F08
.size eti_800179D4, 12

.global eti_800179E0
eti_800179E0:
    .4byte fn_8020D368
    .4byte 0x00000224
    .4byte etb_80009F10
.size eti_800179E0, 12

.text
.balign 4
.global fn_8020CF7C
.global fn_8020CFC4
.global fn_8020D16C
.global fn_8020D2AC
.global fn_8020D368

fn_8020CF7C:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    .4byte 0xC022CA68 # lfs f1, lbl_8053FA08@sda21(r0)
    stw 0, 0x14(1)
    addi 4, 4, 0xc
    lwz 3, 0x4(3)
    li 5, 0x48d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020CFC4:
    stwu 1, -0x10(1)
    mflr 0
    lwz 4, 0x4(3)
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmpwi 0, 0xe
    .4byte 0x418200A4 # beq .L_8020D090
    .4byte 0x40800154 # bge .L_8020D144
    cmpwi 0, 0xd
    .4byte 0x40800008 # bge .L_8020D000
    .4byte 0x48000148 # b .L_8020D144
L_8020D000:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CA6C # lfs f1, lbl_8053FA0C@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CA68 # lfs f1, lbl_8053FA08@sda21(r0)
    li 5, 0x15b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CA68 # lfs f1, lbl_8053FA08@sda21(r0)
    li 5, 0x15c
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x22
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000CC # b .L_8020D158
L_8020D090:
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8020D0B8
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x3e
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000A4 # b .L_8020D158
L_8020D0B8:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CA68 # lfs f1, lbl_8053FA08@sda21(r0)
    li 5, 0x2a9
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CA68 # lfs f1, lbl_8053FA08@sda21(r0)
    li 5, 0x2aa
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    bl fn_802DEB58
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8020D12C
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x22
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000030 # b .L_8020D158
L_8020D12C:
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x5f
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_8020D158
L_8020D144:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x3e
    li 5, 0x0
    bl fn_801F0E34
L_8020D158:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020D16C:
    stwu 1, -0x10(1)
    mflr 0
    lwz 4, 0x4(3)
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x39
    .4byte 0x4082006C # bne .L_8020D200
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CA68 # lfs f1, lbl_8053FA08@sda21(r0)
    li 5, 0x15b
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CA68 # lfs f1, lbl_8053FA08@sda21(r0)
    li 5, 0x15c
    li 6, -0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xe0
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800009C # b .L_8020D298
L_8020D200:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80224B88
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8020D22C
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xe1
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000070 # b .L_8020D298
L_8020D22C:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_8022517C
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8020D258
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xdf
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000044 # b .L_8020D298
L_8020D258:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80224E88
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_8020D284
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x71
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_8020D298
L_8020D284:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x4f
    li 5, 0x0
    bl fn_801F0E34
L_8020D298:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8020D2AC:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC002CA70 # lfs f0, lbl_8053FA10@sda21(r0)
    stw 0, 0x24(1)
    lfs 2, 0x14(3)
    stw 31, 0x1c(1)
    mr 31, 3
    psq_l 1, 0xc(31), 0, 0
    stfs 2, 0x10(1)
    psq_st 1, 0x8(1), 0, 0
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
    bl fn_801E1D9C
    clrlwi. 0, 3, 24
    .4byte 0x40820044 # bne .L_8020D32C
    lwz 0, 0x98(31)
    cmpwi 0, 0x1
    .4byte 0x41820028 # beq .L_8020D31C
    .4byte 0x40800034 # bge .L_8020D32C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8020D308
    .4byte 0x48000028 # b .L_8020D32C
L_8020D308:
    lfs 1, 0x8(1)
    .4byte 0xC002CA74 # lfs f0, lbl_8053FA14@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x8(1)
    .4byte 0x48000014 # b .L_8020D32C
L_8020D31C:
    lfs 1, 0x8(1)
    .4byte 0xC002CA74 # lfs f0, lbl_8053FA14@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x8(1)
L_8020D32C:
    lwz 3, 0x4(31)
    addi 4, 1, 0x8
    .4byte 0xC022CA68 # lfs f1, lbl_8053FA08@sda21(r0)
    li 5, 0x33a
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8020D368:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CB7B0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CB7B0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020D3B8
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
L_8020D3B8:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020D3F0
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
L_8020D3F0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020D428
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
L_8020D428:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020D460
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
L_8020D460:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020D498
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
L_8020D498:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020D4D0
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
L_8020D4D0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020D508
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
L_8020D508:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020D540
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
L_8020D540:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8020D578
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
L_8020D578:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8020D368
