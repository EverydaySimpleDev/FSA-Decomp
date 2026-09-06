# Fresh-gap-hunt batch 13 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000A188
etb_8000A188:
    .4byte 0x08CA0000
    .4byte 0x00000000
.size etb_8000A188, 8

.global etb_8000A190
etb_8000A190:
    .4byte 0x10CA0000
    .4byte 0x00000000
.size etb_8000A190, 8

.global etb_8000A198
etb_8000A198:
    .4byte 0x08CA0000
    .4byte 0x00000000
.size etb_8000A198, 8

.section extabindex, "a"
.balign 4
.global eti_80017D94
eti_80017D94:
    .4byte fn_80214994
    .4byte 0x00000164
    .4byte etb_8000A188
.size eti_80017D94, 12

.global eti_80017DA0
eti_80017DA0:
    .4byte fn_80214AF8
    .4byte 0x000001EC
    .4byte etb_8000A190
.size eti_80017DA0, 12

.global eti_80017DAC
eti_80017DAC:
    .4byte fn_80214CE4
    .4byte 0x0000016C
    .4byte etb_8000A198
.size eti_80017DAC, 12

.text
.balign 4
.global fn_80214994
.global fn_80214AF8
.global fn_80214CE4

fn_80214994:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    mr 31, 3
    .4byte 0xC002CC1C # lfs f0, lbl_8053FBBC@sda21(r0)
    lwz 3, 0x34(3)
    psq_l 1, 0xc(3), 0, 0
    lfs 2, 0x14(3)
    psq_st 1, 0x8(1), 0, 0
    lfs 1, 0xc(1)
    stfs 2, 0x10(1)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    lwz 3, 0x4(3)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_80214A28
    lwz 31, 0x30(31)
    cmpwi 31, 0x0
    .4byte 0x418000D0 # blt .L_80214ACC
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200BC # beq .L_80214ACC
    psq_l 1, 0x8(1), 0, 0
    lfs 0, 0x10(1)
    psq_st 1, 0xc(3), 0, 0
    stfs 0, 0x14(3)
    .4byte 0x480000A8 # b .L_80214ACC
L_80214A28:
    lwz 0, 0x18(31)
    cmplwi 0, 0x0
    .4byte 0x4182009C # beq .L_80214ACC
    lfs 3, 0x10(1)
    li 3, 0x0
    .4byte 0xC002CC20 # lfs f0, lbl_8053FBC0@sda21(r0)
    li 0, 0x1
    fcmpo cr0, 3, 0
    .4byte 0x4081000C # ble .L_80214A54
    mr 3, 0
    li 0, 0x0
L_80214A54:
    slwi 3, 3, 10
    slwi 0, 0, 7
    add 3, 3, 0
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stw 4, 0x1c(1)
    addi 4, 1, 0x8
    .4byte 0xC842CC28 # lfd f2, lbl_8053FBC8@sda21(r0)
    stw 0, 0x18(1)
    lfs 0, 0xc(1)
    lfd 1, 0x18(1)
    lfs 31, 0x8(1)
    fsubs 1, 1, 2
    lwz 3, 0x20(3)
    fadds 30, 0, 1
    fadds 29, 3, 1
    bl fn_802F5E9C
    lfs 0, 0x10(1)
    addi 4, 1, 0x8
    li 5, 0x0
    li 6, 0x1
    fsubs 0, 1, 0
    stfs 31, 0x20(31)
    li 7, 0x1
    stfs 30, 0x24(31)
    fadds 29, 29, 0
    stfs 29, 0x28(31)
    lwz 3, 0x18(31)
    bl fn_8013CB44
L_80214ACC:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    lwz 0, 0x64(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80214AF8:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 31, 3
    lwz 30, 0x30(3)
    cmpwi 30, 0x0
    .4byte 0x41800028 # blt .L_80214B58
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80214B50
    li 0, 0x0
    stb 0, 0x11c(3)
L_80214B50:
    li 0, -0x1
    stw 0, 0x30(31)
L_80214B58:
    lwz 0, 0x18(31)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_80214B7C
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x18(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x18(31)
L_80214B7C:
    lis 4, 0x4
    lwz 3, 0x34(31)
    addi 4, 4, 0xe
    bl fn_801CDC8C
    lwz 3, 0x34(31)
    .4byte 0xC002CC1C # lfs f0, lbl_8053FBBC@sda21(r0)
    psq_l 1, 0xc(3), 0, 0
    lfs 2, 0x14(3)
    psq_st 1, 0x8(1), 0, 0
    lfs 1, 0xc(1)
    stfs 2, 0x10(1)
    fadds 0, 1, 0
    stfs 0, 0xc(1)
    lwz 3, 0x4(3)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_80214BF0
    bl SpatialRegistry_GetBase
    lwz 5, 0x34(31)
    lis 4, 0x534c
    addi 4, 4, 0x4546
    addi 6, 1, 0x8
    lwz 5, 0x4(5)
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x30(31)
    .4byte 0x480000B4 # b .L_80214CA0
L_80214BF0:
    lfs 3, 0x10(1)
    li 3, 0x0
    .4byte 0xC002CC20 # lfs f0, lbl_8053FBC0@sda21(r0)
    li 0, 0x1
    fcmpo cr0, 3, 0
    .4byte 0x4081000C # ble .L_80214C10
    mr 3, 0
    li 0, 0x0
L_80214C10:
    slwi 3, 3, 10
    slwi 0, 0, 7
    add 3, 3, 0
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stw 4, 0x1c(1)
    addi 4, 1, 0x8
    .4byte 0xC842CC28 # lfd f2, lbl_8053FBC8@sda21(r0)
    stw 0, 0x18(1)
    lfs 0, 0xc(1)
    lfd 1, 0x18(1)
    lfs 31, 0x8(1)
    fsubs 1, 1, 2
    lwz 3, 0x20(3)
    fadds 30, 0, 1
    fadds 29, 3, 1
    bl fn_802F5E9C
    lfs 0, 0x10(1)
    addi 4, 1, 0x8
    addi 9, 31, 0x1c
    li 5, 0x565
    fsubs 0, 1, 0
    stfs 31, 0x20(31)
    .4byte 0xC022CC30 # lfs f1, lbl_8053FBD0@sda21(r0)
    li 6, 0x0
    stfs 30, 0x24(31)
    li 7, 0x1
    fadds 29, 29, 0
    li 8, 0x0
    li 10, 0x1
    stfs 29, 0x28(31)
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    bl fn_8013CC50
    stw 3, 0x18(31)
L_80214CA0:
    lis 4, 0x4
    lwz 3, 0x34(31)
    addi 4, 4, 0xe
    li 5, 0x0
    bl fn_801F0E34
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 0, 0x64(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

fn_80214CE4:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x4182010C # beq .L_80214E24
    lwz 3, 0x34(31)
    li 4, 0x0
    .4byte 0xC022CC34 # lfs f1, lbl_8053FBD4@sda21(r0)
    li 0, 0x1
    psq_l 2, 0xc(3), 0, 0
    lfs 3, 0x14(3)
    .4byte 0xC002CC20 # lfs f0, lbl_8053FBC0@sda21(r0)
    psq_st 2, 0x8(1), 0, 0
    fcmpo cr0, 3, 0
    lfs 0, 0xc(1)
    stfs 3, 0x10(1)
    fadds 0, 0, 1
    stfs 0, 0xc(1)
    .4byte 0x4081000C # ble .L_80214D5C
    mr 4, 0
    li 0, 0x0
L_80214D5C:
    slwi 3, 4, 10
    slwi 0, 0, 7
    add 3, 3, 0
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stw 4, 0x1c(1)
    addi 4, 1, 0x8
    .4byte 0xC842CC28 # lfd f2, lbl_8053FBC8@sda21(r0)
    stw 0, 0x18(1)
    lfs 0, 0xc(1)
    lfd 1, 0x18(1)
    lfs 31, 0x8(1)
    fsubs 1, 1, 2
    lwz 3, 0x20(3)
    fadds 30, 0, 1
    fadds 29, 3, 1
    bl fn_802F5E9C
    lfs 0, 0x10(1)
    addi 4, 1, 0x8
    li 5, 0x0
    li 6, 0x1
    fsubs 0, 1, 0
    stfs 31, 0x8(31)
    li 7, 0x1
    stfs 30, 0xc(31)
    fadds 29, 29, 0
    stfs 29, 0x10(31)
    lwz 3, 0x0(31)
    bl fn_8013CB44
    lwz 5, 0x0(31)
    li 4, 0x0
    lwz 0, 0xf4(5)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x41820018 # beq .L_80214DFC
    lwz 3, 0xd0(5)
    lwz 0, 0xdc(5)
    add. 0, 3, 0
    .4byte 0x40820008 # bne .L_80214DFC
    li 4, 0x1
L_80214DFC:
    clrlwi. 0, 4, 24
    .4byte 0x41820024 # beq .L_80214E24
    cmplwi 5, 0x0
    .4byte 0x4182001C # beq .L_80214E24
    bl fn_8013C824
    lwz 3, 0xc(3)
    lwz 4, 0x0(31)
    bl fn_800EC240
    li 0, 0x0
    stw 0, 0x0(31)
L_80214E24:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    lwz 0, 0x64(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

