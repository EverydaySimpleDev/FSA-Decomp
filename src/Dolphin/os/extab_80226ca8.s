# Fresh project-wide gap hunt continuation: 8 functions, 7,748 bytes,
# fully contiguous. Found+verified via spanwalk3.py/resolvefiles2.py.
# All referenced small-data symbols verified private to this landing
# (no shared-MSL-runtime-global risk).

.section extab, "a"
.balign 4
.global etb_8000A7E8
etb_8000A7E8:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000A7E8, 8

.global etb_8000A7F0
etb_8000A7F0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A7F0, 8

.global etb_8000A7F8
etb_8000A7F8:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000A7F8, 8

.global etb_8000A800
etb_8000A800:
    .4byte 0x408A0000
    .4byte 0x00000000
.size etb_8000A800, 8

.global etb_8000A808
etb_8000A808:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000A808, 8

.global etb_8000A810
etb_8000A810:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000A810, 8

.global etb_8000A818
etb_8000A818:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A818, 8

.global etb_8000A820
etb_8000A820:
    .4byte 0x210A0000
    .4byte 0x00000000
.size etb_8000A820, 8

.section extabindex, "a"
.balign 4
.global eti_800186E8
eti_800186E8:
    .4byte fn_80226CA8
    .4byte 0x000000FC
    .4byte etb_8000A7E8
.size eti_800186E8, 12

.global eti_800186F4
eti_800186F4:
    .4byte fn_80226DA4
    .4byte 0x00000224
    .4byte etb_8000A7F0
.size eti_800186F4, 12

.global eti_80018700
eti_80018700:
    .4byte fn_80226FC8
    .4byte 0x000002C8
    .4byte etb_8000A7F8
.size eti_80018700, 12

.global eti_8001870C
eti_8001870C:
    .4byte fn_80227290
    .4byte 0x000002A0
    .4byte etb_8000A800
.size eti_8001870C, 12

.global eti_80018718
eti_80018718:
    .4byte fn_80227530
    .4byte 0x00000378
    .4byte etb_8000A808
.size eti_80018718, 12

.global eti_80018724
eti_80018724:
    .4byte fn_802278A8
    .4byte 0x00000440
    .4byte etb_8000A810
.size eti_80018724, 12

.global eti_80018730
eti_80018730:
    .4byte fn_80227CE8
    .4byte 0x00000268
    .4byte etb_8000A818
.size eti_80018730, 12

.global eti_8001873C
eti_8001873C:
    .4byte fn_80227F50
    .4byte 0x00000B9C
    .4byte etb_8000A820
.size eti_8001873C, 12

.text
.balign 4
.global fn_80226CA8
.global fn_80226DA4
.global fn_80226FC8
.global fn_80227290
.global fn_80227530
.global fn_802278A8
.global fn_80227CE8
.global fn_80227F50

fn_80226CA8:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    mr 31, 5
    stw 30, 0x48(1)
    mr 30, 4
    stw 29, 0x44(1)
    mr 29, 3
    psq_l 1, 0x0(31), 0, 0
    lfs 0, 0x8(5)
    psq_st 1, 0x18(1), 0, 0
    stfs 0, 0x20(1)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_80226CF0
    addi 7, 3, 0xcc
    .4byte 0x48000008 # b .L_80226CF4
L_80226CF0:
    addi 7, 3, 0xdc
L_80226CF4:
    rlwinm 5, 29, 31, 23, 23
    rlwinm 0, 29, 0, 24, 27
    add 5, 5, 0
    rlwinm 4, 29, 0, 23, 23
    clrlslwi 0, 29, 28, 4
    lis 3, 0x4330
    add 4, 4, 0
    lwz 6, 0x0(7)
    xoris 4, 4, 0x8000
    stw 3, 0x28(1)
    xoris 0, 5, 0x8000
    lwz 5, 0x4(7)
    stw 4, 0x2c(1)
    .4byte 0xC882CFB8 # lfd f4, lbl_8053FF58@sda21(r0)
    lfd 0, 0x28(1)
    stw 6, 0x8(1)
    fsubs 3, 0, 4
    lwz 4, 0xc(7)
    lfs 2, 0x8(1)
    stw 5, 0xc(1)
    fadds 3, 3, 2
    lwz 5, 0x8(7)
    stw 0, 0x34(1)
    lfs 1, 0xc(1)
    stw 3, 0x30(1)
    .4byte 0xC002CFB4 # lfs f0, lbl_8053FF54@sda21(r0)
    lfd 2, 0x30(1)
    stfs 3, 0x18(1)
    fsubs 2, 2, 4
    stw 5, 0x10(1)
    fadds 1, 2, 1
    stw 4, 0x14(1)
    stfs 0, 0x20(1)
    stfs 1, 0x1c(1)
    psq_l 1, 0x18(1), 0, 0
    psq_st 1, 0x0(31), 0, 0
    stfs 0, 0x8(31)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 0, 0x54(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_80226DA4:
    stwu 1, -0x10(1)
    mflr 0
    lis 3, lbl_804CF160@ha
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    addi 31, 3, lbl_804CF160@l
    .4byte 0x880D86EC # lbz r0, lbl_8053A2AC@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80226DF4
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
L_80226DF4:
    .4byte 0x880D86ED # lbz r0, lbl_8053A2AD@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80226E2C
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
L_80226E2C:
    .4byte 0x880D86EE # lbz r0, lbl_8053A2AE@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80226E64
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
L_80226E64:
    .4byte 0x880D86EF # lbz r0, lbl_8053A2AF@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80226E9C
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
L_80226E9C:
    .4byte 0x880D86F0 # lbz r0, lbl_8053A2B0@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80226ED4
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
L_80226ED4:
    .4byte 0x880D86F1 # lbz r0, lbl_8053A2B1@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80226F0C
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
L_80226F0C:
    .4byte 0x880D86F2 # lbz r0, lbl_8053A2B2@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80226F44
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
L_80226F44:
    .4byte 0x880D86F3 # lbz r0, lbl_8053A2B3@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80226F7C
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
L_80226F7C:
    .4byte 0x880D86F4 # lbz r0, lbl_8053A2B4@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820030 # bne .L_80226FB4
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
L_80226FB4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80226FC8:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    stw 30, 0x68(1)
    stw 29, 0x64(1)
    mr 29, 4
    lbz 0, 0x255(3)
    cmplwi 0, 0x1
    .4byte 0x41820284 # beq .L_80227274
    slwi 0, 29, 2
    add 30, 31, 0
    lwz 4, 0x27c(30)
    cmplwi 4, 0x0
    .4byte 0x40820048 # bne .L_8022704C
    mr 3, 29
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x41820260 # beq .L_80227274
    mr 3, 29
    bl fn_8023EEB4
    subis 0, 3, 0x5941
    cmplwi 0, 0x5349
    .4byte 0x4082024C # bne .L_80227274
    mr 3, 29
    bl fn_8023EF50
    mr 31, 3
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    stw 3, 0x27c(30)
    .4byte 0x4800022C # b .L_80227274
L_8022704C:
    lbz 0, 0x11c(4)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80227064
    li 0, 0x0
    stw 0, 0x27c(30)
    .4byte 0x48000214 # b .L_80227274
L_80227064:
    psq_l 3, 0x3c(4), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 2, 0x44(4)
    ps_mul 3, 3, 3
    .4byte 0xC022CFC0 # lfs f1, lbl_8053FF60@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 2, 2, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x418201E4 # beq .L_80227274
    lfs 1, 0x14(4)
    .4byte 0xC002CFC4 # lfs f0, lbl_8053FF64@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408001D4 # bge .L_80227274
    lfs 0, 0x14(4)
    li 0, 0x0
    psq_l 1, 0xc(4), 0, 0
    stfs 0, 0x10(1)
    psq_l 0, 0xc(31), 0, 0
    psq_l 2, 0x10(1), 1, 0
    ps_sub 3, 1, 0
    psq_l 0, 0x14(31), 1, 0
    psq_st 1, 0x8(1), 0, 0
    ps_sub 1, 2, 0
    .4byte 0xC002CFC8 # lfs f0, lbl_8053FF68@sda21(r0)
    psq_st 3, 0x50(1), 0, 0
    psq_st 1, 0x10(1), 1, 0
    lfs 2, 0x50(1)
    lfs 1, 0x10(1)
    fcmpo cr0, 2, 0
    psq_st 3, 0x8(1), 0, 0
    psq_st 3, 0x44(1), 0, 0
    stfs 1, 0x4c(1)
    stfs 1, 0x58(1)
    cror eq, gt, eq
    .4byte 0x4082002C # bne .L_80227124
    lfs 1, 0x54(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082001C # bne .L_80227124
    .4byte 0xC002CFCC # lfs f0, lbl_8053FF6C@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x40800010 # bge .L_80227124
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80227124
    li 0, 0x1
L_80227124:
    clrlwi. 0, 0, 24
    .4byte 0x4182014C # beq .L_80227274
    lwz 3, 0x27c(30)
    lwz 12, 0x0(3)
    lwz 12, 0x48(12)
    mtctr 12
    bctrl
    li 0, 0x0
    .4byte 0xC042CFD0 # lfs f2, lbl_8053FF70@sda21(r0)
    stw 0, 0x27c(30)
    mr 5, 29
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    addi 4, 1, 0x38
    lfs 3, 0x10(31)
    li 7, 0xc
    lfs 1, 0xc(31)
    fsubs 3, 3, 2
    lwz 6, 0x4(31)
    fsubs 1, 1, 2
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 0, 0x40(1)
    stfs 1, 0x38(1)
    stfs 3, 0x3c(1)
    bl fn_802A3948
    lfs 2, 0x10(31)
    mr 5, 29
    .4byte 0xC022CFD0 # lfs f1, lbl_8053FF70@sda21(r0)
    addi 4, 1, 0x2c
    lfs 0, 0xc(31)
    li 7, 0xc
    fsubs 2, 2, 1
    lwz 6, 0x4(31)
    fadds 1, 1, 0
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0x30(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x34(1)
    bl fn_802A3948
    .4byte 0xC042CFD0 # lfs f2, lbl_8053FF70@sda21(r0)
    mr 5, 29
    lfs 1, 0x10(31)
    addi 4, 1, 0x20
    lfs 0, 0xc(31)
    li 7, 0xc
    fadds 3, 2, 1
    lwz 6, 0x4(31)
    fsubs 1, 0, 2
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 3, 0x24(1)
    stfs 1, 0x20(1)
    stfs 0, 0x28(1)
    bl fn_802A3948
    .4byte 0xC042CFD0 # lfs f2, lbl_8053FF70@sda21(r0)
    mr 5, 29
    lfs 1, 0x10(31)
    addi 4, 1, 0x14
    lfs 0, 0xc(31)
    li 7, 0xc
    fadds 3, 2, 1
    lwz 6, 0x4(31)
    fadds 1, 2, 0
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 3, 0x18(1)
    stfs 1, 0x14(1)
    stfs 0, 0x1c(1)
    bl fn_802A3948
    lbz 0, 0x255(31)
    cmplwi 0, 0x0
    .4byte 0x40820034 # bne .L_80227274
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CFD8 # lfs f1, lbl_8053FF78@sda21(r0)
    li 5, 0x3e3
    li 6, 0x0
    li 7, -0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x1
    stb 0, 0x255(31)
L_80227274:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    lwz 29, 0x64(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80227290:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stmw 24, 0x40(1)
    mr 24, 3
    fmr 31, 1
    lwz 27, 0x4(3)
    mr 25, 4
    mr 26, 5
    li 28, -0x1
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 31, 0x31df(3)
    bl SpatialRegistry_GetBase
    lwz 30, 0x1008(3)
    li 27, 0x0
    li 29, 0x0
    .4byte 0x48000218 # b .L_80227500
L_802272EC:
    bl SpatialRegistry_GetBase
    addi 0, 29, 0x8
    lwzx 6, 3, 0
    cmplwi 6, 0x0
    .4byte 0x418201FC # beq .L_802274F8
    lbz 0, 0x11c(6)
    cmplwi 0, 0x0
    .4byte 0x418201F0 # beq .L_802274F8
    lwz 3, 0x4(6)
    lwz 0, 0x4(24)
    cmpw 3, 0
    .4byte 0x408201E0 # bne .L_802274F8
    lwz 0, 0x198(6)
    cmpw 26, 0
    .4byte 0x418201D4 # beq .L_802274F8
    cmplwi 31, 0x0
    .4byte 0x4082001C # bne .L_80227348
    lfs 1, 0x14(24)
    lfs 0, 0x14(6)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 31
    .4byte 0x418101B4 # bgt .L_802274F8
L_80227348:
    mr 7, 25
    .4byte 0x48000194 # b .L_802274E0
L_80227350:
    lwz 0, 0x1a0(6)
    cmplw 3, 0
    .4byte 0x40820184 # bne .L_802274DC
    psq_l 0, 0xc(24), 0, 0
    lwz 5, 0x64(24)
    psq_st 0, 0x24(1), 0, 0
    lwz 4, 0x6c(24)
    stw 5, 0x34(1)
    psq_l 0, 0xc(6), 0, 0
    lwz 3, 0x64(6)
    psq_st 0, 0x18(1), 0, 0
    lwz 0, 0x6c(6)
    stw 4, 0x3c(1)
    lfs 6, 0x14(24)
    .4byte 0xC002CFDC # lfs f0, lbl_8053FF7C@sda21(r0)
    lfs 10, 0x14(6)
    lwz 5, 0x60(24)
    fmuls 8, 6, 0
    lwz 4, 0x60(6)
    fmuls 1, 10, 0
    stw 3, 0xc(1)
    lwz 3, 0x68(24)
    stw 0, 0x14(1)
    lwz 0, 0x68(6)
    stfs 6, 0x2c(1)
    lfs 3, 0x34(1)
    lfs 2, 0x28(1)
    lfs 0, 0x3c(1)
    fadds 4, 3, 2
    stfs 10, 0x20(1)
    fadds 9, 0, 2
    lfs 3, 0xc(1)
    lfs 2, 0x1c(1)
    stw 5, 0x30(1)
    fadds 5, 3, 2
    lfs 0, 0x14(1)
    stw 4, 0x8(1)
    fsubs 12, 4, 6
    fadds 3, 0, 2
    lfs 0, 0x30(1)
    lfs 2, 0x24(1)
    fsubs 30, 9, 8
    stfs 4, 0x34(1)
    fadds 11, 0, 2
    lfs 6, 0x8(1)
    stw 3, 0x38(1)
    lfs 7, 0x18(1)
    stw 0, 0x10(1)
    fadds 6, 6, 7
    lfs 0, 0x38(1)
    lfs 4, 0x10(1)
    fadds 13, 0, 2
    stfs 9, 0x3c(1)
    fadds 4, 4, 7
    fsubs 2, 5, 10
    stfs 5, 0xc(1)
    fsubs 0, 3, 1
    stfs 3, 0x14(1)
    fcmpo cr0, 11, 6
    stfs 11, 0x30(1)
    stfs 13, 0x38(1)
    stfs 12, 0x34(1)
    stfs 8, 0x2c(1)
    stfs 30, 0x3c(1)
    stfs 6, 0x8(1)
    stfs 4, 0x10(1)
    stfs 2, 0xc(1)
    stfs 1, 0x20(1)
    stfs 0, 0x14(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80227470
    fmr 11, 6
L_80227470:
    lfs 0, 0xc(1)
    fcmpo cr0, 12, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80227484
    fmr 12, 0
L_80227484:
    lfs 0, 0x10(1)
    fcmpo cr0, 13, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80227498
    fmr 13, 0
L_80227498:
    lfs 0, 0x14(1)
    fcmpo cr0, 30, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802274AC
    fmr 30, 0
L_802274AC:
    fcmpo cr0, 13, 11
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_802274CC
    fcmpo cr0, 30, 12
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802274CC
    li 0, 0x1
L_802274CC:
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_802274DC
    lwz 28, 0x198(6)
    .4byte 0x48000018 # b .L_802274F0
L_802274DC:
    addi 7, 7, 0x4
L_802274E0:
    lwz 3, 0x0(7)
    subis 0, 3, 0x4e55
    cmplwi 0, 0x4c4c
    .4byte 0x4082FE64 # bne .L_80227350
L_802274F0:
    cmpwi 28, 0x0
    .4byte 0x40800014 # bge .L_80227508
L_802274F8:
    addi 29, 29, 0x4
    addi 27, 27, 0x1
L_80227500:
    cmpw 27, 30
    .4byte 0x4180FDE8 # blt .L_802272EC
L_80227508:
    mr 3, 28
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lmw 24, 0x40(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

fn_80227530:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    li 31, 0x0
    stw 30, 0x48(1)
    mr 30, 4
    stw 29, 0x44(1)
    mr 29, 3
    stw 28, 0x40(1)
L_80227558:
    mr 3, 29
    mr 4, 31
    bl fn_80226FC8
    lfs 3, 0x60(29)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    stfs 3, 0x0(30)
    lfs 2, 0x64(29)
    stfs 2, 0x4(30)
    lfs 1, 0x68(29)
    stfs 1, 0x8(30)
    lfs 0, 0x6c(29)
    stfs 0, 0xc(30)
    lfs 5, 0x10(29)
    lfs 4, 0xc(29)
    fadds 2, 2, 5
    fadds 3, 3, 4
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 2, 0x4(30)
    stfs 3, 0x0(30)
    stfs 1, 0x8(30)
    stfs 0, 0xc(30)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_802275F0
    mr 3, 31
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_802275F0
    lwz 0, 0x90(29)
    extrwi. 3, 0, 3, 5
    addi 28, 3, 0x7
    .4byte 0x40820008 # bne .L_802275E0
    mr 28, 3
L_802275E0:
    mr 3, 31
    bl fn_8023DE58
    cmpw 3, 28
    .4byte 0x40820290 # bne .L_8022787C
L_802275F0:
    lwz 5, 0x4(29)
    mr 3, 31
    .4byte 0xC022CFD0 # lfs f1, lbl_8053FF70@sda21(r0)
    mr 4, 30
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x41820210 # beq .L_8022781C
    addi 4, 31, 0x234
    lbzx 0, 29, 4
    cmplwi 0, 0x1
    .4byte 0x41820260 # beq .L_8022787C
    li 0, 0x1
    mr 3, 31
    stbx 0, 29, 4
    bl fn_802373EC
    cmpwi 3, 0x1
    .4byte 0x40820024 # bne .L_80227658
    mr 3, 31
    bl fn_8023725C
    cmpwi 3, 0x2
    .4byte 0x41800014 # blt .L_80227658
    mr 3, 31
    bl fn_8023513C
    clrlwi. 0, 3, 24
    .4byte 0x40820228 # bne .L_8022787C
L_80227658:
    mr 3, 31
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_802276B0
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x4182003C # beq .L_802276B0
    mr 3, 31
    bl fn_8022F3DC
    mr 28, 3
    bl fn_802373EC
    cmpwi 3, 0x1
    .4byte 0x40820024 # bne .L_802276B0
    mr 3, 28
    bl fn_8023725C
    cmpwi 3, 0x2
    .4byte 0x41800014 # blt .L_802276B0
    mr 3, 28
    bl fn_8023513C
    clrlwi. 0, 3, 24
    .4byte 0x408201D0 # bne .L_8022787C
L_802276B0:
    lwz 0, 0x90(29)
    mr 3, 31
    extrwi. 5, 0, 3, 5
    clrlwi 7, 0, 25
    addi 4, 5, 0x7
    .4byte 0x40820008 # bne .L_802276CC
    mr 4, 5
L_802276CC:
    addi 5, 29, 0xc
    addi 6, 29, 0x238
    bl fn_802317F0
    clrlwi. 0, 3, 24
    .4byte 0x418201A0 # beq .L_8022787C
    lbz 0, 0x254(29)
    cmplwi 0, 0x1
    .4byte 0x40820194 # bne .L_8022787C
    lfs 2, 0x10(29)
    mr 5, 31
    .4byte 0xC022CFD0 # lfs f1, lbl_8053FF70@sda21(r0)
    addi 4, 1, 0x2c
    lfs 0, 0xc(29)
    li 7, 0xc
    fsubs 2, 2, 1
    lwz 6, 0x4(29)
    fsubs 1, 0, 1
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0x30(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x34(1)
    bl fn_802A3948
    lfs 2, 0x10(29)
    mr 5, 31
    .4byte 0xC022CFD0 # lfs f1, lbl_8053FF70@sda21(r0)
    addi 4, 1, 0x20
    lfs 0, 0xc(29)
    li 7, 0xc
    fsubs 2, 2, 1
    lwz 6, 0x4(29)
    fadds 1, 1, 0
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0x24(1)
    stfs 1, 0x20(1)
    stfs 0, 0x28(1)
    bl fn_802A3948
    .4byte 0xC042CFD0 # lfs f2, lbl_8053FF70@sda21(r0)
    mr 5, 31
    lfs 1, 0x10(29)
    addi 4, 1, 0x14
    lfs 0, 0xc(29)
    li 7, 0xc
    fadds 3, 2, 1
    lwz 6, 0x4(29)
    fsubs 1, 0, 2
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 3, 0x18(1)
    stfs 1, 0x14(1)
    stfs 0, 0x1c(1)
    bl fn_802A3948
    .4byte 0xC042CFD0 # lfs f2, lbl_8053FF70@sda21(r0)
    mr 5, 31
    lfs 1, 0x10(29)
    addi 4, 1, 0x8
    lfs 0, 0xc(29)
    li 7, 0xc
    fadds 3, 2, 1
    lwz 6, 0x4(29)
    fadds 1, 2, 0
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 3, 0xc(1)
    stfs 1, 0x8(1)
    stfs 0, 0x10(1)
    bl fn_802A3948
    lbz 0, 0x255(29)
    cmplwi 0, 0x0
    .4byte 0x40820098 # bne .L_8022787C
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022CFD8 # lfs f1, lbl_8053FF78@sda21(r0)
    li 5, 0x3e3
    li 6, 0x0
    li 7, -0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x1
    stb 0, 0x255(29)
    .4byte 0x48000064 # b .L_8022787C
L_8022781C:
    lfs 0, 0x0(30)
    mr 3, 31
    .4byte 0xC0A2CFD8 # lfs f5, lbl_8053FF78@sda21(r0)
    mr 4, 30
    lfs 2, 0x4(30)
    li 6, 0x0
    lfs 1, 0x8(30)
    fsubs 4, 0, 5
    lfs 0, 0xc(30)
    fsubs 3, 2, 5
    fadds 2, 1, 5
    .4byte 0xC022CFD4 # lfs f1, lbl_8053FF74@sda21(r0)
    fadds 0, 0, 5
    stfs 4, 0x0(30)
    stfs 3, 0x4(30)
    stfs 2, 0x8(30)
    stfs 0, 0xc(30)
    lwz 5, 0x4(29)
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_8022787C
    addi 0, 31, 0x234
    li 3, 0x0
    stbx 3, 29, 0
L_8022787C:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FCD4 # blt .L_80227558
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

fn_802278A8:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 29, 3
    mr 30, 4
    li 31, 0x0
L_802278C4:
    lfs 3, 0x60(29)
    mr 3, 31
    stfs 3, 0x0(30)
    lfs 2, 0x64(29)
    stfs 2, 0x4(30)
    lfs 1, 0x68(29)
    stfs 1, 0x8(30)
    lfs 0, 0x6c(29)
    stfs 0, 0xc(30)
    lfs 5, 0x10(29)
    lfs 4, 0xc(29)
    fadds 2, 2, 5
    fadds 3, 3, 4
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 2, 0x4(30)
    stfs 3, 0x0(30)
    stfs 1, 0x8(30)
    stfs 0, 0xc(30)
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x40820024 # bne .L_8022793C
    mr 3, 31
    bl fn_8022D534
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8022793C
    addi 0, 31, 0x234
    li 3, 0x1
    stbx 3, 29, 0
    .4byte 0x48000390 # b .L_80227CC8
L_8022793C:
    lwz 0, 0x90(29)
    clrlwi 0, 0, 25
    cmpwi 0, 0x10
    .4byte 0x4182038C # beq .L_80227CD4
    mr 3, 31
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_802279AC
    lwz 0, 0x90(29)
    clrlwi. 3, 0, 25
    .4byte 0x41820020 # beq .L_80227984
    subi 0, 3, 0x1
    cmplwi 0, 0x2
    .4byte 0x40810014 # ble .L_80227984
    cmpwi 3, 0x17
    .4byte 0x4182000C # beq .L_80227984
    cmpwi 3, 0x18
    .4byte 0x4082002C # bne .L_802279AC
L_80227984:
    lwz 5, 0x4(29)
    mr 3, 31
    .4byte 0xC022CFD0 # lfs f1, lbl_8053FF70@sda21(r0)
    mr 4, 30
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802279AC
    mr 3, 31
    bl fn_802381B8
L_802279AC:
    lwz 0, 0x90(29)
    clrlwi 0, 0, 25
    cmpwi 0, 0x13
    .4byte 0x40820014 # bne .L_802279CC
    mr 3, 31
    bl fn_80234E30
    clrlwi. 0, 3, 24
    .4byte 0x41820300 # beq .L_80227CC8
L_802279CC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_80227A10
    mr 3, 31
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_80227A10
    lwz 0, 0x90(29)
    extrwi. 3, 0, 3, 5
    addi 27, 3, 0x7
    .4byte 0x40820008 # bne .L_80227A00
    mr 27, 3
L_80227A00:
    mr 3, 31
    bl fn_8023DE58
    cmpw 3, 27
    .4byte 0x408202BC # bne .L_80227CC8
L_80227A10:
    lwz 5, 0x4(29)
    mr 3, 31
    .4byte 0xC022CFD0 # lfs f1, lbl_8053FF70@sda21(r0)
    mr 4, 30
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x4182023C # beq .L_80227C68
    lwz 0, 0x90(29)
    clrlwi 0, 0, 25
    cmpwi 0, 0x15
    .4byte 0x4182000C # beq .L_80227A48
    cmpwi 0, 0x23
    .4byte 0x40820084 # bne .L_80227AC8
L_80227A48:
    lwz 27, 0x4(29)
    bl GetRoomConfigRecord
    addis 4, 27, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x41820068 # beq .L_80227AC8
    mr 3, 31
    li 4, 0x8
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x40820040 # bne .L_80227AB4
    mr 3, 31
    li 4, 0x4
    bl fn_8022C5EC
    cmplwi 3, 0x0
    .4byte 0x4082002C # bne .L_80227AB4
    mr 3, 31
    li 4, 0x8
    bl fn_8022C46C
    cmplwi 3, 0x0
    .4byte 0x40820018 # bne .L_80227AB4
    mr 3, 31
    li 4, 0x4
    bl fn_8022C46C
    cmplwi 3, 0x0
    .4byte 0x41820218 # beq .L_80227CC8
L_80227AB4:
    mr 3, 31
    bl fn_8022DBA0
    clrlwi. 0, 3, 24
    .4byte 0x40820208 # bne .L_80227CC8
    .4byte 0x48000030 # b .L_80227AF4
L_80227AC8:
    addi 27, 31, 0x234
    lbzx 0, 29, 27
    cmplwi 0, 0x1
    .4byte 0x418201F4 # beq .L_80227CC8
    mr 3, 31
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80227AF4
    li 0, 0x1
    stbx 0, 29, 27
    .4byte 0x480001D8 # b .L_80227CC8
L_80227AF4:
    mr 3, 31
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_80227B14
    lwz 0, 0x90(29)
    clrlwi 0, 0, 25
    cmpwi 0, 0x4
    .4byte 0x408201B8 # bne .L_80227CC8
L_80227B14:
    lwz 0, 0x90(29)
    clrlwi 0, 0, 25
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_80227B34
    cmpwi 0, 0x20
    .4byte 0x4182000C # beq .L_80227B34
    cmpwi 0, 0x24
    .4byte 0x40820034 # bne .L_80227B64
L_80227B34:
    mr 3, 31
    bl fn_802373EC
    cmpwi 3, 0x1
    .4byte 0x40820024 # bne .L_80227B64
    mr 3, 31
    bl fn_8023725C
    cmpwi 3, 0x2
    .4byte 0x41800014 # blt .L_80227B64
    mr 3, 31
    bl fn_8023513C
    clrlwi. 0, 3, 24
    .4byte 0x40820168 # bne .L_80227CC8
L_80227B64:
    lwz 0, 0x90(29)
    mr 3, 31
    extrwi. 5, 0, 3, 5
    clrlwi 7, 0, 25
    addi 4, 5, 0x7
    .4byte 0x40820008 # bne .L_80227B80
    mr 4, 5
L_80227B80:
    addi 5, 29, 0xc
    addi 6, 29, 0x238
    bl fn_802317F0
    clrlwi. 0, 3, 24
    .4byte 0x41820138 # beq .L_80227CC8
    lwz 0, 0x90(29)
    clrlwi 0, 0, 25
    cmpwi 0, 0x4
    .4byte 0x40820128 # bne .L_80227CC8
    mr 3, 31
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820118 # beq .L_80227CC8
    mr 3, 31
    bl fn_8023DE58
    mr 27, 3
    bl GetRoomConfigRecord
    addis 4, 27, 0x1
    addi 4, 4, 0x31df
    lbzx 0, 3, 4
    cmplwi 0, 0x0
    .4byte 0x408200F4 # bne .L_80227CC8
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x418200E4 # beq .L_80227CC8
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x5
    .4byte 0x418200D4 # beq .L_80227CC8
    mr 3, 31
    bl fn_8023E724
    mr 28, 3
    mr 3, 31
    bl fn_8023DE58
    mr 27, 3
    mr 3, 31
    bl fn_8022F3DC
    mr 4, 27
    mr 5, 28
    bl fn_8022BC38
    clrlwi. 0, 3, 24
    .4byte 0x418200A0 # beq .L_80227CC8
    mr 3, 31
    bl fn_8022F3DC
    bl fn_802381B8
    mr 3, 31
    bl fn_8023E724
    mr 27, 3
    mr 3, 31
    bl fn_8023DE58
    mr 28, 3
    mr 3, 31
    bl fn_8022F3DC
    mr 4, 28
    mr 5, 27
    bl fn_802348C4
    .4byte 0x48000064 # b .L_80227CC8
L_80227C68:
    lfs 0, 0x0(30)
    mr 3, 31
    .4byte 0xC0A2CFD8 # lfs f5, lbl_8053FF78@sda21(r0)
    mr 4, 30
    lfs 2, 0x4(30)
    li 6, 0x0
    lfs 1, 0x8(30)
    fsubs 4, 0, 5
    lfs 0, 0xc(30)
    fsubs 3, 2, 5
    fadds 2, 1, 5
    .4byte 0xC022CFD4 # lfs f1, lbl_8053FF74@sda21(r0)
    fadds 0, 0, 5
    stfs 4, 0x0(30)
    stfs 3, 0x4(30)
    stfs 2, 0x8(30)
    stfs 0, 0xc(30)
    lwz 5, 0x4(29)
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80227CC8
    addi 0, 31, 0x234
    li 3, 0x0
    stbx 3, 29, 0
L_80227CC8:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FBF4 # blt .L_802278C4
L_80227CD4:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80227CE8:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    lwz 0, 0x90(3)
    clrlwi 0, 0, 25
    cmpwi 0, 0x20
    .4byte 0x40820218 # bne .L_80227F20
    lbz 0, 0x255(31)
    cmplwi 0, 0x0
    .4byte 0x4082020C # bne .L_80227F20
    li 0, -0x1
    addi 9, 1, 0x20
    stw 0, 0x30(1)
    li 10, 0x0
    stw 0, 0x34(1)
    .4byte 0x48000064 # b .L_80227D90
L_80227D30:
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
L_80227D90:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80227D30
    .4byte 0xC022CFE4 # lfs f1, lbl_8053FF84@sda21(r0)
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x30(1)
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    stw 5, 0x34(1)
    stw 5, 0x38(1)
    stfs 0, 0x10(1)
    stb 5, 0x3c(1)
    psq_l 3, 0x10(1), 1, 0
    stb 5, 0x3d(1)
    stb 5, 0x3e(1)
    stb 4, 0x3f(1)
    stb 4, 0x40(1)
    stb 5, 0x41(1)
    stb 5, 0x42(1)
    stb 5, 0x43(1)
    stb 5, 0x44(1)
    stb 5, 0x45(1)
    stb 4, 0x46(1)
    stw 3, 0x48(1)
    stb 4, 0x4c(1)
    stb 5, 0x4d(1)
    stb 5, 0x4e(1)
    stw 6, 0x50(1)
    stw 5, 0x54(1)
    stw 0, 0x58(1)
    psq_l 2, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    stfs 1, 0x8(1)
    stfs 1, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    psq_st 2, 0x14(1), 0, 0
    ps_add 1, 2, 1
    stfs 0, 0x1c(1)
    psq_st 1, 0xc(31), 0, 0
    psq_l 0, 0x14(31), 1, 0
    ps_add 0, 0, 3
    psq_st 0, 0x14(31), 1, 0
    lbz 0, 0x256(31)
    cmplwi 0, 0x1
    .4byte 0x40820054 # bne .L_80227EA0
    lwz 0, 0x278(31)
    cmpwi 0, 0x0
    .4byte 0x41800048 # blt .L_80227EA0
    lis 3, lbl_8046AC58@ha
    slwi 0, 0, 2
    addi 3, 3, lbl_8046AC58@l
    lfs 1, 0xc(31)
    lfsx 0, 3, 0
    fadds 0, 1, 0
    stfs 0, 0xc(31)
    lwz 3, 0x278(31)
    addi 0, 3, 0x1
    stw 0, 0x278(31)
    lwz 0, 0x278(31)
    cmpwi 0, 0x18
    .4byte 0x41800014 # blt .L_80227EA0
    li 3, 0xa
    bl fn_801CD664
    subi 0, 3, 0x69
    stw 0, 0x278(31)
L_80227EA0:
    li 5, 0x1
    li 4, -0x2
    li 3, 0xa0
    li 0, 0x0
    stb 5, 0x44(1)
    stb 4, 0x3d(1)
    stb 3, 0x33(1)
    stb 0, 0x4c(1)
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x40800044 # bge .L_80227F0C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046ACB8@ha
    addi 5, 3, lbl_8046ACB8@l
    lis 4, 0x534d
    lwz 3, 0xa4(6)
    addi 4, 4, 0x5020
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 5, 3
    addi 4, 31, 0xc
    lwz 3, 0x20(6)
    addi 6, 1, 0x20
    bl fn_802F6CF4
L_80227F0C:
    psq_l 1, 0x14(1), 0, 0
    lfs 0, 0x1c(1)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    .4byte 0x48000020 # b .L_80227F3C
L_80227F20:
    lfs 0, 0x10(31)
    .4byte 0xC022CFE8 # lfs f1, lbl_8053FF88@sda21(r0)
    fadds 0, 0, 1
    stfs 0, 0x10(31)
    lfs 0, 0x10(31)
    fsubs 0, 0, 1
    stfs 0, 0x10(31)
L_80227F3C:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_80227F50:
    stwu 1, -0x120(1)
    mflr 0
    stw 0, 0x124(1)
    stfd 31, 0x110(1)
    psq_st 31, 0x118(1), 0, 0
    stfd 30, 0x100(1)
    psq_st 30, 0x108(1), 0, 0
    stfd 29, 0xf0(1)
    psq_st 29, 0xf8(1), 0, 0
    stfd 28, 0xe0(1)
    psq_st 28, 0xe8(1), 0, 0
    stw 31, 0xdc(1)
    stw 30, 0xd8(1)
    stw 29, 0xd4(1)
    stw 28, 0xd0(1)
    mr 30, 3
    lis 3, lbl_8046ABE8@ha
    mr 28, 30
    li 29, 0x0
    addi 31, 3, lbl_8046ABE8@l
L_80227FA0:
    mr 3, 29
    bl fn_8022C76C
    stfs 1, 0x258(28)
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    lfs 0, 0x258(28)
    stfs 0, 0x268(28)
    addi 28, 28, 0x4
    .4byte 0x4180FFE0 # blt .L_80227FA0
    li 29, 0x0
    .4byte 0xC382CFC0 # lfs f28, lbl_8053FF60@sda21(r0)
    stb 29, 0x256(30)
L_80227FD0:
    mr 3, 29
    bl fn_8023E724
    psq_l 0, 0x0(3), 0, 0
    lfs 2, 0x8(3)
    psq_st 0, 0x5c(1), 0, 0
    lfs 1, 0xc(30)
    lfs 0, 0x5c(1)
    stfs 2, 0x64(1)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 28
    .4byte 0x40800028 # bge .L_80228024
    lfs 1, 0x10(30)
    lfs 0, 0x60(1)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 28
    .4byte 0x40800010 # bge .L_80228024
    li 0, 0x1
    stb 0, 0x256(30)
    .4byte 0x48000010 # b .L_80228030
L_80228024:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFA4 # blt .L_80227FD0
L_80228030:
    lbz 0, 0x256(30)
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_80228068
    lwz 3, 0x278(30)
    cmpwi 3, 0x0
    .4byte 0x4080002C # bge .L_80228070
    cmpwi 3, -0x1
    .4byte 0x40820010 # bne .L_8022805C
    li 0, 0x0
    stw 0, 0x278(30)
    .4byte 0x48000018 # b .L_80228070
L_8022805C:
    addi 0, 3, 0x1
    stw 0, 0x278(30)
    .4byte 0x4800000C # b .L_80228070
L_80228068:
    li 0, -0x1
    stw 0, 0x278(30)
L_80228070:
    lwz 0, 0x90(30)
    clrlwi 0, 0, 25
    cmpwi 0, 0x20
    .4byte 0x408201A8 # bne .L_80228224
    li 29, 0x0
L_80228084:
    mr 3, 29
    bl fn_802373EC
    cmpwi 3, 0x1
    .4byte 0x40820188 # bne .L_80228218
    mr 3, 29
    bl fn_8023A51C
    clrlwi. 0, 3, 24
    .4byte 0x41820178 # beq .L_80228218
    mr 3, 29
    bl fn_8023A478
    psq_l 0, 0x0(3), 0, 0
    lfs 2, 0x8(3)
    psq_st 0, 0x20(1), 0, 0
    lfs 3, 0xc(30)
    lfs 0, 0x20(1)
    .4byte 0xC022CFE0 # lfs f1, lbl_8053FF80@sda21(r0)
    fsubs 0, 3, 0
    stfs 2, 0x28(1)
    fabs 0, 0
    fcmpo cr0, 0, 1
    .4byte 0x40800144 # bge .L_80228218
    lfs 2, 0x10(30)
    lfs 0, 0x24(1)
    fsubs 0, 2, 0
    fabs 0, 0
    fcmpo cr0, 0, 1
    .4byte 0x4080012C # bge .L_80228218
    .4byte 0xC022CFD0 # lfs f1, lbl_8053FF70@sda21(r0)
    mr 5, 29
    lwz 6, 0x4(30)
    addi 4, 1, 0x2c
    fsubs 2, 2, 1
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    fsubs 1, 3, 1
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 0, 0x34(1)
    li 7, 0xc
    stfs 1, 0x2c(1)
    stfs 2, 0x30(1)
    bl fn_802A3948
    lfs 2, 0x10(30)
    mr 5, 29
    .4byte 0xC022CFD0 # lfs f1, lbl_8053FF70@sda21(r0)
    addi 4, 1, 0x38
    lfs 0, 0xc(30)
    li 7, 0xc
    fsubs 2, 2, 1
    lwz 6, 0x4(30)
    fadds 1, 1, 0
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 2, 0x3c(1)
    stfs 1, 0x38(1)
    stfs 0, 0x40(1)
    bl fn_802A3948
    .4byte 0xC042CFD0 # lfs f2, lbl_8053FF70@sda21(r0)
    mr 5, 29
    lfs 1, 0x10(30)
    addi 4, 1, 0x44
    lfs 0, 0xc(30)
    li 7, 0xc
    fadds 3, 2, 1
    lwz 6, 0x4(30)
    fsubs 1, 0, 2
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 3, 0x48(1)
    stfs 1, 0x44(1)
    stfs 0, 0x4c(1)
    bl fn_802A3948
    .4byte 0xC042CFD0 # lfs f2, lbl_8053FF70@sda21(r0)
    mr 5, 29
    lfs 1, 0x10(30)
    addi 4, 1, 0x50
    lfs 0, 0xc(30)
    li 7, 0xc
    fadds 3, 2, 1
    lwz 6, 0x4(30)
    fadds 1, 2, 0
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    .4byte 0x806D90D8 # lwz r3, lbl_8053AC98@sda21(r0)
    stfs 3, 0x54(1)
    stfs 1, 0x50(1)
    stfs 0, 0x58(1)
    bl fn_802A3948
    lbz 0, 0x255(30)
    cmplwi 0, 0x0
    .4byte 0x40820044 # bne .L_80228224
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC022CFD8 # lfs f1, lbl_8053FF78@sda21(r0)
    li 5, 0x3e3
    li 6, 0x0
    li 7, -0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x1
    stb 0, 0x255(30)
    .4byte 0x48000010 # b .L_80228224
L_80228218:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FE64 # blt .L_80228084
L_80228224:
    lwz 0, 0x90(30)
    srwi. 0, 0, 27
    .4byte 0x41820020 # beq .L_8022824C
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820864 # beq .L_80228AAC
L_8022824C:
    lfs 31, 0x60(30)
    addi 3, 1, 0x8
    lfs 30, 0x64(30)
    lfs 29, 0x68(30)
    lfs 28, 0x6c(30)
    lfs 1, 0x10(30)
    lfs 0, 0xc(30)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    lwz 4, 0x4(30)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmplwi 0, 0x1
    .4byte 0x4182082C # beq .L_80228AAC
    cmplwi 0, 0x21
    .4byte 0x40820008 # bne .L_80228290
    .4byte 0x48000820 # b .L_80228AAC
L_80228290:
    lbz 0, 0x255(30)
    cmplwi 0, 0x1
    .4byte 0x40820058 # bne .L_802282F0
    bl fn_801902C0
    lwz 0, 0x79c(3)
    cmpwi 0, 0x10
    .4byte 0x40800048 # bge .L_802282F0
    mulli 4, 0, 0x18
    lfs 0, 0xc(30)
    li 5, 0x1
    addi 4, 4, 0x61c
    add 4, 3, 4
    stfs 0, 0x0(4)
    lfs 0, 0x10(30)
    stfs 0, 0x4(4)
    lfs 0, 0x14(30)
    stfs 0, 0x8(4)
    lwz 0, 0x79c(3)
    mulli 0, 0, 0x18
    add 4, 3, 0
    stb 5, 0x628(4)
    lwz 4, 0x79c(3)
    addi 0, 4, 0x1
    stw 0, 0x79c(3)
L_802282F0:
    lwz 0, 0x90(30)
    lfs 0, 0x8(1)
    lfs 1, 0xc(1)
    clrlwi 0, 0, 25
    cmpwi 0, 0x20
    fadds 31, 31, 0
    fadds 30, 30, 1
    fadds 29, 29, 0
    fadds 28, 28, 1
    .4byte 0x40820024 # bne .L_80228338
    stfs 31, 0xa8(1)
    mr 3, 30
    addi 4, 1, 0xa8
    stfs 30, 0xac(1)
    stfs 29, 0xb0(1)
    stfs 28, 0xb4(1)
    bl fn_80227530
    .4byte 0x48000138 # b .L_8022846C
L_80228338:
    cmpwi 0, 0x24
    .4byte 0x40820114 # bne .L_80228450
    li 28, 0x0
L_80228344:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_80228388
    mr 3, 28
    bl fn_8022C8EC
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_80228388
    lwz 0, 0x90(30)
    extrwi. 3, 0, 3, 5
    addi 29, 3, 0x7
    .4byte 0x40820008 # bne .L_80228378
    mr 29, 3
L_80228378:
    mr 3, 28
    bl fn_8023DE58
    cmpw 3, 29
    .4byte 0x408200BC # bne .L_80228440
L_80228388:
    stfs 31, 0x10(1)
    mr 3, 28
    stfs 30, 0x14(1)
    stfs 29, 0x18(1)
    stfs 28, 0x1c(1)
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x10(30)
    fcmpo cr0, 1, 0
    .4byte 0x4081004C # ble .L_802283F8
    mr 3, 28
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(30)
    lfs 0, 0x10(1)
    .4byte 0xC082CFD4 # lfs f4, lbl_8053FF74@sda21(r0)
    fsubs 5, 2, 1
    lfs 2, 0x14(1)
    lfs 1, 0x18(1)
    fadds 3, 0, 4
    lfs 0, 0x1c(1)
    fadds 2, 2, 5
    fadds 1, 1, 4
    fadds 0, 0, 5
    stfs 3, 0x10(1)
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
L_802283F8:
    lwz 5, 0x4(30)
    mr 3, 28
    .4byte 0xC022CFD0 # lfs f1, lbl_8053FF70@sda21(r0)
    addi 4, 1, 0x10
    li 6, 0x0
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_80228440
    lwz 0, 0x90(30)
    mr 3, 28
    extrwi. 5, 0, 3, 5
    clrlwi 7, 0, 25
    addi 4, 5, 0x7
    .4byte 0x40820008 # bne .L_80228434
    mr 4, 5
L_80228434:
    addi 5, 30, 0xc
    addi 6, 30, 0x238
    bl fn_802317F0
L_80228440:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FEFC # blt .L_80228344
    .4byte 0x48000020 # b .L_8022846C
L_80228450:
    stfs 31, 0x98(1)
    mr 3, 30
    addi 4, 1, 0x98
    stfs 30, 0x9c(1)
    stfs 29, 0xa0(1)
    stfs 28, 0xa4(1)
    bl fn_802278A8
L_8022846C:
    lwz 0, 0x90(30)
    addi 3, 30, 0x238
    extrwi. 5, 0, 3, 5
    addi 4, 5, 0x7
    .4byte 0x40820008 # bne .L_80228484
    mr 4, 5
L_80228484:
    bl fn_80226850
    clrlwi 0, 3, 16
    cmpwi 0, 0x19c
    .4byte 0x4182061C # beq .L_80228AAC
    cmpwi 0, 0x19d
    .4byte 0x40820008 # bne .L_802284A0
    .4byte 0x48000610 # b .L_80228AAC
L_802284A0:
    lwz 0, 0x90(30)
    clrlwi 0, 0, 25
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_802284C0
    cmpwi 0, 0x20
    .4byte 0x4182000C # beq .L_802284C0
    cmpwi 0, 0x24
    .4byte 0x40820018 # bne .L_802284D4
L_802284C0:
    mr 3, 30
    addi 4, 31, 0x44
    bl fn_801F26CC
    mr 28, 3
    .4byte 0x48000048 # b .L_80228518
L_802284D4:
    cmpwi 0, 0x6
    .4byte 0x41820014 # beq .L_802284EC
    cmpwi 0, 0xb
    .4byte 0x4182000C # beq .L_802284EC
    cmpwi 0, 0x14
    .4byte 0x40820018 # bne .L_80228500
L_802284EC:
    mr 3, 30
    addi 4, 31, 0x38
    bl fn_801F26CC
    mr 28, 3
    .4byte 0x4800001C # b .L_80228518
L_80228500:
    .4byte 0xC022CFC0 # lfs f1, lbl_8053FF60@sda21(r0)
    mr 3, 30
    addi 4, 31, 0x0
    li 5, -0x1
    bl fn_80227290
    mr 28, 3
L_80228518:
    cmpwi 28, 0x0
    .4byte 0x41800590 # blt .L_80228AAC
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x4182057C # beq .L_80228AAC
    lwz 0, 0x90(30)
    clrlwi. 0, 0, 25
    .4byte 0x4182001C # beq .L_80228558
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_80228558
    cmpwi 0, 0x15
    .4byte 0x4182000C # beq .L_80228558
    cmpwi 0, 0x23
    .4byte 0x40820018 # bne .L_8022856C
L_80228558:
    lfs 1, 0x40(31)
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x41820544 # beq .L_80228AAC
L_8022856C:
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_8022857C
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_80228590
L_8022857C:
    lfs 1, 0x40(31)
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820520 # beq .L_80228AAC
L_80228590:
    cmpwi 0, 0x17
    .4byte 0x40820018 # bne .L_802285AC
    lfs 1, 0x3c(31)
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820504 # beq .L_80228AAC
L_802285AC:
    cmpwi 0, 0x18
    .4byte 0x4082001C # bne .L_802285CC
    lfs 1, 0x3c(31)
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802285CC
    .4byte 0x480004E4 # b .L_80228AAC
L_802285CC:
    lwz 3, 0x1a0(31)
    subis 0, 3, 0x424f
    cmplwi 0, 0x4d45
    .4byte 0x40820210 # bne .L_802287E8
    lwz 0, 0x90(31)
    clrlwi 3, 0, 28
    bl fn_8023DE58
    lwz 5, 0x230(31)
    cmpwi 5, 0x1
    .4byte 0x418200D4 # beq .L_802286C4
    lis 3, lbl_80539D44@ha
    li 4, 0x0
    lfs 0, lbl_80539D44@l(3)
    mr 3, 4
    .4byte 0xC042CFC0 # lfs f2, lbl_8053FF60@sda21(r0)
    mr 0, 4
    lfs 1, 0x3c(31)
    fmuls 2, 2, 0
    lfs 0, 0x364(31)
    fsubs 0, 1, 0
    fneg 3, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8022863C
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8022863C
    li 0, 0x1
L_8022863C:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_8022867C
    lfs 1, 0x40(31)
    li 0, 0x0
    lfs 0, 0x368(31)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_80228670
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80228670
    li 0, 0x1
L_80228670:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_8022867C
    li 3, 0x1
L_8022867C:
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_802286BC
    lfs 1, 0x44(31)
    li 0, 0x0
    lfs 0, 0x36c(31)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_802286B0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802286B0
    li 0, 0x1
L_802286B0:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_802286BC
    li 4, 0x1
L_802286BC:
    clrlwi. 0, 4, 24
    .4byte 0x4182000C # beq .L_802286CC
L_802286C4:
    li 0, 0x1
    .4byte 0x48000008 # b .L_802286D0
L_802286CC:
    li 0, 0x0
L_802286D0:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x418203D4 # beq .L_80228AAC
    lwz 0, 0x90(30)
    clrlwi 0, 0, 25
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_802286FC
    cmpwi 0, 0x20
    .4byte 0x4182000C # beq .L_802286FC
    cmpwi 0, 0x24
    .4byte 0x408200F0 # bne .L_802287E8
L_802286FC:
    cmpwi 5, 0x1
    .4byte 0x418200D4 # beq .L_802287D4
    lis 3, lbl_80539D44@ha
    li 4, 0x0
    lfs 0, lbl_80539D44@l(3)
    mr 3, 4
    .4byte 0xC042CFC0 # lfs f2, lbl_8053FF60@sda21(r0)
    mr 0, 4
    lfs 1, 0x3c(31)
    fmuls 2, 2, 0
    lfs 0, 0x364(31)
    fsubs 0, 1, 0
    fneg 3, 2
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_8022874C
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8022874C
    li 0, 0x1
L_8022874C:
    clrlwi. 0, 0, 24
    .4byte 0x4182003C # beq .L_8022878C
    lfs 1, 0x40(31)
    li 0, 0x0
    lfs 0, 0x368(31)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_80228780
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80228780
    li 0, 0x1
L_80228780:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_8022878C
    li 3, 0x1
L_8022878C:
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_802287CC
    lfs 1, 0x44(31)
    li 0, 0x0
    lfs 0, 0x36c(31)
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_802287C0
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802287C0
    li 0, 0x1
L_802287C0:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_802287CC
    li 4, 0x1
L_802287CC:
    clrlwi. 0, 4, 24
    .4byte 0x4182000C # beq .L_802287DC
L_802287D4:
    li 0, 0x1
    .4byte 0x48000008 # b .L_802287E0
L_802287DC:
    li 0, 0x0
L_802287E0:
    clrlwi. 0, 0, 24
    .4byte 0x418202C8 # beq .L_80228AAC
L_802287E8:
    lwz 3, 0x1a0(31)
    subis 0, 3, 0x4842
    cmplwi 0, 0x4d42
    .4byte 0x41820034 # beq .L_80228828
    subis 0, 3, 0x5354
    cmplwi 0, 0x4f4e
    .4byte 0x41820028 # beq .L_80228828
    subis 0, 3, 0x4752
    cmplwi 0, 0x4153
    .4byte 0x4182001C # beq .L_80228828
    subis 0, 3, 0x5455
    cmplwi 0, 0x424f
    .4byte 0x41820010 # beq .L_80228828
    subis 0, 3, 0x5941
    cmplwi 0, 0x5349
    .4byte 0x40820060 # bne .L_80228884
L_80228828:
    addi 3, 31, 0x3c
    bl PSVECMag
    .4byte 0xC002CFD8 # lfs f0, lbl_8053FF78@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x41820270 # beq .L_80228AAC
    lwz 0, 0x90(30)
    clrlwi 3, 0, 25
    cmpwi 3, 0x4
    .4byte 0x41820028 # beq .L_80228874
    subi 0, 3, 0x7
    cmplwi 0, 0x2
    .4byte 0x4081001C # ble .L_80228874
    cmpwi 3, 0x12
    .4byte 0x41820014 # beq .L_80228874
    cmpwi 3, 0x20
    .4byte 0x4182000C # beq .L_80228874
    cmpwi 3, 0x24
    .4byte 0x40820014 # bne .L_80228884
L_80228874:
    lfs 1, 0x14(31)
    .4byte 0xC002CFC4 # lfs f0, lbl_8053FF64@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4181022C # bgt .L_80228AAC
L_80228884:
    lwz 3, 0x1a0(31)
    subis 0, 3, 0x484e
    cmplwi 0, 0x5259
    .4byte 0x41820044 # beq .L_802288D4
    subis 0, 3, 0x424f
    cmplwi 0, 0x4d45
    .4byte 0x41820038 # beq .L_802288D4
    subis 0, 3, 0x5043
    cmplwi 0, 0x444d
    .4byte 0x4182002C # beq .L_802288D4
    subis 0, 3, 0x5357
    cmplwi 0, 0x424d
    .4byte 0x41820020 # beq .L_802288D4
    subis 0, 3, 0x4649
    cmplwi 0, 0x5245
    .4byte 0x408200C4 # bne .L_80228984
    lwz 0, 0x90(31)
    extrwi 0, 0, 3, 23
    cmplwi 0, 0x1
    .4byte 0x418200B4 # beq .L_80228984
L_802288D4:
    lwz 0, 0x90(30)
    clrlwi 0, 0, 25
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_802288F4
    cmpwi 0, 0x20
    .4byte 0x4182000C # beq .L_802288F4
    cmpwi 0, 0x24
    .4byte 0x40820014 # bne .L_80228904
L_802288F4:
    lfs 1, 0x14(31)
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x418101AC # bgt .L_80228AAC
L_80228904:
    psq_l 0, 0xc(31), 0, 0
    mr 3, 31
    lfs 4, 0x14(31)
    psq_st 0, 0xc4(1), 0, 0
    psq_l 5, 0x238(30), 0, 0
    lfs 0, 0x240(30)
    lfs 3, 0xc4(1)
    stfs 0, 0xc0(1)
    lfs 1, 0xc8(1)
    psq_st 5, 0xb8(1), 0, 0
    psq_l 6, 0xc0(1), 1, 0
    lfs 2, 0xc(30)
    lfs 0, 0x10(30)
    fsubs 2, 3, 2
    stfs 4, 0xcc(1)
    fsubs 0, 1, 0
    psq_l 1, 0xcc(1), 1, 0
    stfs 2, 0xc4(1)
    ps_add 1, 6, 1
    stfs 0, 0xc8(1)
    psq_l 0, 0xc4(1), 0, 0
    psq_st 1, 0xc0(1), 1, 0
    ps_add 0, 5, 0
    psq_st 0, 0xb8(1), 0, 0
    lwz 0, 0x90(30)
    extrwi. 5, 0, 3, 5
    addi 4, 5, 0x7
    .4byte 0x40820008 # bne .L_80228978
    mr 4, 5
L_80228978:
    addi 5, 1, 0xb8
    bl fn_801F349C
    .4byte 0x4800012C # b .L_80228AAC
L_80228984:
    subis 0, 3, 0x4553
    cmplwi 0, 0x5259
    .4byte 0x408200D4 # bne .L_80228A60
    lwz 0, 0x90(30)
    clrlwi. 0, 0, 25
    .4byte 0x4182001C # beq .L_802289B4
    cmpwi 0, 0x3
    .4byte 0x41820014 # beq .L_802289B4
    cmpwi 0, 0x15
    .4byte 0x4182000C # beq .L_802289B4
    cmpwi 0, 0x23
    .4byte 0x40820028 # bne .L_802289D8
L_802289B4:
    .4byte 0xC022CFD4 # lfs f1, lbl_8053FF74@sda21(r0)
    .4byte 0xC002CFEC # lfs f0, lbl_8053FF8C@sda21(r0)
    stfs 1, 0x8c(1)
    stfs 0, 0x90(1)
    psq_l 0, 0x8c(1), 0, 0
    stfs 1, 0x94(1)
    psq_st 0, 0x3c(31), 0, 0
    stfs 1, 0x44(31)
    .4byte 0x4800008C # b .L_80228A60
L_802289D8:
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_802289E8
    cmpwi 0, 0x2
    .4byte 0x40820028 # bne .L_80228A0C
L_802289E8:
    .4byte 0xC022CFD4 # lfs f1, lbl_8053FF74@sda21(r0)
    .4byte 0xC002CFF0 # lfs f0, lbl_8053FF90@sda21(r0)
    stfs 1, 0x80(1)
    stfs 0, 0x84(1)
    psq_l 0, 0x80(1), 0, 0
    stfs 1, 0x88(1)
    psq_st 0, 0x3c(31), 0, 0
    stfs 1, 0x44(31)
    .4byte 0x48000058 # b .L_80228A60
L_80228A0C:
    cmpwi 0, 0x17
    .4byte 0x40820028 # bne .L_80228A38
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    .4byte 0xC022CFF0 # lfs f1, lbl_8053FF90@sda21(r0)
    stfs 0, 0x78(1)
    stfs 1, 0x74(1)
    psq_l 1, 0x74(1), 0, 0
    stfs 0, 0x7c(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
    .4byte 0x4800002C # b .L_80228A60
L_80228A38:
    cmpwi 0, 0x18
    .4byte 0x40820024 # bne .L_80228A60
    .4byte 0xC002CFD4 # lfs f0, lbl_8053FF74@sda21(r0)
    .4byte 0xC022CFEC # lfs f1, lbl_8053FF8C@sda21(r0)
    stfs 0, 0x6c(1)
    stfs 1, 0x68(1)
    psq_l 1, 0x68(1), 0, 0
    stfs 0, 0x70(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
L_80228A60:
    lwz 3, 0x1a0(31)
    subis 0, 3, 0x4649
    cmplwi 0, 0x5245
    .4byte 0x40820014 # bne .L_80228A80
    lwz 0, 0x90(31)
    extrwi 0, 0, 2, 24
    cmplwi 0, 0x1
    .4byte 0x41820030 # beq .L_80228AAC
L_80228A80:
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x40820024 # bne .L_80228AAC
    lwz 0, 0x90(30)
    mr 3, 31
    extrwi. 5, 0, 3, 5
    addi 4, 5, 0x7
    .4byte 0x40820008 # bne .L_80228AA4
    mr 4, 5
L_80228AA4:
    addi 5, 30, 0x238
    bl fn_801F349C
L_80228AAC:
    psq_l 31, 0x118(1), 0, 0
    lfd 31, 0x110(1)
    psq_l 30, 0x108(1), 0, 0
    lfd 30, 0x100(1)
    psq_l 29, 0xf8(1), 0, 0
    lfd 29, 0xf0(1)
    psq_l 28, 0xe8(1), 0, 0
    lfd 28, 0xe0(1)
    lwz 31, 0xdc(1)
    lwz 30, 0xd8(1)
    lwz 29, 0xd4(1)
    lwz 0, 0x124(1)
    lwz 28, 0xd0(1)
    mtlr 0
    addi 1, 1, 0x120
    blr

.section .ctors, "a"
.balign 4
    .4byte fn_80226DA4

