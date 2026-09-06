.section extab, "a"
.balign 4
.global etb_80006210
etb_80006210:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006210, 8

.global etb_80006218
etb_80006218:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006218, 8

.global etb_80006220
etb_80006220:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006220, 8

.global etb_80006228
etb_80006228:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006228, 8

.global etb_80006230
etb_80006230:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006230, 8

.global etb_80006238
etb_80006238:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006238, 8

.global etb_80006240
etb_80006240:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006240, 8

.global etb_80006248
etb_80006248:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006248, 8

.global etb_80006250
etb_80006250:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80006250, 8

.global etb_80006258
etb_80006258:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_80006258, 8

.global etb_80006260
etb_80006260:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006260, 8

.global etb_80006268
etb_80006268:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80006268, 8

.global etb_80006270
etb_80006270:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80006270, 8

.global etb_80006278
etb_80006278:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80006278, 8

.global etb_80006280
etb_80006280:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80006280, 8

.section extabindex, "a"
.balign 4
.global eti_800127C0
eti_800127C0:
    .4byte fn_8011FD94
    .4byte 0x00000224
    .4byte etb_80006210
.size eti_800127C0, 12

.global eti_800127CC
eti_800127CC:
    .4byte fn_8011FFD0
    .4byte 0x00000070
    .4byte etb_80006218
.size eti_800127CC, 12

.global eti_800127D8
eti_800127D8:
    .4byte fn_80120048
    .4byte 0x00000020
    .4byte etb_80006220
.size eti_800127D8, 12

.global eti_800127E4
eti_800127E4:
    .4byte fn_80120068
    .4byte 0x00000030
    .4byte etb_80006228
.size eti_800127E4, 12

.global eti_800127F0
eti_800127F0:
    .4byte fn_80120098
    .4byte 0x00000030
    .4byte etb_80006230
.size eti_800127F0, 12

.global eti_800127FC
eti_800127FC:
    .4byte fn_801200C8
    .4byte 0x00000030
    .4byte etb_80006238
.size eti_800127FC, 12

.global eti_80012808
eti_80012808:
    .4byte fn_801200F8
    .4byte 0x00000020
    .4byte etb_80006240
.size eti_80012808, 12

.global eti_80012814
eti_80012814:
    .4byte fn_80120118
    .4byte 0x0000005C
    .4byte etb_80006248
.size eti_80012814, 12

.global eti_80012820
eti_80012820:
    .4byte fn_80120174
    .4byte 0x000003FC
    .4byte etb_80006250
.size eti_80012820, 12

.global eti_8001282C
eti_8001282C:
    .4byte fn_80120570
    .4byte 0x000009C8
    .4byte etb_80006258
.size eti_8001282C, 12

.global eti_80012838
eti_80012838:
    .4byte fn_80120F68
    .4byte 0x00000058
    .4byte etb_80006260
.size eti_80012838, 12

.global eti_80012844
eti_80012844:
    .4byte fn_80120FC0
    .4byte 0x00000080
    .4byte etb_80006268
.size eti_80012844, 12

.global eti_80012850
eti_80012850:
    .4byte fn_80121074
    .4byte 0x0000002C
    .4byte etb_80006270
.size eti_80012850, 12

.global eti_8001285C
eti_8001285C:
    .4byte fn_801210A0
    .4byte 0x00000064
    .4byte etb_80006278
.size eti_8001285C, 12

.global eti_80012868
eti_80012868:
    .4byte fn_80121104
    .4byte 0x00000060
    .4byte etb_80006280
.size eti_80012868, 12

.text
.balign 4
.global fn_8011FD94
.global fn_8011FFB8
.global fn_8011FFC0
.global fn_8011FFC8
.global fn_8011FFCC
.global fn_8011FFD0
.global fn_80120040
.global fn_80120048
.global fn_80120068
.global fn_80120098
.global fn_801200C8
.global fn_801200F8
.global fn_80120118
.global fn_80120174
.global fn_80120570
.global fn_80120F38
.global fn_80120F68
.global fn_80120FC0
.global fn_80121040
.global fn_80121074
.global fn_801210A0
.global fn_80121104

fn_8011FD94:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804BCC60@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804BCC60@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011FDE4
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
L_8011FDE4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011FE1C
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
L_8011FE1C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011FE54
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
L_8011FE54:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011FE8C
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
L_8011FE8C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011FEC4
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
L_8011FEC4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011FEFC
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
L_8011FEFC:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011FF34
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
L_8011FF34:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011FF6C
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
L_8011FF6C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_8011FFA4
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
L_8011FFA4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8011FFB8:
    li 3, 0x0
    blr

fn_8011FFC0:
    li 3, 0x0
    blr

fn_8011FFC8:
    blr

fn_8011FFCC:
    blr

fn_8011FFD0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80131F0C
    lwz 0, 0x0(3)
    cmpwi 0, 0x2
    .4byte 0x4080000C # bge .L_8011FFFC
    li 3, 0x0
    .4byte 0x48000034 # b .L_8012002C
L_8011FFFC:
    bl fn_80131F0C
    li 4, 0x1
    bl fn_80131E30
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80120018
    li 3, 0x0
    .4byte 0x48000018 # b .L_8012002C
L_80120018:
    lwz 4, 0x198(31)
    lwz 0, 0x198(3)
    subf 0, 4, 0
    cntlzw 0, 0
    srwi 3, 0, 5
L_8012002C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80120040:
    li 3, 0x1
    blr

fn_80120048:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_80123394
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80120068:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0xc
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80120098:
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

fn_801200C8:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0xb
    stw 0, 0x14(1)
    lwz 12, 0x0(3)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801200F8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    bl fn_80121DB0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80120118:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_8049DF40@ha
    li 5, 0xe
    stw 0, 0x14(1)
    addi 4, 4, lbl_8049DF40@l
    stw 31, 0xc(1)
    mr 31, 3
    addi 3, 31, 0x230
    bl fn_801D2608
    addi 3, 31, 0x230
    li 4, 0x7
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02299C4 # lfs f1, lbl_8053C964@sda21(r0)
    addi 3, 31, 0x230
    bl fn_801D1F14
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80120174:
    stwu 1, -0x30(1)
    mflr 0
    li 5, 0x0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 4
    cmplwi 31, 0xf
    stw 30, 0x28(1)
    mr 30, 3
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    stb 5, 0x330(3)
    .4byte 0x41810394 # bgt .L_80120538
    lis 4, jumptable_8049E044@ha
    slwi 0, 31, 2
    addi 4, 4, jumptable_8049E044@l
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
    .4byte 0x4800035C # b .L_80120538
    stw 5, 0x3c8(30)
    li 0, 0x1
    stb 0, 0x330(30)
    bl fn_801220C4
    .4byte 0x48000348 # b .L_80120538
    li 0, 0x1
    stb 0, 0x330(30)
    .4byte 0x4800033C # b .L_80120538
    stb 5, 0x331(30)
    .4byte 0x48000334 # b .L_80120538
    li 0, 0x1
    stb 0, 0x330(30)
    lwz 29, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80120244
    addi 3, 30, 0x230
    li 4, 0x6
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x480002F8 # b .L_80120538
L_80120244:
    addi 3, 30, 0x230
    li 4, 0x7
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x480002E0 # b .L_80120538
    li 0, 0x1
    stb 0, 0x11e(30)
    .4byte 0x480002D4 # b .L_80120538
    bl fn_801F3668
    lwz 29, 0x90(30)
    mr 3, 30
    ori 29, 29, 0x4
    bl fn_8012285C
    slwi 0, 3, 3
    or 29, 29, 0
    bl SpatialRegistry_GetBase
    lis 4, 0x4641
    lwz 5, 0x4(30)
    mr 7, 29
    addi 6, 30, 0xc
    addi 4, 4, 0x5a52
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x48000290 # b .L_80120538
    bl fn_8012202C
    .4byte 0x48000288 # b .L_80120538
    bl fn_80121FA8
    addi 3, 30, 0x230
    li 4, 0x2
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x4800026C # b .L_80120538
    bl fn_8012285C
    bl fn_80230CFC
    mr 4, 3
    addi 3, 30, 0x230
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x4800024C # b .L_80120538
    bl fn_8012285C
    bl fn_80230CFC
    mr 4, 3
    addi 3, 30, 0x230
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x4800022C # b .L_80120538
    psq_l 1, 0xc(30), 0, 0
    lfs 0, 0x14(30)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x5241
    addi 4, 4, 0x494c
    bl fn_801F7A08
    lis 29, 0x5241
    mr 28, 3
    .4byte 0x48000070 # b .L_801203B0
L_80120344:
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820064 # beq .L_801203B8
    lwz 4, 0x90(3)
    lwz 0, 0x35c(30)
    extrwi 4, 4, 8, 16
    cmpw 4, 0
    .4byte 0x40820018 # bne .L_80120380
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    .4byte 0x48000020 # b .L_8012039C
L_80120380:
    lwz 0, 0x3d0(30)
    cmpw 4, 0
    .4byte 0x40820014 # bne .L_8012039C
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
L_8012039C:
    bl SpatialRegistry_GetBase
    mr 5, 28
    addi 4, 29, 0x494c
    bl fn_801F78F4
    mr 28, 3
L_801203B0:
    cmpwi 28, -0x1
    .4byte 0x4082FF90 # bne .L_80120344
L_801203B8:
    lfs 3, 0xc(30)
    lfs 0, 0x8(1)
    lfs 2, 0x10(30)
    lfs 1, 0xc(1)
    fsubs 3, 3, 0
    .4byte 0xC00299C4 # lfs f0, lbl_8053C964@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 4, 2, 1
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801203F0
    .4byte 0x48000028 # b .L_80120414
L_801203F0:
    frsqrte 3, 4
    .4byte 0xC04299D4 # lfs f2, lbl_8053C974@sda21(r0)
    .4byte 0xC00299D8 # lfs f0, lbl_8053C978@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_80120414:
    lfs 3, 0xc(30)
    lfs 0, 0x14(1)
    lfs 2, 0x10(30)
    lfs 1, 0x18(1)
    fsubs 3, 3, 0
    .4byte 0xC00299C4 # lfs f0, lbl_8053C964@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 3, 2, 1
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8012044C
    .4byte 0x48000028 # b .L_80120470
L_8012044C:
    frsqrte 5, 3
    .4byte 0xC04299D4 # lfs f2, lbl_8053C974@sda21(r0)
    .4byte 0xC00299D8 # lfs f0, lbl_8053C978@sda21(r0)
    frsp 5, 5
    fmuls 1, 5, 5
    fmuls 2, 2, 5
    fnmsubs 0, 3, 1, 0
    fmuls 0, 2, 0
    fmuls 3, 3, 0
L_80120470:
    fcmpo cr0, 4, 3
    .4byte 0x40810038 # ble .L_801204AC
    lbz 0, 0x3c4(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_80120494
    bl fn_801283E8
    addi 4, 1, 0x14
    bl fn_80127ED8
    .4byte 0x48000010 # b .L_801204A0
L_80120494:
    bl fn_801283E8
    addi 4, 1, 0x14
    bl fn_80127E20
L_801204A0:
    lwz 0, 0x3d0(30)
    stw 0, 0x35c(30)
    .4byte 0x4800002C # b .L_801204D4
L_801204AC:
    lbz 0, 0x3c4(30)
    cmplwi 0, 0x0
    .4byte 0x41820014 # beq .L_801204C8
    bl fn_801283E8
    addi 4, 1, 0x8
    bl fn_80127ED8
    .4byte 0x48000010 # b .L_801204D4
L_801204C8:
    bl fn_801283E8
    addi 4, 1, 0x8
    bl fn_80127E20
L_801204D4:
    mr 3, 30
    bl fn_80121D68
    mr 3, 30
    bl fn_801220C4
    .4byte 0x48000054 # b .L_80120538
    stw 5, 0x3c8(30)
    .4byte 0x4800004C # b .L_80120538
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    mr 29, 3
    bl GetRoomConfigRecord
    mr 4, 29
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
    li 3, 0x0
    li 0, -0x1
    stb 3, 0x11e(30)
    stb 3, 0x11d(30)
    stb 3, 0x11c(30)
    .4byte 0x900D8370 # stw r0, lbl_80539F30@sda21(r0)
    bl fn_80131F0C
    bl fn_80131EE4
L_80120538:
    .4byte 0xC02299C4 # lfs f1, lbl_8053C964@sda21(r0)
    addi 3, 30, 0x230
    bl fn_801D1F14
    mr 3, 30
    mr 4, 31
    bl fn_80123E80
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_80120570:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    stw 29, 0x74(1)
    mr 31, 3
    lfs 1, 0x60(3)
    stfs 1, 0x4c(1)
    lfs 4, 0x64(3)
    stfs 4, 0x50(1)
    lfs 2, 0x68(3)
    stfs 2, 0x54(1)
    lfs 3, 0x6c(3)
    stfs 3, 0x58(1)
    lfs 0, 0xc(3)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x4c(1)
    lfs 2, 0x10(3)
    fadds 1, 4, 2
    stfs 0, 0x54(1)
    fadds 0, 3, 2
    stfs 1, 0x50(1)
    stfs 0, 0x58(1)
    lwz 0, 0x33c(3)
    cmplwi 0, 0xf
    .4byte 0x41810920 # bgt .L_80120F0C
    lis 4, jumptable_8049E084@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_8049E084@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 12, 0x0(3)
    li 4, 0x0
    .4byte 0xC02299E8 # lfs f1, lbl_8053C988@sda21(r0)
    li 5, 0x1
    lwz 12, 0x98(12)
    mtctr 12
    bctrl
    lwz 0, 0x33c(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80120638
    li 29, -0x1
    .4byte 0x48000074 # b .L_801206A8
L_80120638:
    .4byte 0xC00299C4 # lfs f0, lbl_8053C964@sda21(r0)
    li 0, 0x0
    sth 0, 0x8(1)
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0x10
    stw 0, 0x10(1)
    addi 7, 1, 0x18
    addi 8, 1, 0x14
    li 9, 0x0
    stw 0, 0x14(1)
    li 10, 0x0
    stfs 0, 0x18(1)
    lwz 4, 0x198(31)
    bl fn_801EEC98
    lwz 29, 0x14(1)
    cmpwi 29, 0x0
    .4byte 0x4180000C # blt .L_80120688
    cmpwi 29, 0x4
    .4byte 0x4180000C # blt .L_80120690
L_80120688:
    li 29, -0x1
    .4byte 0x4800001C # b .L_801206A8
L_80120690:
    lfs 1, 0x18(1)
    .4byte 0xC00299DC # lfs f0, lbl_8053C97C@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801206A8
    li 29, -0x1
L_801206A8:
    cmpwi 29, 0x0
    .4byte 0x4180007C # blt .L_80120728
    lwz 0, 0x3cc(31)
    cmpw 29, 0
    .4byte 0x41820070 # beq .L_80120728
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820844 # beq .L_80120F0C
    mr 3, 29
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820834 # beq .L_80120F0C
    mr 3, 29
    bl fn_802308E0
    clrlwi. 0, 3, 24
    .4byte 0x41820040 # beq .L_80120728
    stw 29, 0x3cc(31)
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80120708
    mr 3, 29
    bl fn_8022F3DC
L_80120708:
    stw 29, 0x344(31)
    mr 3, 31
    li 4, 0x2
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x480007E8 # b .L_80120F0C
L_80120728:
    li 29, 0x2b7
    bl fn_80131F0C
    lwz 0, 0x0(3)
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_80120740
    li 29, 0x2b4
L_80120740:
    mr 3, 31
    mr 4, 29
    bl fn_80122898
    mr. 29, 3
    .4byte 0x418007BC # blt .L_80120F0C
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8012076C
    mr 3, 29
    bl fn_8022F3DC
    mr 29, 3
L_8012076C:
    stw 29, 0x344(31)
    mr 3, 31
    li 4, 0x1
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000784 # b .L_80120F0C
    lwz 3, 0x34c(31)
    addi 4, 1, 0x4c
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x34c(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820754 # beq .L_80120F0C
    mr 3, 31
    li 4, 0x8
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000738 # b .L_80120F0C
    lwz 3, 0x3c8(31)
    addi 0, 3, 0x1
    stw 0, 0x3c8(31)
    lwz 0, 0x3c8(31)
    cmpwi 0, 0x3c
    .4byte 0x41800720 # blt .L_80120F0C
    bl fn_80131F0C
    lwz 0, 0x0(3)
    cmpwi 0, 0x1
    .4byte 0x40820020 # bne .L_8012081C
    mr 3, 31
    li 4, 0x4
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x480006F4 # b .L_80120F0C
L_8012081C:
    lwz 3, 0x3cc(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    lwz 0, 0x3cc(31)
    cmpw 0, 3
    .4byte 0x408206C8 # bne .L_80120F0C
    .4byte 0xC00299C4 # lfs f0, lbl_8053C964@sda21(r0)
    mr 3, 0
    addi 7, 1, 0x40
    li 4, 0x2b3
    stfs 0, 0x40(1)
    li 8, 0x2
    stfs 0, 0x44(1)
    stfs 0, 0x48(1)
    lwz 5, 0x198(31)
    lwz 6, 0x4(31)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820694 # beq .L_80120F0C
    mr 3, 31
    li 4, 0x3
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    li 0, 0x0
    stw 0, 0x3c8(31)
    .4byte 0x48000670 # b .L_80120F0C
    lwz 3, 0x3cc(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x3cc(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820644 # beq .L_80120F0C
    mr 3, 31
    li 4, 0x4
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000628 # b .L_80120F0C
    lwz 3, 0x3cc(31)
    bl fn_8023E724
    lfs 0, 0x8(3)
    psq_l 1, 0x0(3), 0, 0
    stfs 0, 0x24(1)
    .4byte 0xC00299C4 # lfs f0, lbl_8053C964@sda21(r0)
    psq_st 1, 0x1c(1), 0, 0
    lwz 30, 0x4(31)
    stfs 0, 0x24(1)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_80120938
    lfs 1, 0x1c(1)
    .4byte 0xC00299C8 # lfs f0, lbl_8053C968@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x1c(1)
    .4byte 0x48000014 # b .L_80120948
L_80120938:
    lfs 1, 0x20(1)
    .4byte 0xC00299C8 # lfs f0, lbl_8053C968@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x20(1)
L_80120948:
    lfs 2, 0x20(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x10(31)
    addi 3, 3, lbl_80534C00@l
    lfs 1, 0x1c(1)
    fsubs 2, 2, 0
    lfs 0, 0xc(31)
    fsubs 1, 1, 0
    bl fn_80093340
    .4byte 0xC00299CC # lfs f0, lbl_8053C96C@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 0, 0x64(1)
    clrlwi 29, 0, 16
    mr 3, 29
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(31)
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 29, 30, 18, 28
    .4byte 0xC04299D0 # lfs f2, lbl_8053C970@sda21(r0)
    addi 3, 3, lbl_8052EBC0@l
    lfs 1, 0x1c(1)
    lfsx 3, 3, 0
    add 3, 3, 0
    lfs 0, 0x4(3)
    addi 3, 31, 0xc
    fmuls 30, 2, 3
    li 30, 0x1
    fmuls 31, 2, 0
    fmr 2, 30
    bl fn_801CD950
    cmpwi 3, 0x0
    .4byte 0x41820014 # beq .L_801209E0
    .4byte 0xC00299C4 # lfs f0, lbl_8053C964@sda21(r0)
    fcmpu cr0, 0, 30
    .4byte 0x41820008 # beq .L_801209E0
    li 30, 0x0
L_801209E0:
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_80120A24
    fmr 2, 31
    lfs 1, 0x20(1)
    addi 3, 31, 0x10
    bl fn_801CD950
    cmpwi 3, 0x0
    .4byte 0x41820014 # beq .L_80120A24
    .4byte 0xC00299C4 # lfs f0, lbl_8053C964@sda21(r0)
    fcmpu cr0, 0, 31
    .4byte 0x41820008 # beq .L_80120A24
    li 30, 0x0
L_80120A24:
    clrlwi. 0, 30, 24
    .4byte 0x4082001C # bne .L_80120A44
    lwz 4, 0x98(31)
    mr 3, 31
    li 5, 0x0
    li 6, 0x0
    bl fn_80122730
    .4byte 0x480004CC # b .L_80120F0C
L_80120A44:
    lwz 3, 0x3cc(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    lwz 0, 0x3cc(31)
    cmpw 0, 3
    .4byte 0x408204A0 # bne .L_80120F0C
    li 29, 0x2b7
    bl fn_80131F0C
    lwz 0, 0x0(3)
    cmpwi 0, 0x1
    .4byte 0x40820008 # bne .L_80120A88
    li 29, 0x2b4
L_80120A88:
    .4byte 0xC00299C4 # lfs f0, lbl_8053C964@sda21(r0)
    clrlwi 4, 29, 16
    addi 7, 1, 0x34
    li 8, 0x2
    stfs 0, 0x34(1)
    stfs 0, 0x38(1)
    stfs 0, 0x3c(1)
    lwz 3, 0x3cc(31)
    lwz 5, 0x198(31)
    lwz 6, 0x4(31)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820454 # beq .L_80120F0C
    mr 3, 31
    li 4, 0x5
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000438 # b .L_80120F0C
    lwz 3, 0x3cc(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x3cc(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182040C # beq .L_80120F0C
    lwz 3, 0x3cc(31)
    li 4, 0x0
    bl fn_8023061C
    mr 3, 31
    li 4, 0x8
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x480003E4 # b .L_80120F0C
    bl fn_8012285C
    cmpwi 3, 0x0
    .4byte 0x40800020 # bge .L_80120B54
    mr 3, 31
    li 4, 0x0
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x480003BC # b .L_80120F0C
L_80120B54:
    bl fn_80131F0C
    lwz 0, 0x0(3)
    cmpwi 0, 0x1
    .4byte 0x4181000C # bgt .L_80120B6C
    li 0, 0x0
    .4byte 0x48000080 # b .L_80120BE8
L_80120B6C:
    .4byte 0xC00299E0 # lfs f0, lbl_8053C980@sda21(r0)
    stfs 0, 0xc(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x4241
    addi 5, 31, 0xc
    addi 4, 4, 0x5249
    addi 6, 1, 0xc
    bl fn_801F778C
    mr. 29, 3
    .4byte 0x4080000C # bge .L_80120B9C
    li 0, 0x0
    .4byte 0x48000050 # b .L_80120BE8
L_80120B9C:
    lfs 1, 0xc(1)
    .4byte 0xC00299E4 # lfs f0, lbl_8053C984@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_80120BB4
    li 0, 0x0
    .4byte 0x48000038 # b .L_80120BE8
L_80120BB4:
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80120BD0
    li 0, 0x0
    .4byte 0x4800001C # b .L_80120BE8
L_80120BD0:
    lbz 0, 0x11c(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80120BE4
    li 0, 0x0
    .4byte 0x48000008 # b .L_80120BE8
L_80120BE4:
    li 0, 0x1
L_80120BE8:
    clrlwi. 0, 0, 24
    .4byte 0x4182008C # beq .L_80120C78
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x4082007C # bne .L_80120C78
    bl fn_8011921C
    li 4, 0xe
    bl fn_801186B0
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_80120C78
    bl fn_8011921C
    li 0, 0x1
    stb 0, 0x2(3)
    bl fn_8011921C
    bl fn_80118454
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE00
    li 29, 0x0
    .4byte 0x48000030 # b .L_80120C64
L_80120C38:
    bl fn_80131F0C
    mr 4, 29
    bl fn_80131E30
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_80120C60
    lwz 12, 0x0(3)
    li 4, 0xd
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
L_80120C60:
    addi 29, 29, 0x1
L_80120C64:
    bl fn_80131F0C
    lwz 0, 0x0(3)
    cmpw 29, 0
    .4byte 0x4180FFC8 # blt .L_80120C38
    .4byte 0x48000298 # b .L_80120F0C
L_80120C78:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpwi 3, 0x1
    .4byte 0x4081003C # ble .L_80120CC0
    mr 3, 31
    bl fn_8012285C
    lwz 12, 0x0(31)
    mr 4, 3
    mr 3, 31
    .4byte 0xC02299EC # lfs f1, lbl_8053C98C@sda21(r0)
    lwz 12, 0x9c(12)
    .4byte 0xC04299F0 # lfs f2, lbl_8053C990@sda21(r0)
    .4byte 0xC06299F4 # lfs f3, lbl_8053C994@sda21(r0)
    .4byte 0xC08299F8 # lfs f4, lbl_8053C998@sda21(r0)
    .4byte 0xC0A299FC # lfs f5, lbl_8053C99C@sda21(r0)
    mtctr 12
    bctrl
    .4byte 0x48000250 # b .L_80120F0C
L_80120CC0:
    mr 3, 31
    bl fn_8012285C
    lwz 12, 0x0(31)
    mr 4, 3
    mr 3, 31
    .4byte 0xC02299EC # lfs f1, lbl_8053C98C@sda21(r0)
    lwz 12, 0x9c(12)
    .4byte 0xC04299F0 # lfs f2, lbl_8053C990@sda21(r0)
    .4byte 0xC06299F4 # lfs f3, lbl_8053C994@sda21(r0)
    .4byte 0xC08299F8 # lfs f4, lbl_8053C998@sda21(r0)
    .4byte 0xC0A29A00 # lfs f5, lbl_8053C9A0@sda21(r0)
    mtctr 12
    bctrl
    .4byte 0x48000218 # b .L_80120F0C
    bl fn_8012285C
    cmpwi 3, 0x0
    .4byte 0x40800020 # bge .L_80120D20
    mr 3, 31
    li 4, 0x0
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x480001F0 # b .L_80120F0C
L_80120D20:
    mr 3, 31
    bl fn_8012285C
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x408201DC # bne .L_80120F0C
    mr 3, 31
    bl fn_8012285C
    bl fn_8023DE58
    lwz 0, 0x4(31)
    cmpw 0, 3
    .4byte 0x408201C4 # bne .L_80120F0C
    mr 3, 31
    li 4, 0xa
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x480001A8 # b .L_80120F0C
    bl fn_8012285C
    cmpwi 3, 0x0
    .4byte 0x4080001C # bge .L_80120D8C
    mr 3, 31
    li 4, 0x0
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
L_80120D8C:
    mr 3, 31
    bl fn_80122804
    clrlwi. 0, 3, 24
    .4byte 0x41820174 # beq .L_80120F0C
    mr 3, 31
    li 4, 0x7
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000158 # b .L_80120F0C
    bl fn_80122548
    bl GetRoomConfigRecord
    bl fn_802DCD0C
    clrlwi. 0, 3, 24
    .4byte 0x40820144 # bne .L_80120F0C
    mr 3, 31
    li 4, 0x7
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000128 # b .L_80120F0C
    bl fn_8012285C
    bl fn_8023DE58
    stw 3, 0x4(31)
    mr 3, 31
    bl fn_8012285C
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x4082003C # bne .L_80120E40
    mr 3, 31
    bl fn_8012285C
    mr 4, 3
    mr 3, 31
    bl fn_801216D0
    cmpwi 3, 0x0
    .4byte 0x40800020 # bge .L_80120E40
    mr 3, 31
    li 4, 0x7
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x480000D0 # b .L_80120F0C
L_80120E40:
    mr 3, 31
    bl fn_80122148
    .4byte 0x480000C4 # b .L_80120F0C
    lwz 4, 0x3c8(31)
    addi 0, 4, 0x1
    stw 0, 0x3c8(31)
    lwz 0, 0x3c8(31)
    cmpwi 0, 0x3c
    .4byte 0x418000AC # blt .L_80120F0C
    lwz 12, 0x0(3)
    li 4, 0xe
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000094 # b .L_80120F0C
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x40820020 # bne .L_80120EB0
    mr 3, 31
    li 4, 0x7
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
    .4byte 0x48000060 # b .L_80120F0C
L_80120EB0:
    .4byte 0xC00299D0 # lfs f0, lbl_8053C970@sda21(r0)
    mr 3, 31
    .4byte 0xC0229A04 # lfs f1, lbl_8053C9A4@sda21(r0)
    addi 4, 1, 0x28
    stfs 0, 0x380(31)
    .4byte 0xC00299C4 # lfs f0, lbl_8053C964@sda21(r0)
    stfs 1, 0x37c(31)
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 0, 0x30(1)
    lwz 12, 0x0(31)
    lfs 1, 0x380(31)
    lwz 12, 0xc8(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_80120F0C
    mr 3, 31
    li 4, 0xf
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
L_80120F0C:
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    lwz 0, 0xa4(1)
    lwz 29, 0x74(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr

fn_80120F38:
    lwz 0, 0x90(3)
    clrlwi. 0, 0, 31
    .4byte 0x4182000C # beq .L_80120F4C
    li 0, 0x1
    stb 0, 0x3c4(3)
L_80120F4C:
    lwz 0, 0x90(3)
    extrwi 0, 0, 8, 16
    stw 0, 0x35c(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 8, 8
    stw 0, 0x3d0(3)
    blr

fn_80120F68:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x33c(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80120F88
    cmpwi 0, 0xf
    .4byte 0x4082000C # bne .L_80120F90
L_80120F88:
    li 3, 0x3
    .4byte 0x48000024 # b .L_80120FB0
L_80120F90:
    lwz 12, 0x0(3)
    lwz 12, 0x58(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    li 3, 0x1
    .4byte 0x41820008 # beq .L_80120FB0
    li 3, 0x2
L_80120FB0:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80120FC0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x33c(3)
    cmpwi 0, 0xb
    .4byte 0x40800010 # bge .L_80120FEC
    cmpwi 0, 0x7
    .4byte 0x41820018 # beq .L_80120FFC
    .4byte 0x48000040 # b .L_80121028
L_80120FEC:
    cmpwi 0, 0xf
    .4byte 0x40800038 # bge .L_80121028
    cmpwi 0, 0xd
    .4byte 0x40800030 # bge .L_80121028
L_80120FFC:
    mr 3, 31
    bl fn_8012285C
    mr 4, 3
    mr 3, 31
    bl fn_80121DC8
    .4byte 0xC0029A08 # lfs f0, lbl_8053C9A8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    mfcr 0
    extrwi 3, 0, 1, 2
    .4byte 0x48000008 # b .L_8012102C
L_80121028:
    li 3, 0x0
L_8012102C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80121040:
    lwz 0, 0x33c(3)
    cmpwi 0, 0x8
    .4byte 0x41820024 # beq .L_8012106C
    .4byte 0x40800010 # bge .L_8012105C
    cmpwi 0, 0x7
    .4byte 0x40800010 # bge .L_80121064
    .4byte 0x48000014 # b .L_8012106C
L_8012105C:
    cmpwi 0, 0xd
    .4byte 0x4080000C # bge .L_8012106C
L_80121064:
    li 3, 0x1
    blr
L_8012106C:
    li 3, 0x0
    blr

fn_80121074:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x33c(3)
    cmpwi 0, 0xf
    .4byte 0x41820008 # beq .L_80121090
    bl fn_80124278
L_80121090:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801210A0:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80124448
    lwz 3, 0x90(31)
    extrwi. 0, 3, 1, 29
    .4byte 0x41820030 # beq .L_801210F0
    extrwi 0, 3, 4, 25
    stw 0, 0x344(31)
    bl fn_80131F0C
    mr 4, 31
    bl fn_80131EC0
    mr 3, 31
    li 4, 0x7
    lwz 12, 0x0(31)
    lwz 12, 0x6c(12)
    mtctr 12
    bctrl
L_801210F0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80121104:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 4
    stw 30, 0x8(1)
    mr. 30, 3
    .4byte 0x41820028 # beq .L_80121148
    lis 5, lbl_8049DF78@ha
    li 4, 0x0
    addi 0, 5, lbl_8049DF78@l
    stw 0, 0x0(30)
    bl fn_80124740
    extsh. 0, 31
    .4byte 0x4081000C # ble .L_80121148
    mr 3, 30
    bl dtor_80084580
L_80121148:
    lwz 0, 0x14(1)
    mr 3, 30
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr


.section .ctors, "a"
.balign 4
    .4byte fn_8011FD94
