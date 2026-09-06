# Fresh-gap-hunt batch 8 landing (non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_800083E8
etb_800083E8:
    .4byte 0x410A0000
    .4byte 0x00000000
.size etb_800083E8, 8

.global etb_800083F0
etb_800083F0:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800083F0, 8

.global etb_800083F8
etb_800083F8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800083F8, 8

.global etb_80008400
etb_80008400:
    .4byte 0x410A0000
    .4byte 0x00000000
.size etb_80008400, 8

.global etb_80008408
etb_80008408:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80008408, 8

.global etb_80008410
etb_80008410:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_80008410, 8

.global etb_80008418
etb_80008418:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_80008418, 8

.section extabindex, "a"
.balign 4
.global eti_80015700
eti_80015700:
    .4byte fn_801CECF4
    .4byte 0x00000400
    .4byte etb_800083E8
.size eti_80015700, 12

.global eti_8001570C
eti_8001570C:
    .4byte fn_801CF0F4
    .4byte 0x00000050
    .4byte etb_800083F0
.size eti_8001570C, 12

.global eti_80015718
eti_80015718:
    .4byte fn_801CF144
    .4byte 0x0000006C
    .4byte etb_800083F8
.size eti_80015718, 12

.global eti_80015724
eti_80015724:
    .4byte fn_801CF1B0
    .4byte 0x00000508
    .4byte etb_80008400
.size eti_80015724, 12

.global eti_80015730
eti_80015730:
    .4byte fn_801CF6B8
    .4byte 0x00000068
    .4byte etb_80008408
.size eti_80015730, 12

.global eti_8001573C
eti_8001573C:
    .4byte fn_801CF720
    .4byte 0x00000078
    .4byte etb_80008410
.size eti_8001573C, 12

.global eti_80015748
eti_80015748:
    .4byte fn_801CF798
    .4byte 0x000000F0
    .4byte etb_80008418
.size eti_80015748, 12

.text
.balign 4
.global fn_801CECF4
.global fn_801CF0F4
.global fn_801CF144
.global fn_801CF1B0
.global fn_801CF6B8
.global fn_801CF720
.global fn_801CF798

fn_801CECF4:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stfd 28, 0x30(1)
    psq_st 28, 0x38(1), 0, 0
    stmw 24, 0x10(1)
    fmr 28, 2
    lis 5, lbl_80539D40@ha
    mr 25, 3
    fmr 31, 1
    lfs 30, lbl_80539D40@l(5)
    mr 26, 4
    fmuls 29, 28, 28
    mr 27, 25
    li 30, -0x1
    li 31, 0x0
L_801CED4C:
    mr 3, 31
    li 28, 0x0
    bl fn_801CCFE4
    clrlwi. 0, 3, 24
    .4byte 0x418201CC # beq .L_801CEF28
    lis 3, 0x4b45
    lwz 4, 0x1a0(25)
    addi 0, 3, 0x504f
    li 29, 0x0
    cmpw 4, 0
    .4byte 0x418200A8 # beq .L_801CEE1C
    .4byte 0x40800054 # bge .L_801CEDCC
    lis 3, 0x464c
    addi 0, 3, 0x4f52
    cmpw 4, 0
    .4byte 0x41820094 # beq .L_801CEE1C
    .4byte 0x4080002C # bge .L_801CEDB8
    lis 3, 0x4642
    addi 0, 3, 0x4745
    cmpw 4, 0
    .4byte 0x41820080 # beq .L_801CEE1C
    .4byte 0x40800098 # bge .L_801CEE38
    lis 3, 0x4641
    addi 0, 3, 0x4c4c
    cmpw 4, 0
    .4byte 0x4182006C # beq .L_801CEE1C
    .4byte 0x48000084 # b .L_801CEE38
L_801CEDB8:
    lis 3, 0x4852
    addi 0, 3, 0x4d4e
    cmpw 4, 0
    .4byte 0x41820058 # beq .L_801CEE1C
    .4byte 0x48000070 # b .L_801CEE38
L_801CEDCC:
    lis 3, 0x5449
    addi 0, 3, 0x4e4b
    cmpw 4, 0
    .4byte 0x41820044 # beq .L_801CEE1C
    .4byte 0x4080002C # bge .L_801CEE08
    lis 3, 0x534c
    addi 0, 3, 0x4b32
    cmpw 4, 0
    .4byte 0x41820030 # beq .L_801CEE1C
    .4byte 0x40800048 # bge .L_801CEE38
    lis 3, 0x4e41
    addi 0, 3, 0x5649
    cmpw 4, 0
    .4byte 0x4182001C # beq .L_801CEE1C
    .4byte 0x48000034 # b .L_801CEE38
L_801CEE08:
    lis 3, 0x545a
    addi 0, 3, 0x4f4b
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_801CEE1C
    .4byte 0x48000020 # b .L_801CEE38
L_801CEE1C:
    lwz 24, 0x4(25)
    mr 3, 31
    bl fn_8023DE58
    cmpw 3, 24
    .4byte 0x4082001C # bne .L_801CEE48
    li 29, 0x1
    .4byte 0x48000014 # b .L_801CEE48
L_801CEE38:
    mr 3, 25
    mr 4, 31
    bl fn_801F320C
    mr 29, 3
L_801CEE48:
    clrlwi. 0, 29, 24
    .4byte 0x418200DC # beq .L_801CEF28
    lis 3, 0x4e41
    lwz 4, 0x1a0(25)
    addi 0, 3, 0x5649
    cmpw 4, 0
    .4byte 0x41820094 # beq .L_801CEEF4
    .4byte 0x40800054 # bge .L_801CEEB8
    lis 3, 0x4852
    addi 0, 3, 0x4d4e
    cmpw 4, 0
    .4byte 0x41820080 # beq .L_801CEEF4
    .4byte 0x4080002C # bge .L_801CEEA4
    lis 3, 0x464c
    addi 0, 3, 0x4f52
    cmpw 4, 0
    .4byte 0x4182006C # beq .L_801CEEF4
    .4byte 0x40800098 # bge .L_801CEF24
    lis 3, 0x4641
    addi 0, 3, 0x4c4c
    cmpw 4, 0
    .4byte 0x41820058 # beq .L_801CEEF4
    .4byte 0x48000084 # b .L_801CEF24
L_801CEEA4:
    lis 3, 0x4b45
    addi 0, 3, 0x504f
    cmpw 4, 0
    .4byte 0x41820044 # beq .L_801CEEF4
    .4byte 0x48000070 # b .L_801CEF24
L_801CEEB8:
    lis 3, 0x544e
    addi 0, 3, 0x4452
    cmpw 4, 0
    .4byte 0x41820030 # beq .L_801CEEF4
    .4byte 0x40800018 # bge .L_801CEEE0
    lis 3, 0x5449
    addi 0, 3, 0x4e4b
    cmpw 4, 0
    .4byte 0x4182001C # beq .L_801CEEF4
    .4byte 0x48000048 # b .L_801CEF24
L_801CEEE0:
    lis 3, 0x545a
    addi 0, 3, 0x4f4b
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_801CEEF4
    .4byte 0x48000034 # b .L_801CEF24
L_801CEEF4:
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x4082000C # bne .L_801CEF0C
    li 28, 0x1
    .4byte 0x48000020 # b .L_801CEF28
L_801CEF0C:
    mr 3, 31
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_801CEF28
    li 28, 0x1
    .4byte 0x48000008 # b .L_801CEF28
L_801CEF24:
    li 28, 0x1
L_801CEF28:
    clrlwi. 0, 28, 24
    .4byte 0x41820050 # beq .L_801CEF7C
    lfs 3, 0x1b0(27)
    lfs 2, 0x10(25)
    lfs 1, 0x1ac(27)
    lfs 0, 0xc(25)
    fsubs 2, 3, 2
    fsubs 1, 1, 0
    fmuls 0, 2, 2
    fmuls 1, 1, 1
    fadds 1, 1, 0
    fcmpo cr0, 1, 30
    .4byte 0x40800024 # bge .L_801CEF7C
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fcmpu cr0, 0, 28
    .4byte 0x41820010 # beq .L_801CEF74
    fcmpo cr0, 1, 29
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801CEF7C
L_801CEF74:
    fmr 30, 1
    mr 30, 31
L_801CEF7C:
    addi 31, 31, 0x1
    addi 27, 27, 0xc
    cmpwi 31, 0x4
    .4byte 0x4180FDC4 # blt .L_801CED4C
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_801CEF9C
    li 3, 0x0
    .4byte 0x48000128 # b .L_801CF0C0
L_801CEF9C:
    li 27, 0x0
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(25)
    mr 4, 26
    addi 6, 25, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 24, 3
    .4byte 0x418000F8 # blt .L_801CF0BC
    bl SpatialRegistry_GetBase
    mr 4, 24
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x418200E4 # beq .L_801CF0BC
    mulli 5, 30, 0xc
    lfs 0, 0x10(25)
    lfs 2, 0xc(25)
    lis 4, lbl_80539D44@ha
    .4byte 0xC022C040 # lfs f1, lbl_8053EFE0@sda21(r0)
    addi 5, 5, 0x1ac
    add 5, 25, 5
    lfs 4, 0x4(5)
    lfs 3, 0x0(5)
    fsubs 4, 4, 0
    lfs 0, lbl_80539D44@l(4)
    fsubs 2, 3, 2
    fmuls 3, 1, 0
    fmuls 0, 4, 4
    stfs 4, 0xc(1)
    fmuls 1, 2, 2
    stfs 2, 0x8(1)
    fadds 4, 1, 0
    fcmpo cr0, 4, 3
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_801CF040
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    stfs 31, 0xc(1)
    stfs 0, 0x8(1)
    .4byte 0x48000074 # b .L_801CF0B0
L_801CF040:
    fcmpo cr0, 4, 3
    cror eq, lt, eq
    .4byte 0x41820050 # beq .L_801CF098
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801CF060
    .4byte 0x48000024 # b .L_801CF080
L_801CF060:
    frsqrte 3, 4
    .4byte 0xC042C044 # lfs f2, lbl_8053EFE4@sda21(r0)
    .4byte 0xC002C048 # lfs f0, lbl_8053EFE8@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 4, 2, 0
L_801CF080:
    lfs 1, 0x8(1)
    lfs 0, 0xc(1)
    fmuls 1, 1, 4
    fmuls 0, 0, 4
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
L_801CF098:
    lfs 1, 0x8(1)
    lfs 0, 0xc(1)
    fmuls 1, 1, 31
    fmuls 0, 0, 31
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
L_801CF0B0:
    addi 4, 1, 0x8
    bl fn_801D2CF0
    li 27, 0x1
L_801CF0BC:
    mr 3, 27
L_801CF0C0:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    psq_l 28, 0x38(1), 0, 0
    lfd 28, 0x30(1)
    lmw 24, 0x10(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_801CF0F4:
    stwu 1, -0x10(1)
    mflr 0
    lis 4, lbl_80534C00@ha
    lfs 1, 0x3c(3)
    stw 0, 0x14(1)
    addi 0, 4, lbl_80534C00@l
    lfs 2, 0x40(3)
    mr 3, 0
    bl fn_80093340
    .4byte 0xC002C04C # lfs f0, lbl_8053EFEC@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x8(1)
    lwz 0, 0xc(1)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801CF144:
    stwu 1, -0x20(1)
    mflr 0
    lfs 2, 0x10(3)
    lfs 0, 0x14(3)
    stw 0, 0x24(1)
    fsubs 3, 2, 0
    .4byte 0xC042C050 # lfs f2, lbl_8053EFF0@sda21(r0)
    stw 31, 0x1c(1)
    li 31, 0x0
    lfs 1, 0xc(3)
    fsubs 2, 3, 2
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    lwz 4, 0x4(3)
    addi 3, 1, 0x8
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    bl fn_801CCB1C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801CF198
    li 31, 0x1
L_801CF198:
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801CF1B0:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stfd 28, 0x30(1)
    psq_st 28, 0x38(1), 0, 0
    stmw 24, 0x10(1)
    fmr 28, 1
    lis 5, lbl_80539D40@ha
    mr 25, 3
    fmr 29, 2
    lfs 31, lbl_80539D40@l(5)
    mr 26, 4
    fmuls 30, 28, 28
    mr 27, 25
    li 30, -0x1
    li 31, 0x0
L_801CF208:
    mr 3, 31
    li 28, 0x0
    bl fn_801CCFE4
    clrlwi. 0, 3, 24
    .4byte 0x418201CC # beq .L_801CF3E4
    lis 3, 0x4b45
    lwz 4, 0x1a0(25)
    addi 0, 3, 0x504f
    li 29, 0x0
    cmpw 4, 0
    .4byte 0x418200A8 # beq .L_801CF2D8
    .4byte 0x40800054 # bge .L_801CF288
    lis 3, 0x464c
    addi 0, 3, 0x4f52
    cmpw 4, 0
    .4byte 0x41820094 # beq .L_801CF2D8
    .4byte 0x4080002C # bge .L_801CF274
    lis 3, 0x4642
    addi 0, 3, 0x4745
    cmpw 4, 0
    .4byte 0x41820080 # beq .L_801CF2D8
    .4byte 0x40800098 # bge .L_801CF2F4
    lis 3, 0x4641
    addi 0, 3, 0x4c4c
    cmpw 4, 0
    .4byte 0x4182006C # beq .L_801CF2D8
    .4byte 0x48000084 # b .L_801CF2F4
L_801CF274:
    lis 3, 0x4852
    addi 0, 3, 0x4d4e
    cmpw 4, 0
    .4byte 0x41820058 # beq .L_801CF2D8
    .4byte 0x48000070 # b .L_801CF2F4
L_801CF288:
    lis 3, 0x5449
    addi 0, 3, 0x4e4b
    cmpw 4, 0
    .4byte 0x41820044 # beq .L_801CF2D8
    .4byte 0x4080002C # bge .L_801CF2C4
    lis 3, 0x534c
    addi 0, 3, 0x4b32
    cmpw 4, 0
    .4byte 0x41820030 # beq .L_801CF2D8
    .4byte 0x40800048 # bge .L_801CF2F4
    lis 3, 0x4e41
    addi 0, 3, 0x5649
    cmpw 4, 0
    .4byte 0x4182001C # beq .L_801CF2D8
    .4byte 0x48000034 # b .L_801CF2F4
L_801CF2C4:
    lis 3, 0x545a
    addi 0, 3, 0x4f4b
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_801CF2D8
    .4byte 0x48000020 # b .L_801CF2F4
L_801CF2D8:
    lwz 24, 0x4(25)
    mr 3, 31
    bl fn_8023DE58
    cmpw 3, 24
    .4byte 0x4082001C # bne .L_801CF304
    li 29, 0x1
    .4byte 0x48000014 # b .L_801CF304
L_801CF2F4:
    mr 3, 25
    mr 4, 31
    bl fn_801F320C
    mr 29, 3
L_801CF304:
    clrlwi. 0, 29, 24
    .4byte 0x418200DC # beq .L_801CF3E4
    lis 3, 0x4e41
    lwz 4, 0x1a0(25)
    addi 0, 3, 0x5649
    cmpw 4, 0
    .4byte 0x41820094 # beq .L_801CF3B0
    .4byte 0x40800054 # bge .L_801CF374
    lis 3, 0x4852
    addi 0, 3, 0x4d4e
    cmpw 4, 0
    .4byte 0x41820080 # beq .L_801CF3B0
    .4byte 0x4080002C # bge .L_801CF360
    lis 3, 0x464c
    addi 0, 3, 0x4f52
    cmpw 4, 0
    .4byte 0x4182006C # beq .L_801CF3B0
    .4byte 0x40800098 # bge .L_801CF3E0
    lis 3, 0x4641
    addi 0, 3, 0x4c4c
    cmpw 4, 0
    .4byte 0x41820058 # beq .L_801CF3B0
    .4byte 0x48000084 # b .L_801CF3E0
L_801CF360:
    lis 3, 0x4b45
    addi 0, 3, 0x504f
    cmpw 4, 0
    .4byte 0x41820044 # beq .L_801CF3B0
    .4byte 0x48000070 # b .L_801CF3E0
L_801CF374:
    lis 3, 0x544e
    addi 0, 3, 0x4452
    cmpw 4, 0
    .4byte 0x41820030 # beq .L_801CF3B0
    .4byte 0x40800018 # bge .L_801CF39C
    lis 3, 0x5449
    addi 0, 3, 0x4e4b
    cmpw 4, 0
    .4byte 0x4182001C # beq .L_801CF3B0
    .4byte 0x48000048 # b .L_801CF3E0
L_801CF39C:
    lis 3, 0x545a
    addi 0, 3, 0x4f4b
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_801CF3B0
    .4byte 0x48000034 # b .L_801CF3E0
L_801CF3B0:
    mr 3, 31
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x4082000C # bne .L_801CF3C8
    li 28, 0x1
    .4byte 0x48000020 # b .L_801CF3E4
L_801CF3C8:
    mr 3, 31
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_801CF3E4
    li 28, 0x1
    .4byte 0x48000008 # b .L_801CF3E4
L_801CF3E0:
    li 28, 0x1
L_801CF3E4:
    clrlwi. 0, 28, 24
    .4byte 0x41820050 # beq .L_801CF438
    lfs 3, 0x1b0(27)
    lfs 2, 0x10(25)
    lfs 1, 0x1ac(27)
    lfs 0, 0xc(25)
    fsubs 2, 3, 2
    fsubs 1, 1, 0
    fmuls 0, 2, 2
    fmuls 1, 1, 1
    fadds 1, 1, 0
    fcmpo cr0, 1, 31
    .4byte 0x40800024 # bge .L_801CF438
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fcmpu cr0, 0, 28
    .4byte 0x41820010 # beq .L_801CF430
    fcmpo cr0, 1, 30
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801CF438
L_801CF430:
    fmr 31, 1
    mr 30, 31
L_801CF438:
    addi 31, 31, 0x1
    addi 27, 27, 0xc
    cmpwi 31, 0x4
    .4byte 0x4180FDC4 # blt .L_801CF208
    cmpwi 30, 0x0
    .4byte 0x40800014 # bge .L_801CF460
    mr 3, 25
    bl fn_801CF6B8
    mr 26, 3
    .4byte 0x48000224 # b .L_801CF680
L_801CF460:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002C028 # lfs f0, lbl_8053EFC8@sda21(r0)
    lwz 3, 0xb4(4)
    li 27, 0x0
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 29
    .4byte 0x40800008 # bge .L_801CF4AC
    li 27, 0x1
L_801CF4AC:
    mulli 3, 30, 0xc
    lfs 2, 0xc(25)
    lfs 0, 0x10(25)
    addi 24, 3, 0x1ac
    add 24, 25, 24
    lfs 3, 0x0(24)
    lfs 1, 0x4(24)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    fabs 1, 2
    fabs 0, 0
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801CF4E8
    clrlwi. 0, 27, 24
    .4byte 0x4182001C # beq .L_801CF500
L_801CF4E8:
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820030 # bne .L_801CF520
    clrlwi 0, 27, 24
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_801CF520
L_801CF500:
    lfs 1, 0xc(25)
    lfs 0, 0x0(24)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801CF518
    li 5, 0x0
    .4byte 0x48000028 # b .L_801CF53C
L_801CF518:
    li 5, 0x1
    .4byte 0x48000020 # b .L_801CF53C
L_801CF520:
    lfs 1, 0x10(25)
    lfs 0, 0x4(24)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801CF538
    li 5, 0x2
    .4byte 0x48000008 # b .L_801CF53C
L_801CF538:
    li 5, 0x3
L_801CF53C:
    clrlwi. 0, 26, 24
    mr 26, 5
    .4byte 0x41820098 # beq .L_801CF5DC
    lwz 4, 0x98(25)
    cmpw 5, 4
    .4byte 0x40820130 # bne .L_801CF680
    mr 3, 25
    bl fn_801CF720
    lfs 5, 0x0(24)
    mr 26, 3
    lfs 4, 0xc(25)
    lfs 2, 0x4(24)
    lfs 1, 0x10(25)
    fsubs 3, 5, 4
    fsubs 0, 2, 1
    fabs 3, 3
    fabs 0, 0
    fcmpo cr0, 3, 0
    .4byte 0x41810008 # bgt .L_801CF58C
    .4byte 0x4800001C # b .L_801CF5A4
L_801CF58C:
    fcmpo cr0, 4, 5
    .4byte 0x4080000C # bge .L_801CF59C
    li 3, 0x0
    .4byte 0x48000020 # b .L_801CF5B8
L_801CF59C:
    li 3, 0x1
    .4byte 0x48000018 # b .L_801CF5B8
L_801CF5A4:
    fcmpo cr0, 1, 2
    .4byte 0x4080000C # bge .L_801CF5B4
    li 3, 0x2
    .4byte 0x48000008 # b .L_801CF5B8
L_801CF5B4:
    li 3, 0x3
L_801CF5B8:
    bl fn_801CD354
    cmpw 26, 3
    .4byte 0x408200C0 # bne .L_801CF680
    lwz 5, 0x98(25)
    mr 3, 25
    mr 4, 26
    bl fn_801CF798
    mr 26, 3
    .4byte 0x480000A8 # b .L_801CF680
L_801CF5DC:
    mr 3, 25
    mr 4, 5
    bl fn_801CFCF0
    clrlwi. 0, 3, 24
    .4byte 0x41820094 # beq .L_801CF680
    lfs 3, 0x0(24)
    lfs 2, 0xc(25)
    lfs 1, 0x4(24)
    lfs 0, 0x10(25)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    fabs 1, 2
    fabs 0, 0
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801CF620
    clrlwi. 0, 27, 24
    .4byte 0x40820024 # bne .L_801CF640
L_801CF620:
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820038 # bne .L_801CF660
    clrlwi 0, 27, 24
    cntlzw 0, 0
    extrwi 0, 0, 8, 19
    cmplwi 0, 0x1
    .4byte 0x40820024 # bne .L_801CF660
L_801CF640:
    lfs 1, 0xc(25)
    lfs 0, 0x0(24)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801CF658
    li 0, 0x0
    .4byte 0x48000028 # b .L_801CF67C
L_801CF658:
    li 0, 0x1
    .4byte 0x48000020 # b .L_801CF67C
L_801CF660:
    lfs 1, 0x10(25)
    lfs 0, 0x4(24)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801CF678
    li 0, 0x2
    .4byte 0x48000008 # b .L_801CF67C
L_801CF678:
    li 0, 0x3
L_801CF67C:
    mr 26, 0
L_801CF680:
    mr 3, 26
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    psq_l 28, 0x38(1), 0, 0
    lfd 28, 0x30(1)
    lmw 24, 0x10(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

fn_801CF6B8:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    li 3, 0x4
    bl fn_801CD664
    mr 0, 3
    mr 3, 30
    mr 31, 0
    mr 4, 31
    bl fn_801CFCF0
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801CF704
    mr 3, 30
    mr 4, 31
    bl fn_801CF720
    mr 31, 3
L_801CF704:
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801CF720:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    mr 3, 30
    bl fn_801CD580
    mr 0, 3
    mr 3, 29
    mr 31, 0
    mr 4, 31
    bl fn_801CFCF0
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801CF778
    mr 3, 29
    mr 4, 30
    mr 5, 31
    bl fn_801CF798
    mr 31, 3
L_801CF778:
    lwz 0, 0x24(1)
    mr 3, 31
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801CF798:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    li 0, 0x0
    cmpw 0, 4
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    addi 3, 1, 0x8
    .4byte 0x41820014 # beq .L_801CF7D8
    cmpw 0, 5
    .4byte 0x4182000C # beq .L_801CF7D8
    stw 0, 0x8(1)
    addi 3, 3, 0x4
L_801CF7D8:
    li 0, 0x1
    cmpw 0, 4
    .4byte 0x41820014 # beq .L_801CF7F4
    cmpw 0, 5
    .4byte 0x4182000C # beq .L_801CF7F4
    stw 0, 0x0(3)
    addi 3, 3, 0x4
L_801CF7F4:
    li 0, 0x2
    cmpw 0, 4
    .4byte 0x41820014 # beq .L_801CF810
    cmpw 0, 5
    .4byte 0x4182000C # beq .L_801CF810
    stw 0, 0x0(3)
    addi 3, 3, 0x4
L_801CF810:
    li 0, 0x3
    cmpw 0, 4
    .4byte 0x41820010 # beq .L_801CF828
    cmpw 0, 5
    .4byte 0x41820008 # beq .L_801CF828
    stw 0, 0x0(3)
L_801CF828:
    li 3, 0x2
    bl fn_801CD664
    mr 30, 3
    addi 29, 1, 0x8
    slwi 31, 3, 2
    mr 3, 28
    lwzx 4, 29, 31
    bl fn_801CFCF0
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_801CF858
    lwzx 3, 29, 31
    .4byte 0x48000014 # b .L_801CF868
L_801CF858:
    subfic 0, 30, 0x1
    mr 3, 29
    slwi 0, 0, 2
    lwzx 3, 3, 0
L_801CF868:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

