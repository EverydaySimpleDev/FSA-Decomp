# Fresh-gap-hunt batch 16 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008450
etb_80008450:
    .4byte 0x484A0000
    .4byte 0x00000000
.size etb_80008450, 8

.section extabindex, "a"
.balign 4
.global eti_8001579C
eti_8001579C:
    .4byte fn_801D0338
    .4byte 0x000002C0
    .4byte etb_80008450
.size eti_8001579C, 12

.text
.balign 4
.global fn_801D0338

fn_801D0338:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stmw 23, 0x1c(1)
    mr 24, 3
    .4byte 0xC3E2C060 # lfs f31, lbl_8053F000@sda21(r0)
    mr 25, 4
    extsh 28, 5
    mr 29, 24
    li 27, -0x1
    li 26, 0x0
L_801D036C:
    mr 3, 26
    li 30, 0x0
    bl fn_801CCFE4
    clrlwi. 0, 3, 24
    .4byte 0x418201CC # beq .L_801D0548
    lis 3, 0x4b45
    lwz 4, 0x1a0(24)
    addi 0, 3, 0x504f
    li 31, 0x0
    cmpw 4, 0
    .4byte 0x418200A8 # beq .L_801D043C
    .4byte 0x40800054 # bge .L_801D03EC
    lis 3, 0x464c
    addi 0, 3, 0x4f52
    cmpw 4, 0
    .4byte 0x41820094 # beq .L_801D043C
    .4byte 0x4080002C # bge .L_801D03D8
    lis 3, 0x4642
    addi 0, 3, 0x4745
    cmpw 4, 0
    .4byte 0x41820080 # beq .L_801D043C
    .4byte 0x40800098 # bge .L_801D0458
    lis 3, 0x4641
    addi 0, 3, 0x4c4c
    cmpw 4, 0
    .4byte 0x4182006C # beq .L_801D043C
    .4byte 0x48000084 # b .L_801D0458
L_801D03D8:
    lis 3, 0x4852
    addi 0, 3, 0x4d4e
    cmpw 4, 0
    .4byte 0x41820058 # beq .L_801D043C
    .4byte 0x48000070 # b .L_801D0458
L_801D03EC:
    lis 3, 0x5449
    addi 0, 3, 0x4e4b
    cmpw 4, 0
    .4byte 0x41820044 # beq .L_801D043C
    .4byte 0x4080002C # bge .L_801D0428
    lis 3, 0x534c
    addi 0, 3, 0x4b32
    cmpw 4, 0
    .4byte 0x41820030 # beq .L_801D043C
    .4byte 0x40800048 # bge .L_801D0458
    lis 3, 0x4e41
    addi 0, 3, 0x5649
    cmpw 4, 0
    .4byte 0x4182001C # beq .L_801D043C
    .4byte 0x48000034 # b .L_801D0458
L_801D0428:
    lis 3, 0x545a
    addi 0, 3, 0x4f4b
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_801D043C
    .4byte 0x48000020 # b .L_801D0458
L_801D043C:
    lwz 23, 0x4(24)
    mr 3, 26
    bl fn_8023DE58
    cmpw 3, 23
    .4byte 0x4082001C # bne .L_801D0468
    li 31, 0x1
    .4byte 0x48000014 # b .L_801D0468
L_801D0458:
    mr 3, 24
    mr 4, 26
    bl fn_801F320C
    mr 31, 3
L_801D0468:
    clrlwi. 0, 31, 24
    .4byte 0x418200DC # beq .L_801D0548
    lis 3, 0x4e41
    lwz 4, 0x1a0(24)
    addi 0, 3, 0x5649
    cmpw 4, 0
    .4byte 0x41820094 # beq .L_801D0514
    .4byte 0x40800054 # bge .L_801D04D8
    lis 3, 0x4852
    addi 0, 3, 0x4d4e
    cmpw 4, 0
    .4byte 0x41820080 # beq .L_801D0514
    .4byte 0x4080002C # bge .L_801D04C4
    lis 3, 0x464c
    addi 0, 3, 0x4f52
    cmpw 4, 0
    .4byte 0x4182006C # beq .L_801D0514
    .4byte 0x40800098 # bge .L_801D0544
    lis 3, 0x4641
    addi 0, 3, 0x4c4c
    cmpw 4, 0
    .4byte 0x41820058 # beq .L_801D0514
    .4byte 0x48000084 # b .L_801D0544
L_801D04C4:
    lis 3, 0x4b45
    addi 0, 3, 0x504f
    cmpw 4, 0
    .4byte 0x41820044 # beq .L_801D0514
    .4byte 0x48000070 # b .L_801D0544
L_801D04D8:
    lis 3, 0x544e
    addi 0, 3, 0x4452
    cmpw 4, 0
    .4byte 0x41820030 # beq .L_801D0514
    .4byte 0x40800018 # bge .L_801D0500
    lis 3, 0x5449
    addi 0, 3, 0x4e4b
    cmpw 4, 0
    .4byte 0x4182001C # beq .L_801D0514
    .4byte 0x48000048 # b .L_801D0544
L_801D0500:
    lis 3, 0x545a
    addi 0, 3, 0x4f4b
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_801D0514
    .4byte 0x48000034 # b .L_801D0544
L_801D0514:
    mr 3, 26
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x4082000C # bne .L_801D052C
    li 30, 0x1
    .4byte 0x48000020 # b .L_801D0548
L_801D052C:
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_801D0548
    li 30, 0x1
    .4byte 0x48000008 # b .L_801D0548
L_801D0544:
    li 30, 0x1
L_801D0548:
    clrlwi. 0, 30, 24
    .4byte 0x4182007C # beq .L_801D05C8
    lfs 3, 0x1ac(29)
    lis 3, lbl_80534C00@ha
    lfs 1, 0x0(25)
    addi 3, 3, lbl_80534C00@l
    lfs 2, 0x1b0(29)
    lfs 0, 0x4(25)
    fsubs 1, 3, 1
    fsubs 2, 2, 0
    bl fn_80093340
    .4byte 0xC002C04C # lfs f0, lbl_8053EFEC@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x10(1)
    fmuls 1, 1, 0
    .4byte 0xC842C068 # lfd f2, lbl_8053F008@sda21(r0)
    .4byte 0xC002C064 # lfs f0, lbl_8053F004@sda21(r0)
    fctiwz 1, 1
    stfd 1, 0x8(1)
    lwz 0, 0xc(1)
    subf 0, 0, 28
    extsh 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    fabs 1, 1
    fmuls 0, 0, 1
    fcmpo cr0, 0, 31
    .4byte 0x4080000C # bge .L_801D05C8
    fmr 31, 0
    mr 27, 26
L_801D05C8:
    addi 26, 26, 0x1
    addi 29, 29, 0xc
    cmpwi 26, 0x4
    .4byte 0x4180FD98 # blt .L_801D036C
    mr 3, 27
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    lmw 23, 0x1c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

