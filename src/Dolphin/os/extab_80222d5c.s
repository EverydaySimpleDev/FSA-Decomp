# Fresh-gap-hunt batch 17 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000A6B0
etb_8000A6B0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A6B0, 8

.section extabindex, "a"
.balign 4
.global eti_80018514
eti_80018514:
    .4byte fn_80222D5C
    .4byte 0x00000294
    .4byte etb_8000A6B0
.size eti_80018514, 12

.text
.balign 4
.global fn_80222D5C

fn_80222D5C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    lwz 0, 0x248(3)
    cmplwi 0, 0x7
    .4byte 0x4181025C # bgt .L_80222FD8
    lis 4, jumptable_804A6CDC@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A6CDC@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    bl fn_80221408
    .4byte 0x4800023C # b .L_80222FD8
    bl fn_80221334
    .4byte 0x48000234 # b .L_80222FD8
    bl fn_802212AC
    .4byte 0x4800022C # b .L_80222FD8
    lwz 0, 0x24c(31)
    cmpwi 0, 0x78
    .4byte 0x41800220 # blt .L_80222FD8
    lwz 4, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x0
    li 6, 0x0
    addi 4, 4, 0x10
    bl fn_801D22DC
    li 3, 0x0
    li 0, 0x5
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x480001F4 # b .L_80222FD8
    li 4, 0x78
    bl fn_802216E8
    lfs 1, 0x14(31)
    .4byte 0xC002CF50 # lfs f0, lbl_8053FEF0@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408201D8 # bne .L_80222FD8
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820030 # beq .L_80222E3C
    lwz 4, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x0
    li 6, 0x0
    addi 4, 4, 0x10
    bl fn_801D22DC
    li 3, 0x0
    li 0, 0x5
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x480001A0 # b .L_80222FD8
L_80222E3C:
    .4byte 0xC002CED0 # lfs f0, lbl_8053FE70@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0x48000194 # b .L_80222FD8
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810188 # ble .L_80222FD8
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820178 # beq .L_80222FD8
    lfs 3, 0x10(31)
    lfs 2, 0xc(31)
    .4byte 0xC002CF50 # lfs f0, lbl_8053FEF0@sda21(r0)
    stfs 2, 0x8(1)
    stfs 3, 0xc(1)
    stfs 0, 0x10(1)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820044 # beq .L_80222EC8
    .4byte 0x40800014 # bge .L_80222E9C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80222EA8
    .4byte 0x40800024 # bge .L_80222EB8
    .4byte 0x48000064 # b .L_80222EFC
L_80222E9C:
    cmpwi 0, 0x4
    .4byte 0x4080005C # bge .L_80222EFC
    .4byte 0x48000040 # b .L_80222EE4
L_80222EA8:
    .4byte 0xC002CF54 # lfs f0, lbl_8053FEF4@sda21(r0)
    fadds 0, 2, 0
    stfs 0, 0x8(1)
    .4byte 0x48000048 # b .L_80222EFC
L_80222EB8:
    .4byte 0xC002CF54 # lfs f0, lbl_8053FEF4@sda21(r0)
    fsubs 0, 2, 0
    stfs 0, 0x8(1)
    .4byte 0x48000038 # b .L_80222EFC
L_80222EC8:
    .4byte 0xC022CF58 # lfs f1, lbl_8053FEF8@sda21(r0)
    .4byte 0xC002CF5C # lfs f0, lbl_8053FEFC@sda21(r0)
    fadds 1, 2, 1
    fadds 0, 3, 0
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    .4byte 0x4800001C # b .L_80222EFC
L_80222EE4:
    .4byte 0xC022CF58 # lfs f1, lbl_8053FEF8@sda21(r0)
    .4byte 0xC002CF60 # lfs f0, lbl_8053FF00@sda21(r0)
    fsubs 1, 2, 1
    fsubs 0, 3, 0
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
L_80222EFC:
    bl SpatialRegistry_GetBase
    lis 4, 0x4444
    lwz 5, 0x4(31)
    addi 4, 4, 0x474f
    addi 6, 1, 0x8
    li 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x2b8(31)
    lwz 30, 0x2b8(31)
    cmpwi 30, 0x0
    .4byte 0x41800020 # blt .L_80222F4C
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80222F4C
    lwz 0, 0x98(31)
    stw 0, 0x98(3)
L_80222F4C:
    li 3, 0x0
    li 0, 0x6
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x4800007C # b .L_80222FD8
    lwz 0, 0x24c(31)
    cmpwi 0, 0xb4
    .4byte 0x41800070 # blt .L_80222FD8
    lwz 30, 0x2b8(31)
    cmpwi 30, 0x0
    .4byte 0x41800028 # blt .L_80222F9C
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80222F94
    li 0, 0x0
    stw 0, 0x108(3)
L_80222F94:
    li 0, -0x1
    stw 0, 0x2b8(31)
L_80222F9C:
    lwz 4, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x0
    li 6, 0x0
    bl fn_801D22DC
    li 3, 0x0
    li 0, 0x7
    stw 3, 0x24c(31)
    stw 0, 0x248(31)
    .4byte 0x48000018 # b .L_80222FD8
    lwz 0, 0x24c(31)
    cmpwi 0, 0x78
    .4byte 0x4180000C # blt .L_80222FD8
    li 4, 0x1
    bl fn_8022149C
L_80222FD8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

