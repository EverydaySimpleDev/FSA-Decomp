.section extab, "a"
.balign 4
.global etb_80007D44
etb_80007D44:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80007D44, 8

.global etb_80007D4C
etb_80007D4C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80007D4C, 8

.global etb_80007D54
etb_80007D54:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80007D54, 8

.global etb_80007D5C
etb_80007D5C:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80007D5C, 8

.global etb_80007D64
etb_80007D64:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80007D64, 8

.global etb_80007D6C
etb_80007D6C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007D6C, 8

.global etb_80007D74
etb_80007D74:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007D74, 8

.global etb_80007D7C
etb_80007D7C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80007D7C, 8

.global etb_80007D84
etb_80007D84:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007D84, 8

.section extabindex, "a"
.balign 4
.global eti_80014D64
eti_80014D64:
    .4byte fn_801B950C
    .4byte 0x00000224
    .4byte etb_80007D44
.size eti_80014D64, 12

.global eti_80014D70
eti_80014D70:
    .4byte fn_801B9730
    .4byte 0x00000090
    .4byte etb_80007D4C
.size eti_80014D70, 12

.global eti_80014D7C
eti_80014D7C:
    .4byte fn_801B97C0
    .4byte 0x00000140
    .4byte etb_80007D54
.size eti_80014D7C, 12

.global eti_80014D88
eti_80014D88:
    .4byte fn_801B9900
    .4byte 0x00000060
    .4byte etb_80007D5C
.size eti_80014D88, 12

.global eti_80014D94
eti_80014D94:
    .4byte fn_801B9960
    .4byte 0x00000060
    .4byte etb_80007D64
.size eti_80014D94, 12

.global eti_80014DA0
eti_80014DA0:
    .4byte fn_801B99C0
    .4byte 0x0000009C
    .4byte etb_80007D6C
.size eti_80014DA0, 12

.global eti_80014DAC
eti_80014DAC:
    .4byte fn_801B9A5C
    .4byte 0x00000378
    .4byte etb_80007D74
.size eti_80014DAC, 12

.global eti_80014DB8
eti_80014DB8:
    .4byte fn_801B9DD4
    .4byte 0x0000054C
    .4byte etb_80007D7C
.size eti_80014DB8, 12

.global eti_80014DC4
eti_80014DC4:
    .4byte fn_801BA320
    .4byte 0x000000DC
    .4byte etb_80007D84
.size eti_80014DC4, 12

.text
.balign 4
.global fn_801B950C
.global fn_801B9730
.global fn_801B97C0
.global fn_801B9900
.global fn_801B9960
.global fn_801B99C0
.global fn_801B9A5C
.global fn_801B9DD4
.global fn_801BA320

fn_801B950C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804C7570@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804C7570@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B955C
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
L_801B955C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B9594
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
L_801B9594:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B95CC
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
L_801B95CC:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B9604
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
L_801B9604:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B963C
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
L_801B963C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B9674
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
L_801B9674:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B96AC
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
L_801B96AC:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B96E4
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
L_801B96E4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801B971C
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
L_801B971C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801B9730:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820058 # beq .L_801B97A4
    lis 3, lbl_804A3BF8@ha
    addi 0, 3, lbl_804A3BF8@l
    stw 0, 0x0(30)
    .4byte 0x41820038 # beq .L_801B9794
    lis 3, lbl_804A4808@ha
    addic. 0, 30, 0x270
    addi 0, 3, lbl_804A4808@l
    stw 0, 0x0(30)
    .4byte 0x41820018 # beq .L_801B9788
    addic. 0, 30, 0x294
    .4byte 0x41820010 # beq .L_801B9788
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x294(30)
L_801B9788:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
L_801B9794:
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_801B97A4
    mr 3, 30
    bl dtor_80084580
L_801B97A4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801B97C0:
    stwu 1, -0x50(1)
    mflr 0
    li 11, 0x0
    stw 0, 0x54(1)
    li 0, -0x1
    addi 10, 1, 0x8
    stw 0, 0x18(1)
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_801B9844
L_801B97E4:
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
L_801B9844:
    clrlwi 0, 11, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801B97E4
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x18(1)
    stw 6, 0x1c(1)
    stw 6, 0x20(1)
    stb 6, 0x24(1)
    stb 6, 0x25(1)
    stb 6, 0x26(1)
    stb 5, 0x27(1)
    stb 5, 0x28(1)
    stb 6, 0x29(1)
    stb 6, 0x2a(1)
    stb 6, 0x2b(1)
    stb 6, 0x2c(1)
    stb 6, 0x2d(1)
    stb 5, 0x2e(1)
    stw 4, 0x30(1)
    stb 5, 0x34(1)
    stb 6, 0x35(1)
    stb 6, 0x36(1)
    stw 7, 0x38(1)
    stw 6, 0x3c(1)
    stw 0, 0x40(1)
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x4182000C # beq .L_801B98CC
    li 0, 0x6
    stb 0, 0xb(1)
L_801B98CC:
    .4byte 0xC022BBD0 # lfs f1, lbl_8053EB70@sda21(r0)
    lis 4, lbl_80469300@ha
    lwz 5, 0x280(3)
    addi 4, 4, lbl_80469300@l
    fmr 2, 1
    addi 6, 1, 0x8
    addi 5, 5, 0xc1
    li 7, 0x7
    bl fn_801F06F0
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_801B9900:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x0
    stw 0, 0x14(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x3
    .4byte 0x41820028 # beq .L_801B9940
    lwz 0, 0x108(3)
    cmpwi 0, 0x0
    .4byte 0x40810020 # ble .L_801B9944
    lwz 0, 0x230(3)
    clrlwi. 0, 0, 29
    .4byte 0x41820010 # beq .L_801B9940
    lwz 0, 0xfc(3)
    cmpwi 0, 0x5
    .4byte 0x41820008 # beq .L_801B9944
L_801B9940:
    li 5, 0x1
L_801B9944:
    clrlwi. 0, 5, 24
    .4byte 0x41820008 # beq .L_801B9950
    bl fn_801CE2BC
L_801B9950:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801B9960:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x14(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x3
    .4byte 0x41820028 # beq .L_801B99A0
    lwz 0, 0x108(3)
    cmpwi 0, 0x0
    .4byte 0x40810020 # ble .L_801B99A4
    lwz 0, 0x230(3)
    clrlwi. 0, 0, 29
    .4byte 0x41820010 # beq .L_801B99A0
    lwz 0, 0xfc(3)
    cmpwi 0, 0x5
    .4byte 0x41820008 # beq .L_801B99A4
L_801B99A0:
    li 4, 0x1
L_801B99A4:
    clrlwi. 0, 4, 24
    .4byte 0x41820008 # beq .L_801B99B0
    bl fn_801CE32C
L_801B99B0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801B99C0:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x41820064 # beq .L_801B9A40
    bl fn_801F4F28
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022BBD0 # lfs f1, lbl_8053EB70@sda21(r0)
    li 5, 0x32b
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    cmplwi 3, 0x0
    .4byte 0x41820038 # beq .L_801B9A48
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x2c(4)
    lwz 0, 0x4(4)
    stw 0, 0x8(1)
    lbz 0, 0x8(1)
    lbz 4, 0x9(1)
    stb 0, 0xb8(3)
    lbz 0, 0xa(1)
    stb 4, 0xb9(3)
    stb 0, 0xba(3)
    .4byte 0x4800000C # b .L_801B9A48
L_801B9A40:
    li 4, 0x3
    bl fn_801B9DD4
L_801B9A48:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801B9A5C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 0, 0x248(3)
    cmpwi 0, 0x2
    .4byte 0x418201E0 # beq .L_801B9C5C
    .4byte 0x40800014 # bge .L_801B9A94
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801B9AA0
    .4byte 0x40800154 # bge .L_801B9BE0
    .4byte 0x480002C0 # b .L_801B9D50
L_801B9A94:
    cmpwi 0, 0x4
    .4byte 0x408002B8 # bge .L_801B9D50
    .4byte 0x4800024C # b .L_801B9CE8
L_801B9AA0:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x4182001C # beq .L_801B9AC4
    lwz 0, 0x24c(31)
    cmpwi 0, 0x5
    .4byte 0x41800010 # blt .L_801B9AC4
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 17, 15
    stw 0, 0x230(31)
L_801B9AC4:
    clrlwi. 0, 4, 24
    .4byte 0x41820080 # beq .L_801B9B48
    .4byte 0xC022BBD4 # lfs f1, lbl_8053EB74@sda21(r0)
    mr 3, 31
    .4byte 0xC042BBD8 # lfs f2, lbl_8053EB78@sda21(r0)
    li 4, 0x1
    bl fn_801CF1B0
    lwz 0, 0x98(31)
    mr 30, 3
    cmpw 30, 0
    .4byte 0x40820014 # bne .L_801B9B00
    lwz 3, 0x250(31)
    addi 0, 3, 0xa
    stw 0, 0x250(31)
    .4byte 0x48000254 # b .L_801B9D50
L_801B9B00:
    .4byte 0xC022BBD4 # lfs f1, lbl_8053EB74@sda21(r0)
    mr 3, 31
    addi 4, 31, 0xc
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x40800020 # bge .L_801B9B34
    lwz 0, 0x230(31)
    mr 3, 31
    li 4, 0x1
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
    bl fn_801B9DD4
    .4byte 0x48000220 # b .L_801B9D50
L_801B9B34:
    stw 30, 0x98(31)
    mr 3, 31
    li 4, 0x2
    bl fn_801B9DD4
    .4byte 0x4800020C # b .L_801B9D50
L_801B9B48:
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x418001FC # blt .L_801B9D50
    .4byte 0xC022BBD4 # lfs f1, lbl_8053EB74@sda21(r0)
    mr 3, 31
    addi 4, 31, 0xc
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x40800014 # bge .L_801B9B80
    mr 3, 31
    li 4, 0x1
    bl fn_801B9DD4
    .4byte 0x480001D4 # b .L_801B9D50
L_801B9B80:
    lwz 0, 0x230(31)
    li 4, 0x0
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820014 # beq .L_801B9BA0
    lwz 0, 0x230(31)
    li 4, 0x1
    rlwinm 0, 0, 0, 19, 17
    stw 0, 0x230(31)
L_801B9BA0:
    .4byte 0xC022BBD4 # lfs f1, lbl_8053EB74@sda21(r0)
    mr 3, 31
    .4byte 0xC042BBD8 # lfs f2, lbl_8053EB78@sda21(r0)
    bl fn_801CF1B0
    lwz 0, 0x98(31)
    cmpw 3, 0
    .4byte 0x40820014 # bne .L_801B9BCC
    mr 3, 31
    li 4, 0x0
    bl fn_801B9DD4
    .4byte 0x48000188 # b .L_801B9D50
L_801B9BCC:
    stw 3, 0x98(31)
    mr 3, 31
    li 4, 0x2
    bl fn_801B9DD4
    .4byte 0x48000174 # b .L_801B9D50
L_801B9BE0:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810168 # ble .L_801B9D50
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820158 # beq .L_801B9D50
    lwz 0, 0x230(31)
    li 4, 0x0
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820014 # beq .L_801B9C1C
    lwz 0, 0x230(31)
    li 4, 0x1
    rlwinm 0, 0, 0, 19, 17
    stw 0, 0x230(31)
L_801B9C1C:
    .4byte 0xC022BBD4 # lfs f1, lbl_8053EB74@sda21(r0)
    mr 3, 31
    .4byte 0xC042BBD8 # lfs f2, lbl_8053EB78@sda21(r0)
    bl fn_801CF1B0
    lwz 0, 0x98(31)
    cmpw 3, 0
    .4byte 0x40820014 # bne .L_801B9C48
    mr 3, 31
    li 4, 0x0
    bl fn_801B9DD4
    .4byte 0x4800010C # b .L_801B9D50
L_801B9C48:
    stw 3, 0x98(31)
    mr 3, 31
    li 4, 0x2
    bl fn_801B9DD4
    .4byte 0x480000F8 # b .L_801B9D50
L_801B9C5C:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x408100EC # ble .L_801B9D50
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418200DC # beq .L_801B9D50
    lwz 0, 0x278(31)
    li 5, 0x0
    lwz 4, 0x98(31)
    cmplwi 0, 0xf
    .4byte 0x41810038 # bgt .L_801B9CC0
    lis 3, jumptable_804A3CE4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A3CE4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 5, 0x0
    .4byte 0x48000018 # b .L_801B9CC0
    li 5, 0x1
    .4byte 0x48000010 # b .L_801B9CC0
    li 5, 0x2
    .4byte 0x48000008 # b .L_801B9CC0
    li 5, 0x3
L_801B9CC0:
    cmpw 4, 5
    .4byte 0x41820014 # beq .L_801B9CD8
    mr 3, 31
    li 4, 0x2
    bl fn_801B9DD4
    .4byte 0x4800007C # b .L_801B9D50
L_801B9CD8:
    mr 3, 31
    li 4, 0x0
    bl fn_801B9DD4
    .4byte 0x4800006C # b .L_801B9D50
L_801B9CE8:
    lwz 0, 0x24c(31)
    cmpwi 0, 0xb4
    .4byte 0x41800060 # blt .L_801B9D50
    addi 3, 31, 0xc
    addi 4, 1, 0x8
    bl fn_801CD150
    bl SpatialRegistry_GetBase
    lis 4, 0x5354
    lwz 8, 0x16c(31)
    addi 4, 4, 0x414c
    addi 6, 1, 0x8
    li 5, 0x8
    li 7, 0x3
    li 9, -0x1
    bl fn_801F9484
    mr. 30, 3
    .4byte 0x41800020 # blt .L_801B9D48
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801B9D48
    li 0, 0x2
    stw 0, 0x98(3)
L_801B9D48:
    li 0, 0x0
    stb 0, 0x11c(31)
L_801B9D50:
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_801B9D68
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x41820010 # beq .L_801B9D74
L_801B9D68:
    .4byte 0xC002BBDC # lfs f0, lbl_8053EB7C@sda21(r0)
    stfs 0, 0x258(31)
    .4byte 0x4800004C # b .L_801B9DBC
L_801B9D74:
    lwz 0, 0x280(31)
    cmplwi 0, 0x11
    .4byte 0x41810030 # bgt .L_801B9DAC
    lis 3, jumptable_804A3C9C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A3C9C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0xC022BBDC # lfs f1, lbl_8053EB7C@sda21(r0)
    .4byte 0xC002BBE0 # lfs f0, lbl_8053EB80@sda21(r0)
    stfs 1, 0x258(31)
    stfs 0, 0x25c(31)
    .4byte 0x48000014 # b .L_801B9DBC
L_801B9DAC:
    .4byte 0xC022BBE4 # lfs f1, lbl_8053EB84@sda21(r0)
    .4byte 0xC002BBE8 # lfs f0, lbl_8053EB88@sda21(r0)
    stfs 1, 0x258(31)
    stfs 0, 0x25c(31)
L_801B9DBC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801B9DD4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    cmpwi 31, 0x2
    stw 30, 0x28(1)
    mr 30, 3
    lwz 0, 0x230(3)
    rlwinm 0, 0, 0, 17, 15
    stw 0, 0x230(3)
    .4byte 0x41820090 # beq .L_801B9E90
    .4byte 0x40800014 # bge .L_801B9E18
    cmpwi 31, 0x0
    .4byte 0x41820018 # beq .L_801B9E24
    .4byte 0x40800058 # bge .L_801B9E68
    .4byte 0x480004E8 # b .L_801BA2FC
L_801B9E18:
    cmpwi 31, 0x4
    .4byte 0x408004E0 # bge .L_801BA2FC
    .4byte 0x480002FC # b .L_801BA11C
L_801B9E24:
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801B9E44
    lwz 0, 0x230(30)
    .4byte 0xC002BBDC # lfs f0, lbl_8053EB7C@sda21(r0)
    ori 0, 0, 0x8000
    stw 0, 0x230(30)
    stfs 0, 0x258(30)
L_801B9E44:
    li 3, 0x3d
    bl fn_801CD664
    addi 0, 3, 0x3c
    addi 3, 30, 0x270
    stw 0, 0x250(30)
    li 5, 0x2
    lwz 4, 0x98(30)
    bl fn_801D22A0
    .4byte 0x48000498 # b .L_801BA2FC
L_801B9E68:
    .4byte 0xC002BBDC # lfs f0, lbl_8053EB7C@sda21(r0)
    addi 3, 30, 0x270
    li 5, 0x0
    li 6, 0x0
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    lwz 4, 0x98(30)
    addi 4, 4, 0x4
    bl fn_801D22DC
    .4byte 0x48000470 # b .L_801BA2FC
L_801B9E90:
    .4byte 0xC002BBDC # lfs f0, lbl_8053EB7C@sda21(r0)
    li 5, 0x0
    stfs 0, 0x254(30)
    stfs 0, 0x258(30)
    lwz 0, 0x278(30)
    lwz 6, 0x98(30)
    cmplwi 0, 0xf
    .4byte 0x41810038 # bgt .L_801B9EE4
    lis 3, jumptable_804A3D24@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A3D24@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 5, 0x0
    .4byte 0x48000018 # b .L_801B9EE4
    li 5, 0x1
    .4byte 0x48000010 # b .L_801B9EE4
    li 5, 0x2
    .4byte 0x48000008 # b .L_801B9EE4
    li 5, 0x3
L_801B9EE4:
    cmpwi 5, 0x2
    li 4, 0x8
    .4byte 0x41820120 # beq .L_801BA00C
    .4byte 0x40800014 # bge .L_801B9F04
    cmpwi 5, 0x0
    .4byte 0x41820018 # beq .L_801B9F10
    .4byte 0x40800090 # bge .L_801B9F8C
    .4byte 0x48000208 # b .L_801BA108
L_801B9F04:
    cmpwi 5, 0x4
    .4byte 0x40800200 # bge .L_801BA108
    .4byte 0x48000180 # b .L_801BA08C
L_801B9F10:
    cmpwi 6, 0x3
    .4byte 0x41820018 # beq .L_801B9F2C
    .4byte 0x4080001C # bge .L_801B9F34
    cmpwi 6, 0x2
    .4byte 0x408001E8 # bge .L_801BA108
    .4byte 0x48000010 # b .L_801B9F34
    .4byte 0x480001E0 # b .L_801BA108
L_801B9F2C:
    li 4, 0x9
    .4byte 0x480001D8 # b .L_801BA108
L_801B9F34:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BBD0 # lfs f1, lbl_8053EB70@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BBEC # lfs f0, lbl_8053EB8C@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 2, 0x14(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801B9F84
    li 4, 0x8
    .4byte 0x48000188 # b .L_801BA108
L_801B9F84:
    li 4, 0x9
    .4byte 0x48000180 # b .L_801BA108
L_801B9F8C:
    cmpwi 6, 0x3
    .4byte 0x4182001C # beq .L_801B9FAC
    .4byte 0x40800020 # bge .L_801B9FB4
    cmpwi 6, 0x2
    .4byte 0x40800008 # bge .L_801B9FA4
    .4byte 0x48000014 # b .L_801B9FB4
L_801B9FA4:
    li 4, 0xa
    .4byte 0x48000160 # b .L_801BA108
L_801B9FAC:
    li 4, 0xb
    .4byte 0x48000158 # b .L_801BA108
L_801B9FB4:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BBD0 # lfs f1, lbl_8053EB70@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BBEC # lfs f0, lbl_8053EB8C@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 2, 0x10(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801BA004
    li 4, 0xa
    .4byte 0x48000108 # b .L_801BA108
L_801BA004:
    li 4, 0xb
    .4byte 0x48000100 # b .L_801BA108
L_801BA00C:
    cmpwi 6, 0x1
    .4byte 0x4182001C # beq .L_801BA02C
    .4byte 0x40800020 # bge .L_801BA034
    cmpwi 6, 0x0
    .4byte 0x40800008 # bge .L_801BA024
    .4byte 0x48000014 # b .L_801BA034
L_801BA024:
    li 4, 0xc
    .4byte 0x480000E0 # b .L_801BA108
L_801BA02C:
    li 4, 0xd
    .4byte 0x480000D8 # b .L_801BA108
L_801BA034:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BBD0 # lfs f1, lbl_8053EB70@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BBEC # lfs f0, lbl_8053EB8C@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801BA084
    li 4, 0xc
    .4byte 0x48000088 # b .L_801BA108
L_801BA084:
    li 4, 0xd
    .4byte 0x48000080 # b .L_801BA108
L_801BA08C:
    cmpwi 6, 0x1
    .4byte 0x4182001C # beq .L_801BA0AC
    .4byte 0x40800020 # bge .L_801BA0B4
    cmpwi 6, 0x0
    .4byte 0x40800008 # bge .L_801BA0A4
    .4byte 0x48000014 # b .L_801BA0B4
L_801BA0A4:
    li 4, 0xe
    .4byte 0x48000060 # b .L_801BA108
L_801BA0AC:
    li 4, 0xf
    .4byte 0x48000058 # b .L_801BA108
L_801BA0B4:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BBD0 # lfs f1, lbl_8053EB70@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BBEC # lfs f0, lbl_8053EB8C@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801BA104
    li 4, 0xe
    .4byte 0x48000008 # b .L_801BA108
L_801BA104:
    li 4, 0xf
L_801BA108:
    addi 3, 30, 0x270
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x480001E4 # b .L_801BA2FC
L_801BA11C:
    .4byte 0xC002BBDC # lfs f0, lbl_8053EB7C@sda21(r0)
    li 3, 0x0
    .4byte 0xC022BBD0 # lfs f1, lbl_8053EB70@sda21(r0)
    li 0, 0x1
    stfs 0, 0x254(30)
    addi 4, 30, 0xc
    .4byte 0xC042BBF0 # lfs f2, lbl_8053EB90@sda21(r0)
    li 5, 0x329
    stfs 0, 0x258(30)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stfs 0, 0x3c(30)
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 2, 0x68(30)
    stfs 2, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    stfs 1, 0x80(30)
    stfs 1, 0x84(30)
    stfs 2, 0x88(30)
    stfs 2, 0x8c(30)
    stw 3, 0xb0(30)
    lwz 3, 0x230(30)
    ori 3, 3, 0x300
    stw 3, 0x230(30)
    stw 0, 0x108(30)
    .4byte 0x816D8F50 # lwz r11, lbl_8053AB10@sda21(r0)
    lwz 3, 0x4(30)
    lwz 11, 0x2c(11)
    lwz 0, 0x4(11)
    stw 0, 0x18(1)
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022BBD0 # lfs f1, lbl_8053EB70@sda21(r0)
    li 5, 0x32a
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x1c(1)
    addi 4, 30, 0xc
    lwz 3, 0x4(30)
    li 5, 0x41b
    .4byte 0xC022BBD0 # lfs f1, lbl_8053EB70@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x20(1)
    addi 4, 30, 0xc
    lwz 3, 0x4(30)
    li 5, 0x41c
    .4byte 0xC022BBD0 # lfs f1, lbl_8053EB70@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x24(1)
    addi 4, 30, 0xc
    lwz 3, 0x4(30)
    li 5, 0x54f
    .4byte 0xC022BBD0 # lfs f1, lbl_8053EB70@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 5, 0x1c(1)
    lbz 4, 0x18(1)
    cmplwi 5, 0x0
    lbz 3, 0x19(1)
    lbz 0, 0x1a(1)
    .4byte 0x41820010 # beq .L_801BA29C
    stb 4, 0xb8(5)
    stb 3, 0xb9(5)
    stb 0, 0xba(5)
L_801BA29C:
    lwz 5, 0x20(1)
    cmplwi 5, 0x0
    .4byte 0x41820010 # beq .L_801BA2B4
    stb 4, 0xb8(5)
    stb 3, 0xb9(5)
    stb 0, 0xba(5)
L_801BA2B4:
    lwz 5, 0x24(1)
    cmplwi 5, 0x0
    .4byte 0x41820010 # beq .L_801BA2CC
    stb 4, 0xb8(5)
    stb 3, 0xb9(5)
    stb 0, 0xba(5)
L_801BA2CC:
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x7e
    li 5, 0x0
    bl fn_801F0E34
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x3
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x0
    stb 0, 0x11d(30)
L_801BA2FC:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801BA320:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    lwz 0, 0x90(31)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_801BA350
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
L_801BA350:
    .4byte 0xC022BBF4 # lfs f1, lbl_8053EB94@sda21(r0)
    li 0, 0x0
    .4byte 0xC002BBF8 # lfs f0, lbl_8053EB98@sda21(r0)
    li 3, 0x3d
    stfs 1, 0x60(31)
    .4byte 0xC042BBFC # lfs f2, lbl_8053EB9C@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC022BC00 # lfs f1, lbl_8053EBA0@sda21(r0)
    stfs 2, 0x68(31)
    .4byte 0xC002BC04 # lfs f0, lbl_8053EBA4@sda21(r0)
    stfs 2, 0x6c(31)
    stfs 1, 0x80(31)
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    lwz 4, 0x230(31)
    ori 4, 4, 0x80
    stw 4, 0x230(31)
    stw 0, 0x248(31)
    stw 0, 0x24c(31)
    bl fn_801CD664
    addi 0, 3, 0x3c
    lis 3, lbl_804A3BB8@ha
    stw 0, 0x250(31)
    addi 4, 3, lbl_804A3BB8@l
    .4byte 0xC002BBDC # lfs f0, lbl_8053EB7C@sda21(r0)
    addi 3, 31, 0x270
    li 5, 0x10
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    bl fn_801D2608
    lwz 4, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    addi 3, 31, 0x270
    bl fn_801D1D60
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_801B950C
