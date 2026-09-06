# Fresh project-wide gap hunt continuation: 12 functions, 8,236 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_80005E20
etb_80005E20:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005E20, 8

.global etb_80005E28
etb_80005E28:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005E28, 8

.global etb_80005E30
etb_80005E30:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80005E30, 8

.global etb_80005E38
etb_80005E38:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80005E38, 8

.global etb_80005E40
etb_80005E40:
    .4byte 0x304A0000
    .4byte 0x00000000
.size etb_80005E40, 8

.global etb_80005E48
etb_80005E48:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005E48, 8

.global etb_80005E50
etb_80005E50:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80005E50, 8

.global etb_80005E58
etb_80005E58:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80005E58, 8

.global etb_80005E60
etb_80005E60:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80005E60, 8

.global etb_80005E68
etb_80005E68:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80005E68, 8

.section extabindex, "a"
.balign 4
.global eti_800122E0
eti_800122E0:
    .4byte fn_80113564
    .4byte 0x00000224
    .4byte etb_80005E20
.size eti_800122E0, 12

.global eti_800122EC
eti_800122EC:
    .4byte fn_80113790
    .4byte 0x000001CC
    .4byte etb_80005E28
.size eti_800122EC, 12

.global eti_800122F8
eti_800122F8:
    .4byte fn_8011395C
    .4byte 0x000001F8
    .4byte etb_80005E30
.size eti_800122F8, 12

.global eti_80012304
eti_80012304:
    .4byte fn_80113B54
    .4byte 0x00000344
    .4byte etb_80005E38
.size eti_80012304, 12

.global eti_80012310
eti_80012310:
    .4byte fn_80113EC4
    .4byte 0x0000099C
    .4byte etb_80005E40
.size eti_80012310, 12

.global eti_8001231C
eti_8001231C:
    .4byte fn_80114860
    .4byte 0x000003BC
    .4byte etb_80005E48
.size eti_8001231C, 12

.global eti_80012328
eti_80012328:
    .4byte fn_80114C1C
    .4byte 0x0000007C
    .4byte etb_80005E50
.size eti_80012328, 12

.global eti_80012334
eti_80012334:
    .4byte fn_80114C98
    .4byte 0x000005B0
    .4byte etb_80005E58
.size eti_80012334, 12

.global eti_80012340
eti_80012340:
    .4byte fn_80115248
    .4byte 0x000001E8
    .4byte etb_80005E60
.size eti_80012340, 12

.global eti_8001234C
eti_8001234C:
    .4byte fn_80115430
    .4byte 0x00000160
    .4byte etb_80005E68
.size eti_8001234C, 12

.text
.balign 4
.global fn_80113564
.global fn_80113788
.global fn_80113790
.global fn_8011395C
.global fn_80113B54
.global fn_80113E98
.global fn_80113EC4
.global fn_80114860
.global fn_80114C1C
.global fn_80114C98
.global fn_80115248
.global fn_80115430

fn_80113564:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BC0F8@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BC0F8@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801135B4
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
L_801135B4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801135EC
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
L_801135EC:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80113624
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
L_80113624:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011365C
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
L_8011365C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80113694
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
L_80113694:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_801136CC
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
L_801136CC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80113704
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
L_80113704:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011373C
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
L_8011373C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80113774
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
L_80113774:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80113788:
    lwz 3, 0x23c(3)
    blr

fn_80113790:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stw 31, 0x8c(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    .4byte 0x4081019C # ble .L_80113948
    li 0, -0x1
    addi 9, 1, 0x44
    stw 0, 0x54(1)
    li 10, 0x0
    stw 0, 0x58(1)
    .4byte 0x48000064 # b .L_80113828
L_801137C8:
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
L_80113828:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801137C8
    .4byte 0xC02296FC # lfs f1, lbl_8053C69C@sda21(r0)
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    fmr 2, 1
    stw 7, 0x54(1)
    fmr 3, 1
    addi 3, 1, 0x14
    stw 6, 0x58(1)
    stw 6, 0x5c(1)
    stb 6, 0x60(1)
    stb 6, 0x61(1)
    stb 6, 0x62(1)
    stb 5, 0x63(1)
    stb 5, 0x64(1)
    stb 6, 0x65(1)
    stb 6, 0x66(1)
    stb 6, 0x67(1)
    stb 6, 0x68(1)
    stb 6, 0x69(1)
    stb 5, 0x6a(1)
    stw 4, 0x6c(1)
    stb 5, 0x70(1)
    stb 6, 0x71(1)
    stb 6, 0x72(1)
    stw 7, 0x74(1)
    stw 6, 0x78(1)
    stw 0, 0x7c(1)
    bl PSMTXTrans
    .4byte 0xC02296FC # lfs f1, lbl_8053C69C@sda21(r0)
    addi 5, 1, 0x14
    .4byte 0xC0429700 # lfs f2, lbl_8053C6A0@sda21(r0)
    li 6, 0x0
    .4byte 0xC00296F0 # lfs f0, lbl_8053C690@sda21(r0)
    li 3, -0x1
    stfs 2, 0x14(1)
    li 0, 0x1
    addi 4, 1, 0x8
    stfs 1, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 1, 0x24(1)
    stfs 0, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 1, 0x34(1)
    stfs 1, 0x38(1)
    stfs 2, 0x3c(1)
    lwz 7, 0x248(31)
    stb 6, 0x58(1)
    stb 6, 0x59(1)
    stb 6, 0x5a(1)
    stb 7, 0x5b(1)
    stw 5, 0x5c(1)
    stb 3, 0x61(1)
    stb 0, 0x71(1)
    psq_l 2, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    stfs 0, 0x10(1)
    psq_st 2, 0x0(4), 0, 0
    stfs 1, 0x10(1)
    lwz 0, 0x4(31)
    lwz 5, 0x260(31)
    cmpwi 0, 0x8
    .4byte 0x40800014 # bge .L_80113948
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 6, 1, 0x44
    lwz 3, 0x20(3)
    bl fn_802F745C
L_80113948:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_8011395C:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stw 31, 0x8c(1)
    mr 31, 3
    lis 3, lbl_804647C8@ha
    stw 30, 0x88(1)
    addi 30, 3, lbl_804647C8@l
    addi 3, 1, 0x50
    lfs 1, 0xc(31)
    lfs 2, 0x10(31)
    lfs 3, 0x14(31)
    bl PSMTXTrans
    .4byte 0xC00296FC # lfs f0, lbl_8053C69C@sda21(r0)
    addi 3, 1, 0x50
    .4byte 0xC04296F0 # lfs f2, lbl_8053C690@sda21(r0)
    addi 4, 1, 0x14
    stfs 0, 0x18(1)
    .4byte 0xC0229704 # lfs f1, lbl_8053C6A4@sda21(r0)
    stfs 2, 0x14(1)
    stfs 0, 0x1c(1)
    bl fn_8010F668
    .4byte 0xC02296FC # lfs f1, lbl_8053C69C@sda21(r0)
    addi 3, 1, 0x20
    .4byte 0xC00296F0 # lfs f0, lbl_8053C690@sda21(r0)
    addi 4, 1, 0x8
    stfs 1, 0x4c(1)
    stfs 1, 0x3c(1)
    stfs 1, 0x2c(1)
    stfs 1, 0x48(1)
    stfs 1, 0x38(1)
    stfs 1, 0x28(1)
    stfs 1, 0x44(1)
    stfs 1, 0x34(1)
    stfs 1, 0x24(1)
    stfs 1, 0x40(1)
    stfs 1, 0x30(1)
    stfs 1, 0x20(1)
    stfs 1, 0x8(1)
    stfs 1, 0xc(1)
    stfs 0, 0x10(1)
    lfs 1, 0x258(31)
    bl fn_8010F668
    addi 3, 1, 0x50
    addi 4, 1, 0x20
    mr 5, 3
    bl PSMTXConcat
    lbz 0, 0x234(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80113A30
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
L_80113A30:
    lwz 0, 0x240(31)
    cmpwi 0, 0x1
    .4byte 0x41820044 # beq .L_80113A7C
    .4byte 0x40800010 # bge .L_80113A4C
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_80113A54
    .4byte 0x48000054 # b .L_80113A9C
L_80113A4C:
    cmpwi 0, 0x3
    .4byte 0x4080004C # bge .L_80113A9C
L_80113A54:
    slwi 5, 0, 2
    addi 3, 30, 0xf8
    lwz 4, 0x24c(31)
    lwzx 0, 3, 5
    cmpw 4, 0
    .4byte 0x41800034 # blt .L_80113A9C
    addi 3, 30, 0xec
    lwzx 0, 3, 5
    stw 0, 0x24c(31)
    .4byte 0x48000024 # b .L_80113A9C
L_80113A7C:
    slwi 0, 0, 2
    addi 3, 30, 0xf8
    lwz 4, 0x24c(31)
    lwzx 0, 3, 0
    cmpw 4, 0
    .4byte 0x4180000C # blt .L_80113A9C
    li 0, 0x2
    stw 0, 0x240(31)
L_80113A9C:
    lwz 0, 0x238(31)
    addi 3, 30, 0x104
    lwz 31, 0x24c(31)
    slwi 0, 0, 2
    lwzx 30, 3, 0
    bl fn_801902C0
    mulli 4, 30, 0x60
    addi 4, 4, 0x8
    add 4, 3, 4
    lwz 0, 0x3c(4)
    cmplwi 0, 0x0
    .4byte 0x41820074 # beq .L_80113B3C
    lbz 0, 0x5c(4)
    cmplwi 0, 0x0
    .4byte 0x40820068 # bne .L_80113B3C
    li 0, 0x1
    .4byte 0xC02296F4 # lfs f1, lbl_8053C694@sda21(r0)
    stb 0, 0x5c(4)
    li 3, 0x0
    .4byte 0xC0029708 # lfs f0, lbl_8053C6A8@sda21(r0)
    li 0, 0x2
    stfs 1, 0x0(4)
    stfs 1, 0x4(4)
    stfs 1, 0x8(4)
    psq_l 6, 0x50(1), 0, 0
    psq_l 5, 0x58(1), 0, 0
    psq_l 4, 0x60(1), 0, 0
    psq_l 3, 0x68(1), 0, 0
    psq_l 2, 0x70(1), 0, 0
    psq_l 1, 0x78(1), 0, 0
    psq_st 6, 0xc(4), 0, 0
    psq_st 5, 0x14(4), 0, 0
    psq_st 4, 0x1c(4), 0, 0
    psq_st 3, 0x24(4), 0, 0
    psq_st 2, 0x2c(4), 0, 0
    psq_st 1, 0x34(4), 0, 0
    stfs 0, 0x48(4)
    stw 31, 0x4c(4)
    stw 3, 0x54(4)
    stw 0, 0x58(4)
L_80113B3C:
    lwz 0, 0x94(1)
    lwz 31, 0x8c(1)
    lwz 30, 0x88(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80113B54:
    stwu 1, -0xa0(1)
    mflr 0
    li 10, 0x0
    stw 0, 0xa4(1)
    li 0, -0x1
    addi 9, 1, 0x50
    stw 31, 0x9c(1)
    mr 31, 4
    stw 30, 0x98(1)
    mr 30, 3
    stw 29, 0x94(1)
    stw 0, 0x60(1)
    stw 0, 0x64(1)
    .4byte 0x48000064 # b .L_80113BEC
L_80113B8C:
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
L_80113BEC:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80113B8C
    li 10, 0x0
    li 5, -0x1
    li 4, 0x1
    li 3, 0x3
    li 0, 0x2
    stw 5, 0x60(1)
    addi 9, 1, 0x14
    stw 10, 0x64(1)
    stw 10, 0x68(1)
    stb 10, 0x6c(1)
    stb 10, 0x6d(1)
    stb 10, 0x6e(1)
    stb 4, 0x6f(1)
    stb 4, 0x70(1)
    stb 10, 0x71(1)
    stb 10, 0x72(1)
    stb 10, 0x73(1)
    stb 10, 0x74(1)
    stb 10, 0x75(1)
    stb 4, 0x76(1)
    stw 3, 0x78(1)
    stb 4, 0x7c(1)
    stb 10, 0x7d(1)
    stb 10, 0x7e(1)
    stw 5, 0x80(1)
    stw 10, 0x84(1)
    stw 0, 0x88(1)
    stw 5, 0x24(1)
    stw 5, 0x28(1)
    .4byte 0x48000064 # b .L_80113CD0
L_80113C70:
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
L_80113CD0:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80113C70
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 7, 0x24(1)
    addi 4, 1, 0x8
    cmpwi 31, 0x1d6
    stw 6, 0x28(1)
    stw 6, 0x2c(1)
    stb 6, 0x30(1)
    stb 6, 0x31(1)
    stb 6, 0x32(1)
    stb 5, 0x33(1)
    stb 5, 0x34(1)
    stb 6, 0x35(1)
    stb 6, 0x36(1)
    stb 6, 0x37(1)
    stb 6, 0x38(1)
    stb 6, 0x39(1)
    stb 5, 0x3a(1)
    stw 3, 0x3c(1)
    stb 5, 0x40(1)
    stb 6, 0x41(1)
    stb 6, 0x42(1)
    stw 7, 0x44(1)
    stw 6, 0x48(1)
    stw 0, 0x4c(1)
    psq_l 1, 0xc(30), 0, 0
    lfs 0, 0x14(30)
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x10(1)
    lfs 0, 0x28(30)
    stfs 0, 0xc(1)
    .4byte 0x40820090 # bne .L_80113DF4
    lwz 0, 0x274(30)
    lis 3, lbl_80464968@ha
    addi 7, 3, lbl_80464968@l
    lwz 3, 0x4(30)
    addi 5, 1, 0x14
    add 8, 31, 0
    li 6, 0x7
    li 9, 0x0
    bl fn_801EF830
    lwz 0, 0x4(30)
    addi 29, 30, 0xc
    lwz 3, 0x274(30)
    cmpwi 0, 0x8
    add 30, 31, 3
    .4byte 0x408000DC # bge .L_80113E7C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80464968@ha
    addi 5, 3, lbl_80464968@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC02296F0 # lfs f1, lbl_8053C690@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 29
    fmr 2, 1
    addi 7, 1, 0x50
    lwz 3, 0x20(6)
    mr 6, 30
    bl fn_802F86CC
    .4byte 0x4800008C # b .L_80113E7C
L_80113DF4:
    lwz 0, 0x274(30)
    lis 3, lbl_8046497C@ha
    addi 7, 3, lbl_8046497C@l
    lwz 3, 0x4(30)
    addi 5, 1, 0x14
    add 8, 31, 0
    li 6, 0x7
    li 9, 0x0
    bl fn_801EF830
    lwz 0, 0x4(30)
    addi 29, 30, 0xc
    lwz 3, 0x274(30)
    cmpwi 0, 0x8
    add 30, 31, 3
    .4byte 0x40800050 # bge .L_80113E7C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046497C@ha
    addi 5, 3, lbl_8046497C@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC02296F0 # lfs f1, lbl_8053C690@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 29
    fmr 2, 1
    addi 7, 1, 0x50
    lwz 3, 0x20(6)
    mr 6, 30
    bl fn_802F86CC
L_80113E7C:
    lwz 0, 0xa4(1)
    lwz 31, 0x9c(1)
    lwz 30, 0x98(1)
    lwz 29, 0x94(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_80113E98:
    lwz 0, 0x23c(3)
    cmpwi 0, 0x11
    .4byte 0x41820014 # beq .L_80113EB4
    .4byte 0x40800018 # bge .L_80113EBC
    cmpwi 0, 0xa
    .4byte 0x41820008 # beq .L_80113EB4
    .4byte 0x4800000C # b .L_80113EBC
L_80113EB4:
    li 3, 0x1
    blr
L_80113EBC:
    li 3, 0x0
    blr

fn_80113EC4:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stmw 26, 0x78(1)
    mr 30, 4
    lis 4, lbl_804647C8@ha
    cmplwi 30, 0x11
    mr 31, 3
    addi 29, 4, lbl_804647C8@l
    .4byte 0x41810950 # bgt .L_80114840
    lis 3, jumptable_8049D8A0@ha
    slwi 0, 30, 2
    addi 3, 3, jumptable_8049D8A0@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 4, 0x0
    li 3, 0x1
    stb 4, 0x234(31)
    lwz 5, 0x2d0(31)
    lwz 0, 0xf4(5)
    ori 0, 0, 0x1
    stw 0, 0xf4(5)
    stw 3, 0x24(5)
    stw 4, 0x2d0(31)
    lwz 5, 0x2d4(31)
    lwz 0, 0xf4(5)
    ori 0, 0, 0x1
    stw 0, 0xf4(5)
    stw 3, 0x24(5)
    stw 4, 0x2d4(31)
    lwz 5, 0x2d8(31)
    lwz 0, 0xf4(5)
    ori 0, 0, 0x1
    stw 0, 0xf4(5)
    stw 3, 0x24(5)
    stw 4, 0x2d8(31)
    lwz 5, 0x2dc(31)
    lwz 0, 0xf4(5)
    ori 0, 0, 0x1
    stw 0, 0xf4(5)
    stw 3, 0x24(5)
    stw 4, 0x2dc(31)
    lwz 5, 0x2e0(31)
    lwz 0, 0xf4(5)
    ori 0, 0, 0x1
    stw 0, 0xf4(5)
    stw 3, 0x24(5)
    stw 4, 0x2e0(31)
    bl fn_8011921C
    li 0, 0x1
    li 26, 0x0
    stb 0, 0x2(3)
L_80113FA0:
    mr 3, 26
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    mr 3, 26
    psq_st 1, 0x50(1), 0, 0
    stfs 0, 0x58(1)
    bl fn_8023CBC0
    clrlwi 5, 3, 16
    mr 3, 26
    addi 4, 1, 0x50
    li 6, 0xff
    li 7, 0x0
    li 8, 0x0
    li 9, 0x1
    bl fn_80230498
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFB8 # blt .L_80113FA0
    .4byte 0x48000854 # b .L_80114840
    li 6, 0x1
    addi 3, 29, 0xec
    stb 6, 0x234(31)
    addi 4, 31, 0xc
    lwz 0, 0x4(3)
    li 5, 0x2ae
    stw 6, 0x240(31)
    li 6, 0x0
    .4byte 0xC02296F4 # lfs f1, lbl_8053C694@sda21(r0)
    li 7, 0x2
    stw 0, 0x24c(31)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    lwz 3, 0x4(31)
    bl fn_8013CC50
    stw 3, 0x2c4(31)
    addi 5, 29, 0x170
    .4byte 0xC02296F4 # lfs f1, lbl_8053C694@sda21(r0)
    addi 4, 31, 0xc
    lwz 0, 0x238(31)
    li 6, 0x0
    lwz 3, 0x4(31)
    li 7, 0x2
    slwi 0, 0, 1
    li 8, 0x0
    lhzx 5, 5, 0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2c8(31)
    addi 5, 29, 0x180
    .4byte 0xC02296F4 # lfs f1, lbl_8053C694@sda21(r0)
    addi 4, 31, 0xc
    lwz 0, 0x238(31)
    li 6, 0x0
    lwz 3, 0x4(31)
    li 7, 0x2
    slwi 0, 0, 1
    li 8, 0x0
    lhzx 5, 5, 0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2cc(31)
    addi 5, 29, 0x190
    .4byte 0xC02296F0 # lfs f1, lbl_8053C690@sda21(r0)
    addi 4, 31, 0xc
    lwz 0, 0x238(31)
    li 6, 0x0
    lwz 3, 0x4(31)
    li 7, 0x2
    slwi 0, 0, 1
    li 8, 0x0
    lhzx 5, 5, 0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2a4(31)
    bl SpatialRegistry_GetBase
    lis 4, 0x5357
    addi 4, 4, 0x4556
    bl fn_801F7A08
    mr 28, 3
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80114108
    bl fn_802B3A3C
L_80114108:
    bl SpatialRegistry_GetBase
    lis 4, 0x5345
    addi 4, 4, 0x5632
    bl fn_801F7A08
    mr 28, 3
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_80114134
    bl Sev2_ClearField_0x280
L_80114134:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd5
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480006F8 # b .L_80114840
    lwz 0, 0x238(31)
    cmpwi 0, 0x6
    .4byte 0x41820008 # beq .L_8011415C
    .4byte 0x48000020 # b .L_80114178
L_8011415C:
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0xf
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    .4byte 0x4800001C # b .L_80114190
L_80114178:
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x1c
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_80114190:
    li 0, 0x1
    stb 0, 0x233(31)
    .4byte 0x480006A8 # b .L_80114840
    .4byte 0x80AD8DC0 # lwz r5, lbl_8053A980@sda21(r0)
    lis 4, 0x4330
    .4byte 0xC02296FC # lfs f1, lbl_8053C69C@sda21(r0)
    li 3, 0x0
    lwz 5, 0x4(5)
    li 6, 0x1
    stw 4, 0x68(1)
    li 7, 0x0
    lhz 0, 0x6(5)
    lhz 5, 0x4(5)
    xoris 0, 0, 0x8000
    .4byte 0xC8A29710 # lfd f5, lbl_8053C6B0@sda21(r0)
    stw 0, 0x6c(1)
    xoris 0, 5, 0x8000
    .4byte 0xC06296F4 # lfs f3, lbl_8053C694@sda21(r0)
    lfd 0, 0x68(1)
    stw 0, 0x64(1)
    fsubs 2, 0, 5
    .4byte 0xC002970C # lfs f0, lbl_8053C6AC@sda21(r0)
    stw 4, 0x60(1)
    lwz 4, 0x4(31)
    fmuls 2, 2, 3
    lfd 4, 0x60(1)
    stfs 1, 0x4c(1)
    fsubs 1, 4, 5
    lwz 5, 0x198(31)
    fadds 0, 2, 0
    stfs 2, 0x48(1)
    fmuls 1, 1, 3
    stfs 0, 0x48(1)
    stfs 1, 0x44(1)
    bl fn_8022FE80
    lwz 5, 0x4(31)
    addi 6, 1, 0x38
    psq_l 1, 0x44(1), 0, 0
    addi 4, 29, 0x88
    lfs 0, 0x4c(1)
    li 3, 0x0
    psq_st 1, 0x0(6), 0, 0
    li 7, 0x62
    stfs 0, 0x40(1)
    lwz 0, 0x238(31)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8038BD08
    clrlwi. 0, 3, 24
    .4byte 0x418205EC # beq .L_80114840
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x480005E0 # b .L_80114840
    li 28, 0x0
    mr 26, 31
    stb 28, 0x233(31)
    addi 27, 29, 0x140
L_80114274:
    lhz 5, 0x0(27)
    addi 4, 31, 0xc
    lwz 3, 0x4(31)
    li 6, 0x0
    .4byte 0xC02296F4 # lfs f1, lbl_8053C694@sda21(r0)
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 28, 28, 0x1
    stw 3, 0x2a8(26)
    cmpwi 28, 0x7
    addi 27, 27, 0x2
    addi 26, 26, 0x4
    .4byte 0x4180FFC4 # blt .L_80114274
    lwz 0, 0x238(31)
    addi 5, 29, 0x150
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    slwi 0, 0, 1
    .4byte 0xC02296F4 # lfs f1, lbl_8053C694@sda21(r0)
    lhzx 5, 5, 0
    li 6, 0x0
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x29c(31)
    addi 5, 29, 0x160
    .4byte 0xC02296F0 # lfs f1, lbl_8053C690@sda21(r0)
    addi 4, 31, 0xc
    lwz 0, 0x238(31)
    li 6, 0x0
    lwz 3, 0x4(31)
    li 7, 0x2
    slwi 0, 0, 1
    li 8, 0x0
    lhzx 5, 5, 0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2a0(31)
    lis 4, 0x3
    mr 3, 31
    li 5, 0x0
    addi 4, 4, 0x82
    bl fn_801F0E34
    bl fn_8011921C
    li 0, 0x0
    stb 0, 0x2(3)
    .4byte 0x480004FC # b .L_80114840
    li 3, 0x0
    li 0, 0x1
    stb 3, 0x230(31)
    stb 0, 0x232(31)
    .4byte 0x480004E8 # b .L_80114840
    lwz 5, 0x2e4(31)
    cmplwi 5, 0x0
    .4byte 0x418204DC # beq .L_80114840
    lwz 4, 0xf4(5)
    li 3, 0x1
    li 0, 0x0
    ori 4, 4, 0x1
    stw 4, 0xf4(5)
    stw 3, 0x24(5)
    stw 0, 0x2e4(31)
    .4byte 0x480004BC # b .L_80114840
    bl fn_80119DD0
    li 4, 0xb4
    li 5, 0x0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x1
    li 9, 0x0
    li 10, 0x0
    bl fn_80119998
    li 0, 0x1
    .4byte 0xC04296E4 # lfs f2, lbl_8053C684@sda21(r0)
    stw 0, 0x248(31)
    li 28, 0x0
    .4byte 0xC00296E8 # lfs f0, lbl_8053C688@sda21(r0)
    psq_l 1, 0x24(31), 0, 0
    lfs 4, 0x2c(31)
    .4byte 0xC3E296EC # lfs f31, lbl_8053C68C@sda21(r0)
    psq_st 1, 0x20(1), 0, 0
    lfs 3, 0x24(1)
    lfs 1, 0x20(1)
    fadds 2, 3, 2
    stfs 4, 0x28(1)
    fsubs 0, 1, 0
    stfs 2, 0x24(1)
    stfs 0, 0x20(1)
L_801143EC:
    cmpwi 28, 0x0
    .4byte 0x40810010 # ble .L_80114400
    lfs 0, 0x20(1)
    fadds 0, 0, 31
    stfs 0, 0x20(1)
L_80114400:
    mr 3, 28
    addi 4, 1, 0x20
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    mr 3, 28
    li 4, 0x3
    bl fn_80230BF4
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFB8 # blt .L_801143EC
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820014 # bne .L_80114454
    bl fn_8011921C
    li 0, 0x1
    stb 0, 0x2(3)
    .4byte 0x4800000C # b .L_8011445C
L_80114454:
    li 0, 0x0
    stb 0, 0x232(31)
L_8011445C:
    lwz 3, 0x2a0(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80114474
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x2a0(31)
L_80114474:
    lwz 3, 0x29c(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8011448C
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x29c(31)
L_8011448C:
    li 28, 0x0
    mr 26, 31
L_80114494:
    lwz 3, 0x2a8(26)
    bl fn_801EE434
    li 0, 0x0
    cmpwi 28, 0x2
    stw 0, 0x2a8(26)
    .4byte 0x40800014 # bge .L_801144BC
    lwz 3, 0x2e8(26)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x2e8(26)
L_801144BC:
    cmpwi 28, 0x3
    .4byte 0x40800014 # bge .L_801144D4
    lwz 3, 0x2c4(26)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x2c4(26)
L_801144D4:
    cmpwi 28, 0x5
    .4byte 0x40800014 # bge .L_801144EC
    lwz 3, 0x2d0(26)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x2d0(26)
L_801144EC:
    addi 28, 28, 0x1
    addi 26, 26, 0x4
    cmpwi 28, 0x7
    .4byte 0x4180FF9C # blt .L_80114494
    lwz 3, 0x2a4(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80114514
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x2a4(31)
L_80114514:
    lwz 3, 0x2e4(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8011452C
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x2e4(31)
L_8011452C:
    lwz 26, 0x238(31)
    cmpwi 26, 0x0
    .4byte 0x4182030C # beq .L_80114840
    cmpwi 26, 0x6
    .4byte 0x40800304 # bge .L_80114840
    psq_l 2, 0x24(31), 0, 0
    lfs 1, 0x2c(31)
    .4byte 0xC00296D8 # lfs f0, lbl_8053C678@sda21(r0)
    stfs 1, 0x1c(1)
    psq_st 2, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4352
    lwz 5, 0x4(31)
    mr 7, 26
    addi 6, 1, 0x14
    addi 4, 4, 0x4e56
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480002C4 # b .L_80114840
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    lwz 4, 0x238(31)
    bl fn_8037AD00
    li 0, 0x0
    mr 3, 31
    stw 0, 0x248(31)
    bl fn_801F3668
    lwz 26, 0x244(31)
    cmpwi 26, 0x0
    .4byte 0x4081029C # ble .L_80114840
    bl GetRoomConfigRecord
    mr 4, 26
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    .4byte 0x48000284 # b .L_80114840
    li 0, 0x1
    .4byte 0xC00296FC # lfs f0, lbl_8053C69C@sda21(r0)
    stb 0, 0x232(31)
    addi 3, 31, 0x264
    li 4, 0x4
    li 5, 0x2
    stfs 0, 0x254(31)
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02296FC # lfs f1, lbl_8053C69C@sda21(r0)
    addi 3, 31, 0x264
    bl fn_801D1F14
    .4byte 0x48000250 # b .L_80114840
    addi 3, 31, 0x264
    li 4, 0x5
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02296FC # lfs f1, lbl_8053C69C@sda21(r0)
    addi 3, 31, 0x264
    bl fn_801D1F14
    .4byte 0x4800022C # b .L_80114840
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    .4byte 0xC02296FC # lfs f1, lbl_8053C69C@sda21(r0)
    addi 6, 1, 0x2c
    .4byte 0xC002970C # lfs f0, lbl_8053C6AC@sda21(r0)
    li 3, 0x0
    stfs 1, 0x2c(1)
    li 4, 0x14b
    li 7, 0x4022
    stfs 0, 0x30(1)
    stfs 1, 0x34(1)
    lwz 5, 0x4(31)
    bl fn_8038BD08
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x480001D4 # b .L_80114840
    li 0, 0x0
    .4byte 0xC00296D8 # lfs f0, lbl_8053C678@sda21(r0)
    stb 0, 0x11d(31)
    addi 4, 31, 0xc
    .4byte 0xC02296F0 # lfs f1, lbl_8053C690@sda21(r0)
    li 5, 0x20
    stfs 0, 0x14(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    lwz 3, 0x4(31)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02296F0 # lfs f1, lbl_8053C690@sda21(r0)
    li 5, 0x21
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xd9
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800015C # b .L_80114840
    li 0, 0x1
    .4byte 0xC02296F0 # lfs f1, lbl_8053C690@sda21(r0)
    stb 0, 0x11d(31)
    addi 4, 31, 0xc
    li 5, 0x32c
    li 6, 0x0
    lwz 3, 0x4(31)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2e8(31)
    addi 4, 31, 0xc
    .4byte 0xC02296F0 # lfs f1, lbl_8053C690@sda21(r0)
    li 5, 0x183
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2ec(31)
    addi 3, 31, 0x264
    li 4, 0x2
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02296FC # lfs f1, lbl_8053C69C@sda21(r0)
    addi 3, 31, 0x264
    bl fn_801D1F14
    .4byte 0x480000D8 # b .L_80114840
    bl fn_8011921C
    li 0, 0x0
    stb 0, 0x2(3)
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    lwz 4, 0x238(31)
    bl fn_8037AD00
    li 4, 0x0
    li 0, 0x1
    stw 4, 0x248(31)
    lwz 5, 0x2e8(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_801147B0
    lwz 3, 0xf4(5)
    ori 3, 3, 0x1
    stw 3, 0xf4(5)
    stw 0, 0x24(5)
    stw 4, 0x2e8(31)
L_801147B0:
    lwz 5, 0x2ec(31)
    cmplwi 5, 0x0
    .4byte 0x41820018 # beq .L_801147D0
    lwz 3, 0xf4(5)
    ori 3, 3, 0x1
    stw 3, 0xf4(5)
    stw 0, 0x24(5)
    stw 4, 0x2ec(31)
L_801147D0:
    mr 3, 31
    bl fn_801F3668
    lwz 26, 0x244(31)
    cmpwi 26, 0x0
    .4byte 0x40810060 # ble .L_80114840
    bl GetRoomConfigRecord
    mr 4, 26
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    lwz 28, 0x238(31)
    cmpwi 28, 0x6
    .4byte 0x40800040 # bge .L_80114840
    psq_l 2, 0x24(31), 0, 0
    lfs 1, 0x2c(31)
    .4byte 0xC00296D8 # lfs f0, lbl_8053C678@sda21(r0)
    stfs 1, 0x10(1)
    psq_st 2, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4352
    lwz 5, 0x4(31)
    mr 7, 28
    addi 6, 1, 0x8
    addi 4, 4, 0x4e56
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
L_80114840:
    stw 30, 0x23c(31)
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    lmw 26, 0x78(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_80114860:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8011921C
    lwz 0, 0x238(31)
    lwz 4, 0x8(3)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_8011488C
    .4byte 0x4800023C # b .L_80114AC4
L_8011488C:
    lis 3, lbl_8046486C@ha
    addi 3, 3, lbl_8046486C@l
    lwz 0, 0x8(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_801148BC
    mr 3, 31
    li 4, 0x2
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x48000350 # b .L_80114C08
L_801148BC:
    lwz 0, 0xc(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_801148E4
    mr 3, 31
    li 4, 0x3
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x48000328 # b .L_80114C08
L_801148E4:
    lwz 0, 0x10(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_8011490C
    mr 3, 31
    li 4, 0x4
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x48000300 # b .L_80114C08
L_8011490C:
    lwz 0, 0x14(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_80114934
    mr 3, 31
    li 4, 0x5
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x480002D8 # b .L_80114C08
L_80114934:
    lwz 0, 0x18(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_8011495C
    mr 3, 31
    li 4, 0x6
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x480002B0 # b .L_80114C08
L_8011495C:
    lwz 0, 0x1c(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_80114984
    mr 3, 31
    li 4, 0x7
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x48000288 # b .L_80114C08
L_80114984:
    lwz 0, 0x24(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_801149AC
    mr 3, 31
    li 4, 0x9
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x48000260 # b .L_80114C08
L_801149AC:
    lwz 0, 0x2c(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_801149D4
    mr 3, 31
    li 4, 0xb
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x48000238 # b .L_80114C08
L_801149D4:
    lwz 0, 0x30(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_801149FC
    mr 3, 31
    li 4, 0xc
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x48000210 # b .L_80114C08
L_801149FC:
    lwz 0, 0x34(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_80114A24
    mr 3, 31
    li 4, 0xd
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x480001E8 # b .L_80114C08
L_80114A24:
    lwz 0, 0x38(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_80114A4C
    mr 3, 31
    li 4, 0xe
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x480001C0 # b .L_80114C08
L_80114A4C:
    lwz 0, 0x3c(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_80114A74
    mr 3, 31
    li 4, 0xf
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x48000198 # b .L_80114C08
L_80114A74:
    lwz 0, 0x40(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_80114A9C
    mr 3, 31
    li 4, 0x10
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x48000170 # b .L_80114C08
L_80114A9C:
    lwz 0, 0x44(3)
    cmpw 4, 0
    .4byte 0x40820164 # bne .L_80114C08
    mr 3, 31
    li 4, 0x11
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x48000148 # b .L_80114C08
L_80114AC4:
    lis 3, lbl_8046486C@ha
    addi 3, 3, lbl_8046486C@l
    lwz 0, 0x8(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_80114AF4
    mr 3, 31
    li 4, 0x2
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x48000118 # b .L_80114C08
L_80114AF4:
    lwz 0, 0xc(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_80114B1C
    mr 3, 31
    li 4, 0x3
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x480000F0 # b .L_80114C08
L_80114B1C:
    lwz 0, 0x10(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_80114B44
    mr 3, 31
    li 4, 0x4
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x480000C8 # b .L_80114C08
L_80114B44:
    lwz 0, 0x14(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_80114B6C
    mr 3, 31
    li 4, 0x5
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x480000A0 # b .L_80114C08
L_80114B6C:
    lwz 0, 0x18(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_80114B94
    mr 3, 31
    li 4, 0x6
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x48000078 # b .L_80114C08
L_80114B94:
    lwz 0, 0x1c(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_80114BBC
    mr 3, 31
    li 4, 0x7
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x48000050 # b .L_80114C08
L_80114BBC:
    lwz 0, 0x24(3)
    cmpw 4, 0
    .4byte 0x40820020 # bne .L_80114BE4
    mr 3, 31
    li 4, 0x9
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x48000028 # b .L_80114C08
L_80114BE4:
    lwz 0, 0x28(3)
    cmpw 4, 0
    .4byte 0x4082001C # bne .L_80114C08
    mr 3, 31
    li 4, 0xa
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
L_80114C08:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80114C1C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010DF58
    mr 3, 31
    bl fn_80113790
    lwz 0, 0x23c(31)
    cmpwi 0, 0x10
    .4byte 0x41820008 # beq .L_80114C4C
    .4byte 0x48000014 # b .L_80114C5C
L_80114C4C:
    mr 3, 31
    li 4, 0x1d6
    bl fn_80113B54
    .4byte 0x4800002C # b .L_80114C84
L_80114C5C:
    lbz 0, 0x232(31)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_80114C84
    lwz 0, 0x238(31)
    lis 3, lbl_80464830@ha
    addi 4, 3, lbl_80464830@l
    mr 3, 31
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_80113B54
L_80114C84:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80114C98:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 26, 0x38(1)
    mr 31, 3
    bl fn_8010DF78
    lwz 0, 0x23c(31)
    cmpwi 0, 0xa
    .4byte 0x4182012C # beq .L_80114DE4
    .4byte 0x40800018 # bge .L_80114CD4
    cmpwi 0, 0x2
    .4byte 0x40800094 # bge .L_80114D58
    cmpwi 0, 0x0
    .4byte 0x40800118 # bge .L_80114DE4
    .4byte 0x48000088 # b .L_80114D58
L_80114CD4:
    cmpwi 0, 0x11
    .4byte 0x4182010C # beq .L_80114DE4
    .4byte 0x4080007C # bge .L_80114D58
    psq_l 1, 0xc(31), 0, 0
    addi 4, 1, 0x8
    lfs 2, 0x14(31)
    .4byte 0xC00296DC # lfs f0, lbl_8053C67C@sda21(r0)
    psq_st 1, 0x0(4), 0, 0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0xc(1)
    stfs 2, 0x10(1)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x408200C4 # bne .L_80114DE4
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x8(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0xc(1)
    stfs 0, 0x800(4)
    lfs 0, 0x10(1)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
    .4byte 0x48000090 # b .L_80114DE4
L_80114D58:
    psq_l 2, 0xc(31), 0, 0
    addi 4, 1, 0x14
    lfs 1, 0x14(31)
    .4byte 0xC00296DC # lfs f0, lbl_8053C67C@sda21(r0)
    psq_st 2, 0x0(4), 0, 0
    .4byte 0xC06296E0 # lfs f3, lbl_8053C680@sda21(r0)
    stfs 1, 0x1c(1)
    lfs 4, 0x18(1)
    lfs 2, 0x28(31)
    lfs 1, 0x10(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fsubs 1, 2, 1
    fsubs 0, 1, 0
    fadds 0, 3, 0
    fadds 0, 4, 0
    stfs 0, 0x18(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_80114DE4
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x14(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x18(1)
    stfs 0, 0x800(4)
    lfs 0, 0x1c(1)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_80114DE4:
    lwz 0, 0x23c(31)
    cmplwi 0, 0x11
    .4byte 0x41810410 # bgt .L_801151FC
    lis 3, jumptable_8049D8E8@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049D8E8@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x1b
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
    mr 3, 31
    li 4, 0x1
    lwz 12, 0x0(31)
    lwz 12, 0x60(12)
    mtctr 12
    bctrl
    .4byte 0x480003C4 # b .L_801151FC
    li 26, 0x0
L_80114E40:
    mr 3, 26
    bl fn_8023BCD4
    clrlwi 3, 3, 24
    subi 27, 3, 0x2
    cmpwi 27, 0x1e
    .4byte 0x41810008 # bgt .L_80114E5C
    li 27, 0x0
L_80114E5C:
    mr 3, 26
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    mr 3, 26
    psq_st 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    bl fn_8023CBC0
    clrlwi 5, 3, 16
    mr 3, 26
    addi 4, 1, 0x20
    clrlwi 6, 27, 24
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF9C # blt .L_80114E40
    bl fn_8011921C
    lwz 0, 0x8(3)
    cmpwi 0, 0x1b8
    .4byte 0x40820010 # bne .L_80114EC4
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
L_80114EC4:
    bl fn_8016A3AC
    lbz 0, 0x1ef(3)
    cmplwi 0, 0x0
    .4byte 0x4082032C # bne .L_801151FC
    lwz 0, 0x2e4(31)
    cmplwi 0, 0x0
    .4byte 0x40820320 # bne .L_801151FC
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC02296F0 # lfs f1, lbl_8053C690@sda21(r0)
    li 5, 0x54c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2e4(31)
    .4byte 0x480002F0 # b .L_801151FC
    .4byte 0xC0229718 # lfs f1, lbl_8053C6B8@sda21(r0)
    addi 3, 31, 0x25c
    .4byte 0xC042971C # lfs f2, lbl_8053C6BC@sda21(r0)
    bl fn_801CD950
    .4byte 0xC0229720 # lfs f1, lbl_8053C6C0@sda21(r0)
    addi 3, 31, 0x254
    .4byte 0xC0429724 # lfs f2, lbl_8053C6C4@sda21(r0)
    bl fn_801CD950
    lfs 2, 0x10(31)
    lfs 1, 0x254(31)
    .4byte 0xC00296E4 # lfs f0, lbl_8053C684@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    lfs 1, 0x28(31)
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80114F60
    stfs 0, 0x10(31)
L_80114F60:
    lwz 3, 0x248(31)
    addi 0, 3, 0x2
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    cmpwi 0, 0xe1
    .4byte 0x41800288 # blt .L_801151FC
    li 0, 0xe1
    stw 0, 0x248(31)
    .4byte 0x4800027C # b .L_801151FC
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_80114F98
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_80114FA0
L_80114F98:
    li 0, 0x0
    .4byte 0x4800003C # b .L_80114FD8
L_80114FA0:
    lis 3, lbl_8050EC80@ha
    slwi 4, 0, 2
    addi 3, 3, lbl_8050EC80@l
    li 5, 0x1
    lwz 0, 0x10(3)
    addi 4, 4, 0x3
    slw 4, 5, 4
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_80114FD8:
    cmpwi 0, 0x0
    .4byte 0x41820010 # beq .L_80114FEC
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x2
    stb 0, 0x85(3)
L_80114FEC:
    li 0, 0xe1
    stw 0, 0x248(31)
    bl fn_8011921C
    lbz 0, 0x1(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80115014
    .4byte 0xC02296FC # lfs f1, lbl_8053C69C@sda21(r0)
    addi 3, 31, 0x25c
    .4byte 0xC0429728 # lfs f2, lbl_8053C6C8@sda21(r0)
    bl fn_801CD950
L_80115014:
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_80115050
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x480001B0 # b .L_801151FC
L_80115050:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_80115064
    cmpwi 0, 0x7
    .4byte 0x4081000C # ble .L_8011506C
L_80115064:
    li 0, 0x0
    .4byte 0x4800003C # b .L_801150A4
L_8011506C:
    lis 3, lbl_8050EC80@ha
    slwi 4, 0, 2
    addi 3, 3, lbl_8050EC80@l
    li 5, 0x1
    lwz 0, 0x10(3)
    addi 4, 4, 0x3
    slw 4, 5, 4
    mulli 0, 0, 0xc8
    add 3, 3, 0
    lwz 0, 0x28(3)
    and 3, 4, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
L_801150A4:
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_801150B4
    li 0, 0x0
    .4byte 0x48000028 # b .L_801150D8
L_801150B4:
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 4, 0x1000
    li 5, -0x1
    bl fn_80309C4C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801150D4
    li 0, 0x1
    .4byte 0x48000008 # b .L_801150D8
L_801150D4:
    li 0, 0x0
L_801150D8:
    clrlwi. 0, 0, 24
    .4byte 0x41820120 # beq .L_801151FC
    li 3, 0x0
    bl fn_80387494
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x4800010C # b .L_801151FC
    bl fn_8011921C
    lwz 0, 0x8(3)
    cmpwi 0, 0x46a
    .4byte 0x4182002C # beq .L_8011512C
    .4byte 0x408000F8 # bge .L_801151FC
    cmpwi 0, 0x43d
    .4byte 0x41820008 # beq .L_80115114
    .4byte 0x480000EC # b .L_801151FC
L_80115114:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x82
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000D4 # b .L_801151FC
L_8011512C:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x82
    li 5, 0x0
    bl fn_801F0E34
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x83
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000A8 # b .L_801151FC
    lfs 1, 0x28(31)
    addi 3, 31, 0x10
    .4byte 0xC042972C # lfs f2, lbl_8053C6CC@sda21(r0)
    bl fn_801CD950
    .4byte 0x48000094 # b .L_801151FC
    lwz 4, 0x4(31)
    li 3, 0x0
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FE80
    li 3, 0x0
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_801151FC
    li 3, 0x0
    bl fn_80388EEC
    bl fn_8011921C
    bl fn_801183BC
    .4byte 0x48000058 # b .L_801151FC
    mr 26, 31
    li 27, 0x0
    li 28, 0x2d
    li 29, 0x78
    li 30, 0xff
L_801151BC:
    lwz 3, 0x2e8(26)
    cmplwi 3, 0x0
    .4byte 0x41820028 # beq .L_801151EC
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    bl fn_8013CB44
    lwz 3, 0x2e8(26)
    stb 28, 0xbc(3)
    stb 29, 0xbd(3)
    stb 30, 0xbe(3)
L_801151EC:
    addi 27, 27, 0x1
    addi 26, 26, 0x4
    cmpwi 27, 0x2
    .4byte 0x4180FFC4 # blt .L_801151BC
L_801151FC:
    lbz 0, 0x233(31)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80115218
    lfs 1, 0x258(31)
    lfs 0, 0x25c(31)
    fadds 0, 1, 0
    stfs 0, 0x258(31)
L_80115218:
    addi 3, 31, 0x264
    bl fn_801D1C18
    lbz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80115234
    mr 3, 31
    bl fn_8011395C
L_80115234:
    lmw 26, 0x38(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80115248:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stmw 26, 0x78(1)
    mr 31, 3
    bl fn_8010DF98
    lwz 0, 0x90(31)
    lis 3, 0x3f3f
    addi 4, 3, 0x3f3f
    clrlwi 0, 0, 24
    stw 0, 0x238(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 5
    stw 0, 0x244(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    .4byte 0x80AD8340 # lwz r5, lbl_80539F00@sda21(r0)
    lwz 3, 0xa4(3)
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    lis 4, lbl_8049D820@ha
    stw 3, 0x260(31)
    addi 4, 4, lbl_8049D820@l
    addi 3, 31, 0x264
    li 5, 0x7
    bl fn_801D2608
    lwz 0, 0x238(31)
    cmpwi 0, 0x6
    .4byte 0x4182002C # beq .L_801152E8
    .4byte 0x40800028 # bge .L_801152E8
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801152D0
    .4byte 0x4800001C # b .L_801152E8
L_801152D0:
    addi 3, 31, 0x264
    li 4, 0x4
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x48000018 # b .L_801152FC
L_801152E8:
    addi 3, 31, 0x264
    li 4, 0x6
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
L_801152FC:
    .4byte 0xC02296FC # lfs f1, lbl_8053C69C@sda21(r0)
    addi 3, 31, 0x264
    bl fn_801D1F14
    lfs 2, 0x10(31)
    lis 4, lbl_804648F4@ha
    .4byte 0xC00296DC # lfs f0, lbl_8053C67C@sda21(r0)
    lis 3, lbl_804648E8@ha
    .4byte 0xC02296FC # lfs f1, lbl_8053C69C@sda21(r0)
    addi 27, 1, 0x38
    fsubs 2, 2, 0
    .4byte 0xC08296E4 # lfs f4, lbl_8053C684@sda21(r0)
    .4byte 0xC00296F8 # lfs f0, lbl_8053C698@sda21(r0)
    addi 29, 4, lbl_804648F4@l
    stfs 1, 0x10(1)
    addi 28, 3, lbl_804648E8@l
    stfs 2, 0x10(31)
    mr 26, 31
    li 30, 0x0
    psq_l 3, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    stfs 1, 0x1c(1)
    psq_st 3, 0x0(27), 0, 0
    stfs 2, 0x40(1)
    lfs 5, 0x28(31)
    lfs 3, 0x24(31)
    fsubs 6, 5, 4
    stfs 1, 0x28(1)
    fsubs 2, 3, 0
    fadds 0, 0, 3
    stfs 1, 0x4c(1)
    fadds 5, 4, 5
    stfs 2, 0x8(1)
    stfs 6, 0xc(1)
    psq_l 3, 0x8(1), 0, 0
    stfs 0, 0x14(1)
    stfs 6, 0x18(1)
    psq_l 4, 0x14(1), 0, 0
    stfs 2, 0x20(1)
    stfs 5, 0x24(1)
    psq_l 2, 0x20(1), 0, 0
    stfs 0, 0x2c(1)
    stfs 5, 0x30(1)
    psq_l 0, 0x2c(1), 0, 0
    psq_st 3, 0x44(1), 0, 0
    psq_st 4, 0x50(1), 0, 0
    stfs 1, 0x58(1)
    psq_st 2, 0x5c(1), 0, 0
    stfs 1, 0x64(1)
    stfs 1, 0x34(1)
    psq_st 0, 0x68(1), 0, 0
    stfs 1, 0x70(1)
L_801153C8:
    lhz 5, 0x0(28)
    mr 4, 27
    lwz 3, 0x4(31)
    li 6, 0x0
    .4byte 0xC02296F0 # lfs f1, lbl_8053C690@sda21(r0)
    li 8, 0x0
    lwz 7, 0x0(29)
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 30, 30, 0x1
    stw 3, 0x2d0(26)
    cmpwi 30, 0x5
    addi 29, 29, 0x4
    addi 28, 28, 0x2
    addi 27, 27, 0xc
    addi 26, 26, 0x4
    .4byte 0x4180FFBC # blt .L_801153C8
    bl GetRoomConfigRecord
    li 4, 0x0
    bl fn_802D7440
    lmw 26, 0x78(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

fn_80115430:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 4
    stw 30, 0x18(1)
    mr. 30, 3
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    .4byte 0x41820118 # beq .L_8011556C
    lis 3, lbl_8049D83C@ha
    addi 0, 3, lbl_8049D83C@l
    stw 0, 0x0(30)
    lwz 3, 0x2a0(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8011547C
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x2a0(30)
L_8011547C:
    lwz 3, 0x29c(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80115494
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x29c(30)
L_80115494:
    li 29, 0x0
    mr 28, 30
L_8011549C:
    lwz 3, 0x2a8(28)
    bl fn_801EE434
    li 0, 0x0
    cmpwi 29, 0x2
    stw 0, 0x2a8(28)
    .4byte 0x40800014 # bge .L_801154C4
    lwz 3, 0x2e8(28)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x2e8(28)
L_801154C4:
    cmpwi 29, 0x3
    .4byte 0x40800014 # bge .L_801154DC
    lwz 3, 0x2c4(28)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x2c4(28)
L_801154DC:
    cmpwi 29, 0x5
    .4byte 0x40800014 # bge .L_801154F4
    lwz 3, 0x2d0(28)
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x2d0(28)
L_801154F4:
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x7
    .4byte 0x4180FF9C # blt .L_8011549C
    lwz 3, 0x2a4(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_8011551C
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x2a4(30)
L_8011551C:
    lwz 3, 0x2e4(30)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80115534
    bl fn_801EE434
    li 0, 0x0
    stw 0, 0x2e4(30)
L_80115534:
    addic. 0, 30, 0x264
    .4byte 0x41820018 # beq .L_80115550
    addic. 0, 30, 0x288
    .4byte 0x41820010 # beq .L_80115550
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 0, 0x288(30)
L_80115550:
    mr 3, 30
    li 4, 0x0
    bl dtor_8010E004
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8011556C
    mr 3, 30
    bl dtor_80084580
L_8011556C:
    lwz 0, 0x24(1)
    mr 3, 30
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80113564

