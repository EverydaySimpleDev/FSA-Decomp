# Dispatch-cross-check singleton: 1 real FourCC actor vtable body
# (dtor fn_801267C8, ctor fn_80126828 already landed) plus 6 helper
# functions, landed as ONE byte-contiguous 8-function, 4,992-byte
# Track-A bundle (0x801267C8-0x80127B48). Found+verified via
# spanwalk.py and resolvefiles.py (1 fused-dump function). .ctors
# placement (0x8045BF9C-0x8045BFA0) found by brute-force scanning
# every currently-unclaimed .ctors gap. See project_fsa_dispatch_crosscheck_discovery.md.

.section extab, "a"
.balign 4
.global etb_800064B0
etb_800064B0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800064B0, 8

.global etb_800064B8
etb_800064B8:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800064B8, 8

.global etb_800064C0
etb_800064C0:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800064C0, 8

.global etb_800064C8
etb_800064C8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800064C8, 8

.global etb_800064D0
etb_800064D0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800064D0, 8

.global etb_800064D8
etb_800064D8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800064D8, 8

.global etb_800064E0
etb_800064E0:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800064E0, 8

.section extabindex, "a"
.balign 4
.global eti_80012B74
eti_80012B74:
    .4byte fn_801267C8
    .4byte 0x00000060
    .4byte etb_800064B0
.size eti_80012B74, 12

.global eti_80012B80
eti_80012B80:
    .4byte fn_80126828
    .4byte 0x00000224
    .4byte etb_800064B8
.size eti_80012B80, 12

.global eti_80012B8C
eti_80012B8C:
    .4byte fn_80126A4C
    .4byte 0x000004AC
    .4byte etb_800064C0
.size eti_80012B8C, 12

.global eti_80012B98
eti_80012B98:
    .4byte fn_80126F1C
    .4byte 0x0000016C
    .4byte etb_800064C8
.size eti_80012B98, 12

.global eti_80012BA4
eti_80012BA4:
    .4byte fn_80127088
    .4byte 0x000008D0
    .4byte etb_800064D0
.size eti_80012BA4, 12

.global eti_80012BB0
eti_80012BB0:
    .4byte fn_80127958
    .4byte 0x00000154
    .4byte etb_800064D8
.size eti_80012BB0, 12

.global eti_80012BBC
eti_80012BBC:
    .4byte fn_80127AAC
    .4byte 0x0000009C
    .4byte etb_800064E0
.size eti_80012BBC, 12

.text
.balign 4
.global fn_801267C8
.global fn_80126828
.global fn_80126A4C
.global fn_80126EF8
.global fn_80126F1C
.global fn_80127088
.global fn_80127958
.global fn_80127AAC

fn_801267C8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8012680C
    lis 5, lbl_8049E3A8@ha
    li 4, 0x0
    addi 0, 5, lbl_8049E3A8@l
    stw 0, 0x0(30)
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8012680C
    mr 3, 30
    bl dtor_80084580
L_8012680C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80126828:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BD160@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BD160@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80126878
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
L_80126878:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801268B0
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
L_801268B0:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801268E8
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
L_801268E8:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80126920
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
L_80126920:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80126958
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
L_80126958:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80126990
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
L_80126990:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801269C8
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
L_801269C8:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80126A00
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
L_80126A00:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80126A38
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
L_80126A38:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80126A4C:
    stwu 1, -0x60(1)
    mflr 0
    cmplwi 4, 0x10
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    stw 4, 0x230(3)
    .4byte 0x4181046C # bgt .L_80126EDC
    lis 3, jumptable_8049E478@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_8049E478@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x0
    stb 0, 0x259(31)
    .4byte 0x48000448 # b .L_80126EDC
    li 0, 0xff
    li 3, 0x1
    stw 0, 0x254(31)
    li 0, -0x1
    stb 3, 0x259(31)
    stb 3, 0x11d(31)
    stw 0, 0x23c(31)
    .4byte 0x48000428 # b .L_80126EDC
    bl fn_801283E8
    bl fn_8012824C
    .4byte 0x4800041C # b .L_80126EDC
    psq_l 1, 0xc(31), 0, 0
    addi 5, 1, 0x38
    lfs 0, 0x14(31)
    addi 3, 31, 0x2b4
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x40(1)
    lwz 4, 0x238(31)
    lwz 6, 0x4(31)
    bl fn_800FE3EC
    .4byte 0x480003F4 # b .L_80126EDC
    addi 3, 31, 0x27c
    li 4, 0x6
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x480003DC # b .L_80126EDC
    li 0, 0x0
    stw 0, 0x240(31)
    .4byte 0x480003D0 # b .L_80126EDC
    li 3, 0xff
    li 0, 0x0
    stw 3, 0x254(31)
    addi 3, 31, 0x27c
    li 4, 0x8
    li 5, 0x2
    stw 0, 0x244(31)
    li 6, 0x0
    lfs 0, 0xc(31)
    stfs 0, 0x264(31)
    lfs 0, 0x10(31)
    stfs 0, 0x268(31)
    lfs 0, 0x14(31)
    stfs 0, 0x26c(31)
    bl fn_801D22DC
    .4byte 0xC0029B18 # lfs f0, lbl_8053CAB8@sda21(r0)
    .4byte 0xC0229B1C # lfs f1, lbl_8053CABC@sda21(r0)
    stfs 0, 0x60(31)
    .4byte 0xC0029B20 # lfs f0, lbl_8053CAC0@sda21(r0)
    stfs 1, 0x64(31)
    .4byte 0xC0429B00 # lfs f2, lbl_8053CAA0@sda21(r0)
    stfs 0, 0x68(31)
    stfs 2, 0x6c(31)
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
    lbz 0, 0x258(31)
    cmplwi 0, 0x0
    .4byte 0x41820078 # beq .L_80126C2C
    psq_l 0, 0xc(31), 0, 0
    addi 4, 1, 0x8
    lfs 3, 0x14(31)
    li 5, 0x183
    .4byte 0xC0229B04 # lfs f1, lbl_8053CAA4@sda21(r0)
    li 6, 0x0
    psq_st 0, 0x0(4), 0, 0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    lfs 0, 0x8(1)
    li 10, 0x1
    stfs 3, 0x10(1)
    fadds 0, 0, 2
    stfs 0, 0x8(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x37c(31)
    addi 4, 1, 0x8
    .4byte 0xC0229B04 # lfs f1, lbl_8053CAA4@sda21(r0)
    li 5, 0x184
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x380(31)
L_80126C2C:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 30, 3
    bl GetRoomConfigRecord
    mr 4, 30
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    bl fn_801283E8
    bl fn_80128228
    .4byte 0x4800027C # b .L_80126EDC
    li 29, 0x0
    li 30, 0x1
L_80126C6C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    slw 0, 30, 29
    clrlwi 0, 0, 24
    lbz 3, 0x82(3)
    and. 0, 3, 0
    .4byte 0x41820028 # beq .L_80126CA8
    mr 3, 29
    bl fn_80237810
    mr 4, 3
    mr 3, 29
    li 5, 0x0
    bl fn_80236554
    mr 3, 29
    li 4, 0x180
    bl fn_80237524
L_80126CA8:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFBC # blt .L_80126C6C
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x90
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000214 # b .L_80126EDC
    psq_l 1, 0xc(31), 0, 0
    addi 5, 1, 0x2c
    lfs 0, 0x14(31)
    addi 3, 31, 0x2b4
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x34(1)
    lwz 4, 0x238(31)
    lwz 6, 0x4(31)
    bl fn_800FE3EC
    .4byte 0xC0229B08 # lfs f1, lbl_8053CAA8@sda21(r0)
    addi 3, 31, 0x2b4
    .4byte 0xC0029B04 # lfs f0, lbl_8053CAA4@sda21(r0)
    li 4, -0x1
    stfs 1, 0x44(1)
    li 5, 0x0
    li 6, 0x0
    stfs 1, 0x48(1)
    stfs 1, 0x4c(1)
    stfs 0, 0x260(31)
    bl fn_800FD894
    psq_l 1, 0xc(31), 0, 0
    subi 0, 3, 0x1
    lfs 0, 0x14(31)
    addi 5, 1, 0x14
    clrlwi 7, 0, 24
    addi 3, 1, 0x20
    psq_st 1, 0x0(5), 0, 0
    addi 4, 31, 0x2b4
    li 6, 0x1
    stfs 0, 0x1c(1)
    bl fn_800FDC70
    psq_l 0, 0x20(1), 0, 0
    lfs 2, 0x28(1)
    psq_st 0, 0x44(1), 0, 0
    lfs 1, 0x44(1)
    lfs 0, 0x48(1)
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    stfs 2, 0x44(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    stfs 2, 0x4c(1)
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lfs 0, 0xc(31)
    stfs 0, 0x264(31)
    lfs 0, 0x10(31)
    stfs 0, 0x268(31)
    lfs 0, 0x14(31)
    stfs 0, 0x26c(31)
    .4byte 0x48000138 # b .L_80126EDC
    addi 3, 31, 0x27c
    li 4, 0x6
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    li 0, 0x0
    stw 0, 0x250(31)
    .4byte 0x48000118 # b .L_80126EDC
    addi 3, 31, 0x27c
    li 4, 0x6
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    li 3, 0x78
    li 0, 0x0
    stw 3, 0x250(31)
    stw 0, 0x254(31)
    bl fn_801283E8
    bl fn_80127F90
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x270(31), 0, 0
    stfs 0, 0x278(31)
    lbz 0, 0x258(31)
    cmplwi 0, 0x0
    .4byte 0x418200D0 # beq .L_80126EDC
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xee
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000B8 # b .L_80126EDC
    li 0, 0x0
    stw 0, 0x250(31)
    .4byte 0x480000AC # b .L_80126EDC
    bl SpatialRegistry_GetBase
    lis 4, 0x5350
    addi 4, 4, 0x4652
    bl fn_801F7A08
    cmpwi 3, 0x0
    .4byte 0x40800094 # bge .L_80126EDC
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    slwi 29, 3, 27
    bl SpatialRegistry_GetBase
    lis 4, 0x5350
    lwz 5, 0x4(31)
    mr 7, 29
    addi 6, 31, 0x270
    addi 4, 4, 0x4652
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    bl fn_801283E8
    bl fn_80128074
    .4byte 0x4800004C # b .L_80126EDC
    lwz 4, 0x37c(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80126EB4
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80126EB4:
    lwz 4, 0x380(31)
    cmplwi 4, 0x0
    .4byte 0x41820018 # beq .L_80126ED4
    lwz 3, 0xf4(4)
    li 0, 0x1
    ori 3, 3, 0x1
    stw 3, 0xf4(4)
    stw 0, 0x24(4)
L_80126ED4:
    mr 3, 31
    bl fn_801F3668
L_80126EDC:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80126EF8:
    lwz 0, 0x230(3)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_80126F0C
    cmpwi 0, 0xc
    .4byte 0x4082000C # bne .L_80126F14
L_80126F0C:
    li 3, 0x1
    blr
L_80126F14:
    li 3, 0x0
    blr

fn_80126F1C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 3
    bl fn_801F5778
    li 0, -0x1
    addi 9, 1, 0x8
    stw 0, 0x18(1)
    li 10, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_80126FAC
L_80126F4C:
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
L_80126FAC:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80126F4C
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x18(1)
    stw 5, 0x1c(1)
    stw 5, 0x20(1)
    stb 5, 0x24(1)
    stb 5, 0x25(1)
    stb 5, 0x26(1)
    stb 4, 0x27(1)
    stb 4, 0x28(1)
    stb 5, 0x29(1)
    stb 5, 0x2a(1)
    stb 5, 0x2b(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 4, 0x2e(1)
    stw 3, 0x30(1)
    stb 4, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stw 6, 0x38(1)
    stw 5, 0x3c(1)
    stw 0, 0x40(1)
    lwz 0, 0x230(31)
    cmpwi 0, 0xd
    .4byte 0x4182000C # beq .L_80127034
    cmpwi 0, 0xe
    .4byte 0x40820014 # bne .L_80127044
L_80127034:
    lwz 0, 0x254(31)
    stb 0, 0x1c(1)
    stb 0, 0x1d(1)
    stb 0, 0x1e(1)
L_80127044:
    .4byte 0xC0229B04 # lfs f1, lbl_8053CAA4@sda21(r0)
    lis 3, lbl_80464FAC@ha
    lwz 5, 0x28c(31)
    addi 4, 3, lbl_80464FAC@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x242
    addi 6, 1, 0x8
    li 7, 0x407
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80127088:
    stwu 1, -0xc0(1)
    mflr 0
    stw 0, 0xc4(1)
    stw 31, 0xbc(1)
    mr 31, 3
    stw 30, 0xb8(1)
    bl fn_801F5930
    .4byte 0xC0A29B04 # lfs f5, lbl_8053CAA4@sda21(r0)
    stfs 5, 0x260(31)
    lfs 1, 0x60(31)
    stfs 1, 0x90(1)
    lfs 4, 0x64(31)
    stfs 4, 0x94(1)
    lfs 2, 0x68(31)
    stfs 2, 0x98(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x9c(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x90(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x98(1)
    fadds 0, 3, 2
    stfs 1, 0x94(1)
    stfs 0, 0x9c(1)
    lwz 0, 0x230(31)
    cmplwi 0, 0x10
    .4byte 0x41810808 # bgt .L_80127904
    lis 3, jumptable_8049E4BC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049E4BC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x408107E4 # ble .L_80127904
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_8012715C
    mr 3, 31
    li 4, 0x1
    bl fn_80126A4C
    mr 3, 31
    li 4, 0xb
    bl fn_80126A4C
    .4byte 0x480007AC # b .L_80127904
L_8012715C:
    bl GetRoomConfigRecord
    lwz 4, 0x234(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820798 # beq .L_80127904
    mr 3, 31
    li 4, 0x1
    bl fn_80126A4C
    .4byte 0x48000788 # b .L_80127904
    bl fn_801283E8
    bl fn_801280F8
    clrlwi. 0, 3, 24
    .4byte 0x40820778 # bne .L_80127904
    bl fn_801283E8
    bl fn_801282E0
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801271B0
    mr 3, 31
    li 4, 0xc
    bl fn_80126A4C
    .4byte 0x48000758 # b .L_80127904
L_801271B0:
    lfs 1, 0x60(31)
    addi 3, 1, 0x68
    li 6, 0x1
    li 7, 0x0
    stfs 1, 0x68(1)
    lfs 4, 0x64(31)
    stfs 4, 0x6c(1)
    lfs 2, 0x68(31)
    stfs 2, 0x70(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x74(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x68(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x70(1)
    fadds 0, 3, 2
    stfs 1, 0x6c(1)
    stfs 0, 0x74(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x4080000C # bge .L_80127228
    li 30, -0x1
    .4byte 0x48000070 # b .L_80127294
L_80127228:
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8012723C
    li 30, -0x1
    .4byte 0x4800005C # b .L_80127294
L_8012723C:
    psq_l 0, 0xc(31), 0, 0
    addi 7, 1, 0x84
    lfs 2, 0x14(31)
    mr 3, 30
    psq_st 0, 0x78(1), 0, 0
    li 4, 0x2b7
    .4byte 0xC0029B14 # lfs f0, lbl_8053CAB4@sda21(r0)
    li 8, 0x28
    lfs 1, 0x7c(1)
    lwz 5, 0x198(31)
    fsubs 0, 1, 0
    lwz 6, 0x4(31)
    stfs 2, 0x80(1)
    stfs 0, 0x7c(1)
    psq_l 0, 0x78(1), 0, 0
    stfs 2, 0x8c(1)
    psq_st 0, 0x0(7), 0, 0
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_80127290
    .4byte 0x48000008 # b .L_80127294
L_80127290:
    li 30, -0x1
L_80127294:
    cmpwi 30, 0x0
    .4byte 0x4180066C # blt .L_80127904
    stw 30, 0x23c(31)
    mr 3, 31
    li 4, 0x2
    bl fn_80126A4C
    .4byte 0x48000658 # b .L_80127904
    lwz 3, 0x23c(31)
    addi 4, 1, 0x90
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x23c(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820628 # beq .L_80127904
    mr 3, 31
    li 4, 0x1
    bl fn_80126A4C
    .4byte 0x48000618 # b .L_80127904
    lwz 3, 0x23c(31)
    addi 4, 1, 0x90
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x23c(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418205E8 # beq .L_80127904
    mr 3, 31
    li 4, 0x4
    bl fn_80126A4C
    .4byte 0x480005D8 # b .L_80127904
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4181000C # bgt .L_80127344
    li 0, 0x1
    .4byte 0x480000DC # b .L_8012741C
L_80127344:
    .4byte 0xC0029B08 # lfs f0, lbl_8053CAA8@sda21(r0)
    li 0, 0x0
    addi 4, 1, 0x5c
    .4byte 0xC0229B10 # lfs f1, lbl_8053CAB0@sda21(r0)
    stfs 0, 0x50(1)
    addi 3, 31, 0x2b4
    addi 5, 1, 0x50
    addi 6, 1, 0xc
    stfs 0, 0x54(1)
    addi 7, 1, 0x8
    li 8, 0x200
    stfs 0, 0x58(1)
    stfs 5, 0x260(31)
    sth 0, 0x8(1)
    lwz 0, 0x4(31)
    stw 0, 0xc(1)
    psq_l 2, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 2, 0x0(4), 0, 0
    stfs 0, 0x64(1)
    bl fn_800FDEA0
    cmpwi 3, 0x3
    .4byte 0x4082000C # bne .L_801273A8
    li 0, 0x1
    .4byte 0x48000078 # b .L_8012741C
L_801273A8:
    lfs 0, 0x50(1)
    stfs 0, 0x3c(31)
    lfs 0, 0x54(1)
    stfs 0, 0x40(31)
    lfs 0, 0x58(1)
    stfs 0, 0x44(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lha 0, 0x8(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    lwz 0, 0x284(31)
    cmpw 3, 0
    .4byte 0x41820024 # beq .L_80127418
    mr 4, 3
    addi 3, 31, 0x27c
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229B08 # lfs f1, lbl_8053CAA8@sda21(r0)
    addi 3, 31, 0x27c
    bl fn_801D1F14
L_80127418:
    li 0, 0x0
L_8012741C:
    clrlwi. 0, 0, 24
    .4byte 0x418204E4 # beq .L_80127904
    mr 3, 31
    li 4, 0x6
    bl fn_80126A4C
    .4byte 0x480004D4 # b .L_80127904
    lwz 3, 0x240(31)
    addi 0, 3, 0x1
    stw 0, 0x240(31)
    lwz 0, 0x240(31)
    cmpwi 0, 0x1e
    .4byte 0x418004BC # blt .L_80127904
    mr 3, 31
    li 4, 0x7
    bl fn_80126A4C
    .4byte 0x480004AC # b .L_80127904
    lwz 4, 0x244(31)
    lis 3, 0x8889
    subi 3, 3, 0x7777
    addi 0, 4, 0x1
    stw 0, 0x244(31)
    lwz 0, 0x244(31)
    subfic 0, 0, 0x3c
    mulli 0, 0, 0xff
    mulhw 3, 3, 0
    add 0, 3, 0
    srawi 0, 0, 5
    srwi 3, 0, 31
    add 0, 0, 3
    stw 0, 0x254(31)
    lwz 0, 0x244(31)
    cmpwi 0, 0x3c
    .4byte 0x41800468 # blt .L_80127904
    mr 3, 31
    li 4, 0x8
    bl fn_80126A4C
    .4byte 0x48000458 # b .L_80127904
    .4byte 0xC0029B08 # lfs f0, lbl_8053CAA8@sda21(r0)
    lis 0, 0x1
    stfs 0, 0x44(1)
    stfs 0, 0x48(1)
    stfs 0, 0x4c(1)
    lwz 3, 0x248(31)
    addi 3, 3, 0x258
    stw 3, 0x248(31)
    lwz 3, 0x248(31)
    cmpw 3, 0
    .4byte 0x4180000C # blt .L_801274E4
    li 0, 0x0
    stw 0, 0x248(31)
L_801274E4:
    lwz 0, 0x248(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0229B0C # lfs f1, lbl_8053CAAC@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmadds 1, 1, 0, 1
    stfs 1, 0x4c(1)
    lfs 0, 0x26c(31)
    fadds 0, 0, 1
    stfs 0, 0x14(31)
    lbz 0, 0x258(31)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_8012756C
    psq_l 1, 0xc(31), 0, 0
    addi 4, 1, 0x44
    lfs 2, 0x14(31)
    li 5, 0x0
    .4byte 0xC0029B00 # lfs f0, lbl_8053CAA0@sda21(r0)
    li 6, -0x1
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x1
    lfs 1, 0x44(1)
    stfs 2, 0x4c(1)
    fadds 0, 1, 0
    stfs 0, 0x44(1)
    lwz 3, 0x37c(31)
    bl fn_8013CB44
    lwz 3, 0x380(31)
    addi 4, 1, 0x44
    li 5, 0x0
    li 6, -0x1
    li 7, 0x1
    bl fn_8013CB44
L_8012756C:
    bl fn_801283E8
    bl fn_801280F8
    clrlwi. 0, 3, 24
    .4byte 0x4082038C # bne .L_80127904
    lfs 1, 0x60(31)
    addi 3, 1, 0x1c
    li 6, 0x1
    li 7, 0x0
    stfs 1, 0x1c(1)
    lfs 4, 0x64(31)
    stfs 4, 0x20(1)
    lfs 2, 0x68(31)
    stfs 2, 0x24(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x28(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x1c(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x24(1)
    fadds 0, 3, 2
    stfs 1, 0x20(1)
    stfs 0, 0x28(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 30, 3
    .4byte 0x4080000C # bge .L_801275F4
    li 30, -0x1
    .4byte 0x48000070 # b .L_80127660
L_801275F4:
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80127608
    li 30, -0x1
    .4byte 0x4800005C # b .L_80127660
L_80127608:
    psq_l 0, 0xc(31), 0, 0
    addi 7, 1, 0x38
    lfs 2, 0x14(31)
    mr 3, 30
    psq_st 0, 0x2c(1), 0, 0
    li 4, 0x3fb
    .4byte 0xC0029B14 # lfs f0, lbl_8053CAB4@sda21(r0)
    li 8, 0x28
    lfs 1, 0x30(1)
    lwz 5, 0x198(31)
    fsubs 0, 1, 0
    lwz 6, 0x4(31)
    stfs 2, 0x34(1)
    stfs 0, 0x30(1)
    psq_l 0, 0x2c(1), 0, 0
    stfs 2, 0x40(1)
    psq_st 0, 0x0(7), 0, 0
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8012765C
    .4byte 0x48000008 # b .L_80127660
L_8012765C:
    li 30, -0x1
L_80127660:
    cmpwi 30, 0x0
    .4byte 0x418002A0 # blt .L_80127904
    stw 30, 0x23c(31)
    mr 3, 31
    li 4, 0x9
    bl fn_80126A4C
    .4byte 0x4800028C # b .L_80127904
    .4byte 0xC0029B08 # lfs f0, lbl_8053CAA8@sda21(r0)
    lis 0, 0x1
    stfs 0, 0x10(1)
    stfs 0, 0x14(1)
    stfs 0, 0x18(1)
    lwz 3, 0x248(31)
    addi 3, 3, 0x258
    stw 3, 0x248(31)
    lwz 3, 0x248(31)
    cmpw 3, 0
    .4byte 0x4180000C # blt .L_801276B0
    li 0, 0x0
    stw 0, 0x248(31)
L_801276B0:
    lwz 0, 0x248(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0229B0C # lfs f1, lbl_8053CAAC@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmadds 1, 1, 0, 1
    stfs 1, 0x18(1)
    lfs 0, 0x26c(31)
    fadds 0, 0, 1
    stfs 0, 0x14(31)
    lbz 0, 0x258(31)
    cmplwi 0, 0x0
    .4byte 0x41820054 # beq .L_80127738
    psq_l 1, 0xc(31), 0, 0
    addi 4, 1, 0x10
    lfs 2, 0x14(31)
    li 5, 0x0
    .4byte 0xC0029B00 # lfs f0, lbl_8053CAA0@sda21(r0)
    li 6, -0x1
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x1
    lfs 1, 0x10(1)
    stfs 2, 0x18(1)
    fadds 0, 1, 0
    stfs 0, 0x10(1)
    lwz 3, 0x37c(31)
    bl fn_8013CB44
    lwz 3, 0x380(31)
    addi 4, 1, 0x10
    li 5, 0x0
    li 6, -0x1
    li 7, 0x1
    bl fn_8013CB44
L_80127738:
    lwz 3, 0x23c(31)
    addi 4, 1, 0x90
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x23c(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418201A0 # beq .L_80127904
    bl fn_801283E8
    bl fn_801281A4
    .4byte 0x48000194 # b .L_80127904
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 3, 0x254(31)
    subi 0, 3, 0xa
    stw 0, 0x254(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1e
    .4byte 0x41800170 # blt .L_80127904
    mr 3, 31
    li 4, 0x10
    bl fn_80126A4C
    .4byte 0x48000160 # b .L_80127904
    mr 3, 31
    li 4, 0x8
    bl fn_80126A4C
    .4byte 0x48000150 # b .L_80127904
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x3c
    .4byte 0x41800138 # blt .L_80127904
    mr 3, 31
    li 4, 0xd
    bl fn_80126A4C
    .4byte 0x48000128 # b .L_80127904
    lwz 5, 0x250(31)
    lis 4, 0x4330
    stw 4, 0xa0(1)
    lis 3, lbl_80539D44@ha
    subi 0, 5, 0x1
    .4byte 0xC8629B28 # lfd f3, lbl_8053CAC8@sda21(r0)
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    lfs 0, lbl_80539D44@l(3)
    xoris 0, 0, 0x8000
    stw 0, 0xa4(1)
    lfd 1, 0xa0(1)
    fsubs 1, 1, 3
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_80127828
    li 0, 0xff
    stw 0, 0x254(31)
    .4byte 0x4800004C # b .L_80127870
L_80127828:
    fdivs 2, 5, 1
    lwz 0, 0x254(31)
    stw 4, 0xa0(1)
    subfic 3, 0, 0xff
    xoris 0, 0, 0x8000
    xoris 3, 3, 0x8000
    stw 3, 0xa4(1)
    lfd 0, 0xa0(1)
    stw 0, 0xac(1)
    fsubs 1, 0, 3
    stw 4, 0xa8(1)
    lfd 0, 0xa8(1)
    fsubs 0, 0, 3
    fmadds 0, 2, 1, 0
    fctiwz 0, 0
    stfd 0, 0xb0(1)
    lwz 0, 0xb4(1)
    stw 0, 0x254(31)
L_80127870:
    lwz 4, 0x250(31)
    lis 0, 0x4330
    stw 0, 0xb0(1)
    lis 3, lbl_80539D44@ha
    xoris 0, 4, 0x8000
    .4byte 0xC8429B28 # lfd f2, lbl_8053CAC8@sda21(r0)
    stw 0, 0xb4(1)
    lfs 0, lbl_80539D44@l(3)
    lfd 1, 0xb0(1)
    lfs 3, 0x270(31)
    fsubs 2, 1, 2
    fcmpo cr0, 2, 0
    .4byte 0x4080000C # bge .L_801278AC
    stfs 3, 0xc(31)
    .4byte 0x4800001C # b .L_801278C4
L_801278AC:
    .4byte 0xC0029B04 # lfs f0, lbl_8053CAA4@sda21(r0)
    lfs 1, 0xc(31)
    fdivs 2, 0, 2
    fsubs 0, 3, 1
    fmadds 0, 2, 0, 1
    stfs 0, 0xc(31)
L_801278C4:
    lwz 0, 0x250(31)
    cmpwi 0, 0x0
    .4byte 0x41810038 # bgt .L_80127904
    mr 3, 31
    li 4, 0xe
    bl fn_80126A4C
    .4byte 0x48000028 # b .L_80127904
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x3c
    .4byte 0x41800010 # blt .L_80127904
    mr 3, 31
    li 4, 0xf
    bl fn_80126A4C
L_80127904:
    lbz 0, 0x259(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80127920
    lwz 4, 0x4(31)
    addi 3, 1, 0x90
    lwz 5, 0x198(31)
    bl fn_80239914
L_80127920:
    lfs 0, 0x260(31)
    addi 3, 31, 0x27c
    stfs 0, 0x2ac(31)
    bl fn_801D1C18
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    lwz 0, 0xc4(1)
    lwz 31, 0xbc(1)
    lwz 30, 0xb8(1)
    mtlr 0
    addi 1, 1, 0xc0
    blr

fn_80127958:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    lwz 0, 0x90(31)
    clrlwi. 0, 0, 31
    .4byte 0x4182000C # beq .L_80127984
    li 0, 0x1
    stb 0, 0x258(31)
L_80127984:
    lwz 0, 0x90(31)
    lis 3, lbl_8049E400@ha
    addi 4, 3, lbl_8049E400@l
    .4byte 0xC0629B30 # lfs f3, lbl_8053CAD0@sda21(r0)
    extrwi 0, 0, 5, 5
    .4byte 0xC0429B1C # lfs f2, lbl_8053CABC@sda21(r0)
    stw 0, 0x234(31)
    addi 3, 31, 0x27c
    .4byte 0xC0229B34 # lfs f1, lbl_8053CAD4@sda21(r0)
    li 5, 0x9
    lwz 0, 0x90(31)
    .4byte 0xC0029B00 # lfs f0, lbl_8053CAA0@sda21(r0)
    extrwi 0, 0, 8, 16
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
    bl fn_801D2608
    addi 3, 31, 0x27c
    li 4, 0x6
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229B08 # lfs f1, lbl_8053CAA8@sda21(r0)
    addi 3, 31, 0x27c
    bl fn_801D1F14
    li 0, 0x0
    stb 0, 0x2b6(31)
    stb 0, 0x2b7(31)
    stb 0, 0x2b5(31)
    stb 0, 0x11d(31)
    bl fn_801283E8
    mr 4, 31
    bl fn_80128398
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40810040 # ble .L_80127A98
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_80127A98
    bl GetRoomConfigRecord
    lwz 4, 0x234(31)
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80127A98
    mr 3, 31
    li 4, 0x1
    bl fn_80126A4C
L_80127A98:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80127AAC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820064 # beq .L_80127B2C
    lis 3, lbl_8049E424@ha
    addi 0, 3, lbl_8049E424@l
    stw 0, 0x0(30)
    lwz 3, 0x37c(30)
    bl fn_801EE434
    lwz 3, 0x380(30)
    bl fn_801EE434
    li 3, 0x0
    addic. 0, 30, 0x27c
    stw 3, 0x37c(30)
    stw 3, 0x380(30)
    .4byte 0x41820018 # beq .L_80127B10
    addic. 0, 30, 0x2a0
    .4byte 0x41820010 # beq .L_80127B10
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x2a0(30)
L_80127B10:
    mr 3, 30
    li 4, 0x0
    bl dtor_801F593C
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80127B2C
    mr 3, 30
    bl dtor_80084580
L_80127B2C:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80126828

