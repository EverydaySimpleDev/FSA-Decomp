# Fresh-gap-hunt batch 20 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008B04
etb_80008B04:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_80008B04, 8

.global etb_80008B0C
etb_80008B0C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80008B0C, 8

.section extabindex, "a"
.balign 4
.global eti_8001609C
eti_8001609C:
    .4byte fn_801E6DE8
    .4byte 0x000000C4
    .4byte etb_80008B04
.size eti_8001609C, 12

.global eti_800160A8
eti_800160A8:
    .4byte fn_801E6EAC
    .4byte 0x0000007C
    .4byte etb_80008B0C
.size eti_800160A8, 12

.text
.balign 4
.global fn_801E6DE8
.global fn_801E6EAC

fn_801E6DE8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    lwz 0, 0x230(3)
    mr 31, 3
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x40820084 # bne .L_801E6E90
    .4byte 0x880D907C # lbz r0, lbl_8053AC3C@sda21(r0)
    extsb. 0, 0
    .4byte 0x40820014 # bne .L_801E6E2C
    .4byte 0xC002C620 # lfs f0, lbl_8053F5C0@sda21(r0)
    li 0, 0x1
    .4byte 0x980D907C # stb r0, lbl_8053AC3C@sda21(r0)
    .4byte 0xD00D9078 # stfs f0, lbl_8053AC38@sda21(r0)
L_801E6E2C:
    lwz 0, 0x248(31)
    cmpwi 0, 0x1
    .4byte 0x4182005C # beq .L_801E6E90
    .4byte 0x40800010 # bge .L_801E6E48
    cmpwi 0, 0x0
    .4byte 0x40800010 # bge .L_801E6E50
    .4byte 0x4800004C # b .L_801E6E90
L_801E6E48:
    cmpwi 0, 0x3
    .4byte 0x40800044 # bge .L_801E6E90
L_801E6E50:
    lwz 3, 0x98(31)
    bl fn_80210B34
    fmr 31, 1
    lwz 3, 0x98(31)
    bl fn_80210AF8
    lfs 2, 0x10(31)
    lfs 0, 0xc(31)
    fadds 1, 2, 1
    fadds 0, 0, 31
    stfs 1, 0xc(1)
    stfs 0, 0x8(1)
    bl fn_801E9AFC
    lha 5, 0x2b0(31)
    addi 4, 1, 0x8
    .4byte 0xC02D9078 # lfs f1, lbl_8053AC38@sda21(r0)
    bl fn_801EA108
L_801E6E90:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801E6EAC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x41820030 # beq .L_801E6EFC
    lwz 31, 0x2b4(30)
    cmpwi 31, 0x0
    .4byte 0x41820018 # beq .L_801E6EF0
    bl GetRoomConfigRecord
    mr 4, 31
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_801E6EF0:
    mr 3, 30
    bl fn_801F3668
    .4byte 0x48000018 # b .L_801E6F10
L_801E6EFC:
    lwz 0, 0x248(30)
    cmpwi 0, 0x1
    .4byte 0x4182000C # beq .L_801E6F10
    li 4, 0x1
    bl fn_801E728C
L_801E6F10:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

