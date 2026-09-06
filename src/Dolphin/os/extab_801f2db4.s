# Fresh-gap-hunt batch 17 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008E2C
etb_80008E2C:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80008E2C, 8

.global etb_80008E34
etb_80008E34:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80008E34, 8

.section extabindex, "a"
.balign 4
.global eti_8001651C
eti_8001651C:
    .4byte fn_801F2DB4
    .4byte 0x000001F8
    .4byte etb_80008E2C
.size eti_8001651C, 12

.global eti_80016528
eti_80016528:
    .4byte fn_801F2FAC
    .4byte 0x000000B0
    .4byte etb_80008E34
.size eti_80016528, 12

.text
.balign 4
.global fn_801F2DB4
.global fn_801F2FAC

fn_801F2DB4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 26, 0x18(1)
    mr 29, 3
    mr 26, 4
    mr 30, 5
    mr 27, 6
    li 28, 0x0
    bl SpatialRegistry_GetBase
    lbz 5, 0x195(29)
    mr 4, 29
    .4byte 0xC022C7A8 # lfs f1, lbl_8053F748@sda21(r0)
    bl fn_801F82CC
    mr. 31, 3
    .4byte 0x418001A4 # blt .L_801F2F94
    lwz 0, 0x198(29)
    cmpw 31, 0
    .4byte 0x41820198 # beq .L_801F2F94
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    subis 0, 26, 0x4e55
    mr 31, 3
    cmplwi 0, 0x4c4c
    li 4, 0x0
    .4byte 0x41820010 # beq .L_801F2E2C
    lwz 0, 0x1a0(31)
    cmplw 26, 0
    .4byte 0x40820058 # bne .L_801F2E80
L_801F2E2C:
    subis 0, 30, 0x4e55
    cmplwi 0, 0x4c4c
    .4byte 0x41820010 # beq .L_801F2E44
    lwz 0, 0x1a0(31)
    cmplw 30, 0
    .4byte 0x41820040 # beq .L_801F2E80
L_801F2E44:
    cmplwi 27, 0x0
    li 4, 0x1
    .4byte 0x41820034 # beq .L_801F2E80
    mr 5, 27
    .4byte 0x4800001C # b .L_801F2E70
L_801F2E58:
    lwz 0, 0x1a0(31)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_801F2E6C
    li 4, 0x0
    .4byte 0x48000018 # b .L_801F2E80
L_801F2E6C:
    addi 5, 5, 0x4
L_801F2E70:
    lwz 3, 0x0(5)
    subis 0, 3, 0x4e55
    cmplwi 0, 0x4c4c
    .4byte 0x4082FFDC # bne .L_801F2E58
L_801F2E80:
    clrlwi. 0, 4, 24
    .4byte 0x41820054 # beq .L_801F2ED8
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
    mr 28, 3
    .4byte 0x480000B0 # b .L_801F2F84
L_801F2ED8:
    subis 0, 30, 0x4842
    cmplwi 0, 0x4d42
    .4byte 0x418200A0 # beq .L_801F2F80
    lis 3, 0x5357
    lwz 4, 0x1a0(31)
    addi 0, 3, 0x424d
    li 28, 0x1
    cmpw 4, 0
    .4byte 0x4182001C # beq .L_801F2F14
    .4byte 0x40800088 # bge .L_801F2F84
    lis 3, 0x4649
    addi 0, 3, 0x5245
    cmpw 4, 0
    .4byte 0x41820020 # beq .L_801F2F2C
    .4byte 0x48000074 # b .L_801F2F84
L_801F2F14:
    lwz 3, 0x4(29)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    bl fn_801CB538
    .4byte 0x4800005C # b .L_801F2F84
L_801F2F2C:
    lwz 4, 0x198(31)
    addi 3, 29, 0x1dc
    bl fn_801EAC54
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_801F2F84
    lwz 3, 0x4(29)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    bl fn_801CB538
    lwz 3, 0x4(29)
    addi 4, 31, 0xc
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    li 5, 0x19d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000008 # b .L_801F2F84
L_801F2F80:
    li 28, 0x0
L_801F2F84:
    clrlwi. 0, 28, 24
    .4byte 0x4182000C # beq .L_801F2F94
    li 0, 0x1
    stb 0, 0x164(31)
L_801F2F94:
    clrlwi 3, 28, 24
    lmw 26, 0x18(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801F2FAC:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    li 29, 0x0
    stw 28, 0x10(1)
    mr 28, 3
L_801F2FD4:
    mr 3, 28
    mr 7, 29
    addi 5, 1, 0x8
    li 4, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpw 29, 3
    .4byte 0x4082003C # bne .L_801F302C
    mr 3, 29
    bl fn_8023E724
    mr 31, 3
    mr 3, 29
    bl fn_8023B6CC
    lwz 7, 0x8(1)
    mr 4, 3
    mr 3, 28
    mr 5, 31
    mr 8, 29
    li 6, 0x0
    bl fn_801F37AC
    or 0, 30, 3
    clrlwi 30, 0, 24
L_801F302C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFA0 # blt .L_801F2FD4
    lwz 0, 0x24(1)
    clrlwi 3, 30, 24
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

