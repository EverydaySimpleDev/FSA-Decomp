# Fresh project-wide gap hunt continuation: 10 functions, 6,848 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_800060E4
etb_800060E4:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_800060E4, 8

.global etb_800060EC
etb_800060EC:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_800060EC, 8

.global etb_800060F4
etb_800060F4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800060F4, 8

.global etb_800060FC
etb_800060FC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800060FC, 8

.global etb_80006104
etb_80006104:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006104, 8

.global etb_8000610C
etb_8000610C:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000610C, 8

.global etb_80006114
etb_80006114:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_80006114, 8

.global etb_8000611C
etb_8000611C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000611C, 8

.section extabindex, "a"
.balign 4
.global eti_8001261C
eti_8001261C:
    .4byte fn_8011B16C
    .4byte 0x00000224
    .4byte etb_800060E4
.size eti_8001261C, 12

.global eti_80012628
eti_80012628:
    .4byte fn_8011B390
    .4byte 0x00000060
    .4byte etb_800060EC
.size eti_80012628, 12

.global eti_80012634
eti_80012634:
    .4byte fn_8011B3F0
    .4byte 0x00000488
    .4byte etb_800060F4
.size eti_80012634, 12

.global eti_80012640
eti_80012640:
    .4byte fn_8011B878
    .4byte 0x00000534
    .4byte etb_800060FC
.size eti_80012640, 12

.global eti_8001264C
eti_8001264C:
    .4byte fn_8011BDEC
    .4byte 0x0000032C
    .4byte etb_80006104
.size eti_8001264C, 12

.global eti_80012658
eti_80012658:
    .4byte fn_8011C118
    .4byte 0x000001F0
    .4byte etb_8000610C
.size eti_80012658, 12

.global eti_80012664
eti_80012664:
    .4byte fn_8011C308
    .4byte 0x00000854
    .4byte etb_80006114
.size eti_80012664, 12

.global eti_80012670
eti_80012670:
    .4byte fn_8011CB5C
    .4byte 0x000000D0
    .4byte etb_8000611C
.size eti_80012670, 12

.text
.balign 4
.global fn_8011B16C
.global fn_8011B390
.global fn_8011B3F0
.global fn_8011B878
.global fn_8011BDAC
.global fn_8011BDE4
.global fn_8011BDEC
.global fn_8011C118
.global fn_8011C308
.global fn_8011CB5C

fn_8011B16C:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BC760@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BC760@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011B1BC
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
L_8011B1BC:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011B1F4
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
L_8011B1F4:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011B22C
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
L_8011B22C:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011B264
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
L_8011B264:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011B29C
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
L_8011B29C:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011B2D4
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
L_8011B2D4:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011B30C
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
L_8011B30C:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011B344
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
L_8011B344:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011B37C
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
L_8011B37C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011B390:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_8011B3D4
    lis 5, lbl_8049DB90@ha
    li 4, 0x0
    addi 0, 5, lbl_8049DB90@l
    stw 0, 0x0(30)
    bl dtor_8010E004
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_8011B3D4
    mr 3, 30
    bl dtor_80084580
L_8011B3D4:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011B3F0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(4)
    lbz 0, 0x179(4)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_8011B428
    li 3, 0x1
    li 0, 0x0
    stb 3, 0x17a(4)
    stb 0, 0x179(4)
L_8011B428:
    lwz 0, 0x238(31)
    cmpwi 0, 0x7
    .4byte 0x4182003C # beq .L_8011B46C
    .4byte 0x40800024 # bge .L_8011B458
    cmpwi 0, 0x4
    .4byte 0x40800010 # bge .L_8011B44C
    cmpwi 0, 0x1
    .4byte 0x40800160 # bge .L_8011B5A4
    .4byte 0x480003D0 # b .L_8011B818
L_8011B44C:
    cmpwi 0, 0x6
    .4byte 0x40800284 # bge .L_8011B6D4
    .4byte 0x480001D0 # b .L_8011B624
L_8011B458:
    cmpwi 0, 0xc
    .4byte 0x408003BC # bge .L_8011B818
    cmpwi 0, 0x9
    .4byte 0x40800368 # bge .L_8011B7CC
    .4byte 0x4800031C # b .L_8011B784
L_8011B46C:
    bl fn_8011921C
    lis 4, lbl_80464AF8@ha
    lwz 0, 0x8(3)
    addi 3, 4, lbl_80464AF8@l
    lwz 3, 0x1c(3)
    subf 0, 3, 0
    cmpwi 0, 0xb4
    .4byte 0x40800054 # bge .L_8011B4DC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x408203C8 # bne .L_8011B864
    li 0, 0x1
    li 3, 0x5
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x250(31)
    stfs 0, 0x808(4)
    lfs 0, 0x254(31)
    stfs 0, 0x80c(4)
    lfs 0, 0x258(31)
    stfs 0, 0x810(4)
    lfs 0, 0x25c(31)
    stfs 0, 0x814(4)
    stb 0, 0x7f6(4)
    .4byte 0x4800038C # b .L_8011B864
L_8011B4DC:
    cmpwi 0, 0x19a
    .4byte 0x40810020 # ble .L_8011B500
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_8011B500
    .4byte 0xC0229838 # lfs f1, lbl_8053C7D8@sda21(r0)
    addi 3, 31, 0x244
    .4byte 0xC042983C # lfs f2, lbl_8053C7DC@sda21(r0)
    bl fn_801CD950
    .4byte 0x48000014 # b .L_8011B510
L_8011B500:
    .4byte 0xC0229840 # lfs f1, lbl_8053C7E0@sda21(r0)
    addi 3, 31, 0x244
    .4byte 0xC0429844 # lfs f2, lbl_8053C7E4@sda21(r0)
    bl fn_801CD950
L_8011B510:
    lfs 2, 0x10(31)
    addi 3, 31, 0x254
    .4byte 0xC0229848 # lfs f1, lbl_8053C7E8@sda21(r0)
    lfs 0, 0x244(31)
    fsubs 3, 2, 1
    .4byte 0xC022984C # lfs f1, lbl_8053C7EC@sda21(r0)
    fneg 2, 0
    fsubs 1, 3, 1
    bl fn_801CD950
    .4byte 0xC0229848 # lfs f1, lbl_8053C7E8@sda21(r0)
    addi 3, 31, 0x25c
    lfs 0, 0x10(31)
    .4byte 0xC062984C # lfs f3, lbl_8053C7EC@sda21(r0)
    fadds 0, 1, 0
    lfs 2, 0x244(31)
    fadds 1, 3, 0
    bl fn_801CD950
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820300 # bne .L_8011B864
    li 0, 0x1
    li 3, 0x5
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x250(31)
    stfs 0, 0x808(4)
    lfs 0, 0x254(31)
    stfs 0, 0x80c(4)
    lfs 0, 0x258(31)
    stfs 0, 0x810(4)
    lfs 0, 0x25c(31)
    stfs 0, 0x814(4)
    stb 0, 0x7f6(4)
    .4byte 0x480002C4 # b .L_8011B864
L_8011B5A4:
    .4byte 0xC0029850 # lfs f0, lbl_8053C7F0@sda21(r0)
    lfs 3, 0xc(31)
    .4byte 0xC0429848 # lfs f2, lbl_8053C7E8@sda21(r0)
    lfs 4, 0x10(31)
    fsubs 1, 3, 0
    fadds 3, 0, 3
    fsubs 0, 4, 2
    stfs 1, 0x250(31)
    fadds 1, 2, 4
    stfs 0, 0x254(31)
    stfs 3, 0x258(31)
    stfs 1, 0x25c(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820280 # bne .L_8011B864
    li 0, 0x1
    li 3, 0x5
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x250(31)
    stfs 0, 0x808(4)
    lfs 0, 0x254(31)
    stfs 0, 0x80c(4)
    lfs 0, 0x258(31)
    stfs 0, 0x810(4)
    lfs 0, 0x25c(31)
    stfs 0, 0x814(4)
    stb 0, 0x7f6(4)
    .4byte 0x48000244 # b .L_8011B864
L_8011B624:
    psq_l 0, 0xc(31), 0, 0
    addi 3, 31, 0x248
    lfs 2, 0x14(31)
    psq_st 0, 0x14(1), 0, 0
    lfs 0, 0x248(31)
    lfs 1, 0x18(1)
    stfs 2, 0x1c(1)
    fadds 0, 1, 0
    .4byte 0xC0229848 # lfs f1, lbl_8053C7E8@sda21(r0)
    .4byte 0xC0429854 # lfs f2, lbl_8053C7F4@sda21(r0)
    stfs 0, 0x18(1)
    bl fn_801CD950
    .4byte 0xC0029850 # lfs f0, lbl_8053C7F0@sda21(r0)
    lfs 3, 0x14(1)
    .4byte 0xC0429848 # lfs f2, lbl_8053C7E8@sda21(r0)
    lfs 4, 0x18(1)
    fsubs 1, 3, 0
    fadds 3, 0, 3
    fsubs 0, 4, 2
    stfs 1, 0x250(31)
    fadds 1, 2, 4
    stfs 0, 0x254(31)
    stfs 3, 0x258(31)
    stfs 1, 0x25c(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x408201D0 # bne .L_8011B864
    li 0, 0x1
    li 3, 0x5
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x250(31)
    stfs 0, 0x808(4)
    lfs 0, 0x254(31)
    stfs 0, 0x80c(4)
    lfs 0, 0x258(31)
    stfs 0, 0x810(4)
    lfs 0, 0x25c(31)
    stfs 0, 0x814(4)
    stb 0, 0x7f6(4)
    .4byte 0x48000194 # b .L_8011B864
L_8011B6D4:
    psq_l 0, 0xc(31), 0, 0
    addi 3, 31, 0x248
    lfs 2, 0x14(31)
    psq_st 0, 0x8(1), 0, 0
    lfs 0, 0x248(31)
    lfs 1, 0xc(1)
    stfs 2, 0x10(1)
    fadds 0, 1, 0
    .4byte 0xC0229838 # lfs f1, lbl_8053C7D8@sda21(r0)
    .4byte 0xC0429854 # lfs f2, lbl_8053C7F4@sda21(r0)
    stfs 0, 0xc(1)
    bl fn_801CD950
    .4byte 0xC0029850 # lfs f0, lbl_8053C7F0@sda21(r0)
    lfs 3, 0x8(1)
    .4byte 0xC0429848 # lfs f2, lbl_8053C7E8@sda21(r0)
    lfs 4, 0xc(1)
    fsubs 1, 3, 0
    fadds 3, 0, 3
    fsubs 0, 4, 2
    stfs 1, 0x250(31)
    fadds 1, 2, 4
    stfs 0, 0x254(31)
    stfs 3, 0x258(31)
    stfs 1, 0x25c(31)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820120 # bne .L_8011B864
    li 0, 0x1
    li 3, 0x5
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x250(31)
    stfs 0, 0x808(4)
    lfs 0, 0x254(31)
    stfs 0, 0x80c(4)
    lfs 0, 0x258(31)
    stfs 0, 0x810(4)
    lfs 0, 0x25c(31)
    stfs 0, 0x814(4)
    stb 0, 0x7f6(4)
    .4byte 0x480000E4 # b .L_8011B864
L_8011B784:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x408200D0 # bne .L_8011B864
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
    .4byte 0x4800009C # b .L_8011B864
L_8011B7CC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820088 # bne .L_8011B864
    li 0, 0x1
    .4byte 0xC0229858 # lfs f1, lbl_8053C7F8@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002985C # lfs f0, lbl_8053C7FC@sda21(r0)
    lfs 2, 0xc(31)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x10(31)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
    .4byte 0x48000050 # b .L_8011B864
L_8011B818:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x4082003C # bne .L_8011B864
    li 0, 0x1
    li 3, 0x5
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x250(31)
    stfs 0, 0x808(4)
    lfs 0, 0x254(31)
    stfs 0, 0x80c(4)
    lfs 0, 0x258(31)
    stfs 0, 0x810(4)
    lfs 0, 0x25c(31)
    stfs 0, 0x814(4)
    stb 0, 0x7f6(4)
L_8011B864:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_8011B878:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 4
    cmplwi 31, 0x22
    stw 30, 0x68(1)
    mr 30, 3
    stw 29, 0x64(1)
    .4byte 0x418104F0 # bgt .L_8011BD8C
    lis 4, jumptable_8049DBF0@ha
    slwi 0, 31, 2
    addi 4, 4, jumptable_8049DBF0@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    li 0, 0x0
    stb 0, 0x11d(30)
    .4byte 0x480004CC # b .L_8011BD8C
    lwz 12, 0x0(3)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x480004B0 # b .L_8011BD8C
    bl fn_801902C0
    li 0, 0x1
    lis 4, 0x4
    stb 0, 0x7c0(3)
    addi 4, 4, 0x35
    li 5, 0x0
    stw 0, 0x7bc(3)
    mr 3, 30
    bl fn_801F0E34
    addi 3, 30, 0x278
    li 4, 0x4
    bl fn_800FEB78
    li 0, 0x1
    stb 0, 0x11d(30)
    .4byte 0x48000474 # b .L_8011BD8C
    addi 3, 30, 0x278
    li 4, 0x0
    bl fn_800FEB78
    .4byte 0x48000464 # b .L_8011BD8C
    lis 4, 0x4
    li 5, 0x0
    addi 4, 4, 0xc7
    bl fn_801F0E34
    .4byte 0x48000450 # b .L_8011BD8C
    addi 3, 30, 0x278
    li 4, 0x4
    bl fn_800FEB78
    .4byte 0x48000440 # b .L_8011BD8C
    lwz 12, 0x0(3)
    li 4, 0xff
    li 5, 0x0
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0x0
    .4byte 0xC002987C # lfs f0, lbl_8053C81C@sda21(r0)
    stb 0, 0x11d(30)
    li 29, 0x0
    psq_l 1, 0x24(30), 0, 0
    lfs 2, 0x2c(30)
    psq_st 1, 0x50(1), 0, 0
    lfs 1, 0x54(1)
    stfs 2, 0x58(1)
    fadds 0, 1, 0
    stfs 0, 0x54(1)
L_8011B994:
    mr 3, 29
    addi 4, 1, 0x50
    li 5, 0x18
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFD8 # blt .L_8011B994
    .4byte 0x480003CC # b .L_8011BD8C
    li 29, 0x0
L_8011B9C8:
    mr 3, 29
    li 4, 0x3
    bl fn_80230BF4
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFEC # blt .L_8011B9C8
    psq_l 1, 0x24(30), 0, 0
    li 3, 0x0
    lfs 0, 0x2c(30)
    psq_st 1, 0x260(30), 0, 0
    stfs 0, 0x268(30)
    bl fn_8023E724
    lfs 0, 0x2c(30)
    psq_l 1, 0x24(30), 0, 0
    psq_l 2, 0x0(3), 0, 0
    stfs 0, 0x10(1)
    ps_sub 5, 1, 2
    psq_l 0, 0x8(3), 1, 0
    psq_l 2, 0x10(1), 1, 0
    psq_st 1, 0x8(1), 0, 0
    ps_sub 2, 2, 0
    .4byte 0xC0629880 # lfs f3, lbl_8053C820@sda21(r0)
    psq_st 5, 0x2c(1), 0, 0
    lfs 1, 0x2c(1)
    lfs 0, 0x30(1)
    psq_st 2, 0x10(1), 1, 0
    fdivs 2, 1, 3
    lfs 4, 0x10(1)
    psq_st 5, 0x8(1), 0, 0
    psq_st 5, 0x38(1), 0, 0
    stfs 4, 0x40(1)
    stfs 4, 0x34(1)
    fdivs 1, 0, 3
    stfs 2, 0x44(1)
    frsp 0, 4
    stfs 1, 0x48(1)
    psq_l 1, 0x44(1), 0, 0
    fdivs 0, 0, 3
    psq_st 1, 0x26c(30), 0, 0
    stfs 0, 0x4c(1)
    stfs 0, 0x274(30)
    .4byte 0x48000320 # b .L_8011BD8C
    li 0, 0x0
    stb 0, 0x11d(30)
    .4byte 0x48000314 # b .L_8011BD8C
    psq_l 2, 0xc(30), 0, 0
    addi 4, 1, 0x20
    lfs 0, 0x14(30)
    li 5, 0x41d
    .4byte 0xC0229858 # lfs f1, lbl_8053C7F8@sda21(r0)
    li 6, 0x0
    psq_st 2, 0x0(4), 0, 0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    stfs 0, 0x28(1)
    li 10, 0x1
    lwz 3, 0x4(30)
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 1, 0x20
    .4byte 0xC0229858 # lfs f1, lbl_8053C7F8@sda21(r0)
    li 5, 0x41e
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 1, 0x20
    .4byte 0xC0229858 # lfs f1, lbl_8053C7F8@sda21(r0)
    li 5, 0x41f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 1, 0x20
    .4byte 0xC0229858 # lfs f1, lbl_8053C7F8@sda21(r0)
    li 5, 0x420
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 30
    addi 4, 4, 0x91
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800024C # b .L_8011BD8C
    li 0, 0x1
    stb 0, 0x11d(30)
    .4byte 0x48000240 # b .L_8011BD8C
    li 3, 0x3
    li 0, 0x1
    stw 3, 0x98(30)
    stw 0, 0x278(30)
    stb 3, 0x284(30)
    .4byte 0x48000228 # b .L_8011BD8C
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x98(30)
    stw 0, 0x278(30)
    stb 3, 0x284(30)
    .4byte 0x48000210 # b .L_8011BD8C
    li 3, 0x2
    li 0, 0x0
    stw 3, 0x98(30)
    addi 4, 1, 0x14
    .4byte 0xC0029878 # lfs f0, lbl_8053C818@sda21(r0)
    li 5, 0x33b
    stw 0, 0x278(30)
    li 6, 0x0
    .4byte 0xC0229858 # lfs f1, lbl_8053C7F8@sda21(r0)
    li 7, 0x0
    stb 3, 0x284(30)
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    psq_l 2, 0xc(30), 0, 0
    lfs 3, 0x14(30)
    psq_st 2, 0x0(4), 0, 0
    lfs 2, 0x18(1)
    stfs 3, 0x1c(1)
    fadds 0, 2, 0
    stfs 0, 0x18(1)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    .4byte 0x480001B0 # b .L_8011BD8C
    li 0, 0x3
    addi 3, 30, 0x278
    stw 0, 0x98(30)
    li 4, 0x1
    bl fn_800FEB78
    .4byte 0x48000198 # b .L_8011BD8C
    addi 3, 30, 0x278
    li 4, 0x0
    bl fn_800FEB78
    .4byte 0x48000188 # b .L_8011BD8C
    li 0, 0x3
    addi 3, 30, 0x278
    stw 0, 0x98(30)
    li 4, 0x1
    bl fn_800FEB78
    .4byte 0xC0029838 # lfs f0, lbl_8053C7D8@sda21(r0)
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    .4byte 0x48000160 # b .L_8011BD8C
    addi 3, 30, 0x278
    li 4, 0x4
    bl fn_800FEB78
    li 0, 0x0
    li 29, 0x0
    stw 0, 0x23c(30)
L_8011BC48:
    mr 3, 29
    bl fn_8023E724
    mr 4, 3
    mr 3, 29
    li 5, 0x3f
    li 6, 0xff
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFD0 # blt .L_8011BC48
    .4byte 0x48000110 # b .L_8011BD8C
    li 0, 0x2
    addi 3, 30, 0x278
    stw 0, 0x98(30)
    li 4, 0x0
    bl fn_800FEB78
    li 0, 0x0
    stw 0, 0x23c(30)
    .4byte 0x480000F0 # b .L_8011BD8C
    addi 3, 30, 0x278
    li 4, 0x0
    bl fn_800FEB78
    li 0, 0x0
    stw 0, 0x23c(30)
    .4byte 0x480000D8 # b .L_8011BD8C
    addi 3, 30, 0x278
    li 4, 0x4
    bl fn_800FEB78
    lbz 3, 0x231(30)
    lis 4, 0x4
    li 0, 0x0
    .4byte 0xC0029838 # lfs f0, lbl_8053C7D8@sda21(r0)
    cntlzw 5, 3
    mr 3, 30
    srwi 5, 5, 5
    addi 4, 4, 0xc7
    stb 5, 0x231(30)
    li 5, 0x0
    stw 0, 0x23c(30)
    stfs 0, 0x14(30)
    bl fn_801F0E34
    .4byte 0x48000094 # b .L_8011BD8C
    addi 3, 30, 0x278
    li 4, 0x0
    bl fn_800FEB78
    .4byte 0xC0029838 # lfs f0, lbl_8053C7D8@sda21(r0)
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x14(30)
    .4byte 0x48000070 # b .L_8011BD8C
    lis 4, 0x4
    li 5, 0x0
    addi 4, 4, 0xc7
    bl fn_801F0E34
    .4byte 0x4800005C # b .L_8011BD8C
    addi 3, 30, 0x278
    li 4, 0x4
    bl fn_800FEB78
    .4byte 0xC0029838 # lfs f0, lbl_8053C7D8@sda21(r0)
    stfs 0, 0x14(30)
    .4byte 0x48000044 # b .L_8011BD8C
    li 0, 0x3
    addi 3, 30, 0x278
    stw 0, 0x98(30)
    li 4, 0x0
    bl fn_800FEB78
    .4byte 0x4800002C # b .L_8011BD8C
    lis 4, 0x4
    li 5, 0x0
    addi 4, 4, 0xc7
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_8011BD8C
    li 0, 0x2
    addi 3, 30, 0x278
    stw 0, 0x98(30)
    li 4, 0x1
    bl fn_800FEB78
L_8011BD8C:
    stw 31, 0x238(30)
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    lwz 29, 0x64(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_8011BDAC:
    lwz 3, 0x238(3)
    subi 0, 3, 0xc
    cmplwi 0, 0x16
    .4byte 0x41810024 # bgt .L_8011BDDC
    lis 3, jumptable_8049DC7C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049DC7C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 3, 0x1
    blr
L_8011BDDC:
    li 3, 0x0
    blr

fn_8011BDE4:
    lwz 3, 0x238(3)
    blr

fn_8011BDEC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    bl fn_8011921C
    lwz 0, 0x234(30)
    lwz 31, 0x8(3)
    cmpwi 0, 0x1
    .4byte 0x41820154 # beq .L_8011BF68
    .4byte 0x408002E8 # bge .L_8011C100
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_8011BE2C
    .4byte 0x480002DC # b .L_8011C100
    .4byte 0x480002D8 # b .L_8011C100
L_8011BE2C:
    lis 3, lbl_80464AF8@ha
    addi 3, 3, lbl_80464AF8@l
    lwz 0, 0x4(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011BE50
    mr 3, 30
    li 4, 0x1
    bl fn_8011B878
    .4byte 0x480002B4 # b .L_8011C100
L_8011BE50:
    lwz 0, 0x8(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011BE6C
    mr 3, 30
    li 4, 0x2
    bl fn_8011B878
    .4byte 0x48000298 # b .L_8011C100
L_8011BE6C:
    lwz 0, 0xc(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011BE88
    mr 3, 30
    li 4, 0x3
    bl fn_8011B878
    .4byte 0x4800027C # b .L_8011C100
L_8011BE88:
    lwz 0, 0x10(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011BEA4
    mr 3, 30
    li 4, 0x4
    bl fn_8011B878
    .4byte 0x48000260 # b .L_8011C100
L_8011BEA4:
    lwz 0, 0x18(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011BEC0
    mr 3, 30
    li 4, 0x6
    bl fn_8011B878
    .4byte 0x48000244 # b .L_8011C100
L_8011BEC0:
    lwz 0, 0x1c(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011BEDC
    mr 3, 30
    li 4, 0x7
    bl fn_8011B878
    .4byte 0x48000228 # b .L_8011C100
L_8011BEDC:
    lwz 0, 0x20(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011BEF8
    mr 3, 30
    li 4, 0x8
    bl fn_8011B878
    .4byte 0x4800020C # b .L_8011C100
L_8011BEF8:
    lwz 0, 0x24(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011BF14
    mr 3, 30
    li 4, 0x9
    bl fn_8011B878
    .4byte 0x480001F0 # b .L_8011C100
L_8011BF14:
    lwz 0, 0x28(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011BF30
    mr 3, 30
    li 4, 0xa
    bl fn_8011B878
    .4byte 0x480001D4 # b .L_8011C100
L_8011BF30:
    lwz 0, 0x2c(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011BF4C
    mr 3, 30
    li 4, 0xb
    bl fn_8011B878
    .4byte 0x480001B8 # b .L_8011C100
L_8011BF4C:
    lwz 0, 0x30(3)
    cmpw 31, 0
    .4byte 0x408201AC # bne .L_8011C100
    mr 3, 30
    li 4, 0xc
    bl fn_8011B878
    .4byte 0x4800019C # b .L_8011C100
L_8011BF68:
    bl fn_8011921C
    lwz 0, 0x4(3)
    cmpwi 0, 0x11
    .4byte 0x408200D0 # bne .L_8011C044
    lis 3, lbl_80464AF8@ha
    addi 3, 3, lbl_80464AF8@l
    lwz 0, 0x38(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011BF9C
    mr 3, 30
    li 4, 0xe
    bl fn_8011B878
    .4byte 0x48000168 # b .L_8011C100
L_8011BF9C:
    lwz 0, 0x3c(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011BFB8
    mr 3, 30
    li 4, 0xf
    bl fn_8011B878
    .4byte 0x4800014C # b .L_8011C100
L_8011BFB8:
    lwz 0, 0x40(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011BFD4
    mr 3, 30
    li 4, 0x10
    bl fn_8011B878
    .4byte 0x48000130 # b .L_8011C100
L_8011BFD4:
    lwz 0, 0x44(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011BFF0
    mr 3, 30
    li 4, 0x11
    bl fn_8011B878
    .4byte 0x48000114 # b .L_8011C100
L_8011BFF0:
    lwz 0, 0x48(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011C00C
    mr 3, 30
    li 4, 0x12
    bl fn_8011B878
    .4byte 0x480000F8 # b .L_8011C100
L_8011C00C:
    lwz 0, 0x4c(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011C028
    mr 3, 30
    li 4, 0x13
    bl fn_8011B878
    .4byte 0x480000DC # b .L_8011C100
L_8011C028:
    lwz 0, 0x50(3)
    cmpw 31, 0
    .4byte 0x408200D0 # bne .L_8011C100
    mr 3, 30
    li 4, 0x14
    bl fn_8011B878
    .4byte 0x480000C0 # b .L_8011C100
L_8011C044:
    bl fn_8011921C
    lwz 0, 0x4(3)
    cmpwi 0, 0x2
    .4byte 0x408200B0 # bne .L_8011C100
    lis 3, lbl_80464AF8@ha
    addi 3, 3, lbl_80464AF8@l
    lwz 0, 0x6c(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011C078
    mr 3, 30
    li 4, 0x1b
    bl fn_8011B878
    .4byte 0x4800008C # b .L_8011C100
L_8011C078:
    lwz 0, 0x70(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011C094
    mr 3, 30
    li 4, 0x1c
    bl fn_8011B878
    .4byte 0x48000070 # b .L_8011C100
L_8011C094:
    lwz 0, 0x74(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011C0B0
    mr 3, 30
    li 4, 0x1d
    bl fn_8011B878
    .4byte 0x48000054 # b .L_8011C100
L_8011C0B0:
    lwz 0, 0x7c(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011C0CC
    mr 3, 30
    li 4, 0x1f
    bl fn_8011B878
    .4byte 0x48000038 # b .L_8011C100
L_8011C0CC:
    lwz 0, 0x80(3)
    cmpw 31, 0
    .4byte 0x40820014 # bne .L_8011C0E8
    mr 3, 30
    li 4, 0x20
    bl fn_8011B878
    .4byte 0x4800001C # b .L_8011C100
L_8011C0E8:
    lwz 0, 0x84(3)
    cmpw 31, 0
    .4byte 0x40820010 # bne .L_8011C100
    mr 3, 30
    li 4, 0x21
    bl fn_8011B878
L_8011C100:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011C118:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    bl fn_8010DF58
    li 0, -0x1
    addi 9, 1, 0x10
    stw 0, 0x20(1)
    li 10, 0x0
    stw 0, 0x24(1)
    .4byte 0x48000064 # b .L_8011C1B0
L_8011C150:
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
L_8011C1B0:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8011C150
    li 6, 0x0
    li 5, 0x1
    stb 6, 0x3e(1)
    li 7, -0x1
    li 4, 0x3
    li 3, 0x2
    li 0, 0x40
    stw 7, 0x20(1)
    stw 6, 0x24(1)
    stw 6, 0x28(1)
    stb 6, 0x2c(1)
    stb 6, 0x2d(1)
    stb 6, 0x2e(1)
    stb 5, 0x2f(1)
    stb 5, 0x30(1)
    stb 6, 0x31(1)
    stb 6, 0x32(1)
    stb 6, 0x33(1)
    stb 6, 0x34(1)
    stb 6, 0x35(1)
    stb 5, 0x36(1)
    stw 4, 0x38(1)
    stb 5, 0x3c(1)
    stb 6, 0x3d(1)
    stw 7, 0x40(1)
    stw 6, 0x44(1)
    stw 3, 0x48(1)
    stb 0, 0x3e(1)
    lwz 0, 0x138(31)
    lwz 8, 0x280(31)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_8011C25C
    lis 4, lbl_80464B84@ha
    lwz 3, 0x4(31)
    addi 7, 4, lbl_80464B84@l
    addi 5, 1, 0x10
    addi 4, 31, 0xc
    li 6, 0x7
    li 9, 0x0
    bl fn_801EF830
L_8011C25C:
    lwz 0, 0x4(31)
    addi 29, 31, 0xc
    lwz 30, 0x280(31)
    cmpwi 0, 0x8
    .4byte 0x40800050 # bge .L_8011C2BC
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80464B84@ha
    addi 5, 3, lbl_80464B84@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC0229858 # lfs f1, lbl_8053C7F8@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 29
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(6)
    mr 6, 30
    bl fn_802F86CC
L_8011C2BC:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    lwz 6, 0x280(31)
    bl fn_803075AC
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8011C308:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    mr 31, 3
    bl fn_8010DF78
    lwz 0, 0x238(31)
    cmpwi 0, 0x2
    .4byte 0x41800024 # blt .L_8011C35C
    cmpwi 0, 0xb
    .4byte 0x4181001C # bgt .L_8011C35C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 31, 0xc
    lwz 3, 0x24(3)
    bl fn_8030C210
    mr 3, 31
    bl fn_8011B3F0
L_8011C35C:
    lwz 0, 0x238(31)
    cmplwi 0, 0x22
    .4byte 0x4181076C # bgt .L_8011CAD0
    lis 3, jumptable_8049DCD8@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049DCD8@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 0, 0x0
    stb 0, 0x11d(31)
    .4byte 0x48000748 # b .L_8011CAD0
    bl fn_8011921C
    lis 4, lbl_80464AF8@ha
    lis 0, 0x4330
    addi 4, 4, lbl_80464AF8@l
    lwz 3, 0x8(3)
    lwz 4, 0x10(4)
    stw 0, 0x30(1)
    subf 3, 4, 3
    .4byte 0xC8629870 # lfd f3, lbl_8053C810@sda21(r0)
    xoris 0, 3, 0x8000
    .4byte 0xC0829864 # lfs f4, lbl_8053C804@sda21(r0)
    stw 0, 0x34(1)
    cmpwi 3, 0x1
    .4byte 0xC0429860 # lfs f2, lbl_8053C800@sda21(r0)
    lfd 1, 0x30(1)
    .4byte 0xC0029884 # lfs f0, lbl_8053C824@sda21(r0)
    fsubs 3, 1, 3
    .4byte 0xC0229838 # lfs f1, lbl_8053C7D8@sda21(r0)
    fnmsubs 2, 4, 3, 2
    stfs 2, 0x44(31)
    stfs 0, 0x40(31)
    stfs 1, 0x3c(31)
    .4byte 0x4081002C # ble .L_8011C410
    lfs 0, 0x14(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8011C410
    stfs 1, 0x44(31)
    li 0, 0x1
    stfs 1, 0x40(31)
    stfs 1, 0x3c(31)
    stfs 1, 0x14(31)
    .4byte 0x48000008 # b .L_8011C414
L_8011C410:
    li 0, 0x0
L_8011C414:
    clrlwi. 0, 0, 24
    .4byte 0x418206B8 # beq .L_8011CAD0
    mr 3, 31
    li 4, 0x5
    bl fn_8011B878
    .4byte 0x480006A8 # b .L_8011CAD0
    bl fn_8011921C
    lis 4, lbl_80464AF8@ha
    lis 0, 0x4330
    addi 4, 4, lbl_80464AF8@l
    lwz 3, 0x8(3)
    lwz 4, 0x24(4)
    stw 0, 0x30(1)
    subf 3, 4, 3
    .4byte 0xC8629870 # lfd f3, lbl_8053C810@sda21(r0)
    xoris 0, 3, 0x8000
    .4byte 0xC0829864 # lfs f4, lbl_8053C804@sda21(r0)
    stw 0, 0x34(1)
    cmpwi 3, 0x1
    .4byte 0xC0229860 # lfs f1, lbl_8053C800@sda21(r0)
    lfd 2, 0x30(1)
    .4byte 0xC0029868 # lfs f0, lbl_8053C808@sda21(r0)
    fsubs 2, 2, 3
    fnmsubs 1, 4, 2, 1
    stfs 1, 0x44(31)
    stfs 0, 0x40(31)
    .4byte 0x40810654 # ble .L_8011CAD0
    lfs 1, 0x14(31)
    .4byte 0xC0029838 # lfs f0, lbl_8053C7D8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820640 # bne .L_8011CAD0
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x14(31)
    .4byte 0x4800062C # b .L_8011CAD0
    li 30, 0x0
    addi 29, 1, 0x8
L_8011C4B0:
    mr 3, 30
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 29
    lfs 0, 0x8(3)
    mr 3, 30
    li 5, 0xff
    stfs 0, 0x10(1)
    psq_st 1, 0x0(29), 0, 0
    psq_l 2, 0x8(29), 1, 0
    psq_l 0, 0x26c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0x0(29), 0, 0
    psq_l 0, 0x274(31), 1, 0
    ps_add 0, 2, 0
    psq_st 0, 0x8(29), 1, 0
    bl fn_802303FC
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFB4 # blt .L_8011C4B0
    .4byte 0x480005D0 # b .L_8011CAD0
    lfs 2, 0x10(31)
    .4byte 0xC0229888 # lfs f1, lbl_8053C828@sda21(r0)
    .4byte 0xC0029850 # lfs f0, lbl_8053C7F0@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    lfs 1, 0x28(31)
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x408205A4 # bne .L_8011CAD0
    stfs 0, 0x10(31)
    .4byte 0x4800059C # b .L_8011CAD0
    bl fn_8011921C
    lis 4, lbl_80464AF8@ha
    lis 0, 0x4330
    addi 4, 4, lbl_80464AF8@l
    lwz 3, 0x8(3)
    lwz 4, 0x4c(4)
    stw 0, 0x30(1)
    subf 3, 4, 3
    .4byte 0xC8629870 # lfd f3, lbl_8053C810@sda21(r0)
    xoris 0, 3, 0x8000
    .4byte 0xC0829864 # lfs f4, lbl_8053C804@sda21(r0)
    stw 0, 0x34(1)
    cmpwi 3, 0x1
    .4byte 0xC002988C # lfs f0, lbl_8053C82C@sda21(r0)
    lfd 2, 0x30(1)
    .4byte 0xC0229838 # lfs f1, lbl_8053C7D8@sda21(r0)
    fsubs 2, 2, 3
    fnmsubs 0, 4, 2, 0
    stfs 0, 0x44(31)
    stfs 1, 0x40(31)
    stfs 1, 0x3c(31)
    .4byte 0x40810544 # ble .L_8011CAD0
    lfs 0, 0x14(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820534 # bne .L_8011CAD0
    stfs 1, 0x44(31)
    stfs 1, 0x40(31)
    stfs 1, 0x3c(31)
    stfs 1, 0x14(31)
    .4byte 0x48000520 # b .L_8011CAD0
    lfs 2, 0x10(31)
    .4byte 0xC0229890 # lfs f1, lbl_8053C830@sda21(r0)
    .4byte 0xC0029894 # lfs f0, lbl_8053C834@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(31)
    lfs 1, 0x28(31)
    lfs 2, 0x10(31)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_8011C5F4
    stfs 0, 0x10(31)
    mr 3, 31
    li 4, 0x17
    bl fn_8011B878
    .4byte 0x480004E0 # b .L_8011CAD0
L_8011C5F4:
    bl fn_8011921C
    lwz 0, 0x8(3)
    cmpwi 0, 0x52d
    .4byte 0x418004D0 # blt .L_8011CAD0
    li 3, 0x0
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    li 29, 0x0
    lfs 2, 0x8(3)
    .4byte 0xC0029898 # lfs f0, lbl_8053C838@sda21(r0)
    psq_st 1, 0x20(1), 0, 0
    lfs 1, 0x24(1)
    stfs 2, 0x28(1)
    fsubs 0, 1, 0
    stfs 0, 0x24(1)
L_8011C630:
    mr 3, 29
    addi 4, 1, 0x20
    li 5, 0xff
    bl fn_802303FC
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFE8 # blt .L_8011C630
    .4byte 0x48000484 # b .L_8011CAD0
    bl fn_8011921C
    lbz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_8011C678
    bl fn_8011921C
    li 4, 0x12
    bl fn_801186B0
    bl fn_8011921C
    li 0, 0x1
    stb 0, 0x2(3)
L_8011C678:
    lfs 1, 0x10(31)
    .4byte 0xC0029890 # lfs f0, lbl_8053C830@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    lfs 0, 0x10(31)
    lfs 1, 0x28(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_8011C6B0
    stfs 1, 0x10(31)
    mr 3, 31
    li 4, 0x17
    bl fn_8011B878
    .4byte 0x48000424 # b .L_8011CAD0
L_8011C6B0:
    psq_l 1, 0xc(31), 0, 0
    li 29, 0x0
    lfs 2, 0x14(31)
    .4byte 0xC0029848 # lfs f0, lbl_8053C7E8@sda21(r0)
    psq_st 1, 0x14(1), 0, 0
    lfs 1, 0x18(1)
    stfs 2, 0x1c(1)
    fadds 0, 1, 0
    stfs 0, 0x18(1)
L_8011C6D4:
    mr 3, 29
    addi 4, 1, 0x14
    li 5, 0xff
    bl fn_802303FC
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFE8 # blt .L_8011C6D4
    .4byte 0x480003E0 # b .L_8011CAD0
    lwz 3, 0x23c(31)
    lis 0, 0x4330
    stw 0, 0x30(1)
    addi 0, 3, 0x1
    .4byte 0xC8829870 # lfd f4, lbl_8053C810@sda21(r0)
    stw 0, 0x23c(31)
    .4byte 0xC0A29864 # lfs f5, lbl_8053C804@sda21(r0)
    lwz 3, 0x23c(31)
    .4byte 0xC0429860 # lfs f2, lbl_8053C800@sda21(r0)
    xoris 0, 3, 0x8000
    .4byte 0xC022989C # lfs f1, lbl_8053C83C@sda21(r0)
    stw 0, 0x34(1)
    cmpwi 3, 0x1
    .4byte 0xC00298A0 # lfs f0, lbl_8053C840@sda21(r0)
    lfd 3, 0x30(1)
    fsubs 3, 3, 4
    fnmsubs 2, 5, 3, 2
    stfs 2, 0x44(31)
    stfs 1, 0x40(31)
    stfs 0, 0x3c(31)
    .4byte 0x40810030 # ble .L_8011C774
    lfs 1, 0x14(31)
    .4byte 0xC0029838 # lfs f0, lbl_8053C7D8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8011C774
    stfs 0, 0x44(31)
    li 0, 0x1
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x14(31)
    .4byte 0x48000008 # b .L_8011C778
L_8011C774:
    li 0, 0x0
L_8011C778:
    clrlwi. 0, 0, 24
    .4byte 0x41820354 # beq .L_8011CAD0
    mr 3, 31
    li 4, 0x18
    bl fn_8011B878
    .4byte 0x48000344 # b .L_8011CAD0
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xc7
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    li 4, 0x19
    bl fn_8011B878
    .4byte 0x48000320 # b .L_8011CAD0
    lwz 3, 0x23c(31)
    lis 0, 0x4330
    stw 0, 0x30(1)
    addi 0, 3, 0x1
    .4byte 0xC8629870 # lfd f3, lbl_8053C810@sda21(r0)
    stw 0, 0x23c(31)
    .4byte 0xC0829864 # lfs f4, lbl_8053C804@sda21(r0)
    lwz 3, 0x23c(31)
    .4byte 0xC002988C # lfs f0, lbl_8053C82C@sda21(r0)
    xoris 0, 3, 0x8000
    .4byte 0xC0229838 # lfs f1, lbl_8053C7D8@sda21(r0)
    stw 0, 0x34(1)
    cmpwi 3, 0x1
    lfd 2, 0x30(1)
    fsubs 2, 2, 3
    fnmsubs 0, 4, 2, 0
    stfs 0, 0x44(31)
    stfs 1, 0x40(31)
    stfs 1, 0x3c(31)
    .4byte 0x4081002C # ble .L_8011C82C
    lfs 0, 0x14(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8011C82C
    stfs 1, 0x44(31)
    li 0, 0x1
    stfs 1, 0x40(31)
    stfs 1, 0x3c(31)
    stfs 1, 0x14(31)
    .4byte 0x48000008 # b .L_8011C830
L_8011C82C:
    li 0, 0x0
L_8011C830:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_8011C840
    li 0, 0x0
    stw 0, 0x23c(31)
L_8011C840:
    mr 3, 31
    li 4, 0x0
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    clrlwi. 0, 3, 24
    .4byte 0x41820278 # beq .L_8011CAD0
    mr 3, 31
    li 4, 0x1a
    bl fn_8011B878
    .4byte 0x48000268 # b .L_8011CAD0
    lwz 3, 0x23c(31)
    .4byte 0xC08298A4 # lfs f4, lbl_8053C844@sda21(r0)
    addi 0, 3, 0x1
    stw 0, 0x23c(31)
    lbz 0, 0x231(31)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_8011C88C
    .4byte 0xC08298A8 # lfs f4, lbl_8053C848@sda21(r0)
L_8011C88C:
    lwz 3, 0x23c(31)
    lis 0, 0x4330
    stw 0, 0x30(1)
    xoris 0, 3, 0x8000
    .4byte 0xC8429870 # lfd f2, lbl_8053C810@sda21(r0)
    stw 0, 0x34(1)
    cmpwi 3, 0x1
    .4byte 0xC0629864 # lfs f3, lbl_8053C804@sda21(r0)
    lfd 1, 0x30(1)
    .4byte 0xC0029860 # lfs f0, lbl_8053C800@sda21(r0)
    fsubs 2, 1, 2
    .4byte 0xC0229838 # lfs f1, lbl_8053C7D8@sda21(r0)
    fnmsubs 0, 3, 2, 0
    stfs 0, 0x44(31)
    stfs 1, 0x40(31)
    stfs 4, 0x3c(31)
    .4byte 0x4081002C # ble .L_8011C8F8
    lfs 0, 0x14(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8011C8F8
    stfs 1, 0x44(31)
    li 0, 0x1
    stfs 1, 0x40(31)
    stfs 1, 0x3c(31)
    stfs 1, 0x14(31)
    .4byte 0x48000008 # b .L_8011C8FC
L_8011C8F8:
    li 0, 0x0
L_8011C8FC:
    clrlwi. 0, 0, 24
    .4byte 0x418201D0 # beq .L_8011CAD0
    mr 3, 31
    li 4, 0x19
    bl fn_8011B878
    lbz 0, 0x231(31)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8011C930
    lfs 1, 0x24(31)
    .4byte 0xC0029850 # lfs f0, lbl_8053C7F0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(31)
    .4byte 0x480001A4 # b .L_8011CAD0
L_8011C930:
    .4byte 0xC0229850 # lfs f1, lbl_8053C7F0@sda21(r0)
    lfs 0, 0x24(31)
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    .4byte 0x48000190 # b .L_8011CAD0
    lwz 0, 0x240(31)
    cmpwi 0, 0x3
    .4byte 0x40800184 # bge .L_8011CAD0
    lwz 3, 0x23c(31)
    lis 0, 0x4330
    stw 0, 0x30(1)
    addi 0, 3, 0x1
    .4byte 0xC8629870 # lfd f3, lbl_8053C810@sda21(r0)
    stw 0, 0x23c(31)
    .4byte 0xC0829864 # lfs f4, lbl_8053C804@sda21(r0)
    lwz 3, 0x23c(31)
    .4byte 0xC002988C # lfs f0, lbl_8053C82C@sda21(r0)
    xoris 0, 3, 0x8000
    .4byte 0xC0229838 # lfs f1, lbl_8053C7D8@sda21(r0)
    stw 0, 0x34(1)
    cmpwi 3, 0x1
    lfd 2, 0x30(1)
    fsubs 2, 2, 3
    fnmsubs 0, 4, 2, 0
    stfs 0, 0x44(31)
    stfs 1, 0x40(31)
    stfs 1, 0x3c(31)
    .4byte 0x4081002C # ble .L_8011C9C8
    lfs 0, 0x14(31)
    fcmpo cr0, 0, 1
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8011C9C8
    stfs 1, 0x44(31)
    li 0, 0x1
    stfs 1, 0x40(31)
    stfs 1, 0x3c(31)
    stfs 1, 0x14(31)
    .4byte 0x48000008 # b .L_8011C9CC
L_8011C9C8:
    li 0, 0x0
L_8011C9CC:
    clrlwi. 0, 0, 24
    .4byte 0x41820100 # beq .L_8011CAD0
    li 0, 0x0
    stw 0, 0x23c(31)
    lwz 3, 0x240(31)
    addi 0, 3, 0x1
    stw 0, 0x240(31)
    .4byte 0x480000E8 # b .L_8011CAD0
    lbz 0, 0x231(31)
    .4byte 0xC3E298A0 # lfs f31, lbl_8053C840@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_8011CA00
    .4byte 0xC3E298AC # lfs f31, lbl_8053C84C@sda21(r0)
L_8011CA00:
    bl fn_8011921C
    lis 4, lbl_80464AF8@ha
    lis 0, 0x4330
    addi 4, 4, lbl_80464AF8@l
    lwz 3, 0x8(3)
    lwz 4, 0x74(4)
    stw 0, 0x30(1)
    subf 3, 4, 3
    .4byte 0xC8629870 # lfd f3, lbl_8053C810@sda21(r0)
    xoris 0, 3, 0x8000
    .4byte 0xC0829864 # lfs f4, lbl_8053C804@sda21(r0)
    stw 0, 0x34(1)
    cmpwi 3, 0x1
    .4byte 0xC0229860 # lfs f1, lbl_8053C800@sda21(r0)
    lfd 2, 0x30(1)
    .4byte 0xC00298B0 # lfs f0, lbl_8053C850@sda21(r0)
    fsubs 2, 2, 3
    fnmsubs 1, 4, 2, 1
    stfs 1, 0x44(31)
    stfs 0, 0x40(31)
    stfs 31, 0x3c(31)
    .4byte 0x40810030 # ble .L_8011CA84
    lfs 1, 0x14(31)
    .4byte 0xC0029838 # lfs f0, lbl_8053C7D8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082001C # bne .L_8011CA84
    stfs 0, 0x44(31)
    li 0, 0x1
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stfs 0, 0x14(31)
    .4byte 0x48000008 # b .L_8011CA88
L_8011CA84:
    li 0, 0x0
L_8011CA88:
    clrlwi. 0, 0, 24
    .4byte 0x41820044 # beq .L_8011CAD0
    mr 3, 31
    li 4, 0x1e
    bl fn_8011B878
    .4byte 0x48000034 # b .L_8011CAD0
    lfs 2, 0x10(31)
    .4byte 0xC0029890 # lfs f0, lbl_8053C830@sda21(r0)
    .4byte 0xC02298B4 # lfs f1, lbl_8053C854@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x10(31)
    lfs 0, 0x28(31)
    lfs 2, 0x10(31)
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8011CAD0
    stfs 0, 0x10(31)
L_8011CAD0:
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    lwz 0, 0x98(31)
    stb 0, 0x284(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x10
    .4byte 0x40820030 # bne .L_8011CB30
    lbz 0, 0x230(31)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_8011CB24
    addi 3, 31, 0x278
    bl fn_800FE8C0
    li 0, 0x0
    stb 0, 0x230(31)
    .4byte 0x48000018 # b .L_8011CB38
L_8011CB24:
    li 0, 0x1
    stb 0, 0x230(31)
    .4byte 0x4800000C # b .L_8011CB38
L_8011CB30:
    addi 3, 31, 0x278
    bl fn_800FE8C0
L_8011CB38:
    psq_l 31, 0x58(1), 0, 0
    lwz 0, 0x64(1)
    lfd 31, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_8011CB5C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_8010DF98
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    stw 0, 0x234(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 2, 26
    extsb 0, 0
    stw 0, 0x98(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x2
    .4byte 0x41820038 # beq .L_8011CBD0
    .4byte 0x40800068 # bge .L_8011CC04
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_8011CBAC
    .4byte 0x4800005C # b .L_8011CC04
L_8011CBAC:
    mr 3, 31
    li 4, 0xd
    bl fn_8011B878
    li 0, 0x3
    addi 3, 31, 0x278
    stw 0, 0x98(31)
    li 4, 0x0
    bl fn_800FEB78
    .4byte 0x48000044 # b .L_8011CC10
L_8011CBD0:
    mr 3, 31
    li 4, 0x16
    bl fn_8011B878
    li 0, 0x3
    addi 3, 31, 0x278
    stw 0, 0x98(31)
    li 4, 0x1
    bl fn_800FEB78
    lfs 1, 0x10(31)
    .4byte 0xC00298B8 # lfs f0, lbl_8053C858@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(31)
    .4byte 0x48000010 # b .L_8011CC10
L_8011CC04:
    addi 3, 31, 0x278
    li 4, 0x0
    bl fn_800FEB78
L_8011CC10:
    lwz 0, 0x98(31)
    stb 0, 0x284(31)
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_8011B16C

