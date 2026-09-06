# Fresh project-wide gap hunt continuation: 11 functions, 5,600 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_800061B0
etb_800061B0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800061B0, 8

.global etb_800061B8
etb_800061B8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800061B8, 8

.global etb_800061C0
etb_800061C0:
    .4byte 0x38080000
    .4byte 0x00000000
.size etb_800061C0, 8

.global etb_800061C8
etb_800061C8:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_800061C8, 8

.global etb_800061D0
etb_800061D0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800061D0, 8

.global etb_800061D8
etb_800061D8:
    .4byte 0x18CA0000
    .4byte 0x00000000
.size etb_800061D8, 8

.global etb_800061E0
etb_800061E0:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_800061E0, 8

.global etb_800061E8
etb_800061E8:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800061E8, 8

.global etb_800061F0
etb_800061F0:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_800061F0, 8

.global etb_800061F8
etb_800061F8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800061F8, 8

.global etb_80006200
etb_80006200:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80006200, 8

.section extabindex, "a"
.balign 4
.global eti_80012730
eti_80012730:
    .4byte fn_8011E748
    .4byte 0x00000224
    .4byte etb_800061B0
.size eti_80012730, 12

.global eti_8001273C
eti_8001273C:
    .4byte fn_8011E96C
    .4byte 0x00000060
    .4byte etb_800061B8
.size eti_8001273C, 12

.global eti_80012748
eti_80012748:
    .4byte fn_8011E9CC
    .4byte 0x00000224
    .4byte etb_800061C0
.size eti_80012748, 12

.global eti_80012754
eti_80012754:
    .4byte fn_8011EBF0
    .4byte 0x000000D8
    .4byte etb_800061C8
.size eti_80012754, 12

.global eti_80012760
eti_80012760:
    .4byte fn_8011ECC8
    .4byte 0x00000224
    .4byte etb_800061D0
.size eti_80012760, 12

.global eti_8001276C
eti_8001276C:
    .4byte fn_8011EEEC
    .4byte 0x00000428
    .4byte etb_800061D8
.size eti_8001276C, 12

.global eti_80012778
eti_80012778:
    .4byte fn_8011F314
    .4byte 0x000002AC
    .4byte etb_800061E0
.size eti_80012778, 12

.global eti_80012784
eti_80012784:
    .4byte fn_8011F5C0
    .4byte 0x00000290
    .4byte etb_800061E8
.size eti_80012784, 12

.global eti_80012790
eti_80012790:
    .4byte fn_8011F850
    .4byte 0x000002A0
    .4byte etb_800061F0
.size eti_80012790, 12

.global eti_8001279C
eti_8001279C:
    .4byte fn_8011FAF0
    .4byte 0x00000194
    .4byte etb_800061F8
.size eti_8001279C, 12

.global eti_800127A8
eti_800127A8:
    .4byte fn_8011FC84
    .4byte 0x000000A4
    .4byte etb_80006200
.size eti_800127A8, 12

.text
.balign 4
.global fn_8011E748
.global fn_8011E96C
.global fn_8011E9CC
.global fn_8011EBF0
.global fn_8011ECC8
.global fn_8011EEEC
.global fn_8011F314
.global fn_8011F5C0
.global fn_8011F850
.global fn_8011FAF0
.global fn_8011FC84

fn_8011E748:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BCA60@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BCA60@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011E798
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
L_8011E798:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011E7D0
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
L_8011E7D0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011E808
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
L_8011E808:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011E840
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
L_8011E840:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011E878
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
L_8011E878:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011E8B0
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
L_8011E8B0:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011E8E8
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
L_8011E8E8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011E920
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
L_8011E920:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011E958
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
L_8011E958:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011E96C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8011E9B0
    lis 5, lbl_8049DE90@ha
    li 4, 0x0
    addi 0, 5, lbl_8049DE90@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8011E9B0
    mr 3, 30
    bl dtor_80084580
L_8011E9B0:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011E9CC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 25, 0x14(1)
    mr 31, 3
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x41820144 # beq .L_8011EB2C
    .4byte 0x408001F0 # bge .L_8011EBDC
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8011EA00
    .4byte 0x480001E4 # b .L_8011EBDC
    .4byte 0x480001E0 # b .L_8011EBDC
L_8011EA00:
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x4182002C # beq .L_8011EA40
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8011EA40
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x480001A0 # b .L_8011EBDC
L_8011EA40:
    lwz 3, 0x238(31)
    addi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 3, 0x238(31)
    lwz 0, 0x23c(31)
    cmpw 3, 0
    .4byte 0x418000B4 # blt .L_8011EB0C
    li 3, 0x4
    bl fn_801CD664
    lwz 0, 0x234(31)
    mr 29, 3
    cmpwi 0, 0x1
    .4byte 0x40820024 # bne .L_8011EA94
    lwz 29, 0x240(31)
    addi 0, 29, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_8011EA94
    li 0, 0x0
    stw 0, 0x240(31)
L_8011EA94:
    slwi 3, 29, 2
    add 25, 31, 3
    lwz 0, 0x244(25)
    cmpwi 0, 0x0
    .4byte 0x41820060 # beq .L_8011EB04
    mr 28, 31
    addi 27, 3, 0x244
    li 30, 0x0
L_8011EAB4:
    cmpw 30, 29
    .4byte 0x41820028 # beq .L_8011EAE0
    lwz 26, 0x244(28)
    lwzx 0, 31, 27
    cmpw 26, 0
    .4byte 0x41820018 # beq .L_8011EAE0
    bl GetRoomConfigRecord
    mr 4, 26
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
L_8011EAE0:
    addi 30, 30, 0x1
    addi 28, 28, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FFC8 # blt .L_8011EAB4
    bl GetRoomConfigRecord
    lwz 4, 0x244(25)
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_8011EB04:
    li 0, 0x0
    stw 0, 0x238(31)
L_8011EB0C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x408200C8 # bne .L_8011EBDC
    li 0, 0x2
    mr 3, 31
    stw 0, 0x230(31)
    bl fn_801F3668
    .4byte 0x480000B4 # b .L_8011EBDC
L_8011EB2C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_8011EB90
    lwz 0, 0x4(31)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_8011EB4C
    li 0, 0x1
    .4byte 0x48000034 # b .L_8011EB7C
L_8011EB4C:
    li 29, 0x0
L_8011EB50:
    mr 3, 29
    bl fn_8023DE58
    lwz 0, 0x4(31)
    cmpw 0, 3
    .4byte 0x4082000C # bne .L_8011EB6C
    li 0, 0x1
    .4byte 0x48000014 # b .L_8011EB7C
L_8011EB6C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFDC # blt .L_8011EB50
    li 0, 0x0
L_8011EB7C:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_8011EB90
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000050 # b .L_8011EBDC
L_8011EB90:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_8011EBB8
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x48000028 # b .L_8011EBDC
L_8011EBB8:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8011EBDC
    li 0, 0x0
    stw 0, 0x230(31)
L_8011EBDC:
    lmw 25, 0x14(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8011EBF0:
    stwu 1, -0x10(1)
    mflr 0
    li 5, 0x1
    stw 0, 0x14(1)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 26
    stw 0, 0x23c(3)
    lwz 0, 0x23c(3)
    mulli 0, 0, 0xa
    stw 0, 0x23c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 25
    stw 0, 0x234(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 20
    stw 0, 0x244(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 15
    stw 0, 0x248(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 10
    stw 0, 0x24c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 5, 5
    stw 0, 0x250(3)
    lwz 0, 0x244(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8011EC68
    li 5, 0x0
    .4byte 0x48000040 # b .L_8011ECA4
L_8011EC68:
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8011EC7C
    li 5, 0x0
    .4byte 0x4800002C # b .L_8011ECA4
L_8011EC7C:
    addi 4, 3, 0x8
    lwz 0, 0x24c(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_8011EC94
    li 5, 0x0
    .4byte 0x48000014 # b .L_8011ECA4
L_8011EC94:
    lwz 0, 0x248(4)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_8011ECA4
    li 5, 0x0
L_8011ECA4:
    clrlwi. 0, 5, 24
    .4byte 0x41820010 # beq .L_8011ECB8
    li 0, 0x2
    stw 0, 0x230(3)
    bl fn_801F3668
L_8011ECB8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011ECC8:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BCB60@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BCB60@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011ED18
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
L_8011ED18:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011ED50
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
L_8011ED50:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011ED88
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
L_8011ED88:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011EDC0
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
L_8011EDC0:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011EDF8
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
L_8011EDF8:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011EE30
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
L_8011EE30:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011EE68
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
L_8011EE68:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011EEA0
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
L_8011EEA0:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011EED8
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
L_8011EED8:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011EEEC:
    stwu 1, -0xf0(1)
    mflr 0
    stw 0, 0xf4(1)
    stfd 31, 0xe0(1)
    psq_st 31, 0xe8(1), 0, 0
    stfd 30, 0xd0(1)
    psq_st 30, 0xd8(1), 0, 0
    stfd 29, 0xc0(1)
    psq_st 29, 0xc8(1), 0, 0
    stw 31, 0xbc(1)
    stw 30, 0xb8(1)
    stw 29, 0xb4(1)
    mr 31, 3
    lwz 3, 0x234(3)
    cmpwi 3, 0x1
    .4byte 0x41820008 # beq .L_8011EF30
    .4byte 0x48000130 # b .L_8011F05C
L_8011EF30:
    .4byte 0x41820008 # beq .L_8011EF38
    .4byte 0x4800002C # b .L_8011EF60
L_8011EF38:
    .4byte 0xC0429958 # lfs f2, lbl_8053C8F8@sda21(r0)
    addi 4, 1, 0x8c
    lfs 1, 0x10(31)
    lfs 3, 0x14(31)
    lfs 0, 0xc(31)
    fadds 1, 2, 1
    stfs 0, 0x8c(1)
    stfs 1, 0x90(1)
    stfs 3, 0x94(1)
    .4byte 0x48000028 # b .L_8011EF84
L_8011EF60:
    lfs 1, 0xc(31)
    addi 4, 1, 0x98
    .4byte 0xC0029958 # lfs f0, lbl_8053C8F8@sda21(r0)
    lfs 3, 0x14(31)
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    stfs 2, 0x9c(1)
    stfs 0, 0x98(1)
    stfs 3, 0xa0(1)
L_8011EF84:
    lwz 3, 0x4(31)
    li 5, 0xca
    .4byte 0xC0229970 # lfs f1, lbl_8053C910@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x234(31)
    mr 30, 3
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_8011EFBC
    .4byte 0x4800002C # b .L_8011EFE4
L_8011EFBC:
    lfs 2, 0x10(31)
    addi 4, 1, 0x74
    .4byte 0xC0229958 # lfs f1, lbl_8053C8F8@sda21(r0)
    lfs 3, 0x14(31)
    lfs 0, 0xc(31)
    fsubs 1, 2, 1
    stfs 0, 0x74(1)
    stfs 1, 0x78(1)
    stfs 3, 0x7c(1)
    .4byte 0x48000028 # b .L_8011F008
L_8011EFE4:
    .4byte 0xC0229958 # lfs f1, lbl_8053C8F8@sda21(r0)
    addi 4, 1, 0x80
    lfs 0, 0xc(31)
    lfs 3, 0x14(31)
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    stfs 2, 0x84(1)
    stfs 0, 0x80(1)
    stfs 3, 0x88(1)
L_8011F008:
    lwz 3, 0x4(31)
    li 5, 0xca
    .4byte 0xC0229970 # lfs f1, lbl_8053C910@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    cmplwi 30, 0x0
    mr 31, 3
    .4byte 0x41820010 # beq .L_8011F044
    .4byte 0xC0229974 # lfs f1, lbl_8053C914@sda21(r0)
    mr 3, 30
    bl fn_8013CAA4
L_8011F044:
    cmplwi 31, 0x0
    .4byte 0x41820298 # beq .L_8011F2E0
    .4byte 0xC0229974 # lfs f1, lbl_8053C914@sda21(r0)
    mr 3, 31
    bl fn_8013CAA4
    .4byte 0x48000288 # b .L_8011F2E0
L_8011F05C:
    lbz 0, 0x241(31)
    cmplwi 0, 0x0
    .4byte 0x41820180 # beq .L_8011F1E4
    .4byte 0xC3A2995C # lfs f29, lbl_8053C8FC@sda21(r0)
    li 29, 0x0
    .4byte 0xCBC29968 # lfd f30, lbl_8053C908@sda21(r0)
    lis 30, 0x4330
    .4byte 0xC3E29960 # lfs f31, lbl_8053C900@sda21(r0)
L_8011F07C:
    subi 0, 29, 0x1
    stw 30, 0xa8(1)
    xoris 0, 0, 0x8000
    lfs 2, 0x10(31)
    stw 0, 0xac(1)
    addi 4, 1, 0x68
    lfs 0, 0xc(31)
    li 5, 0x125
    lfd 1, 0xa8(1)
    li 6, 0x0
    stfs 0, 0x68(1)
    li 7, 0x0
    fsubs 0, 1, 30
    .4byte 0xC0229970 # lfs f1, lbl_8053C910@sda21(r0)
    stfs 31, 0x70(1)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    fmadds 0, 29, 0, 2
    stfs 0, 0x6c(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    addi 29, 29, 0x1
    cmpwi 29, 0x3
    .4byte 0x4180FFA0 # blt .L_8011F07C
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_8011F0F0
    .4byte 0x4800002C # b .L_8011F118
L_8011F0F0:
    .4byte 0xC0429958 # lfs f2, lbl_8053C8F8@sda21(r0)
    addi 4, 1, 0x50
    lfs 1, 0x10(31)
    lfs 3, 0x14(31)
    lfs 0, 0xc(31)
    fadds 1, 2, 1
    stfs 0, 0x50(1)
    stfs 1, 0x54(1)
    stfs 3, 0x58(1)
    .4byte 0x48000028 # b .L_8011F13C
L_8011F118:
    lfs 1, 0xc(31)
    addi 4, 1, 0x5c
    .4byte 0xC0029958 # lfs f0, lbl_8053C8F8@sda21(r0)
    lfs 3, 0x14(31)
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    stfs 2, 0x60(1)
    stfs 0, 0x5c(1)
    stfs 3, 0x64(1)
L_8011F13C:
    lwz 3, 0x4(31)
    li 5, 0x126
    .4byte 0xC0229970 # lfs f1, lbl_8053C910@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_8011F170
    .4byte 0x4800002C # b .L_8011F198
L_8011F170:
    lfs 2, 0x10(31)
    addi 4, 1, 0x38
    .4byte 0xC0229958 # lfs f1, lbl_8053C8F8@sda21(r0)
    lfs 3, 0x14(31)
    lfs 0, 0xc(31)
    fsubs 1, 2, 1
    stfs 0, 0x38(1)
    stfs 1, 0x3c(1)
    stfs 3, 0x40(1)
    .4byte 0x48000028 # b .L_8011F1BC
L_8011F198:
    .4byte 0xC0229958 # lfs f1, lbl_8053C8F8@sda21(r0)
    addi 4, 1, 0x44
    lfs 0, 0xc(31)
    lfs 3, 0x14(31)
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    stfs 2, 0x48(1)
    stfs 0, 0x44(1)
    stfs 3, 0x4c(1)
L_8011F1BC:
    lwz 3, 0x4(31)
    li 5, 0x126
    .4byte 0xC0229970 # lfs f1, lbl_8053C910@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000100 # b .L_8011F2E0
L_8011F1E4:
    cmpwi 3, 0x1
    .4byte 0x41820008 # beq .L_8011F1F0
    .4byte 0x4800002C # b .L_8011F218
L_8011F1F0:
    .4byte 0xC0429958 # lfs f2, lbl_8053C8F8@sda21(r0)
    addi 4, 1, 0x20
    lfs 1, 0x10(31)
    lfs 3, 0x14(31)
    lfs 0, 0xc(31)
    fadds 1, 2, 1
    stfs 0, 0x20(1)
    stfs 1, 0x24(1)
    stfs 3, 0x28(1)
    .4byte 0x48000028 # b .L_8011F23C
L_8011F218:
    lfs 1, 0xc(31)
    addi 4, 1, 0x2c
    .4byte 0xC0029958 # lfs f0, lbl_8053C8F8@sda21(r0)
    lfs 3, 0x14(31)
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    stfs 2, 0x30(1)
    stfs 0, 0x2c(1)
    stfs 3, 0x34(1)
L_8011F23C:
    lwz 3, 0x4(31)
    li 5, 0xca
    .4byte 0xC0229970 # lfs f1, lbl_8053C910@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_8011F270
    .4byte 0x4800002C # b .L_8011F298
L_8011F270:
    lfs 2, 0x10(31)
    addi 4, 1, 0x8
    .4byte 0xC0229958 # lfs f1, lbl_8053C8F8@sda21(r0)
    lfs 3, 0x14(31)
    lfs 0, 0xc(31)
    fsubs 1, 2, 1
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    stfs 3, 0x10(1)
    .4byte 0x48000028 # b .L_8011F2BC
L_8011F298:
    .4byte 0xC0229958 # lfs f1, lbl_8053C8F8@sda21(r0)
    addi 4, 1, 0x14
    lfs 0, 0xc(31)
    lfs 3, 0x14(31)
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    stfs 2, 0x18(1)
    stfs 0, 0x14(1)
    stfs 3, 0x1c(1)
L_8011F2BC:
    lwz 3, 0x4(31)
    li 5, 0xca
    .4byte 0xC0229970 # lfs f1, lbl_8053C910@sda21(r0)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8011F2E0:
    psq_l 31, 0xe8(1), 0, 0
    lfd 31, 0xe0(1)
    psq_l 30, 0xd8(1), 0, 0
    lfd 30, 0xd0(1)
    psq_l 29, 0xc8(1), 0, 0
    lfd 29, 0xc0(1)
    lwz 31, 0xbc(1)
    lwz 30, 0xb8(1)
    lwz 0, 0xf4(1)
    lwz 29, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

fn_8011F314:
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
    stw 28, 0x30(1)
    mr 28, 3
    li 29, 0x0
    mr 31, 28
L_8011F34C:
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC0229970 # lfs f1, lbl_8053C910@sda21(r0)
    li 5, 0xc8
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 29, 29, 0x1
    stw 3, 0x244(31)
    cmpwi 29, 0x3
    addi 31, 31, 0x4
    .4byte 0x4180FFC8 # blt .L_8011F34C
    lwz 3, 0x4(28)
    addi 4, 28, 0xc
    .4byte 0xC0229970 # lfs f1, lbl_8053C910@sda21(r0)
    li 5, 0xc9
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x250(28)
    addi 4, 28, 0xc
    .4byte 0xC0229970 # lfs f1, lbl_8053C910@sda21(r0)
    li 5, 0xc9
    lwz 3, 0x4(28)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x254(28)
    lwz 0, 0x234(28)
    psq_l 1, 0xc(28), 0, 0
    lfs 0, 0x14(28)
    cmpwi 0, 0x1
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    .4byte 0x4182000C # beq .L_8011F40C
    .4byte 0x408000E0 # bge .L_8011F4E4
    .4byte 0x480000DC # b .L_8011F4E4
L_8011F40C:
    .4byte 0xC3C2995C # lfs f30, lbl_8053C8FC@sda21(r0)
    mr 30, 28
    .4byte 0xCBE29968 # lfd f31, lbl_8053C908@sda21(r0)
    li 29, 0x0
    lis 31, 0x4330
L_8011F420:
    subi 0, 29, 0x1
    stw 31, 0x20(1)
    xoris 0, 0, 0x8000
    lfs 3, 0xc(28)
    stw 0, 0x24(1)
    lwz 3, 0x244(30)
    lfd 0, 0x20(1)
    lfs 2, 0x18(1)
    fsubs 4, 0, 31
    lfs 0, 0x1c(1)
    .4byte 0xC0229974 # lfs f1, lbl_8053C914@sda21(r0)
    fmadds 3, 30, 4, 3
    stfs 3, 0xa4(3)
    stfs 2, 0xa8(3)
    stfs 0, 0xac(3)
    stfs 3, 0x14(1)
    lwz 3, 0x244(30)
    bl fn_8013CAA4
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x3
    .4byte 0x4180FFAC # blt .L_8011F420
    lfs 2, 0xc(1)
    .4byte 0xC0029958 # lfs f0, lbl_8053C8F8@sda21(r0)
    lwz 3, 0x250(28)
    lfs 1, 0x8(1)
    fsubs 2, 2, 0
    lfs 0, 0x10(1)
    stfs 1, 0xa4(3)
    .4byte 0xC0229974 # lfs f1, lbl_8053C914@sda21(r0)
    stfs 2, 0xa8(3)
    stfs 0, 0xac(3)
    stfs 2, 0xc(1)
    lwz 3, 0x250(28)
    bl fn_8013CAA4
    lfs 2, 0xc(1)
    .4byte 0xC0029978 # lfs f0, lbl_8053C918@sda21(r0)
    lwz 3, 0x254(28)
    lfs 1, 0x8(1)
    fadds 2, 2, 0
    lfs 0, 0x10(1)
    stfs 1, 0xa4(3)
    .4byte 0xC0229974 # lfs f1, lbl_8053C914@sda21(r0)
    stfs 2, 0xa8(3)
    stfs 0, 0xac(3)
    stfs 2, 0xc(1)
    lwz 3, 0x254(28)
    bl fn_8013CAA4
    .4byte 0x480000B0 # b .L_8011F590
L_8011F4E4:
    lfs 1, 0x10(28)
    .4byte 0xC002997C # lfs f0, lbl_8053C91C@sda21(r0)
    lwz 3, 0x244(28)
    lfs 8, 0x14(1)
    fadds 9, 1, 0
    lfs 7, 0x1c(1)
    stfs 8, 0xa4(3)
    .4byte 0xC0029960 # lfs f0, lbl_8053C900@sda21(r0)
    stfs 9, 0xa8(3)
    .4byte 0xC082995C # lfs f4, lbl_8053C8FC@sda21(r0)
    stfs 7, 0xac(3)
    lfs 1, 0x8(1)
    lfs 2, 0x10(28)
    lwz 3, 0x248(28)
    fadds 6, 2, 0
    .4byte 0xC0029958 # lfs f0, lbl_8053C8F8@sda21(r0)
    stfs 8, 0xa4(3)
    fsubs 3, 1, 0
    .4byte 0xC0029978 # lfs f0, lbl_8053C918@sda21(r0)
    stfs 6, 0xa8(3)
    lfs 2, 0xc(1)
    stfs 7, 0xac(3)
    fadds 0, 3, 0
    lfs 1, 0x10(1)
    lfs 5, 0x10(28)
    lwz 3, 0x24c(28)
    fadds 4, 5, 4
    stfs 9, 0x18(1)
    stfs 8, 0xa4(3)
    stfs 4, 0xa8(3)
    stfs 7, 0xac(3)
    lwz 3, 0x250(28)
    stfs 6, 0x18(1)
    stfs 3, 0xa4(3)
    stfs 2, 0xa8(3)
    stfs 1, 0xac(3)
    lwz 3, 0x254(28)
    stfs 3, 0x8(1)
    stfs 0, 0xa4(3)
    stfs 2, 0xa8(3)
    stfs 4, 0x18(1)
    stfs 0, 0x8(1)
    stfs 1, 0xac(3)
L_8011F590:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 0, 0x64(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8011F5C0:
    stwu 1, -0x10(1)
    mflr 0
    cmpwi 4, 0x2
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    stw 30, 0x8(1)
    stw 4, 0x230(3)
    .4byte 0x41820114 # beq .L_8011F6F4
    .4byte 0x40800014 # bge .L_8011F5F8
    cmpwi 4, 0x0
    .4byte 0x4182001C # beq .L_8011F608
    .4byte 0x408000A4 # bge .L_8011F694
    .4byte 0x48000244 # b .L_8011F838
L_8011F5F8:
    cmpwi 4, 0x4
    .4byte 0x418201FC # beq .L_8011F7F8
    .4byte 0x40800238 # bge .L_8011F838
    .4byte 0x4800012C # b .L_8011F730
L_8011F608:
    lis 3, 0xa04
    addi 0, 3, 0x304
    stw 0, 0xb0(31)
    lbz 0, 0x240(31)
    cmplwi 0, 0x0
    .4byte 0x4182021C # beq .L_8011F838
    lwz 3, 0x244(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(3)
    lwz 3, 0x248(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(3)
    lwz 3, 0x24c(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(3)
    lwz 3, 0x250(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(3)
    lwz 3, 0x254(31)
    lwz 0, 0xf4(3)
    rlwinm 0, 0, 0, 30, 28
    stw 0, 0xf4(3)
    lwz 31, 0x238(31)
    cmpwi 31, 0x0
    .4byte 0x408101C0 # ble .L_8011F838
    bl GetRoomConfigRecord
    mr 4, 31
    li 5, 0x0
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x480001A8 # b .L_8011F838
L_8011F694:
    bl fn_8011EEEC
    lwz 4, 0x244(31)
    li 0, 0x0
    lwz 3, 0xf4(4)
    ori 3, 3, 0x4
    stw 3, 0xf4(4)
    lwz 4, 0x248(31)
    lwz 3, 0xf4(4)
    ori 3, 3, 0x4
    stw 3, 0xf4(4)
    lwz 4, 0x24c(31)
    lwz 3, 0xf4(4)
    ori 3, 3, 0x4
    stw 3, 0xf4(4)
    lwz 4, 0x250(31)
    lwz 3, 0xf4(4)
    ori 3, 3, 0x4
    stw 3, 0xf4(4)
    lwz 4, 0x254(31)
    lwz 3, 0xf4(4)
    ori 3, 3, 0x4
    stw 3, 0xf4(4)
    stw 0, 0x23c(31)
    .4byte 0x48000148 # b .L_8011F838
L_8011F6F4:
    lis 4, 0x5
    li 5, 0x0
    addi 4, 4, 0x11
    bl fn_801F0E34
    li 0, 0x0
    stw 0, 0xb0(31)
    lwz 31, 0x238(31)
    cmpwi 31, 0x0
    .4byte 0x40810124 # ble .L_8011F838
    bl GetRoomConfigRecord
    mr 4, 31
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x4800010C # b .L_8011F838
L_8011F730:
    lbz 0, 0x241(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8011F74C
    lis 4, 0x5
    li 5, 0x0
    addi 4, 4, 0x11
    bl fn_801F0E34
L_8011F74C:
    li 0, 0x0
    mr 3, 31
    stw 0, 0x23c(31)
    bl fn_8011EEEC
    lwz 4, 0x244(31)
    li 0, 0x1
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_8011F77C
    lwz 3, 0xf4(4)
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8011F77C:
    lwz 4, 0x248(31)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_8011F798
    lwz 3, 0xf4(4)
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8011F798:
    lwz 4, 0x24c(31)
    cmplwi 4, 0x0
    .4byte 0x41820014 # beq .L_8011F7B4
    lwz 3, 0xf4(4)
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8011F7B4:
    lwz 4, 0x250(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_8011F7D4
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_8011F7D4:
    lwz 4, 0x254(31)
    cmplwi 4, 0x0
    .4byte 0x4182005C # beq .L_8011F838
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
    .4byte 0x48000044 # b .L_8011F838
L_8011F7F8:
    lwz 30, 0x238(31)
    cmpwi 30, 0x0
    .4byte 0x40810018 # ble .L_8011F818
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_8011F818:
    lbz 0, 0x241(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8011F830
    mr 3, 31
    li 4, 0x3
    bl fn_801F0D20
L_8011F830:
    mr 3, 31
    bl fn_801F3668
L_8011F838:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011F850:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    bl fn_801F5930
    lfs 1, 0x80(31)
    stfs 1, 0x8(1)
    lfs 4, 0x84(31)
    stfs 4, 0xc(1)
    lfs 2, 0x88(31)
    stfs 2, 0x10(1)
    lfs 3, 0x8c(31)
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
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x4182015C # beq .L_8011FA20
    .4byte 0x40800014 # bge .L_8011F8DC
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_8011F8EC
    .4byte 0x40800100 # bge .L_8011F9D4
    .4byte 0x480001F8 # b .L_8011FAD0
L_8011F8DC:
    cmpwi 0, 0x4
    .4byte 0x418201F0 # beq .L_8011FAD0
    .4byte 0x408001EC # bge .L_8011FAD0
    .4byte 0x48000164 # b .L_8011FA4C
L_8011F8EC:
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x10
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_8011F948
    lbz 0, 0x240(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_8011F938
    mr 3, 31
    li 4, 0x1
    bl fn_8011F5C0
    .4byte 0x4800019C # b .L_8011FAD0
L_8011F938:
    mr 3, 31
    li 4, 0x3
    bl fn_8011F5C0
    .4byte 0x4800018C # b .L_8011FAD0
L_8011F948:
    lis 4, 0x4e55
    mr 3, 31
    addi 4, 4, 0x4c4c
    li 6, 0x0
    mr 5, 4
    bl fn_801F2DB4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8011F970
    li 0, 0x0
    stw 0, 0xd8(31)
L_8011F970:
    lwz 4, 0x114(31)
    mr 3, 31
    li 5, -0x1
    li 6, 0xa
    bl fn_801F2B7C
    clrlwi. 29, 3, 24
    .4byte 0x40820018 # bne .L_8011F9A0
    lwz 4, 0x4(31)
    addi 3, 1, 0x8
    lwz 5, 0x198(31)
    bl fn_80239914
    .4byte 0x48000134 # b .L_8011FAD0
L_8011F9A0:
    li 28, 0x0
    li 30, 0x1
    lis 31, 0x2
L_8011F9AC:
    slw 0, 30, 28
    and. 0, 29, 0
    .4byte 0x41820010 # beq .L_8011F9C4
    mr 3, 28
    addi 4, 31, 0x42
    bl fn_80230FD0
L_8011F9C4:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFE0 # blt .L_8011F9AC
    .4byte 0x48000100 # b .L_8011FAD0
L_8011F9D4:
    lbz 0, 0x241(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8011F9F0
    mr 3, 31
    li 4, 0x2
    bl fn_8011F5C0
    .4byte 0x480000E4 # b .L_8011FAD0
L_8011F9F0:
    lwz 3, 0x23c(31)
    addi 0, 3, 0x1
    stw 0, 0x23c(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x37
    .4byte 0x418000CC # blt .L_8011FAD0
    li 0, 0x0
    mr 3, 31
    stw 0, 0x23c(31)
    li 4, 0x2
    bl fn_8011F5C0
    .4byte 0x480000B4 # b .L_8011FAD0
L_8011FA20:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820098 # bne .L_8011FAD0
    mr 3, 31
    li 4, 0x0
    bl fn_8011F5C0
    .4byte 0x48000088 # b .L_8011FAD0
L_8011FA4C:
    lbz 0, 0x241(31)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_8011FA94
    lwz 3, 0x23c(31)
    addi 0, 3, 0x1
    stw 0, 0x23c(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x37
    .4byte 0x40820064 # bne .L_8011FAD0
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x11
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    li 4, 0x4
    bl fn_8011F5C0
    .4byte 0x48000040 # b .L_8011FAD0
L_8011FA94:
    lwz 5, 0x244(31)
    li 4, 0x0
    lwz 0, 0xf4(5)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820018 # beq .L_8011FABC
    lwz 3, 0xd0(5)
    lwz 0, 0xdc(5)
    add. 0, 3, 0
    .4byte 0x40820008 # bne .L_8011FABC
    li 4, 0x1
L_8011FABC:
    clrlwi. 0, 4, 24
    .4byte 0x41820010 # beq .L_8011FAD0
    mr 3, 31
    li 4, 0x4
    bl fn_8011F5C0
L_8011FAD0:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8011FAF0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    lwz 0, 0x90(31)
    clrlwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8011FB20
    li 0, 0x1
    stb 0, 0x240(31)
L_8011FB20:
    lwz 0, 0x90(31)
    extrwi 0, 0, 1, 30
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8011FB38
    li 0, 0x1
    stb 0, 0x241(31)
L_8011FB38:
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 24
    stw 0, 0x234(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 5
    stw 0, 0x238(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8011FB64
    .4byte 0x40800064 # bge .L_8011FBC0
    .4byte 0x48000060 # b .L_8011FBC0
L_8011FB64:
    .4byte 0xC002997C # lfs f0, lbl_8053C91C@sda21(r0)
    .4byte 0xC0829980 # lfs f4, lbl_8053C920@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC002995C # lfs f0, lbl_8053C8FC@sda21(r0)
    stfs 4, 0x64(31)
    .4byte 0xC0629984 # lfs f3, lbl_8053C924@sda21(r0)
    stfs 0, 0x68(31)
    .4byte 0xC0229988 # lfs f1, lbl_8053C928@sda21(r0)
    stfs 3, 0x6c(31)
    .4byte 0xC002998C # lfs f0, lbl_8053C92C@sda21(r0)
    lfs 2, 0x60(31)
    stfs 2, 0x70(31)
    lfs 2, 0x64(31)
    stfs 2, 0x74(31)
    lfs 2, 0x68(31)
    stfs 2, 0x78(31)
    lfs 2, 0x6c(31)
    stfs 2, 0x7c(31)
    stfs 1, 0x80(31)
    stfs 4, 0x84(31)
    stfs 0, 0x88(31)
    stfs 3, 0x8c(31)
    .4byte 0x4800005C # b .L_8011FC18
L_8011FBC0:
    .4byte 0xC0829980 # lfs f4, lbl_8053C920@sda21(r0)
    .4byte 0xC002997C # lfs f0, lbl_8053C91C@sda21(r0)
    stfs 4, 0x60(31)
    .4byte 0xC0629984 # lfs f3, lbl_8053C924@sda21(r0)
    stfs 0, 0x64(31)
    .4byte 0xC002995C # lfs f0, lbl_8053C8FC@sda21(r0)
    stfs 3, 0x68(31)
    .4byte 0xC0229988 # lfs f1, lbl_8053C928@sda21(r0)
    stfs 0, 0x6c(31)
    .4byte 0xC002998C # lfs f0, lbl_8053C92C@sda21(r0)
    lfs 2, 0x60(31)
    stfs 2, 0x70(31)
    lfs 2, 0x64(31)
    stfs 2, 0x74(31)
    lfs 2, 0x68(31)
    stfs 2, 0x78(31)
    lfs 2, 0x6c(31)
    stfs 2, 0x7c(31)
    stfs 4, 0x80(31)
    stfs 1, 0x84(31)
    stfs 3, 0x88(31)
    stfs 0, 0x8c(31)
L_8011FC18:
    li 6, 0x2
    lis 3, 0xa04
    stw 6, 0x114(31)
    li 5, 0x1
    li 4, 0x3
    addi 0, 3, 0x304
    stw 6, 0x118(31)
    mr 3, 31
    stw 5, 0xb8(31)
    stw 4, 0xbc(31)
    stw 0, 0xb0(31)
    bl fn_8011F314
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8011FC70
    mr 3, 31
    li 4, 0x1
    bl fn_8011F5C0
L_8011FC70:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011FC84:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr. 27, 3
    mr 28, 4
    .4byte 0x41820074 # beq .L_8011FD10
    lis 3, lbl_8049DEE8@ha
    mr 30, 27
    addi 0, 3, lbl_8049DEE8@l
    li 29, 0x0
    stw 0, 0x0(27)
    li 31, 0x0
L_8011FCB8:
    lwz 3, 0x244(30)
    bl fn_801EE434
    addi 29, 29, 0x1
    stw 31, 0x244(30)
    cmpwi 29, 0x3
    addi 30, 30, 0x4
    .4byte 0x4180FFE8 # blt .L_8011FCB8
    lwz 3, 0x250(27)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x250(27)
    lwz 3, 0x254(27)
    bl fn_801EE434
    li 0, 0x0
    mr 3, 27
    stw 0, 0x254(27)
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 28
    .4byte 0x4081000C # ble .L_8011FD10
    mr 3, 27
    bl dtor_80084580
L_8011FD10:
    mr 3, 27
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8011E748
    .4byte fn_8011ECC8

