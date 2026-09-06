# Fresh-gap-hunt batch 14 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008460
etb_80008460:
    .4byte 0x384A0000
    .4byte 0x00000000
.size etb_80008460, 8

.global etb_80008468
etb_80008468:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_80008468, 8

.section extabindex, "a"
.balign 4
.global eti_800157B4
eti_800157B4:
    .4byte fn_801D08B4
    .4byte 0x00000290
    .4byte etb_80008460
.size eti_800157B4, 12

.global eti_800157C0
eti_800157C0:
    .4byte fn_801D0B44
    .4byte 0x0000020C
    .4byte etb_80008468
.size eti_800157C0, 12

.text
.balign 4
.global fn_801D08B4
.global fn_801D0B44

fn_801D08B4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stmw 25, 0x14(1)
    mr. 27, 4
    fmr 31, 1
    mr 26, 3
    mr 28, 5
    li 29, 0x0
    .4byte 0x41800244 # blt .L_801D0B24
    cmpwi 27, 0x4
    .4byte 0x4080023C # bge .L_801D0B24
    mr 3, 27
    li 30, 0x0
    bl fn_801CCFE4
    clrlwi. 0, 3, 24
    .4byte 0x418201CC # beq .L_801D0AC8
    lis 3, 0x4b45
    lwz 4, 0x1a0(26)
    addi 0, 3, 0x504f
    li 31, 0x0
    cmpw 4, 0
    .4byte 0x418200A8 # beq .L_801D09BC
    .4byte 0x40800054 # bge .L_801D096C
    lis 3, 0x464c
    addi 0, 3, 0x4f52
    cmpw 4, 0
    .4byte 0x41820094 # beq .L_801D09BC
    .4byte 0x4080002C # bge .L_801D0958
    lis 3, 0x4642
    addi 0, 3, 0x4745
    cmpw 4, 0
    .4byte 0x41820080 # beq .L_801D09BC
    .4byte 0x40800098 # bge .L_801D09D8
    lis 3, 0x4641
    addi 0, 3, 0x4c4c
    cmpw 4, 0
    .4byte 0x4182006C # beq .L_801D09BC
    .4byte 0x48000084 # b .L_801D09D8
L_801D0958:
    lis 3, 0x4852
    addi 0, 3, 0x4d4e
    cmpw 4, 0
    .4byte 0x41820058 # beq .L_801D09BC
    .4byte 0x48000070 # b .L_801D09D8
L_801D096C:
    lis 3, 0x5449
    addi 0, 3, 0x4e4b
    cmpw 4, 0
    .4byte 0x41820044 # beq .L_801D09BC
    .4byte 0x4080002C # bge .L_801D09A8
    lis 3, 0x534c
    addi 0, 3, 0x4b32
    cmpw 4, 0
    .4byte 0x41820030 # beq .L_801D09BC
    .4byte 0x40800048 # bge .L_801D09D8
    lis 3, 0x4e41
    addi 0, 3, 0x5649
    cmpw 4, 0
    .4byte 0x4182001C # beq .L_801D09BC
    .4byte 0x48000034 # b .L_801D09D8
L_801D09A8:
    lis 3, 0x545a
    addi 0, 3, 0x4f4b
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_801D09BC
    .4byte 0x48000020 # b .L_801D09D8
L_801D09BC:
    lwz 25, 0x4(26)
    mr 3, 27
    bl fn_8023DE58
    cmpw 3, 25
    .4byte 0x4082001C # bne .L_801D09E8
    li 31, 0x1
    .4byte 0x48000014 # b .L_801D09E8
L_801D09D8:
    mr 3, 26
    mr 4, 27
    bl fn_801F320C
    mr 31, 3
L_801D09E8:
    clrlwi. 0, 31, 24
    .4byte 0x418200DC # beq .L_801D0AC8
    lis 3, 0x4e41
    lwz 4, 0x1a0(26)
    addi 0, 3, 0x5649
    cmpw 4, 0
    .4byte 0x41820094 # beq .L_801D0A94
    .4byte 0x40800054 # bge .L_801D0A58
    lis 3, 0x4852
    addi 0, 3, 0x4d4e
    cmpw 4, 0
    .4byte 0x41820080 # beq .L_801D0A94
    .4byte 0x4080002C # bge .L_801D0A44
    lis 3, 0x464c
    addi 0, 3, 0x4f52
    cmpw 4, 0
    .4byte 0x4182006C # beq .L_801D0A94
    .4byte 0x40800098 # bge .L_801D0AC4
    lis 3, 0x4641
    addi 0, 3, 0x4c4c
    cmpw 4, 0
    .4byte 0x41820058 # beq .L_801D0A94
    .4byte 0x48000084 # b .L_801D0AC4
L_801D0A44:
    lis 3, 0x4b45
    addi 0, 3, 0x504f
    cmpw 4, 0
    .4byte 0x41820044 # beq .L_801D0A94
    .4byte 0x48000070 # b .L_801D0AC4
L_801D0A58:
    lis 3, 0x544e
    addi 0, 3, 0x4452
    cmpw 4, 0
    .4byte 0x41820030 # beq .L_801D0A94
    .4byte 0x40800018 # bge .L_801D0A80
    lis 3, 0x5449
    addi 0, 3, 0x4e4b
    cmpw 4, 0
    .4byte 0x4182001C # beq .L_801D0A94
    .4byte 0x48000048 # b .L_801D0AC4
L_801D0A80:
    lis 3, 0x545a
    addi 0, 3, 0x4f4b
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_801D0A94
    .4byte 0x48000034 # b .L_801D0AC4
L_801D0A94:
    mr 3, 27
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x4082000C # bne .L_801D0AAC
    li 30, 0x1
    .4byte 0x48000020 # b .L_801D0AC8
L_801D0AAC:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_801D0AC8
    li 30, 0x1
    .4byte 0x48000008 # b .L_801D0AC8
L_801D0AC4:
    li 30, 0x1
L_801D0AC8:
    clrlwi. 0, 30, 24
    .4byte 0x41820058 # beq .L_801D0B24
    mulli 3, 27, 0xc
    lfs 3, 0x4(28)
    lfs 1, 0x0(28)
    fmuls 0, 31, 31
    li 0, 0x0
    addi 3, 3, 0x1ac
    add 3, 26, 3
    lfs 4, 0x4(3)
    lfs 2, 0x0(3)
    fsubs 3, 4, 3
    fsubs 2, 2, 1
    fmuls 1, 3, 3
    fmuls 2, 2, 2
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801D0B18
    li 0, 0x1
L_801D0B18:
    clrlwi. 0, 0, 24
    .4byte 0x41820008 # beq .L_801D0B24
    li 29, 0x1
L_801D0B24:
    mr 3, 29
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    lmw 25, 0x14(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_801D0B44:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 29, 4
    mr 28, 3
    li 31, 0x0
    mr 3, 29
    bl fn_801CCFE4
    clrlwi. 0, 3, 24
    .4byte 0x418201CC # beq .L_801D0D38
    lis 3, 0x4b45
    lwz 4, 0x1a0(28)
    addi 0, 3, 0x504f
    li 30, 0x0
    cmpw 4, 0
    .4byte 0x418200A8 # beq .L_801D0C2C
    .4byte 0x40800054 # bge .L_801D0BDC
    lis 3, 0x464c
    addi 0, 3, 0x4f52
    cmpw 4, 0
    .4byte 0x41820094 # beq .L_801D0C2C
    .4byte 0x4080002C # bge .L_801D0BC8
    lis 3, 0x4642
    addi 0, 3, 0x4745
    cmpw 4, 0
    .4byte 0x41820080 # beq .L_801D0C2C
    .4byte 0x40800098 # bge .L_801D0C48
    lis 3, 0x4641
    addi 0, 3, 0x4c4c
    cmpw 4, 0
    .4byte 0x4182006C # beq .L_801D0C2C
    .4byte 0x48000084 # b .L_801D0C48
L_801D0BC8:
    lis 3, 0x4852
    addi 0, 3, 0x4d4e
    cmpw 4, 0
    .4byte 0x41820058 # beq .L_801D0C2C
    .4byte 0x48000070 # b .L_801D0C48
L_801D0BDC:
    lis 3, 0x5449
    addi 0, 3, 0x4e4b
    cmpw 4, 0
    .4byte 0x41820044 # beq .L_801D0C2C
    .4byte 0x4080002C # bge .L_801D0C18
    lis 3, 0x534c
    addi 0, 3, 0x4b32
    cmpw 4, 0
    .4byte 0x41820030 # beq .L_801D0C2C
    .4byte 0x40800048 # bge .L_801D0C48
    lis 3, 0x4e41
    addi 0, 3, 0x5649
    cmpw 4, 0
    .4byte 0x4182001C # beq .L_801D0C2C
    .4byte 0x48000034 # b .L_801D0C48
L_801D0C18:
    lis 3, 0x545a
    addi 0, 3, 0x4f4b
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_801D0C2C
    .4byte 0x48000020 # b .L_801D0C48
L_801D0C2C:
    lwz 27, 0x4(28)
    mr 3, 29
    bl fn_8023DE58
    cmpw 3, 27
    .4byte 0x4082001C # bne .L_801D0C58
    li 30, 0x1
    .4byte 0x48000014 # b .L_801D0C58
L_801D0C48:
    mr 3, 28
    mr 4, 29
    bl fn_801F320C
    mr 30, 3
L_801D0C58:
    clrlwi. 0, 30, 24
    .4byte 0x418200DC # beq .L_801D0D38
    lis 3, 0x4e41
    lwz 4, 0x1a0(28)
    addi 0, 3, 0x5649
    cmpw 4, 0
    .4byte 0x41820094 # beq .L_801D0D04
    .4byte 0x40800054 # bge .L_801D0CC8
    lis 3, 0x4852
    addi 0, 3, 0x4d4e
    cmpw 4, 0
    .4byte 0x41820080 # beq .L_801D0D04
    .4byte 0x4080002C # bge .L_801D0CB4
    lis 3, 0x464c
    addi 0, 3, 0x4f52
    cmpw 4, 0
    .4byte 0x4182006C # beq .L_801D0D04
    .4byte 0x40800098 # bge .L_801D0D34
    lis 3, 0x4641
    addi 0, 3, 0x4c4c
    cmpw 4, 0
    .4byte 0x41820058 # beq .L_801D0D04
    .4byte 0x48000084 # b .L_801D0D34
L_801D0CB4:
    lis 3, 0x4b45
    addi 0, 3, 0x504f
    cmpw 4, 0
    .4byte 0x41820044 # beq .L_801D0D04
    .4byte 0x48000070 # b .L_801D0D34
L_801D0CC8:
    lis 3, 0x544e
    addi 0, 3, 0x4452
    cmpw 4, 0
    .4byte 0x41820030 # beq .L_801D0D04
    .4byte 0x40800018 # bge .L_801D0CF0
    lis 3, 0x5449
    addi 0, 3, 0x4e4b
    cmpw 4, 0
    .4byte 0x4182001C # beq .L_801D0D04
    .4byte 0x48000048 # b .L_801D0D34
L_801D0CF0:
    lis 3, 0x545a
    addi 0, 3, 0x4f4b
    cmpw 4, 0
    .4byte 0x41820008 # beq .L_801D0D04
    .4byte 0x48000034 # b .L_801D0D34
L_801D0D04:
    mr 3, 29
    bl fn_8022CAF8
    cmpwi 3, 0x4
    .4byte 0x4082000C # bne .L_801D0D1C
    li 31, 0x1
    .4byte 0x48000020 # b .L_801D0D38
L_801D0D1C:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_801D0D38
    li 31, 0x1
    .4byte 0x48000008 # b .L_801D0D38
L_801D0D34:
    li 31, 0x1
L_801D0D38:
    mr 3, 31
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

