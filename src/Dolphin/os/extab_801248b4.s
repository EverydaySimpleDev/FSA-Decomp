.section extab, "a"
.balign 4
.global etb_800063E8
etb_800063E8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800063E8, 8

.global etb_800063F0
etb_800063F0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800063F0, 8

.global etb_800063F8
etb_800063F8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800063F8, 8

.global etb_80006400
etb_80006400:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006400, 8

.global etb_80006408
etb_80006408:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006408, 8

.global etb_80006410
etb_80006410:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006410, 8

.global etb_80006418
etb_80006418:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006418, 8

.global etb_80006420
etb_80006420:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006420, 8

.global etb_80006428
etb_80006428:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006428, 8

.global etb_80006430
etb_80006430:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006430, 8

.global etb_80006438
etb_80006438:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006438, 8

.global etb_80006440
etb_80006440:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006440, 8

.global etb_80006448
etb_80006448:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006448, 8

.global etb_80006450
etb_80006450:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006450, 8

.global etb_80006458
etb_80006458:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006458, 8

.section extabindex, "a"
.balign 4
.global eti_80012A48
eti_80012A48:
    .4byte fn_801248B4
    .4byte 0x00000224
    .4byte etb_800063E8
.size eti_80012A48, 12

.global eti_80012A54
eti_80012A54:
    .4byte fn_80124AD8
    .4byte 0x00000030
    .4byte etb_800063F0
.size eti_80012A54, 12

.global eti_80012A60
eti_80012A60:
    .4byte fn_80124B08
    .4byte 0x00000058
    .4byte etb_800063F8
.size eti_80012A60, 12

.global eti_80012A6C
eti_80012A6C:
    .4byte fn_80124B60
    .4byte 0x00000030
    .4byte etb_80006400
.size eti_80012A6C, 12

.global eti_80012A78
eti_80012A78:
    .4byte fn_80124B90
    .4byte 0x00000030
    .4byte etb_80006408
.size eti_80012A78, 12

.global eti_80012A84
eti_80012A84:
    .4byte fn_80124BC0
    .4byte 0x00000030
    .4byte etb_80006410
.size eti_80012A84, 12

.global eti_80012A90
eti_80012A90:
    .4byte fn_80124BF0
    .4byte 0x0000003C
    .4byte etb_80006418
.size eti_80012A90, 12

.global eti_80012A9C
eti_80012A9C:
    .4byte fn_80124C2C
    .4byte 0x00000020
    .4byte etb_80006420
.size eti_80012A9C, 12

.global eti_80012AA8
eti_80012AA8:
    .4byte fn_80124C4C
    .4byte 0x0000005C
    .4byte etb_80006428
.size eti_80012AA8, 12

.global eti_80012AB4
eti_80012AB4:
    .4byte fn_80124CA8
    .4byte 0x000001FC
    .4byte etb_80006430
.size eti_80012AB4, 12

.global eti_80012AC0
eti_80012AC0:
    .4byte fn_80124EA4
    .4byte 0x00000788
    .4byte etb_80006438
.size eti_80012AC0, 12

.global eti_80012ACC
eti_80012ACC:
    .4byte fn_80125668
    .4byte 0x00000140
    .4byte etb_80006440
.size eti_80012ACC, 12

.global eti_80012AD8
eti_80012AD8:
    .4byte fn_801257A8
    .4byte 0x00000088
    .4byte etb_80006448
.size eti_80012AD8, 12

.global eti_80012AE4
eti_80012AE4:
    .4byte fn_80125858
    .4byte 0x00000020
    .4byte etb_80006450
.size eti_80012AE4, 12

.global eti_80012AF0
eti_80012AF0:
    .4byte fn_80125878
    .4byte 0x00000060
    .4byte etb_80006458
.size eti_80012AF0, 12

.text
.balign 4
.global fn_801248B4
.global fn_80124AD8
.global fn_80124B08
.global fn_80124B60
.global fn_80124B90
.global fn_80124BC0
.global fn_80124BF0
.global fn_80124C2C
.global fn_80124C4C
.global fn_80124CA8
.global fn_80124EA4
.global fn_8012562C
.global fn_80125648
.global fn_80125668
.global fn_801257A8
.global fn_80125830
.global fn_80125858
.global fn_80125878

fn_801248B4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BCE60@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BCE60@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80124904
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
L_80124904:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012493C
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
L_8012493C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80124974
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
L_80124974:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801249AC
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
L_801249AC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801249E4
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
L_801249E4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80124A1C
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
L_80124A1C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80124A54
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
L_80124A54:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80124A8C
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
L_80124A8C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80124AC4
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
L_80124AC4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80124AD8:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x9
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80124B08:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80122834
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_80124B4C
    lwz 0, 0x33c(31)
    cmpwi 0, 0xa
    .4byte 0x4080001C # bge .L_80124B4C
    mr 3, 31
    li 4, 0xa
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
L_80124B4C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80124B60:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x8
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80124B90:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x5
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80124BC0:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x7
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80124BF0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x33c(3)
    cmpwi 0, 0x6
    .4byte 0x4080000C # bge .L_80124C10
    cmpwi 0, 0x3
    .4byte 0x4181000C # bgt .L_80124C18
L_80124C10:
    li 3, 0x0
    .4byte 0x48000008 # b .L_80124C1C
L_80124C18:
    bl fn_80123D88
L_80124C1C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80124C2C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_80121DB0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80124C4C:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_8049E198@ha
    li 5, 0xe
    stw 0, 0x14(1)
    addi 4, 4, lbl_8049E198@l
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0x230
    bl fn_801D2608
    addi 3, 31, 0x230
    li 4, 0x7
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229AA0 # lfs f1, lbl_8053CA40@sda21(r0)
    addi 3, 31, 0x230
    bl fn_801D1F14
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80124CA8:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    cmplwi 31, 0x11
    stw 30, 0x8(1)
    mr 30, 3
    stb 5, 0x330(3)
    stb 5, 0x335(3)
    stw 5, 0x378(3)
    .4byte 0x418101A8 # bgt .L_80124E80
    lis 4, jumptable_8049E29C@ha
    slwi 0, 31, 2
    addi 4, 4, jumptable_8049E29C@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    li 0, 0x1
    addi 3, 30, 0x230
    stb 0, 0x330(30)
    li 4, 0x7
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000170 # b .L_80124E80
    li 0, 0x1
    stb 0, 0x11e(30)
    bl fn_801F3604
    .4byte 0x48000160 # b .L_80124E80
    bl fn_8012202C
    .4byte 0x48000158 # b .L_80124E80
    bl fn_80121FA8
    addi 3, 30, 0x230
    li 4, 0x2
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x4800013C # b .L_80124E80
    bl fn_8012285C
    bl fn_80230CFC
    mr 4, 3
    addi 3, 30, 0x230
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    li 0, 0x0
    stb 0, 0x333(30)
    stw 0, 0x354(30)
    .4byte 0x48000110 # b .L_80124E80
    bl fn_8012285C
    bl fn_80230CFC
    mr 4, 3
    addi 3, 30, 0x230
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x480000F0 # b .L_80124E80
    lwz 4, 0x98(30)
    addi 3, 30, 0x230
    li 5, 0x0
    li 6, 0x0
    addi 4, 4, 0xa
    bl fn_801D22DC
    li 0, 0x1
    lis 4, 0x4
    stb 0, 0x333(30)
    mr 3, 30
    addi 4, 4, 0x71
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    mr 3, 30
    stw 0, 0x3c8(30)
    bl fn_80121F34
    .4byte 0x480000A8 # b .L_80124E80
    addi 3, 30, 0x230
    li 4, 0x4
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x72
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800007C # b .L_80124E80
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    mr 3, 30
    bl fn_80121764
    .4byte 0x48000068 # b .L_80124E80
    addi 3, 30, 0x230
    li 4, 0x2
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    mr 3, 30
    bl fn_80121764
    mr 3, 30
    bl fn_80121ABC
    li 0, 0x1
    stb 0, 0x333(30)
    .4byte 0x48000038 # b .L_80124E80
    bl fn_80121D68
    mr 3, 30
    bl fn_801220C4
    .4byte 0x48000028 # b .L_80124E80
    stb 5, 0x331(30)
    .4byte 0x48000020 # b .L_80124E80
    bl GetRoomConfigRecord
    lwz 4, 0x3cc(30)
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    li 0, 0x0
    stb 0, 0x11c(30)
L_80124E80:
    mr 3, 30
    mr 4, 31
    bl fn_80123E80
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80124EA4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    lfs 1, 0x60(3)
    stfs 1, 0x20(1)
    lfs 4, 0x64(3)
    stfs 4, 0x24(1)
    lfs 2, 0x68(3)
    stfs 2, 0x28(1)
    lfs 3, 0x6c(3)
    stfs 3, 0x2c(1)
    lfs 0, 0xc(3)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x20(1)
    lfs 2, 0x10(3)
    fadds 1, 4, 2
    stfs 0, 0x28(1)
    fadds 0, 3, 2
    stfs 1, 0x24(1)
    stfs 0, 0x2c(1)
    lwz 0, 0x33c(3)
    cmpwi 0, 0xd
    .4byte 0x41800028 # blt .L_80124F34
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80124F34
    li 0, 0x1
    .4byte 0xC0029AA4 # lfs f0, lbl_8053CA44@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_80124F34:
    lwz 0, 0x33c(31)
    cmplwi 0, 0x11
    .4byte 0x418106D8 # bgt .L_80125614
    lis 3, jumptable_8049E2E4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049E2E4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    mr 3, 31
    .4byte 0xC0229AA8 # lfs f1, lbl_8053CA48@sda21(r0)
    lwz 12, 0x0(31)
    li 4, 0x0
    li 5, 0x1
    lwz 12, 0x98(12)
    mtctr 12
    bctrl
    mr 3, 31
    li 4, 0x84d
    bl fn_80122898
    cmpwi 3, 0x0
    .4byte 0x4180068C # blt .L_80125614
    stw 3, 0x344(31)
    mr 3, 31
    li 4, 0x1
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x4800066C # b .L_80125614
    lwz 3, 0x34c(31)
    addi 4, 1, 0x20
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x34c(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182063C # beq .L_80125614
    mr 3, 31
    li 4, 0x4
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000620 # b .L_80125614
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_80125050
    li 0, 0x1
    .4byte 0xC0229AAC # lfs f1, lbl_8053CA4C@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC0029AB0 # lfs f0, lbl_8053CA50@sda21(r0)
    lfs 2, 0xc(31)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x10(31)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_80125050:
    mr 3, 31
    bl fn_8012285C
    bl fn_8022EA0C
    lwz 4, 0x4(31)
    li 6, 0x0
    lwz 5, 0x198(31)
    li 7, 0x0
    bl fn_8022FE80
    mr 3, 31
    bl fn_8012285C
    bl fn_8022EA0C
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182058C # beq .L_80125614
    mr 3, 31
    lwz 4, 0x3d0(31)
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000570 # b .L_80125614
    mr 3, 31
    bl fn_8012285C
    cmpwi 3, 0x0
    .4byte 0x40800020 # bge .L_801250D4
    mr 3, 31
    li 4, 0x0
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000544 # b .L_80125614
L_801250D4:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8012510C
    mr 3, 31
    li 4, 0xe
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x4800050C # b .L_80125614
L_8012510C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x4081003C # ble .L_80125154
    mr 3, 31
    bl fn_8012285C
    lwz 12, 0x0(31)
    mr 4, 3
    mr 3, 31
    .4byte 0xC0229AB4 # lfs f1, lbl_8053CA54@sda21(r0)
    lwz 12, 0x9c(12)
    .4byte 0xC0429AB8 # lfs f2, lbl_8053CA58@sda21(r0)
    .4byte 0xC0629AAC # lfs f3, lbl_8053CA4C@sda21(r0)
    .4byte 0xC0829ABC # lfs f4, lbl_8053CA5C@sda21(r0)
    .4byte 0xC0A29AC0 # lfs f5, lbl_8053CA60@sda21(r0)
    mtctr 12
    bctrl
    .4byte 0x48000038 # b .L_80125188
L_80125154:
    mr 3, 31
    bl fn_8012285C
    lwz 12, 0x0(31)
    mr 4, 3
    mr 3, 31
    .4byte 0xC0229AB4 # lfs f1, lbl_8053CA54@sda21(r0)
    lwz 12, 0x9c(12)
    .4byte 0xC0429AB8 # lfs f2, lbl_8053CA58@sda21(r0)
    .4byte 0xC0629AAC # lfs f3, lbl_8053CA4C@sda21(r0)
    .4byte 0xC0829ABC # lfs f4, lbl_8053CA5C@sda21(r0)
    .4byte 0xC0A29AC4 # lfs f5, lbl_8053CA64@sda21(r0)
    mtctr 12
    bctrl
L_80125188:
    lis 4, 0x4841
    mr 3, 31
    addi 4, 4, 0x5254
    bl fn_801F2718
    mr. 30, 3
    .4byte 0x41800478 # blt .L_80125614
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820464 # beq .L_80125614
    li 0, 0x0
    stb 0, 0x11c(3)
    lwz 3, 0x108(31)
    addi 0, 3, 0x4
    stw 0, 0x108(31)
    lwz 0, 0x360(31)
    lwz 3, 0x108(31)
    slwi 0, 0, 2
    cmpw 3, 0
    .4byte 0x41800008 # blt .L_801251E0
    stw 0, 0x108(31)
L_801251E0:
    li 0, 0x1
    stb 0, 0x335(31)
    .4byte 0x4800042C # b .L_80125614
    mr 3, 31
    bl fn_8012285C
    cmpwi 3, 0x0
    .4byte 0x40800020 # bge .L_80125218
    mr 3, 31
    li 4, 0x0
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000400 # b .L_80125614
L_80125218:
    mr 3, 31
    bl fn_8012285C
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x408203EC # bne .L_80125614
    mr 3, 31
    bl fn_8012285C
    bl fn_8023DE58
    lwz 0, 0x4(31)
    cmpw 0, 3
    .4byte 0x408203D4 # bne .L_80125614
    mr 3, 31
    li 4, 0x6
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x480003B8 # b .L_80125614
    mr 3, 31
    bl fn_8012285C
    cmpwi 3, 0x0
    .4byte 0x4080001C # bge .L_80125288
    mr 3, 31
    li 4, 0x0
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
L_80125288:
    mr 3, 31
    bl fn_80122804
    clrlwi. 0, 3, 24
    .4byte 0x41820380 # beq .L_80125614
    mr 3, 31
    li 4, 0x4
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000364 # b .L_80125614
    mr 3, 31
    bl fn_80122548
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x4082034C # bne .L_80125614
    mr 3, 31
    li 4, 0x4
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000330 # b .L_80125614
    mr 3, 31
    bl fn_8012285C
    bl fn_8023DE58
    stw 3, 0x4(31)
    mr 3, 31
    bl fn_80122148
    mr 3, 31
    bl fn_8012285C
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x40820304 # bne .L_80125614
    mr 3, 31
    bl fn_8012285C
    mr 4, 3
    mr 3, 31
    bl fn_801216D0
    cmpwi 3, 0x0
    .4byte 0x408002E8 # bge .L_80125614
    mr 3, 31
    li 4, 0x4
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x480002CC # b .L_80125614
    mr 3, 31
    bl fn_80121E40
    clrlwi. 0, 3, 24
    .4byte 0x418202BC # beq .L_80125614
    addi 3, 31, 0x230
    bl fn_801D208C
    clrlwi. 0, 3, 24
    .4byte 0x418202AC # beq .L_80125614
    .4byte 0xC0029AA0 # lfs f0, lbl_8053CA40@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lwz 3, 0x3c8(31)
    addi 0, 3, 0x1
    stw 0, 0x3c8(31)
    lwz 0, 0x3c8(31)
    cmpwi 0, 0x1e
    .4byte 0x41800284 # blt .L_80125614
    li 0, 0x0
    mr 3, 31
    stw 0, 0x3c8(31)
    lwz 12, 0x0(31)
    lwz 4, 0x340(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000260 # b .L_80125614
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x41820250 # beq .L_80125614
    addi 3, 31, 0x230
    bl fn_801D208C
    clrlwi. 0, 3, 24
    .4byte 0x41820240 # beq .L_80125614
    mr 3, 31
    bl fn_801227D4
    clrlwi. 0, 3, 24
    .4byte 0x41820230 # beq .L_80125614
    mr 3, 31
    li 4, 0xb
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000214 # b .L_80125614
    addi 3, 31, 0x230
    bl fn_801D1C18
    .4byte 0x880D8EE0 # lbz r0, lbl_8053AAA0@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x41820200 # beq .L_80125614
    mr 3, 31
    li 4, 0xc
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x480001E4 # b .L_80125614
    mr 3, 31
    bl fn_8012285C
    cmpwi 3, 0x0
    .4byte 0x40800020 # bge .L_80125460
    mr 3, 31
    li 4, 0x0
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x480001B8 # b .L_80125614
L_80125460:
    mr 3, 31
    li 4, 0x4
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x4800019C # b .L_80125614
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x4182018C # beq .L_80125614
    mr 3, 31
    li 4, 0xf
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000170 # b .L_80125614
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x3c4(31)
    addi 0, 3, 0x1
    stw 0, 0x3c4(31)
    lwz 0, 0x3c4(31)
    cmpwi 0, 0x5a
    .4byte 0x41800140 # blt .L_80125614
    lwz 5, 0x4(31)
    addi 6, 1, 0x14
    psq_l 1, 0xc(31), 0, 0
    li 3, 0x0
    lfs 0, 0x14(31)
    li 4, 0x4ba
    li 7, 0x22
    psq_st 1, 0x0(6), 0, 0
    stfs 0, 0x1c(1)
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x41820110 # beq .L_80125614
    li 0, 0x0
    mr 3, 31
    stw 0, 0x3c4(31)
    li 4, 0x10
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x480000EC # b .L_80125614
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418200C4 # beq .L_80125614
    li 3, 0x0
    bl fn_80388EEC
    mr 3, 31
    li 4, 0xd
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x480000A0 # b .L_80125614
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_801255BC
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0xc(31)
    stfs 0, 0x7fc(4)
    lfs 0, 0x10(31)
    stfs 0, 0x800(4)
    lfs 0, 0x14(31)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801255BC:
    .4byte 0xC0029AC8 # lfs f0, lbl_8053CA68@sda21(r0)
    mr 3, 31
    .4byte 0xC0229AA0 # lfs f1, lbl_8053CA40@sda21(r0)
    addi 4, 1, 0x8
    stfs 0, 0x380(31)
    .4byte 0xC0029AC4 # lfs f0, lbl_8053CA64@sda21(r0)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 1, 0x10(1)
    lwz 12, 0x0(31)
    lfs 1, 0x380(31)
    lwz 12, 0xc8(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80125614
    mr 3, 31
    li 4, 0x11
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
L_80125614:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_8012562C:
    lwz 0, 0x90(3)
    clrlwi 0, 0, 24
    stw 0, 0x35c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 5
    stw 0, 0x3cc(3)
    blr

fn_80125648:
    lwz 0, 0x33c(3)
    cmpwi 0, 0xb
    .4byte 0x41820008 # beq .L_80125658
    .4byte 0x4800000C # b .L_80125660
L_80125658:
    li 3, 0x1
    blr
L_80125660:
    li 3, 0x0
    blr

fn_80125668:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr 30, 3
    lwz 0, 0x33c(3)
    cmpwi 0, 0x11
    .4byte 0x4082000C # bne .L_80125698
    li 3, 0x3
    .4byte 0x480000FC # b .L_80125790
L_80125698:
    lwz 12, 0x0(3)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_801256B8
    li 3, 0x0
    .4byte 0x480000DC # b .L_80125790
L_801256B8:
    bl fn_8012FF9C
    mr 4, 31
    bl fn_80130030
    clrlwi. 0, 3, 24
    .4byte 0x408200A4 # bne .L_8012576C
    lwz 0, 0x33c(30)
    cmpwi 0, 0x3
    .4byte 0x41820090 # beq .L_80125764
    .4byte 0x4080000C # bge .L_801256E4
    cmpwi 0, 0x0
    .4byte 0x41820084 # beq .L_80125764
L_801256E4:
    mr 3, 30
    bl fn_8012285C
    bl fn_8022EA0C
    lwz 4, 0x4(30)
    li 6, 0x0
    lwz 5, 0x198(30)
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(30)
    bl fn_8022FD8C
    cmpwi 3, 0x0
    .4byte 0x41800054 # blt .L_80125764
    lwz 5, 0x198(30)
    addi 7, 1, 0x8
    lwz 6, 0x4(30)
    li 4, 0x442
    psq_l 1, 0xc(30), 0, 0
    li 8, 0x28
    lfs 0, 0x14(30)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x10(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_80125764
    lwz 0, 0x33c(30)
    mr 3, 30
    li 4, 0x3
    stw 0, 0x3d0(30)
    lwz 12, 0x0(30)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
L_80125764:
    li 3, 0x1
    .4byte 0x48000028 # b .L_80125790
L_8012576C:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    li 3, 0x1
    .4byte 0x41820008 # beq .L_80125790
    li 3, 0x2
L_80125790:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801257A8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x33c(3)
    cmpwi 0, 0x9
    .4byte 0x4080001C # bge .L_801257E0
    cmpwi 0, 0x4
    .4byte 0x41820020 # beq .L_801257EC
    .4byte 0x41800048 # blt .L_80125818
    cmpwi 0, 0x7
    .4byte 0x40800014 # bge .L_801257EC
    .4byte 0x4800003C # b .L_80125818
L_801257E0:
    cmpwi 0, 0x11
    .4byte 0x40800034 # bge .L_80125818
    .4byte 0x48000030 # b .L_80125818
L_801257EC:
    mr 3, 31
    bl fn_8012285C
    mr 4, 3
    mr 3, 31
    bl fn_80121DC8
    .4byte 0xC0029ACC # lfs f0, lbl_8053CA6C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    mfcr 0
    extrwi 3, 0, 1, 2
    .4byte 0x48000008 # b .L_8012581C
L_80125818:
    li 3, 0x0
L_8012581C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80125830:
    lwz 0, 0x33c(3)
    cmpwi 0, 0x9
    .4byte 0x40800018 # bge .L_80125850
    cmpwi 0, 0x4
    .4byte 0x40800008 # bge .L_80125848
    .4byte 0x4800000C # b .L_80125850
L_80125848:
    li 3, 0x1
    blr
L_80125850:
    li 3, 0x0
    blr

fn_80125858:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_80124448
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80125878:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_801258BC
    lis 5, lbl_8049E1D0@ha
    li 4, 0x0
    addi 0, 5, lbl_8049E1D0@l
    stw 0, 0x0(30)
    bl fn_80124740
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_801258BC
    mr 3, 30
    bl dtor_80084580
L_801258BC:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_801248B4
