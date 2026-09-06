# Fresh-gap-hunt batch 11 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000A5D0
etb_8000A5D0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A5D0, 8

.global etb_8000A5D8
etb_8000A5D8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A5D8, 8

.global etb_8000A5E0
etb_8000A5E0:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_8000A5E0, 8

.global etb_8000A5E8
etb_8000A5E8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A5E8, 8

.global etb_8000A5F0
etb_8000A5F0:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_8000A5F0, 8

.global etb_8000A5F8
etb_8000A5F8:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000A5F8, 8

.global etb_8000A600
etb_8000A600:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000A600, 8

.global etb_8000A608
etb_8000A608:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A608, 8

.section extabindex, "a"
.balign 4
.global eti_800183C4
eti_800183C4:
    .4byte fn_80221210
    .4byte 0x00000040
    .4byte etb_8000A5D0
.size eti_800183C4, 12

.global eti_800183D0
eti_800183D0:
    .4byte fn_80221250
    .4byte 0x0000005C
    .4byte etb_8000A5D8
.size eti_800183D0, 12

.global eti_800183DC
eti_800183DC:
    .4byte fn_802212AC
    .4byte 0x00000088
    .4byte etb_8000A5E0
.size eti_800183DC, 12

.global eti_800183E8
eti_800183E8:
    .4byte fn_80221334
    .4byte 0x000000D4
    .4byte etb_8000A5E8
.size eti_800183E8, 12

.global eti_800183F4
eti_800183F4:
    .4byte fn_80221408
    .4byte 0x00000094
    .4byte etb_8000A5F0
.size eti_800183F4, 12

.global eti_80018400
eti_80018400:
    .4byte fn_8022149C
    .4byte 0x000001D4
    .4byte etb_8000A5F8
.size eti_80018400, 12

.global eti_8001840C
eti_8001840C:
    .4byte fn_80221670
    .4byte 0x00000078
    .4byte etb_8000A600
.size eti_8001840C, 12

.global eti_80018418
eti_80018418:
    .4byte fn_802216E8
    .4byte 0x000000E0
    .4byte etb_8000A608
.size eti_80018418, 12

.text
.balign 4
.global fn_80221210
.global fn_80221250
.global fn_802212AC
.global fn_80221334
.global fn_80221408
.global fn_8022149C
.global fn_80221670
.global fn_802216E8

fn_80221210:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    lwz 0, 0x230(3)
    clrlwi. 0, 0, 29
    .4byte 0x4082000C # bne .L_80221230
    bl fn_801CE2BC
    .4byte 0x48000014 # b .L_80221240
L_80221230:
    lwz 12, 0x0(3)
    lwz 12, 0x94(12)
    mtctr 12
    bctrl
L_80221240:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80221250:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    addi 5, 1, 0x8
    stw 31, 0x1c(1)
    mr 31, 3
    addi 4, 31, 0x2b0
    lfs 1, 0x254(3)
    bl fn_801D01A0
    lfs 0, 0x8(1)
    mr 3, 31
    stfs 0, 0x3c(31)
    lfs 0, 0xc(1)
    stfs 0, 0x40(31)
    lwz 12, 0x0(31)
    lwz 12, 0x84(12)
    mtctr 12
    bctrl
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802212AC:
    stwu 1, -0x10(1)
    mflr 0
    mr 4, 3
    stw 0, 0x14(1)
    lwz 0, 0x24c(3)
    cmpwi 0, 0x2d
    .4byte 0x40820024 # bne .L_802212E8
    .4byte 0xC002CED4 # lfs f0, lbl_8053FE74@sda21(r0)
    addi 3, 4, 0x270
    li 5, 0x2
    stfs 0, 0x258(4)
    lwz 4, 0x98(4)
    addi 4, 4, 0x4
    bl fn_801D22A0
    .4byte 0x48000040 # b .L_80221324
L_802212E8:
    .4byte 0x4081003C # ble .L_80221324
    lfs 1, 0x2b0(4)
    lfs 0, 0xc(4)
    .4byte 0xC042CEE0 # lfs f2, lbl_8053FE80@sda21(r0)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800020 # bge .L_80221324
    lfs 1, 0x2b4(4)
    lfs 0, 0x10(4)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_80221324
    bl fn_801F3668
L_80221324:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80221334:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x24c(3)
    cmpwi 0, 0x73
    .4byte 0x41800010 # blt .L_80221360
    li 4, 0x2
    bl fn_8022149C
    .4byte 0x48000098 # b .L_802213F4
L_80221360:
    cmpwi 0, 0x46
    .4byte 0x40820054 # bne .L_802213B8
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CED4 # lfs f1, lbl_8053FE74@sda21(r0)
    li 5, 0x416
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022CED4 # lfs f1, lbl_8053FE74@sda21(r0)
    li 5, 0x417
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_802213B8:
    lwz 3, 0x24c(31)
    slwi 0, 3, 30
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 2
    add. 0, 0, 3
    .4byte 0x40820024 # bne .L_802213F4
    lwz 3, 0x98(31)
    bl fn_801CD30C
    stw 3, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x0
    li 6, 0x0
    lwz 4, 0x98(31)
    bl fn_801D22DC
L_802213F4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_80221408:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x24c(3)
    cmpwi 3, 0xa0
    .4byte 0x4180002C # blt .L_80221450
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    li 5, 0x0
    bl fn_801CB434
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x4800003C # b .L_80221488
L_80221450:
    slwi 0, 3, 29
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 3
    add. 0, 0, 3
    .4byte 0x40820024 # bne .L_80221488
    lwz 3, 0x98(31)
    bl fn_801CD30C
    stw 3, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x0
    li 6, 0x0
    lwz 4, 0x98(31)
    bl fn_801D22DC
L_80221488:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_8022149C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 4
    cmpwi 29, 0x2
    stw 28, 0x10(1)
    mr 28, 3
    .4byte 0x418200C8 # beq .L_8022158C
    .4byte 0x4080017C # bge .L_80221644
    cmpwi 29, 0x0
    .4byte 0x40800008 # bge .L_802214D8
    .4byte 0x48000170 # b .L_80221644
L_802214D8:
    bl fn_801F3604
    .4byte 0xC062CED4 # lfs f3, lbl_8053FE74@sda21(r0)
    addi 3, 28, 0x270
    .4byte 0xC042CEE4 # lfs f2, lbl_8053FE84@sda21(r0)
    li 5, 0x0
    stfs 3, 0x60(28)
    li 6, 0x0
    .4byte 0xC002CED8 # lfs f0, lbl_8053FE78@sda21(r0)
    stfs 3, 0x64(28)
    stfs 2, 0x68(28)
    stfs 2, 0x6c(28)
    lfs 1, 0x60(28)
    stfs 1, 0x70(28)
    lfs 1, 0x64(28)
    stfs 1, 0x74(28)
    lfs 1, 0x68(28)
    stfs 1, 0x78(28)
    lfs 1, 0x6c(28)
    stfs 1, 0x7c(28)
    stfs 3, 0x80(28)
    stfs 3, 0x84(28)
    stfs 2, 0x88(28)
    stfs 2, 0x8c(28)
    stfs 0, 0x254(28)
    stfs 0, 0x258(28)
    stfs 0, 0x3c(28)
    stfs 0, 0x40(28)
    lwz 4, 0x98(28)
    bl fn_801D22DC
    cmpwi 29, 0x0
    .4byte 0x4082001C # bne .L_8022156C
    lis 4, 0x4
    mr 3, 28
    addi 4, 4, 0x37
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000DC # b .L_80221644
L_8022156C:
    cmpwi 29, 0x1
    .4byte 0x408200D4 # bne .L_80221644
    lis 4, 0x4
    mr 3, 28
    addi 4, 4, 0x4a
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480000BC # b .L_80221644
L_8022158C:
    bl fn_801F3604
    .4byte 0xC062CED4 # lfs f3, lbl_8053FE74@sda21(r0)
    addi 31, 28, 0xc
    .4byte 0xC042CEE4 # lfs f2, lbl_8053FE84@sda21(r0)
    stfs 3, 0x60(28)
    .4byte 0xC002CED8 # lfs f0, lbl_8053FE78@sda21(r0)
    stfs 3, 0x64(28)
    stfs 2, 0x68(28)
    stfs 2, 0x6c(28)
    lfs 1, 0x60(28)
    stfs 1, 0x70(28)
    lfs 1, 0x64(28)
    stfs 1, 0x74(28)
    lfs 1, 0x68(28)
    stfs 1, 0x78(28)
    lfs 1, 0x6c(28)
    stfs 1, 0x7c(28)
    stfs 3, 0x80(28)
    stfs 3, 0x84(28)
    stfs 2, 0x88(28)
    stfs 2, 0x8c(28)
    stfs 0, 0x254(28)
    stfs 0, 0x258(28)
    stfs 0, 0x3c(28)
    stfs 0, 0x40(28)
    lwz 30, 0x4(28)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_80221608
    addi 30, 3, 0xcc
    .4byte 0x48000008 # b .L_8022160C
L_80221608:
    addi 30, 3, 0xdc
L_8022160C:
    lwz 3, 0x2a8(28)
    bl fn_801F6874
    .4byte 0xC022CEE8 # lfs f1, lbl_8053FE88@sda21(r0)
    extsh 5, 3
    mr 3, 30
    mr 4, 31
    addi 6, 28, 0x2b0
    bl fn_801CBB98
    lwz 0, 0x2a8(28)
    addi 3, 28, 0x270
    li 5, 0x0
    stw 0, 0x98(28)
    lwz 4, 0x98(28)
    bl fn_801D22A0
L_80221644:
    li 0, 0x0
    stw 0, 0x24c(28)
    stw 29, 0x248(28)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_80221670:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    addi 31, 29, 0xc
    lwz 30, 0x4(3)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_802216A8
    addi 30, 3, 0xcc
    .4byte 0x48000008 # b .L_802216AC
L_802216A8:
    addi 30, 3, 0xdc
L_802216AC:
    lwz 3, 0x2a8(29)
    bl fn_801F6874
    .4byte 0xC022CEE8 # lfs f1, lbl_8053FE88@sda21(r0)
    extsh 5, 3
    mr 3, 30
    mr 4, 31
    addi 6, 29, 0x2b0
    bl fn_801CBB98
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_802216E8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x408200B0 # bne .L_802217B4
    lbz 0, 0x2ac(31)
    cmpwi 0, 0x2
    .4byte 0x41820064 # beq .L_80221774
    .4byte 0x40800014 # bge .L_80221728
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80221734
    .4byte 0x40800030 # bge .L_80221750
    .4byte 0x48000090 # b .L_802217B4
L_80221728:
    cmpwi 0, 0x4
    .4byte 0x40800088 # bge .L_802217B4
    .4byte 0x48000068 # b .L_80221798
L_80221734:
    lwz 0, 0x24c(31)
    cmpw 0, 4
    .4byte 0x41800078 # blt .L_802217B4
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
    .4byte 0x48000068 # b .L_802217B4
L_80221750:
    .4byte 0xC022CEEC # lfs f1, lbl_8053FE8C@sda21(r0)
    addi 4, 31, 0xc
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x41800054 # blt .L_802217B4
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
    .4byte 0x48000044 # b .L_802217B4
L_80221774:
    .4byte 0xC022CEF0 # lfs f1, lbl_8053FE90@sda21(r0)
    addi 4, 31, 0xc
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x41800030 # blt .L_802217B4
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
    .4byte 0x48000020 # b .L_802217B4
L_80221798:
    lwz 3, 0x24c(31)
    lbz 0, 0x2ad(31)
    cmpw 3, 0
    .4byte 0x41800010 # blt .L_802217B4
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
L_802217B4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

