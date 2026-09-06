# Fresh-gap-hunt batch 12 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000A638
etb_8000A638:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A638, 8

.global etb_8000A640
etb_8000A640:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A640, 8

.section extabindex, "a"
.balign 4
.global eti_80018460
eti_80018460:
    .4byte fn_80221C18
    .4byte 0x00000034
    .4byte etb_8000A638
.size eti_80018460, 12

.global eti_8001846C
eti_8001846C:
    .4byte fn_80221C4C
    .4byte 0x000004D8
    .4byte etb_8000A640
.size eti_8001846C, 12

.text
.balign 4
.global fn_80221C18
.global fn_80221C4C

fn_80221C18:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_80221210
    addi 3, 31, 0x2bc
    bl fn_800F802C
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80221C4C:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmplwi 0, 0x8
    .4byte 0x418104A8 # bgt .L_80222110
    lis 4, jumptable_804A6B4C@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A6B4C@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    bl fn_80221408
    .4byte 0x48000488 # b .L_80222110
    bl fn_80221334
    .4byte 0x48000480 # b .L_80222110
    bl fn_802212AC
    .4byte 0x48000478 # b .L_80222110
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x41800468 # blt .L_80222110
    addi 3, 31, 0x270
    li 4, 0x18
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    li 3, 0x0
    li 0, 0x5
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x48000440 # b .L_80222110
    li 4, 0x3c
    bl fn_802216E8
    lfs 1, 0x14(31)
    .4byte 0xC002CF00 # lfs f0, lbl_8053FEA0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820424 # bne .L_80222110
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4182002C # beq .L_80221D24
    addi 3, 31, 0x270
    li 4, 0x18
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    li 3, 0x0
    li 0, 0x5
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x480003F0 # b .L_80222110
L_80221D24:
    .4byte 0xC002CED0 # lfs f0, lbl_8053FE70@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x480003E4 # b .L_80222110
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x408103D8 # ble .L_80222110
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418203C8 # beq .L_80222110
    addi 3, 31, 0x270
    li 4, 0x19
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    psq_l 1, 0xc(31), 0, 0
    addi 4, 1, 0x8
    lfs 3, 0x14(31)
    li 5, 0xcb
    .4byte 0xC002CF04 # lfs f0, lbl_8053FEA4@sda21(r0)
    li 6, 0x0
    psq_st 1, 0x0(4), 0, 0
    li 7, 0x1
    .4byte 0xC022CF08 # lfs f1, lbl_8053FEA8@sda21(r0)
    li 8, 0x0
    lfs 2, 0xc(1)
    li 9, 0x0
    stfs 3, 0x10(1)
    li 10, 0x1
    fsubs 0, 2, 0
    stfs 0, 0xc(1)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x8
    .4byte 0xC022CF08 # lfs f1, lbl_8053FEA8@sda21(r0)
    li 5, 0xcc
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xc4
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x0
    li 0, 0x6
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x4800031C # b .L_80222110
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810310 # ble .L_80222110
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820300 # beq .L_80222110
    addi 3, 31, 0x270
    li 4, 0x1a
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    li 3, 0x0
    li 0, 0x7
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x480002D8 # b .L_80222110
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810084 # ble .L_80221EC8
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820074 # beq .L_80221EC8
    lwz 3, 0x2b8(31)
    addi 0, 3, 0x1
    stw 0, 0x2b8(31)
    lwz 0, 0x2b8(31)
    cmpwi 0, 0x3
    .4byte 0x4180002C # blt .L_80221E98
    lwz 4, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    li 3, 0x0
    li 0, 0x8
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x4800027C # b .L_80222110
L_80221E98:
    li 0, 0x78
    addi 3, 31, 0x270
    stw 0, 0x250(31)
    li 5, 0x0
    li 6, 0x0
    lwz 4, 0x98(31)
    bl fn_801D22DC
    li 3, 0x0
    li 0, 0x3
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x4800024C # b .L_80222110
L_80221EC8:
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3
    .4byte 0x40820240 # bne .L_80222110
    lfs 2, 0x10(31)
    lfs 1, 0xc(31)
    .4byte 0xC002CF00 # lfs f0, lbl_8053FEA0@sda21(r0)
    stfs 1, 0x14(1)
    stfs 2, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_80221F38
    .4byte 0x40800014 # bge .L_80221F0C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80221F18
    .4byte 0x40800024 # bge .L_80221F28
    .4byte 0x4800004C # b .L_80221F54
L_80221F0C:
    cmpwi 0, 0x4
    .4byte 0x40800044 # bge .L_80221F54
    .4byte 0x48000034 # b .L_80221F48
L_80221F18:
    .4byte 0xC002CF0C # lfs f0, lbl_8053FEAC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x14(1)
    .4byte 0x48000030 # b .L_80221F54
L_80221F28:
    .4byte 0xC002CF0C # lfs f0, lbl_8053FEAC@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x14(1)
    .4byte 0x48000020 # b .L_80221F54
L_80221F38:
    .4byte 0xC002CF0C # lfs f0, lbl_8053FEAC@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x18(1)
    .4byte 0x48000010 # b .L_80221F54
L_80221F48:
    .4byte 0xC002CF0C # lfs f0, lbl_8053FEAC@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x18(1)
L_80221F54:
    lwz 4, 0x4(31)
    addi 5, 1, 0x20
    psq_l 1, 0x14(1), 0, 0
    addi 3, 31, 0x2bc
    lfs 0, 0x1c(1)
    li 6, 0x2
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x28(1)
    bl fn_800F8210
    lwz 3, 0x4(31)
    addi 4, 1, 0x14
    .4byte 0xC022CF08 # lfs f1, lbl_8053FEA8@sda21(r0)
    li 5, 0x23b
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x14
    .4byte 0xC022CF08 # lfs f1, lbl_8053FEA8@sda21(r0)
    li 5, 0x23c
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x14
    .4byte 0xC022CF10 # lfs f1, lbl_8053FEB0@sda21(r0)
    li 5, 0x23d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x14
    .4byte 0xC022CF14 # lfs f1, lbl_8053FEB4@sda21(r0)
    li 5, 0x23e
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x14
    .4byte 0xC022CF14 # lfs f1, lbl_8053FEB4@sda21(r0)
    li 5, 0x23f
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 4, 0x4(31)
    addi 3, 1, 0x14
    bl fn_802258D4
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_80222068
    lwz 4, 0x4(31)
    addi 3, 1, 0x14
    bl fn_80225614
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_80222094
L_80222068:
    lwz 3, 0x4(31)
    addi 4, 1, 0x14
    .4byte 0xC022CF14 # lfs f1, lbl_8053FEB4@sda21(r0)
    li 5, 0x3d0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x4800002C # b .L_802220BC
L_80222094:
    lwz 3, 0x4(31)
    addi 4, 1, 0x14
    .4byte 0xC022CF14 # lfs f1, lbl_8053FEB4@sda21(r0)
    li 5, 0x3cf
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802220BC:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0xe6
    li 5, 0x0
    bl fn_801F0E34
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC022CF18 # lfs f1, lbl_8053FEB8@sda21(r0)
    .4byte 0xC042CF00 # lfs f2, lbl_8053FEA0@sda21(r0)
    bl fn_802D79E8
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    li 5, 0x0
    bl fn_80134DE4
    .4byte 0x48000018 # b .L_80222110
    lwz 0, 0x24c(31)
    cmpwi 0, 0x3c
    .4byte 0x4180000C # blt .L_80222110
    li 4, 0x1
    bl fn_8022149C
L_80222110:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

