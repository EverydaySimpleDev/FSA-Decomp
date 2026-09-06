# Fresh-gap-hunt batch 21 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_800083E0
etb_800083E0:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800083E0, 8

.section extabindex, "a"
.balign 4
.global eti_800156F4
eti_800156F4:
    .4byte fn_801CEBD0
    .4byte 0x0000011C
    .4byte etb_800083E0
.size eti_800156F4, 12

.text
.balign 4
.global fn_801CEBD0

fn_801CEBD0:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC042C024 # lfs f2, lbl_8053EFC4@sda21(r0)
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    li 31, 0x0
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 3
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100C8 # ble .L_801CECCC
    lfs 1, 0x6c(29)
    lfs 0, 0x64(29)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100B4 # ble .L_801CECCC
    li 30, 0x0
L_801CEC20:
    mr 3, 29
    mr 7, 30
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    li 6, 0x0
    bl fn_801F285C
    cmpw 30, 3
    .4byte 0x40820068 # bne .L_801CECA4
    mr 3, 30
    bl fn_8023B6CC
    mr 3, 30
    addi 4, 29, 0xc
    bl fn_802379E4
    lwz 0, 0x8(1)
    cmpwi 0, 0x1
    .4byte 0x40820048 # bne .L_801CECA4
    mr 4, 30
    addi 3, 29, 0x1dc
    bl fn_801EAC20
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_801CECA4
    lfs 2, 0xc(1)
    addi 4, 1, 0x14
    lfs 1, 0x10(1)
    li 5, 0x0
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    li 6, 0x0
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 3, 0x4(29)
    bl fn_801CB538
    li 31, 0x1
L_801CECA4:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF74 # blt .L_801CEC20
    clrlwi. 0, 31, 24
    .4byte 0x41820018 # beq .L_801CECCC
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
L_801CECCC:
    lwz 0, 0x34(1)
    mr 3, 31
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

