# Fresh-gap-hunt batch 16 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80009FD8
etb_80009FD8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80009FD8, 8

.global etb_80009FE0
etb_80009FE0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009FE0, 8

.global etb_80009FE8
etb_80009FE8:
    .4byte 0x104A0000
    .4byte 0x00000000
.size etb_80009FE8, 8

.section extabindex, "a"
.balign 4
.global eti_80017B0C
eti_80017B0C:
    .4byte fn_8020FED4
    .4byte 0x00000078
    .4byte etb_80009FD8
.size eti_80017B0C, 12

.global eti_80017B18
eti_80017B18:
    .4byte fn_8020FF4C
    .4byte 0x000000C8
    .4byte etb_80009FE0
.size eti_80017B18, 12

.global eti_80017B24
eti_80017B24:
    .4byte fn_80210014
    .4byte 0x000001AC
    .4byte etb_80009FE8
.size eti_80017B24, 12

.text
.balign 4
.global fn_8020FED4
.global fn_8020FF4C
.global fn_80210014

fn_8020FED4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    addi 4, 1, 0x8
    stw 31, 0x1c(1)
    mr 31, 3
    bl fn_80210A30
    lfs 0, 0x8(1)
    addi 4, 1, 0x8
    lfs 4, 0xc(31)
    lfs 1, 0x10(1)
    fadds 3, 0, 4
    lfs 2, 0xc(1)
    lfs 0, 0x14(1)
    fadds 1, 1, 4
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 3, 0x8(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0x10(1)
    fadds 0, 0, 3
    stfs 2, 0xc(1)
    stfs 0, 0x14(1)
    lwz 3, 0x24(3)
    bl fn_8030C058
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_8020FF4C:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC042CB04 # lfs f2, lbl_8053FAA4@sda21(r0)
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810080 # ble .L_8020FFF8
    lfs 1, 0x6c(30)
    lfs 0, 0x64(30)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4081006C # ble .L_8020FFF8
    bl SpatialRegistry_GetBase
    lbz 5, 0x195(30)
    mr 4, 30
    .4byte 0xC022CB00 # lfs f1, lbl_8053FAA0@sda21(r0)
    bl fn_801F82CC
    mr. 31, 3
    .4byte 0x41800050 # blt .L_8020FFF8
    lwz 0, 0x198(30)
    cmpw 31, 0
    .4byte 0x41820044 # beq .L_8020FFF8
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x41820030 # beq .L_8020FFF8
    lwz 3, 0x1a0(31)
    subis 0, 3, 0x5357
    cmplwi 0, 0x424d
    .4byte 0x40820018 # bne .L_8020FFF0
    lwz 3, 0x4(30)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    bl fn_801CB538
L_8020FFF0:
    li 0, 0x1
    stb 0, 0x164(31)
L_8020FFF8:
    lwz 0, 0x14(1)
    li 3, 0x0
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80210014:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x1
    .4byte 0x41820040 # beq .L_8021007C
    .4byte 0x40800010 # bge .L_80210050
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_8021005C
    .4byte 0x480000E4 # b .L_80210130
L_80210050:
    cmpwi 0, 0x3
    .4byte 0x408000DC # bge .L_80210130
    .4byte 0x48000098 # b .L_802100F0
L_8021005C:
    lwz 0, 0x24c(30)
    cmpwi 0, 0x3c
    .4byte 0x418000CC # blt .L_80210130
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x24c(30)
    stw 0, 0x248(30)
    .4byte 0x480000B8 # b .L_80210130
L_8021007C:
    .4byte 0xC022CB08 # lfs f1, lbl_8053FAA8@sda21(r0)
    lfs 0, 0x54(30)
    fcmpu cr0, 1, 0
    .4byte 0x41820054 # beq .L_802100DC
    .4byte 0xC042CB0C # lfs f2, lbl_8053FAAC@sda21(r0)
    addi 3, 30, 0x54
    bl fn_801CD950
    lfs 0, 0x54(30)
    mr 3, 30
    addi 5, 30, 0x60
    stfs 0, 0x58(30)
    lfs 0, 0x54(30)
    stfs 0, 0x5c(30)
    lwz 4, 0x98(30)
    bl fn_80210990
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
    .4byte 0x48000058 # b .L_80210130
L_802100DC:
    li 3, 0x0
    li 0, 0x2
    stw 3, 0x24c(30)
    stw 0, 0x248(30)
    .4byte 0x48000044 # b .L_80210130
L_802100F0:
    bl fn_80210A6C
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_80210130
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    bl fn_80341CB0
    lwz 31, 0x2ac(30)
    cmpwi 31, 0x0
    .4byte 0x41820018 # beq .L_80210128
    bl GetRoomConfigRecord
    mr 4, 31
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_80210128:
    mr 3, 30
    bl fn_801F3668
L_80210130:
    lbz 0, 0x11c(30)
    cmplwi 0, 0x0
    .4byte 0x41820068 # beq .L_802101A0
    lwz 3, 0x98(30)
    bl fn_80210AF8
    lfs 2, 0x58(30)
    lfs 0, 0x10(30)
    lwz 3, 0x98(30)
    fmadds 31, 2, 1, 0
    bl fn_80210B34
    lfs 3, 0x54(30)
    addi 4, 1, 0x8
    lfs 2, 0xc(30)
    li 5, 0x0
    .4byte 0xC002CB04 # lfs f0, lbl_8053FAA4@sda21(r0)
    li 6, 0x2
    fmadds 1, 3, 1, 2
    stfs 31, 0xc(1)
    li 7, 0x1
    stfs 0, 0x10(1)
    stfs 1, 0x8(1)
    lwz 3, 0x2b4(30)
    bl fn_8013CB44
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x26
    li 5, 0x0
    bl fn_801F0E34
L_802101A0:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

