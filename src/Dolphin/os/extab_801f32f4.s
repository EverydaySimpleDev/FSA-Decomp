# Fresh-gap-hunt batch 15 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008E54
etb_80008E54:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008E54, 8

.global etb_80008E5C
etb_80008E5C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008E5C, 8

.global etb_80008E64
etb_80008E64:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008E64, 8

.global etb_80008E6C
etb_80008E6C:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008E6C, 8

.global etb_80008E74
etb_80008E74:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80008E74, 8

.global etb_80008E7C
etb_80008E7C:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80008E7C, 8

.global etb_80008E84
etb_80008E84:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_80008E84, 8

.section extabindex, "a"
.balign 4
.global eti_80016558
eti_80016558:
    .4byte fn_801F32F4
    .4byte 0x000000D0
    .4byte etb_80008E54
.size eti_80016558, 12

.global eti_80016564
eti_80016564:
    .4byte fn_801F33C4
    .4byte 0x000000D8
    .4byte etb_80008E5C
.size eti_80016564, 12

.global eti_80016570
eti_80016570:
    .4byte fn_801F34DC
    .4byte 0x0000003C
    .4byte etb_80008E64
.size eti_80016570, 12

.global eti_8001657C
eti_8001657C:
    .4byte fn_801F3518
    .4byte 0x00000044
    .4byte etb_80008E6C
.size eti_8001657C, 12

.global eti_80016588
eti_80016588:
    .4byte fn_801F355C
    .4byte 0x00000050
    .4byte etb_80008E74
.size eti_80016588, 12

.global eti_80016594
eti_80016594:
    .4byte fn_801F35AC
    .4byte 0x00000058
    .4byte etb_80008E7C
.size eti_80016594, 12

.global eti_800165A0
eti_800165A0:
    .4byte fn_801F3604
    .4byte 0x00000064
    .4byte etb_80008E84
.size eti_800165A0, 12

.text
.balign 4
.global fn_801F32F4
.global fn_801F33C4
.global fn_801F349C
.global fn_801F34DC
.global fn_801F3518
.global fn_801F355C
.global fn_801F35AC
.global fn_801F3604

fn_801F32F4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    li 29, 0x0
    stw 28, 0x20(1)
    mr 28, 3
    mr 30, 28
L_801F331C:
    mr 3, 29
    li 31, 0x0
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800014 # bge .L_801F3340
    lwz 0, 0x4(28)
    cmpwi 0, 0x8
    .4byte 0x40820008 # bne .L_801F3340
    li 31, 0x1
L_801F3340:
    clrlwi. 0, 31, 24
    .4byte 0x41820030 # beq .L_801F3374
    mr 3, 29
    bl fn_8023E724
    addi 4, 1, 0x8
    bl fn_801CD150
    lfs 0, 0x8(1)
    stfs 0, 0x1ac(30)
    lfs 0, 0xc(1)
    stfs 0, 0x1b0(30)
    lfs 0, 0x10(1)
    stfs 0, 0x1b4(30)
    .4byte 0x48000024 # b .L_801F3394
L_801F3374:
    mr 3, 29
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x1ac(30)
    lfs 0, 0x4(3)
    stfs 0, 0x1b0(30)
    lfs 0, 0x8(3)
    stfs 0, 0x1b4(30)
L_801F3394:
    addi 29, 29, 0x1
    addi 30, 30, 0xc
    cmpwi 29, 0x4
    .4byte 0x4180FF7C # blt .L_801F331C
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801F33C4:
    stwu 1, -0x30(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stb 4, 0x17d(3)
    lwz 3, 0x174(3)
    cmpwi 3, 0x0
    .4byte 0x40810068 # ble .L_801F3450
    subi 0, 3, 0x1
    addi 3, 1, 0x14
    stw 0, 0x174(31)
    lfs 0, 0x38(31)
    psq_l 1, 0x30(31), 0, 0
    stfs 0, 0x10(1)
    psq_l 3, 0xc(31), 0, 0
    psq_l 2, 0x10(1), 1, 0
    psq_l 0, 0x14(31), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x8(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
    lfs 0, 0x10(1)
    psq_st 3, 0x0(3), 0, 0
    stfs 0, 0x1c(1)
    bl PSVECMag
    lfs 0, 0x184(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820048 # bne .L_801F3488
    li 0, 0x0
    stw 0, 0x174(31)
    .4byte 0x4800003C # b .L_801F3488
L_801F3450:
    lbz 0, 0x17c(31)
    cmplwi 0, 0x0
    .4byte 0x41820030 # beq .L_801F3488
    lfs 0, 0x30(31)
    li 0, 0x1
    stfs 0, 0xc(31)
    lfs 0, 0x34(31)
    stfs 0, 0x10(31)
    lwz 3, 0x178(31)
    stw 3, 0x4(31)
    stb 4, 0x17c(31)
    stb 0, 0x17d(31)
    lwz 0, 0x180(31)
    stw 0, 0x174(31)
L_801F3488:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

fn_801F349C:
    lbz 0, 0x17c(3)
    cmplwi 0, 0x0
    bnelr
    lwz 0, 0x174(3)
    cmpwi 0, 0x0
    bgtlr
    psq_l 1, 0x0(5), 0, 0
    li 6, 0x1
    lfs 0, 0x8(5)
    li 0, 0x0
    psq_st 1, 0x30(3), 0, 0
    stfs 0, 0x38(3)
    stw 4, 0x178(3)
    stb 6, 0x17c(3)
    stw 0, 0x174(3)
    blr

fn_801F34DC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    lwz 31, 0x16c(3)
    cmpwi 31, -0x1
    .4byte 0x41820010 # beq .L_801F3504
    bl GetRoomConfigRecord
    mr 4, 31
    bl fn_802D7618
L_801F3504:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801F3518:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    stb 0, 0x11c(3)
    lwz 31, 0x16c(3)
    cmpwi 31, -0x1
    .4byte 0x41820010 # beq .L_801F3548
    bl GetRoomConfigRecord
    mr 4, 31
    bl fn_802D7618
L_801F3548:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801F355C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 31, 0x16c(3)
    cmpwi 31, -0x1
    .4byte 0x41820018 # beq .L_801F3594
    bl GetRoomConfigRecord
    lwz 6, 0x4(30)
    mr 4, 31
    li 5, 0x0
    bl fn_802D7704
L_801F3594:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801F35AC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    li 0, 0x0
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    stb 0, 0x11c(3)
    lwz 31, 0x16c(3)
    cmpwi 31, -0x1
    .4byte 0x41820018 # beq .L_801F35EC
    bl GetRoomConfigRecord
    lwz 6, 0x4(30)
    mr 4, 31
    li 5, 0x0
    bl fn_802D7704
L_801F35EC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801F3604:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 31, 0x16c(3)
    cmpwi 31, -0x1
    .4byte 0x4182001C # beq .L_801F3640
    bl GetRoomConfigRecord
    lbz 5, 0x1a8(30)
    mr 4, 31
    lwz 6, 0x4(30)
    bl fn_802D7704
    .4byte 0x48000014 # b .L_801F3650
L_801F3640:
    bl GetRoomConfigRecord
    lbz 4, 0x1a8(30)
    lwz 5, 0x4(30)
    bl fn_802D766C
L_801F3650:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

