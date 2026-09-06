# Fresh-gap-hunt batch 19 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_800083C8
etb_800083C8:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800083C8, 8

.global etb_800083D0
etb_800083D0:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800083D0, 8

.section extabindex, "a"
.balign 4
.global eti_800156D0
eti_800156D0:
    .4byte fn_801CE9F8
    .4byte 0x00000068
    .4byte etb_800083C8
.size eti_800156D0, 12

.global eti_800156DC
eti_800156DC:
    .4byte fn_801CEA60
    .4byte 0x00000118
    .4byte etb_800083D0
.size eti_800156DC, 12

.text
.balign 4
.global fn_801CE9F8
.global fn_801CEA60

fn_801CE9F8:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC042C024 # lfs f2, lbl_8053EFC4@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x0
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810030 # ble .L_801CEA4C
    lfs 1, 0x6c(3)
    lfs 0, 0x64(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4081001C # ble .L_801CEA4C
    lis 4, 0x4e55
    li 6, 0x0
    addi 4, 4, 0x4c4c
    mr 5, 4
    bl fn_801F2DB4
    mr 0, 3
L_801CEA4C:
    mr 3, 0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801CEA60:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC042C024 # lfs f2, lbl_8053EFC4@sda21(r0)
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    li 30, 0x0
    stw 29, 0x24(1)
    mr 29, 3
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100C4 # ble .L_801CEB58
    lfs 1, 0x6c(29)
    lfs 0, 0x64(29)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100B0 # ble .L_801CEB58
    bl SpatialRegistry_GetBase
    lbz 5, 0x195(29)
    mr 4, 29
    .4byte 0xC022C040 # lfs f1, lbl_8053EFE0@sda21(r0)
    bl fn_801F82CC
    mr. 31, 3
    .4byte 0x41800094 # blt .L_801CEB58
    lwz 0, 0x198(29)
    cmpw 31, 0
    .4byte 0x41820088 # beq .L_801CEB58
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x41820064 # beq .L_801CEB48
    bl fn_801CC8E4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801CEAFC
    li 30, 0x0
    .4byte 0x48000050 # b .L_801CEB48
L_801CEAFC:
    psq_l 1, 0xc(29), 0, 0
    addi 5, 1, 0x8
    lfs 0, 0x14(29)
    mr 3, 29
    li 6, 0x0
    stfs 0, 0x10(1)
    psq_st 1, 0x0(5), 0, 0
    psq_l 2, 0x8(5), 1, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x0(5), 0, 0
    psq_l 0, 0x44(31), 1, 0
    ps_sub 0, 2, 0
    psq_st 0, 0x8(5), 1, 0
    lwz 4, 0x118(31)
    lwz 7, 0x168(31)
    lwz 8, 0x110(31)
    bl fn_801F37AC
    mr 30, 3
L_801CEB48:
    clrlwi. 0, 30, 24
    .4byte 0x4182000C # beq .L_801CEB58
    li 0, 0x1
    stb 0, 0x164(31)
L_801CEB58:
    lwz 0, 0x34(1)
    mr 3, 30
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

