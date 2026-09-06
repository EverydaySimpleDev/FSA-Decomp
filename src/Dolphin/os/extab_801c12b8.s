.section extab, "a"
.balign 4
.global etb_80007FDC
etb_80007FDC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007FDC, 8

.global etb_80007FE4
etb_80007FE4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007FE4, 8

.global etb_80007FEC
etb_80007FEC:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007FEC, 8

.global etb_80007FF4
etb_80007FF4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007FF4, 8

.global etb_80007FFC
etb_80007FFC:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80007FFC, 8

.global etb_80008004
etb_80008004:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_80008004, 8

.global etb_8000800C
etb_8000800C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000800C, 8

.global etb_80008014
etb_80008014:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008014, 8

.global etb_8000801C
etb_8000801C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000801C, 8

.global etb_80008024
etb_80008024:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80008024, 8

.section extabindex, "a"
.balign 4
.global eti_80015148
eti_80015148:
    .4byte fn_801C12B8
    .4byte 0x0000005C
    .4byte etb_80007FDC
.size eti_80015148, 12

.global eti_80015154
eti_80015154:
    .4byte fn_801C1374
    .4byte 0x000000CC
    .4byte etb_80007FE4
.size eti_80015154, 12

.global eti_80015160
eti_80015160:
    .4byte fn_801C14A8
    .4byte 0x00000074
    .4byte etb_80007FEC
.size eti_80015160, 12

.global eti_8001516C
eti_8001516C:
    .4byte fn_801C1544
    .4byte 0x00000224
    .4byte etb_80007FF4
.size eti_8001516C, 12

.global eti_80015178
eti_80015178:
    .4byte fn_801C1768
    .4byte 0x00000104
    .4byte etb_80007FFC
.size eti_80015178, 12

.global eti_80015184
eti_80015184:
    .4byte fn_801C186C
    .4byte 0x000000AC
    .4byte etb_80008004
.size eti_80015184, 12

.global eti_80015190
eti_80015190:
    .4byte fn_801C1918
    .4byte 0x00000140
    .4byte etb_8000800C
.size eti_80015190, 12

.global eti_8001519C
eti_8001519C:
    .4byte fn_801C1A58
    .4byte 0x000006F8
    .4byte etb_80008014
.size eti_8001519C, 12

.global eti_800151A8
eti_800151A8:
    .4byte fn_801C2150
    .4byte 0x000001CC
    .4byte etb_8000801C
.size eti_800151A8, 12

.global eti_800151B4
eti_800151B4:
    .4byte fn_801C231C
    .4byte 0x000000F8
    .4byte etb_80008024
.size eti_800151B4, 12

.text
.balign 4
.global fn_801C12B8
.global fn_801C1314
.global fn_801C1374
.global fn_801C1440
.global fn_801C14A8
.global fn_801C151C
.global fn_801C1544
.global fn_801C1768
.global fn_801C186C
.global fn_801C1918
.global fn_801C1A58
.global fn_801C2150
.global fn_801C231C

fn_801C12B8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0xc(3)
    bl fn_801CD664
    slwi 0, 3, 2
    add 3, 31, 0
    lwz 31, 0x10(3)
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801C1300
    lwz 0, 0x230(3)
    oris 0, 0, 0x1
    stw 0, 0x230(3)
L_801C1300:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C1314:
    lwz 0, 0x50(3)
    li 5, 0x0
    cmpwi 0, 0x0
    .4byte 0x4180004C # blt .L_801C136C
    lhz 4, 0x0(3)
    rlwinm. 0, 4, 0, 25, 25
    .4byte 0x40820040 # bne .L_801C136C
    rlwinm. 0, 4, 0, 24, 24
    .4byte 0x40820038 # bne .L_801C136C
    lhz 4, 0x4(3)
    cmplwi 4, 0x0
    .4byte 0x4182002C # beq .L_801C136C
    lwz 0, 0xc(3)
    cmpwi 0, 0x0
    .4byte 0x40810020 # ble .L_801C136C
    lhz 0, 0x6(3)
    cmplw 0, 4
    .4byte 0x40820014 # bne .L_801C136C
    lhz 0, 0x8(3)
    cmplw 0, 4
    .4byte 0x41820008 # beq .L_801C136C
    li 5, 0x1
L_801C136C:
    mr 3, 5
    blr

fn_801C1374:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lhz 3, 0x8(3)
    lwz 5, 0x50(31)
    addi 0, 3, 0x1
    sth 0, 0x8(31)
    srwi 0, 5, 31
    xori 3, 0, 0x1
    lhz 5, 0x8(31)
    lhz 0, 0x4(31)
    cmplw 5, 0
    .4byte 0x40820064 # bne .L_801C1410
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801C13C0
    clrlwi. 0, 4, 24
    .4byte 0x41820054 # beq .L_801C1410
L_801C13C0:
    clrlwi. 0, 4, 24
    .4byte 0x41820010 # beq .L_801C13D4
    lhz 0, 0x0(31)
    ori 0, 0, 0x200
    sth 0, 0x0(31)
L_801C13D4:
    bl GetRoomConfigRecord
    li 4, 0x1
    bl fn_802D7440
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    bl GetRoomConfigRecord
    li 4, 0x0
    bl ConfigRecord_SetByte_0x131f4
    lwz 0, 0x50(31)
    srwi 0, 0, 31
    xori 0, 0, 0x1
    clrlwi. 0, 0, 24
    .4byte 0x40820028 # bne .L_801C142C
    bl fn_8022ADCC
    .4byte 0x48000020 # b .L_801C142C
L_801C1410:
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801C142C
    cmpwi 5, 0x3
    .4byte 0x40820010 # bne .L_801C142C
    lhz 0, 0x0(31)
    ori 0, 0, 0x100
    sth 0, 0x0(31)
L_801C142C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C1440:
    lwz 0, 0xc(3)
    addi 7, 3, 0x10
    li 6, 0x0
    cmpwi 0, 0x0
    blelr
    mr 5, 6
    .4byte 0x48000030 # b .L_801C1488
L_801C145C:
    clrlwi. 0, 6, 24
    .4byte 0x40820018 # bne .L_801C1478
    lwz 0, 0x0(7)
    cmpw 4, 0
    .4byte 0x40820014 # bne .L_801C1480
    li 6, 0x1
    .4byte 0x4800000C # b .L_801C1480
L_801C1478:
    lwz 0, 0x0(7)
    stw 0, -0x4(7)
L_801C1480:
    addi 5, 5, 0x1
    addi 7, 7, 0x4
L_801C1488:
    lwz 8, 0xc(3)
    cmpw 5, 8
    .4byte 0x4180FFCC # blt .L_801C145C
    clrlwi. 0, 6, 24
    beqlr
    subi 0, 8, 0x1
    stw 0, 0xc(3)
    blr

fn_801C14A8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0xc(3)
    slwi 0, 0, 2
    add 3, 31, 0
    stw 4, 0x10(3)
    lwz 3, 0xc(31)
    addi 0, 3, 0x1
    stw 0, 0xc(31)
    lhz 3, 0x4(31)
    addi 0, 3, 0x1
    sth 0, 0x4(31)
    lhz 0, 0x4(31)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_801C14FC
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
L_801C14FC:
    lhz 3, 0x4(31)
    subi 0, 3, 0x1
    clrlwi 3, 0, 16
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C151C:
    li 4, 0x0
    li 0, -0x1
    sth 4, 0x0(3)
    sth 4, 0x2(3)
    sth 4, 0x4(3)
    sth 4, 0x6(3)
    sth 4, 0x8(3)
    stw 4, 0xc(3)
    stw 0, 0x50(3)
    blr

fn_801C1544:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C7E70@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C7E70@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C1594
    lis 3, lbl_804B21AC@ha
    addi 3, 3, lbl_804B21AC@l
    bl fn_80028974
    lis 3, lbl_804B21AC@ha
    lis 4, fn_80021D0C@ha
    addi 3, 3, lbl_804B21AC@l
    addi 5, 31, 0x60
    addi 4, 4, fn_80021D0C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EC # stb r0, lbl_8053A2AC@sda21(r0)
L_801C1594:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C15CC
    lis 3, lbl_804B21BC@ha
    addi 3, 3, lbl_804B21BC@l
    bl fn_80028974
    lis 3, lbl_804B21BC@ha
    lis 4, fn_80021CB8@ha
    addi 3, 3, lbl_804B21BC@l
    addi 5, 31, 0x6c
    addi 4, 4, fn_80021CB8@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86ED # stb r0, lbl_8053A2AD@sda21(r0)
L_801C15CC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C1604
    lis 3, lbl_804B21CC@ha
    addi 3, 3, lbl_804B21CC@l
    bl fn_80028974
    lis 3, lbl_804B21CC@ha
    lis 4, fn_80021C64@ha
    addi 3, 3, lbl_804B21CC@l
    addi 5, 31, 0x78
    addi 4, 4, fn_80021C64@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EE # stb r0, lbl_8053A2AE@sda21(r0)
L_801C1604:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C163C
    lis 3, lbl_804B21DC@ha
    addi 3, 3, lbl_804B21DC@l
    bl fn_80028974
    lis 3, lbl_804B21DC@ha
    lis 4, fn_80021C10@ha
    addi 3, 3, lbl_804B21DC@l
    addi 5, 31, 0x84
    addi 4, 4, fn_80021C10@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86EF # stb r0, lbl_8053A2AF@sda21(r0)
L_801C163C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C1674
    lis 3, lbl_804B21EC@ha
    addi 3, 3, lbl_804B21EC@l
    bl fn_80028974
    lis 3, lbl_804B21EC@ha
    lis 4, fn_80021BBC@ha
    addi 3, 3, lbl_804B21EC@l
    addi 5, 31, 0x90
    addi 4, 4, fn_80021BBC@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F0 # stb r0, lbl_8053A2B0@sda21(r0)
L_801C1674:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C16AC
    lis 3, lbl_804B21FC@ha
    addi 3, 3, lbl_804B21FC@l
    bl fn_80028974
    lis 3, lbl_804B21FC@ha
    lis 4, fn_80021B68@ha
    addi 3, 3, lbl_804B21FC@l
    addi 5, 31, 0x9c
    addi 4, 4, fn_80021B68@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F1 # stb r0, lbl_8053A2B1@sda21(r0)
L_801C16AC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C16E4
    lis 3, lbl_804B220C@ha
    addi 3, 3, lbl_804B220C@l
    bl fn_80028974
    lis 3, lbl_804B220C@ha
    lis 4, fn_80021B14@ha
    addi 3, 3, lbl_804B220C@l
    addi 5, 31, 0xa8
    addi 4, 4, fn_80021B14@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F2 # stb r0, lbl_8053A2B2@sda21(r0)
L_801C16E4:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C171C
    lis 3, lbl_804B221C@ha
    addi 3, 3, lbl_804B221C@l
    bl fn_80028974
    lis 3, lbl_804B221C@ha
    lis 4, fn_80021AC0@ha
    addi 3, 3, lbl_804B221C@l
    addi 5, 31, 0xb4
    addi 4, 4, fn_80021AC0@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F3 # stb r0, lbl_8053A2B3@sda21(r0)
L_801C171C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801C1754
    lis 3, lbl_804B222C@ha
    addi 3, 3, lbl_804B222C@l
    bl fn_80028974
    lis 3, lbl_804B222C@ha
    lis 4, fn_80021A6C@ha
    addi 3, 3, lbl_804B222C@l
    addi 5, 31, 0xc0
    addi 4, 4, fn_80021A6C@l
    bl __register_global_object
    li 0, 0x1
    .4byte 0x980D86F4 # stb r0, lbl_8053A2B4@sda21(r0)
L_801C1754:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801C1768:
    stwu 1, -0x20(1)
    mflr 0
    lis 4, lbl_80469424@ha
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    addi 31, 4, lbl_80469424@l
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
    mr 28, 3
    mr 30, 28
L_801C1798:
    lhz 5, 0x0(31)
    addi 4, 28, 0xc
    lwz 3, 0x4(28)
    li 6, 0x0
    .4byte 0xC022BE20 # lfs f1, lbl_8053EDC0@sda21(r0)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 29, 29, 0x1
    stw 3, 0x2c0(30)
    cmpwi 29, 0x5
    addi 31, 31, 0x2
    addi 30, 30, 0x4
    .4byte 0x4180FFC4 # blt .L_801C1798
    li 31, 0x0
    .4byte 0x3BC2BE18 # li r30, lbl_8053EDB8@sda21
L_801C17E0:
    lhz 5, 0x0(30)
    addi 4, 28, 0xc
    lwz 3, 0x4(28)
    li 6, 0x0
    .4byte 0xC022BE20 # lfs f1, lbl_8053EDC0@sda21(r0)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 31, 31, 0x1
    addi 30, 30, 0x2
    cmpwi 31, 0x4
    .4byte 0x4180FFCC # blt .L_801C17E0
    lwz 3, 0x2b0(28)
    bl fn_801EE434
    li 0, 0x0
    lis 4, 0x5
    stw 0, 0x2b0(28)
    mr 3, 28
    addi 4, 4, 0x49
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x0
    li 0, 0x4
    stw 3, 0x24c(28)
    stw 0, 0x248(28)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801C186C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lbz 0, 0x2a9(3)
    stmw 26, 0x8(1)
    mr 26, 3
    lbz 28, 0x2a8(3)
    li 27, 0x0
    lis 31, 0x534c
    subf 30, 28, 0
L_801C1894:
    addi 3, 30, 0x1
    bl fn_801CD664
    add 5, 28, 3
    li 3, 0x8
    li 4, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_801C5660
    mr 29, 3
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(26)
    mr 7, 29
    addi 4, 31, 0x4b32
    addi 6, 26, 0xc
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 29, 3
    .4byte 0x4180001C # blt .L_801C18F8
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801C18F8
    bl fn_801C26D8
L_801C18F8:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF94 # blt .L_801C1894
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801C1918:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0xb
    .4byte 0x4182011C # beq .L_801C1A48
    li 0, -0x1
    addi 10, 1, 0x8
    stw 0, 0x18(1)
    li 11, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_801C19A8
L_801C1948:
    clrlwi 0, 11, 24
    addi 8, 11, 0x5
    addi 6, 11, 0x1
    stbx 11, 10, 0
    clrlwi 0, 6, 24
    addi 4, 11, 0x2
    stbx 6, 10, 0
    clrlwi 0, 4, 24
    addi 5, 11, 0x3
    addi 9, 11, 0x4
    stbx 4, 10, 0
    clrlwi 0, 5, 24
    clrlwi 7, 8, 24
    addi 6, 11, 0x6
    stbx 5, 10, 0
    clrlwi 0, 9, 24
    addi 4, 11, 0x7
    clrlwi 5, 6, 24
    stbx 9, 10, 0
    clrlwi 0, 4, 24
    addi 11, 11, 0x8
    stbx 8, 10, 7
    stbx 6, 10, 5
    stbx 4, 10, 0
L_801C19A8:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801C1948
    li 7, 0x0
    li 6, 0x1
    stb 7, 0x25(1)
    li 8, -0x1
    li 5, 0x3
    li 4, 0x2
    li 0, -0x2
    stw 8, 0x18(1)
    stw 7, 0x1c(1)
    stw 7, 0x20(1)
    stb 7, 0x24(1)
    stb 7, 0x26(1)
    stb 6, 0x27(1)
    stb 6, 0x28(1)
    stb 7, 0x29(1)
    stb 7, 0x2a(1)
    stb 7, 0x2b(1)
    stb 7, 0x2c(1)
    stb 7, 0x2d(1)
    stb 6, 0x2e(1)
    stw 5, 0x30(1)
    stb 6, 0x34(1)
    stb 7, 0x35(1)
    stb 7, 0x36(1)
    stw 8, 0x38(1)
    stw 7, 0x3c(1)
    stw 4, 0x40(1)
    stb 0, 0x25(1)
    lwz 0, 0x4(3)
    lwz 5, 0x2d4(3)
    cmpwi 0, 0x8
    .4byte 0x40800018 # bge .L_801C1A48
    .4byte 0x80ED8F50 # lwz r7, lbl_8053AB10@sda21(r0)
    addi 4, 3, 0xc
    addi 6, 1, 0x8
    lwz 3, 0x20(7)
    bl fn_802F745C
L_801C1A48:
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_801C1A58:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    addi 3, 31, 0x2d8
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    bl fn_8021C2B4
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801C1AA0
    li 0, 0x0
    stw 0, 0x24c(31)
L_801C1AA0:
    lwz 0, 0x248(31)
    cmplwi 0, 0xb
    .4byte 0x418105FC # bgt .L_801C20A4
    lis 3, jumptable_804A43B4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A43B4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x418205D4 # beq .L_801C20A4
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x480005C0 # b .L_801C20A4
    lwz 0, 0x24c(31)
    cmpwi 0, 0xb4
    .4byte 0x418005B4 # blt .L_801C20A4
    li 3, 0x3d
    bl fn_801CD664
    addi 0, 3, 0xb4
    li 3, 0x0
    sth 0, 0x2aa(31)
    li 0, 0x2
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x48000590 # b .L_801C20A4
    lhz 3, 0x2aa(31)
    cmplwi 3, 0x0
    .4byte 0x418200A0 # beq .L_801C1BC0
    subi 0, 3, 0x1
    sth 0, 0x2aa(31)
    lhz 0, 0x2aa(31)
    cmplwi 0, 0x0
    .4byte 0x40820570 # bne .L_801C20A4
    li 29, 0x0
    lis 30, 0x534c
L_801C1B40:
    lbz 28, 0x2a8(31)
    lbz 0, 0x2a9(31)
    subf 3, 28, 0
    addi 3, 3, 0x1
    bl fn_801CD664
    add 5, 28, 3
    li 3, 0x8
    li 4, 0x0
    li 6, 0x0
    li 7, 0x0
    bl fn_801C5660
    mr 28, 3
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(31)
    mr 7, 28
    addi 4, 30, 0x4b32
    addi 6, 31, 0xc
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 28, 3
    .4byte 0x4180001C # blt .L_801C1BB0
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801C1BB0
    bl fn_801C26D8
L_801C1BB0:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF88 # blt .L_801C1B40
    .4byte 0x480004E8 # b .L_801C20A4
L_801C1BC0:
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x408204D8 # bne .L_801C20A4
    li 3, 0x0
    li 0, 0x3
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x480004C4 # b .L_801C20A4
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x41800054 # blt .L_801C1C40
    li 28, 0x0
    mr 29, 31
    mr 30, 28
L_801C1BFC:
    lwz 0, 0x2b4(29)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801C1C1C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2b4(29)
    bl fn_800EC240
    stw 30, 0x2b4(29)
L_801C1C1C:
    addi 28, 28, 0x1
    addi 29, 29, 0x4
    cmpwi 28, 0x3
    .4byte 0x4180FFD4 # blt .L_801C1BFC
    li 3, 0x0
    li 0, 0x5
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x48000468 # b .L_801C20A4
L_801C1C40:
    subfic 3, 0, 0x3c
    lis 0, 0x4330
    xoris 3, 3, 0x8000
    lwz 4, 0x2b8(31)
    stw 3, 0x1c(1)
    .4byte 0xC822BE38 # lfd f1, lbl_8053EDD8@sda21(r0)
    cmplwi 4, 0x0
    stw 0, 0x18(1)
    .4byte 0xC042BE24 # lfs f2, lbl_8053EDC4@sda21(r0)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fmuls 1, 2, 0
    .4byte 0x41820010 # beq .L_801C1C80
    stfs 1, 0xb0(4)
    .4byte 0xC002BE20 # lfs f0, lbl_8053EDC0@sda21(r0)
    stfs 0, 0xb4(4)
L_801C1C80:
    lwz 3, 0x2bc(31)
    cmplwi 3, 0x0
    .4byte 0x4182041C # beq .L_801C20A4
    .4byte 0xC002BE28 # lfs f0, lbl_8053EDC8@sda21(r0)
    fmuls 0, 0, 1
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stb 0, 0xbb(3)
    .4byte 0x48000400 # b .L_801C20A4
    lwz 0, 0x24c(31)
    cmpwi 0, 0xb4
    .4byte 0x40820018 # bne .L_801C1CC8
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x4b
    li 5, 0x0
    bl fn_801F0E34
L_801C1CC8:
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 24, 24
    .4byte 0x418203D0 # beq .L_801C20A4
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 28, 0x0
    .4byte 0x3BA2BE10 # li r29, lbl_8053EDB0@sda21
L_801C1CFC:
    lhz 5, 0x0(29)
    addi 4, 31, 0xc
    lwz 3, 0x4(31)
    li 6, 0x0
    .4byte 0xC022BE20 # lfs f1, lbl_8053EDC0@sda21(r0)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 28, 28, 0x1
    addi 29, 29, 0x2
    cmpwi 28, 0x3
    .4byte 0x4180FFCC # blt .L_801C1CFC
    li 3, 0x0
    li 0, 0x6
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x48000360 # b .L_801C20A4
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x4c
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x24c(31)
    cmpwi 0, 0x78
    .4byte 0x41800340 # blt .L_801C20A4
    .4byte 0x880D9064 # lbz r0, lbl_8053AC24@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820018 # bne .L_801C1D88
    lis 3, lbl_80469430@ha
    li 0, 0x1
    addi 3, 3, lbl_80469430@l
    .4byte 0x980D9064 # stb r0, lbl_8053AC24@sda21(r0)
    .4byte 0x906D9060 # stw r3, lbl_8053AC20@sda21(r0)
L_801C1D88:
    lis 3, 0x5449
    .4byte 0x808D9060 # lwz r4, lbl_8053AC20@sda21(r0)
    addi 3, 3, 0x4d47
    bl fn_804032E8
    stw 3, 0x2d4(31)
    addi 3, 31, 0x3f8
    .4byte 0xC042BE2C # lfs f2, lbl_8053EDCC@sda21(r0)
    addi 4, 1, 0x8
    lfs 0, 0x10(31)
    lfs 1, 0xc(31)
    fadds 2, 2, 0
    .4byte 0xC002BE30 # lfs f0, lbl_8053EDD0@sda21(r0)
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    bl fn_8021F9AC
    li 3, 0x0
    li 0, 0x7
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x480002CC # b .L_801C20A4
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x4c
    li 5, 0x0
    bl fn_801F0E34
    addi 3, 31, 0x3f8
    bl fn_8021F4B0
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_801C1E94
    li 29, 0x0
    mr 28, 31
    mr 30, 29
L_801C1E0C:
    lwz 0, 0x2c0(28)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801C1E2C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2c0(28)
    bl fn_800EC240
    stw 30, 0x2c0(28)
L_801C1E2C:
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x5
    .4byte 0x4180FFD4 # blt .L_801C1E0C
    bl SpatialRegistry_GetBase
    lis 4, 0x444d
    lwz 5, 0x4(31)
    addi 4, 4, 0x5a4c
    bl fn_801F7884
    mr. 28, 3
    .4byte 0x4180001C # blt .L_801C1E70
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801C1E70
    bl fn_8010F9F0
L_801C1E70:
    bl fn_801C0D70
    lhz 5, 0x0(3)
    li 4, 0x0
    li 0, 0x8
    ori 5, 5, 0x1000
    sth 5, 0x0(3)
    stw 4, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x48000214 # b .L_801C20A4
L_801C1E94:
    lhz 3, 0x2ac(31)
    cmplwi 3, 0x0
    .4byte 0x41820100 # beq .L_801C1F9C
    subi 0, 3, 0x1
    sth 0, 0x2ac(31)
    lhz 3, 0x2ac(31)
    cmplwi 3, 0x0
    .4byte 0x40820044 # bne .L_801C1EF4
    li 29, 0x0
    mr 28, 31
    mr 30, 29
L_801C1EC0:
    lwz 0, 0x2c0(28)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801C1EE0
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x2c0(28)
    bl fn_800EC240
    stw 30, 0x2c0(28)
L_801C1EE0:
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x5
    .4byte 0x4180FFD4 # blt .L_801C1EC0
    .4byte 0x480001B4 # b .L_801C20A4
L_801C1EF4:
    lis 0, 0x4330
    lwz 4, 0x2c0(31)
    stw 3, 0x1c(1)
    .4byte 0xC822BE40 # lfd f1, lbl_8053EDE0@sda21(r0)
    cmplwi 4, 0x0
    stw 0, 0x18(1)
    .4byte 0xC042BE34 # lfs f2, lbl_8053EDD4@sda21(r0)
    lfd 0, 0x18(1)
    .4byte 0xC062BE28 # lfs f3, lbl_8053EDC8@sda21(r0)
    fsubs 0, 0, 1
    fmuls 0, 2, 0
    fmuls 0, 3, 0
    fctiwz 0, 0
    .4byte 0x41820010 # beq .L_801C1F38
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stb 0, 0xbb(4)
L_801C1F38:
    lwz 4, 0x2c4(31)
    cmplwi 4, 0x0
    .4byte 0x41820010 # beq .L_801C1F50
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stb 0, 0xbb(4)
L_801C1F50:
    lwz 4, 0x2c8(31)
    cmplwi 4, 0x0
    .4byte 0x41820010 # beq .L_801C1F68
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stb 0, 0xbb(4)
L_801C1F68:
    lwz 4, 0x2cc(31)
    cmplwi 4, 0x0
    .4byte 0x41820010 # beq .L_801C1F80
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stb 0, 0xbb(4)
L_801C1F80:
    lwz 4, 0x2d0(31)
    cmplwi 4, 0x0
    .4byte 0x4182011C # beq .L_801C20A4
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    stb 0, 0xbb(4)
    .4byte 0x4800010C # b .L_801C20A4
L_801C1F9C:
    lwz 0, 0x24c(31)
    cmpwi 0, 0xf0
    .4byte 0x40820100 # bne .L_801C20A4
    li 0, 0x78
    sth 0, 0x2ac(31)
    .4byte 0x480000F4 # b .L_801C20A4
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x4c
    li 5, 0x0
    bl fn_801F0E34
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 19, 19
    .4byte 0x408200D0 # bne .L_801C20A4
    addi 3, 31, 0x3f8
    li 4, 0x5
    bl fn_8021F914
    li 3, 0x0
    li 0, 0x9
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x480000B0 # b .L_801C20A4
    lwz 0, 0x24c(31)
    cmpwi 0, 0x5a
    .4byte 0x41800078 # blt .L_801C2078
    addi 3, 31, 0x3f8
    bl fn_8021F924
    lis 3, lbl_80469418@ha
    li 28, 0x0
    addi 29, 3, lbl_80469418@l
L_801C2018:
    lhz 5, 0x0(29)
    addi 4, 31, 0xc
    lwz 3, 0x4(31)
    li 6, 0x0
    .4byte 0xC022BE20 # lfs f1, lbl_8053EDC0@sda21(r0)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 28, 28, 0x1
    addi 29, 29, 0x2
    cmpwi 28, 0x5
    .4byte 0x4180FFCC # blt .L_801C2018
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x6f
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x0
    li 0, 0xa
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x48000030 # b .L_801C20A4
L_801C2078:
    addi 3, 31, 0x3f8
    bl fn_8021F4B0
    .4byte 0x48000024 # b .L_801C20A4
    lwz 0, 0x24c(31)
    cmpwi 0, 0xb4
    .4byte 0x41800018 # blt .L_801C20A4
    bl fn_8022ADCC
    li 3, 0x0
    li 0, 0xb
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
L_801C20A4:
    lwz 3, 0x2b4(31)
    cmplwi 3, 0x0
    .4byte 0x41820050 # beq .L_801C20FC
    lwz 4, 0x100(3)
    cmplwi 4, 0x14
    .4byte 0x41800044 # blt .L_801C20FC
    lis 3, 0x6c17
    subi 4, 4, 0x14
    subi 0, 3, 0x3e93
    mulhwu 3, 0, 4
    subf 0, 3, 4
    srwi 0, 0, 1
    add 0, 0, 3
    srwi 0, 0, 6
    mulli 0, 0, 0x5a
    subf. 0, 0, 4
    .4byte 0x40820018 # bne .L_801C20FC
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x48
    li 5, 0x0
    bl fn_801F0E34
L_801C20FC:
    lwz 0, 0x248(31)
    cmpwi 0, 0x7
    .4byte 0x40800024 # bge .L_801C2128
    cmpwi 0, 0x4
    .4byte 0x40800008 # bge .L_801C2114
    .4byte 0x48000018 # b .L_801C2128
L_801C2114:
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x4a
    li 5, 0x0
    bl fn_801F0E34
L_801C2128:
    lwz 0, 0x244(31)
    stw 0, 0x108(31)
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801C2150:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    li 5, 0x0
    .4byte 0xC062BE20 # lfs f3, lbl_8053EDC0@sda21(r0)
    li 4, 0x2
    extrwi 0, 0, 8, 16
    .4byte 0xC042BE48 # lfs f2, lbl_8053EDE8@sda21(r0)
    stb 0, 0x2a8(31)
    li 3, 0x3e8
    li 0, -0x1
    .4byte 0xC002BE30 # lfs f0, lbl_8053EDD0@sda21(r0)
    lwz 6, 0x90(31)
    extrwi 6, 6, 8, 8
    stb 6, 0x2a9(31)
    stfs 3, 0x60(31)
    stfs 3, 0x64(31)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    lfs 1, 0x60(31)
    stfs 1, 0x70(31)
    lfs 1, 0x64(31)
    stfs 1, 0x74(31)
    lfs 1, 0x68(31)
    stfs 1, 0x78(31)
    lfs 1, 0x6c(31)
    stfs 1, 0x7c(31)
    stfs 3, 0x80(31)
    stfs 3, 0x84(31)
    stfs 2, 0x88(31)
    stfs 2, 0x8c(31)
    stw 5, 0xb0(31)
    stw 4, 0x98(31)
    lwz 4, 0x230(31)
    ori 4, 4, 0x380
    stw 4, 0x230(31)
    stw 3, 0x108(31)
    lwz 3, 0x108(31)
    stw 3, 0x244(31)
    stw 5, 0x248(31)
    stw 5, 0x24c(31)
    stw 0, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    .4byte 0x880D905C # lbz r0, lbl_8053AC1C@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820018 # bne .L_801C223C
    lis 3, lbl_80469444@ha
    li 0, 0x1
    addi 3, 3, lbl_80469444@l
    .4byte 0x980D905C # stb r0, lbl_8053AC1C@sda21(r0)
    .4byte 0x906D9058 # stw r3, lbl_8053AC18@sda21(r0)
L_801C223C:
    lis 3, 0x5449
    .4byte 0x808D9058 # lwz r4, lbl_8053AC18@sda21(r0)
    addi 3, 3, 0x4d47
    bl fn_804032E8
    stw 3, 0x2d4(31)
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801C2278
    li 0, 0xb
    stw 0, 0x248(31)
    .4byte 0x4800007C # b .L_801C22F0
L_801C2278:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022BE20 # lfs f1, lbl_8053EDC0@sda21(r0)
    li 5, 0x4f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2b0(31)
    mr 29, 31
    li 28, 0x0
    .4byte 0x3BC2BE08 # li r30, lbl_8053EDA8@sda21
L_801C22B0:
    lhz 5, 0x0(30)
    addi 4, 31, 0xc
    lwz 3, 0x4(31)
    li 6, 0x0
    .4byte 0xC022BE20 # lfs f1, lbl_8053EDC0@sda21(r0)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 28, 28, 0x1
    stw 3, 0x2b4(29)
    cmpwi 28, 0x3
    addi 30, 30, 0x2
    addi 29, 29, 0x4
    .4byte 0x4180FFC4 # blt .L_801C22B0
L_801C22F0:
    lwz 31, 0x198(31)
    bl fn_801C0D70
    stw 31, 0x50(3)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801C231C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr. 28, 3
    .4byte 0x418200B0 # beq .L_801C23F0
    lis 3, lbl_804A4310@ha
    addi 0, 3, lbl_804A4310@l
    stw 0, 0x0(28)
    lwz 3, 0x2b0(28)
    bl fn_801EE434
    li 30, 0x0
    mr 31, 28
L_801C2360:
    lwz 3, 0x2b4(31)
    bl fn_801EE434
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x3
    .4byte 0x4180FFEC # blt .L_801C2360
    li 30, 0x0
    mr 31, 28
L_801C2380:
    lwz 3, 0x2c0(31)
    bl fn_801EE434
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x5
    .4byte 0x4180FFEC # blt .L_801C2380
    addi 3, 28, 0x3f8
    li 4, -0x1
    bl fn_8021FAB8
    cmplwi 28, 0x0
    .4byte 0x41820038 # beq .L_801C23E0
    lis 3, lbl_804A4808@ha
    addic. 0, 28, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(28)
    .4byte 0x41820018 # beq .L_801C23D4
    addic. 0, 28, 0x294
    .4byte 0x41820010 # beq .L_801C23D4
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(28)
L_801C23D4:
    mr 3, 28
    li 4, 0x0
    bl dtor_801F593C
L_801C23E0:
    extsh. 0, 29
    .4byte 0x4081000C # ble .L_801C23F0
    mr 3, 28
    bl dtor_80084580
L_801C23F0:
    lwz 0, 0x24(1)
    mr 3, 28
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_801C1544
