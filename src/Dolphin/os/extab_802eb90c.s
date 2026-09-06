# fn_802EB90C - TKRA: draw()/room-flag query (0x4C0)
# Calls GetRoomConfigRecord (per-room config accessor) then indexes into a large
# per-room byte-flag table at a fixed +0x131DF-ish offset off the returned
# base, matching the "room-data persistence flag/switch" family used by
# other actors. Track A: byte-match verified, structural overview per the
# large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000D18C
etb_8000D18C:
    .4byte 0x308A0000
    .4byte 0x00000000
.size etb_8000D18C, 8

.section extabindex, "a"
.balign 4
.global eti_8001C384
eti_8001C384:
    .4byte fn_802EB90C
    .4byte 0x000004C0
    .4byte etb_8000D18C
.size eti_8001C384, 12

.text
.balign 4
.global fn_802EB90C

fn_802EB90C:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 26, 0x38(1)
    mr 28, 3
    lfs 30, 0x10(3)
    lfs 31, 0xc(3)
    lwz 29, 0x4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820028 # beq .L_802EB978
    .4byte 0xC022E420 # lfs f1, lbl_805413C0@sda21(r0)
    .4byte 0xC002E424 # lfs f0, lbl_805413C4@sda21(r0)
    stfs 1, 0x60(28)
    .4byte 0xC022E428 # lfs f1, lbl_805413C8@sda21(r0)
    stfs 0, 0x64(28)
    .4byte 0xC002E42C # lfs f0, lbl_805413CC@sda21(r0)
    stfs 1, 0x68(28)
    stfs 0, 0x6c(28)
    .4byte 0x48000024 # b .L_802EB998
L_802EB978:
    .4byte 0xC022E430 # lfs f1, lbl_805413D0@sda21(r0)
    .4byte 0xC002E41C # lfs f0, lbl_805413BC@sda21(r0)
    stfs 1, 0x60(28)
    .4byte 0xC022E434 # lfs f1, lbl_805413D4@sda21(r0)
    stfs 0, 0x64(28)
    .4byte 0xC002E42C # lfs f0, lbl_805413CC@sda21(r0)
    stfs 1, 0x68(28)
    stfs 0, 0x6c(28)
L_802EB998:
    lfs 0, 0x60(28)
    addi 3, 1, 0x20
    .4byte 0xC022E41C # lfs f1, lbl_805413BC@sda21(r0)
    li 5, 0x0
    stfs 0, 0x20(1)
    fadds 4, 0, 31
    lfs 0, 0x64(28)
    stfs 0, 0x24(1)
    fadds 3, 0, 30
    lfs 0, 0x68(28)
    stfs 0, 0x28(1)
    fadds 2, 0, 31
    lfs 5, 0x6c(28)
    fadds 0, 5, 30
    stfs 5, 0x2c(1)
    stfs 4, 0x20(1)
    stfs 3, 0x24(1)
    stfs 2, 0x28(1)
    stfs 0, 0x2c(1)
    lwz 4, 0x4(28)
    bl fn_8023AF14
    stw 3, 0x240(28)
    lwz 0, 0x230(28)
    cmpwi 0, 0x2
    .4byte 0x418201EC # beq .L_802EBBE4
    .4byte 0x40800014 # bge .L_802EBA10
    cmpwi 0, 0x0
    .4byte 0x4182001C # beq .L_802EBA20
    .4byte 0x40800044 # bge .L_802EBA4C
    .4byte 0x4800039C # b .L_802EBDA8
L_802EBA10:
    cmpwi 0, 0x4
    .4byte 0x41820394 # beq .L_802EBDA8
    .4byte 0x40800390 # bge .L_802EBDA8
    .4byte 0x4800033C # b .L_802EBD58
L_802EBA20:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x4(28)
    lwz 3, 0x20(3)
    lwz 5, 0x23c(28)
    bl fn_802F9908
    clrlwi 0, 3, 16
    cmplwi 0, 0x30
    .4byte 0x4082036C # bne .L_802EBDA8
    li 0, 0x1
    stw 0, 0x230(28)
    .4byte 0x48000360 # b .L_802EBDA8
L_802EBA4C:
    lwz 0, 0x240(28)
    li 26, 0x0
    cmpwi 0, 0x0
    .4byte 0x41800350 # blt .L_802EBDA8
    lwz 29, 0x4(28)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182003C # beq .L_802EBAB0
    lwz 3, 0x240(28)
    bl fn_80230CFC
    cmpwi 3, 0x3
    .4byte 0x41820024 # beq .L_802EBAA8
    lwz 3, 0x240(28)
    bl fn_80230CFC
    cmpwi 3, 0x0
    .4byte 0x41820014 # beq .L_802EBAA8
    lwz 3, 0x240(28)
    bl fn_80230CFC
    cmpwi 3, 0x1
    .4byte 0x40820020 # bne .L_802EBAC4
L_802EBAA8:
    li 26, 0x1
    .4byte 0x48000018 # b .L_802EBAC4
L_802EBAB0:
    lwz 3, 0x240(28)
    bl fn_80230CFC
    cmpwi 3, 0x3
    .4byte 0x40820008 # bne .L_802EBAC4
    li 26, 0x1
L_802EBAC4:
    clrlwi 0, 26, 24
    cmplwi 0, 0x1
    .4byte 0x4082007C # bne .L_802EBB48
    .4byte 0xC022E438 # lfs f1, lbl_805413D8@sda21(r0)
    addi 3, 1, 0x20
    .4byte 0xC002E43C # lfs f0, lbl_805413DC@sda21(r0)
    li 6, 0x1
    stfs 1, 0x60(28)
    li 7, 0x1
    .4byte 0xC022E440 # lfs f1, lbl_805413E0@sda21(r0)
    stfs 0, 0x64(28)
    .4byte 0xC002E444 # lfs f0, lbl_805413E4@sda21(r0)
    stfs 1, 0x68(28)
    stfs 0, 0x6c(28)
    lfs 0, 0x60(28)
    stfs 0, 0x20(1)
    fadds 3, 0, 31
    lfs 0, 0x64(28)
    stfs 0, 0x24(1)
    fadds 2, 0, 30
    lfs 0, 0x68(28)
    stfs 0, 0x28(1)
    fadds 1, 0, 31
    lfs 4, 0x6c(28)
    fadds 0, 4, 30
    stfs 4, 0x2c(1)
    stfs 3, 0x20(1)
    stfs 2, 0x24(1)
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
    lwz 4, 0x4(28)
    lwz 5, 0x198(28)
    bl fn_8022FEB8
L_802EBB48:
    lwz 0, 0x240(28)
    stw 0, 0x248(28)
    lwz 3, 0x240(28)
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802EBB6C
    lwz 3, 0x240(28)
    bl fn_8022F3DC
    stw 3, 0x248(28)
L_802EBB6C:
    clrlwi 0, 26, 24
    cmplwi 0, 0x1
    .4byte 0x40820234 # bne .L_802EBDA8
    lwz 3, 0x240(28)
    bl fn_8023EFEC
    clrlwi. 0, 3, 24
    .4byte 0x40820224 # bne .L_802EBDA8
    lwz 3, 0x240(28)
    bl fn_8022EA0C
    lwz 0, 0x240(28)
    cmpw 0, 3
    .4byte 0x40820210 # bne .L_802EBDA8
    lwz 3, 0x248(28)
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x100
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x418201F0 # beq .L_802EBDA8
    mr 3, 28
    lwz 12, 0x0(28)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x418201D4 # beq .L_802EBDA8
    li 0, 0x0
    stb 0, 0x11c(28)
    .4byte 0x480001C8 # b .L_802EBDA8
L_802EBBE4:
    lwz 0, 0x244(28)
    stw 0, 0x240(28)
    lwz 0, 0x240(28)
    stw 0, 0x248(28)
    lwz 3, 0x240(28)
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802EBC10
    lwz 3, 0x240(28)
    bl fn_8022F3DC
    stw 3, 0x248(28)
L_802EBC10:
    .4byte 0xC3E2E410 # lfs f31, lbl_805413B0@sda21(r0)
    mr 30, 28
    .4byte 0xC3C2E414 # lfs f30, lbl_805413B4@sda21(r0)
    li 29, 0x0
    li 31, 0x0
L_802EBC24:
    mr 3, 29
    bl fn_8023E724
    psq_l 3, 0x0(3), 0, 0
    lfs 2, 0x8(3)
    mr 3, 29
    psq_st 3, 0x14(1), 0, 0
    lfs 1, 0x14(1)
    lfs 0, 0x18(1)
    fadds 1, 31, 1
    psq_st 3, 0x8(1), 0, 0
    fsubs 0, 0, 30
    stfs 2, 0x10(1)
    stfs 2, 0x1c(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 2, 0x10(1)
    bl fn_8022F514
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082005C # bne .L_802EBCCC
    lwz 0, 0x244(28)
    cmpw 29, 0
    .4byte 0x408200A4 # bne .L_802EBD20
    lwz 4, 0x234(28)
    slwi 3, 0, 26
    addis 0, 3, 0x8000
    mr 3, 29
    add 26, 31, 4
    add 26, 0, 26
    bl fn_8023DE58
    mr 27, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x494d
    mr 5, 27
    mr 7, 26
    addi 6, 1, 0x8
    addi 4, 4, 0x5550
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x24c(30)
    .4byte 0x48000058 # b .L_802EBD20
L_802EBCCC:
    lwz 0, 0x244(28)
    cmpw 29, 0
    .4byte 0x4082004C # bne .L_802EBD20
    lwz 4, 0x234(28)
    slwi 3, 0, 26
    addis 0, 3, 0x8000
    mr 3, 29
    add 27, 31, 4
    add 27, 0, 27
    bl fn_8023DE58
    mr 26, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x494d
    mr 5, 26
    mr 7, 27
    addi 6, 1, 0x8
    addi 4, 4, 0x5550
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x24c(30)
L_802EBD20:
    addi 29, 29, 0x1
    addis 31, 31, 0x100
    cmpwi 29, 0x4
    addi 30, 30, 0x4
    .4byte 0x4180FEF4 # blt .L_802EBC24
    lwz 0, 0x238(28)
    cmpwi 0, 0x1
    .4byte 0x41820010 # beq .L_802EBD4C
    li 0, 0x0
    stb 0, 0x11c(28)
    .4byte 0x48000060 # b .L_802EBDA8
L_802EBD4C:
    li 0, 0x4
    stw 0, 0x230(28)
    .4byte 0x48000054 # b .L_802EBDA8
L_802EBD58:
    lwz 0, 0x244(28)
    stw 0, 0x240(28)
    lwz 0, 0x240(28)
    stw 0, 0x248(28)
    lwz 3, 0x240(28)
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802EBD84
    lwz 3, 0x240(28)
    bl fn_8022F3DC
    stw 3, 0x248(28)
L_802EBD84:
    mr 3, 28
    lwz 12, 0x0(28)
    lwz 12, 0x54(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_802EBDA8
    li 0, 0x0
    stb 0, 0x11c(28)
L_802EBDA8:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 26, 0x38(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

