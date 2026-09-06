.section extab, "a"
.balign 4
.global etb_800066E4
etb_800066E4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800066E4, 8

.global etb_800066EC
etb_800066EC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800066EC, 8

.global etb_800066F4
etb_800066F4:
    .4byte 0x110A0000
    .4byte 0x00000000
.size etb_800066F4, 8

.global etb_800066FC
etb_800066FC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800066FC, 8

.global etb_80006704
etb_80006704:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006704, 8

.global etb_8000670C
etb_8000670C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000670C, 8

.global etb_80006714
etb_80006714:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006714, 8

.global etb_8000671C
etb_8000671C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000671C, 8

.section extabindex, "a"
.balign 4
.global eti_80012EA4
eti_80012EA4:
    .4byte fn_8012E7DC
    .4byte 0x00000224
    .4byte etb_800066E4
.size eti_80012EA4, 12

.global eti_80012EB0
eti_80012EB0:
    .4byte fn_8012EA00
    .4byte 0x00000060
    .4byte etb_800066EC
.size eti_80012EB0, 12

.global eti_80012EBC
eti_80012EBC:
    .4byte fn_8012EA60
    .4byte 0x000002E0
    .4byte etb_800066F4
.size eti_80012EBC, 12

.global eti_80012EC8
eti_80012EC8:
    .4byte fn_8012ED40
    .4byte 0x000000A4
    .4byte etb_800066FC
.size eti_80012EC8, 12

.global eti_80012ED4
eti_80012ED4:
    .4byte fn_8012EDE4
    .4byte 0x00000224
    .4byte etb_80006704
.size eti_80012ED4, 12

.global eti_80012EE0
eti_80012EE0:
    .4byte fn_8012F02C
    .4byte 0x000000A4
    .4byte etb_8000670C
.size eti_80012EE0, 12

.global eti_80012EEC
eti_80012EEC:
    .4byte fn_8012F0D0
    .4byte 0x00000048
    .4byte etb_80006714
.size eti_80012EEC, 12

.global eti_80012EF8
eti_80012EF8:
    .4byte fn_8012F118
    .4byte 0x00000060
    .4byte etb_8000671C
.size eti_80012EF8, 12

.text
.balign 4
.global fn_8012E7DC
.global fn_8012EA00
.global fn_8012EA60
.global fn_8012ED40
.global fn_8012EDE4
.global fn_8012F008
.global fn_8012F02C
.global fn_8012F0D0
.global fn_8012F118

fn_8012E7DC:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BDAF0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BDAF0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012E82C
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
L_8012E82C:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012E864
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
L_8012E864:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012E89C
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
L_8012E89C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012E8D4
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
L_8012E8D4:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012E90C
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
L_8012E90C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012E944
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
L_8012E944:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012E97C
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
L_8012E97C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012E9B4
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
L_8012E9B4:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012E9EC
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
L_8012E9EC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012EA00:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8012EA44
    lis 5, lbl_8049E8F8@ha
    li 4, 0x0
    addi 0, 5, lbl_8049E8F8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8012EA44
    mr 3, 30
    bl dtor_80084580
L_8012EA44:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012EA60:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stfd 29, 0x20(1)
    psq_st 29, 0x28(1), 0, 0
    stfd 28, 0x10(1)
    psq_st 28, 0x18(1), 0, 0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 31, 3
    bl fn_801F5930
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x418201D8 # beq .L_8012EC7C
    .4byte 0x40800260 # bge .L_8012ED08
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8012EABC
    .4byte 0x48000254 # b .L_8012ED08
    .4byte 0x48000250 # b .L_8012ED08
L_8012EABC:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_8012EAF4
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820218 # beq .L_8012ED08
L_8012EAF4:
    lfs 31, 0x60(31)
    li 30, 0x0
    lfs 0, 0xc(31)
    lfs 29, 0x68(31)
    lfs 30, 0x64(31)
    fadds 31, 31, 0
    lfs 1, 0x10(31)
    fadds 29, 29, 0
    lfs 28, 0x6c(31)
    fadds 30, 30, 1
    fadds 28, 28, 1
L_8012EB20:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 30
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and. 0, 3, 0
    .4byte 0x418200B4 # beq .L_8012EBEC
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8012EB54
    li 0, 0x0
    .4byte 0x480000AC # b .L_8012EBFC
L_8012EB54:
    mr 3, 30
    bl fn_8023EA28
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8012EB6C
    li 0, 0x0
    .4byte 0x48000094 # b .L_8012EBFC
L_8012EB6C:
    mr 3, 30
    bl fn_8023561C
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8012EB84
    li 0, 0x0
    .4byte 0x4800007C # b .L_8012EBFC
L_8012EB84:
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8012EB9C
    li 0, 0x0
    .4byte 0x48000064 # b .L_8012EBFC
L_8012EB9C:
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x0(3)
    li 0, 0x0
    fcmpo cr0, 1, 31
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_8012EBDC
    lfs 0, 0x4(3)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_8012EBDC
    fcmpo cr0, 1, 29
    .4byte 0x40800010 # bge .L_8012EBDC
    fcmpo cr0, 0, 28
    .4byte 0x40800008 # bge .L_8012EBDC
    li 0, 0x1
L_8012EBDC:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8012EBEC
    li 0, 0x0
    .4byte 0x48000014 # b .L_8012EBFC
L_8012EBEC:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF2C # blt .L_8012EB20
    li 0, 0x1
L_8012EBFC:
    clrlwi. 0, 0, 24
    .4byte 0x41820108 # beq .L_8012ED08
    li 0, 0x2
    stw 0, 0x230(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_8012EC2C
    .4byte 0x40800008 # bge .L_8012EC20
    .4byte 0x480000EC # b .L_8012ED08
L_8012EC20:
    cmpwi 0, 0x3
    .4byte 0x408000E4 # bge .L_8012ED08
    .4byte 0x48000030 # b .L_8012EC58
L_8012EC2C:
    bl fn_8023077C
    bl fn_80119DD0
    li 4, 0x3c
    li 5, 0x0
    li 6, 0x1
    li 7, 0x0
    li 8, 0x1
    li 9, 0x5a
    li 10, 0x0
    bl fn_80119998
    .4byte 0x480000B4 # b .L_8012ED08
L_8012EC58:
    bl GetRoomConfigRecord
    lwz 4, 0x234(31)
    lwz 5, 0x238(31)
    bl fn_802D9FF4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xf
    li 5, 0x0
    bl fn_80136798
    .4byte 0x48000090 # b .L_8012ED08
L_8012EC7C:
    lwz 3, 0x23c(31)
    addi 0, 3, 0x1
    stw 0, 0x23c(31)
    lwz 0, 0x23c(31)
    cmpwi 0, 0x78
    .4byte 0x40820078 # bne .L_8012ED08
    li 0, 0x2
    stw 0, 0x230(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_8012ECBC
    .4byte 0x40800008 # bge .L_8012ECB0
    .4byte 0x4800005C # b .L_8012ED08
L_8012ECB0:
    cmpwi 0, 0x3
    .4byte 0x40800054 # bge .L_8012ED08
    .4byte 0x48000030 # b .L_8012ECE8
L_8012ECBC:
    bl fn_8023077C
    bl fn_80119DD0
    li 4, 0x3c
    li 5, 0x0
    li 6, 0x1
    li 7, 0x0
    li 8, 0x1
    li 9, 0x5a
    li 10, 0x0
    bl fn_80119998
    .4byte 0x48000024 # b .L_8012ED08
L_8012ECE8:
    bl GetRoomConfigRecord
    lwz 4, 0x234(31)
    lwz 5, 0x238(31)
    bl fn_802D9FF4
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0xf
    li 5, 0x0
    bl fn_80136798
L_8012ED08:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    psq_l 29, 0x28(1), 0, 0
    lfd 29, 0x20(1)
    psq_l 28, 0x18(1), 0, 0
    lfd 28, 0x10(1)
    lwz 31, 0xc(1)
    lwz 0, 0x54(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_8012ED40:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    lwz 0, 0x90(31)
    .4byte 0xC0629CC8 # lfs f3, lbl_8053CC68@sda21(r0)
    extrwi 0, 0, 4, 20
    .4byte 0xC0429CCC # lfs f2, lbl_8053CC6C@sda21(r0)
    stw 0, 0x234(31)
    .4byte 0xC0229CD0 # lfs f1, lbl_8053CC70@sda21(r0)
    lwz 0, 0x90(31)
    .4byte 0xC0029CD4 # lfs f0, lbl_8053CC74@sda21(r0)
    extrwi 0, 0, 4, 16
    stw 0, 0x238(31)
    stfs 3, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
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
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012EDE4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BDBF0@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BDBF0@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012EE34
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
L_8012EE34:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012EE6C
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
L_8012EE6C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012EEA4
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
L_8012EEA4:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012EEDC
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
L_8012EEDC:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012EF14
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
L_8012EF14:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012EF4C
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
L_8012EF4C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012EF84
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
L_8012EF84:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012EFBC
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
L_8012EFBC:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8012EFF4
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
L_8012EFF4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012F008:
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8012F01C
    .4byte 0x40800010 # bge .L_8012F024
    .4byte 0x4800000C # b .L_8012F024
L_8012F01C:
    li 3, 0x1
    blr
L_8012F024:
    li 3, 0x0
    blr

fn_8012F02C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5930
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x41820070 # beq .L_8012F0BC
    .4byte 0x4080006C # bge .L_8012F0BC
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8012F060
    .4byte 0x48000060 # b .L_8012F0BC
L_8012F060:
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226850
    lhz 0, 0x234(31)
    clrlwi 3, 3, 16
    cmplw 0, 3
    .4byte 0x41820044 # beq .L_8012F0BC
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x40810020 # ble .L_8012F0B4
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
L_8012F0B4:
    li 0, 0x1
    stw 0, 0x230(31)
L_8012F0BC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012F0D0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    lwz 4, 0x4(31)
    addi 3, 31, 0xc
    bl fn_80226850
    sth 3, 0x234(31)
    bl fn_8012F554
    mr 4, 31
    bl fn_8012F530
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8012F118:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8012F15C
    lis 5, lbl_8049E950@ha
    li 4, 0x0
    addi 0, 5, lbl_8049E950@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8012F15C
    mr 3, 30
    bl dtor_80084580
L_8012F15C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8012E7DC
    .4byte fn_8012EDE4
