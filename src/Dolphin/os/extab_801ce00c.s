# Fresh-gap-hunt batch 13 landing (5 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_80008368
etb_80008368:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008368, 8

.global etb_80008370
etb_80008370:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008370, 8

.global etb_80008378
etb_80008378:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008378, 8

.global etb_80008380
etb_80008380:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008380, 8

.global etb_80008388
etb_80008388:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008388, 8

.global etb_80008390
etb_80008390:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_80008390, 8

.section extabindex, "a"
.balign 4
.global eti_80015640
eti_80015640:
    .4byte fn_801CE010
    .4byte 0x00000094
    .4byte etb_80008368
.size eti_80015640, 12

.global eti_8001564C
eti_8001564C:
    .4byte fn_801CE0A4
    .4byte 0x0000007C
    .4byte etb_80008370
.size eti_8001564C, 12

.global eti_80015658
eti_80015658:
    .4byte fn_801CE120
    .4byte 0x0000019C
    .4byte etb_80008378
.size eti_80015658, 12

.global eti_80015664
eti_80015664:
    .4byte fn_801CE2BC
    .4byte 0x00000070
    .4byte etb_80008380
.size eti_80015664, 12

.global eti_80015670
eti_80015670:
    .4byte fn_801CE32C
    .4byte 0x00000190
    .4byte etb_80008388
.size eti_80015670, 12

.global eti_8001567C
eti_8001567C:
    .4byte fn_801CE4BC
    .4byte 0x00000024
    .4byte etb_80008390
.size eti_8001567C, 12

.text
.balign 4
.global fn_801CE00C
.global fn_801CE010
.global fn_801CE0A4
.global fn_801CE120
.global fn_801CE2BC
.global fn_801CE32C
.global fn_801CE4BC

fn_801CE00C:
    blr

fn_801CE010:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 4
    stw 29, 0x14(1)
    mr 29, 3
    lwz 31, 0x4(3)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_801CE048
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801CE04C
L_801CE048:
    addi 3, 3, 0xdc
L_801CE04C:
    lfs 2, 0x10(29)
    lfs 0, 0x14(29)
    lfs 1, 0xc(29)
    fsubs 2, 2, 0
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    stfs 1, 0x0(30)
    .4byte 0xC022C028 # lfs f1, lbl_8053EFC8@sda21(r0)
    stfs 2, 0x4(30)
    stfs 0, 0x8(30)
    lfs 0, 0x4(3)
    lfs 2, 0x4(30)
    fadds 1, 1, 0
    fsubs 0, 1, 2
    fsel 0, 0, 1, 2
    stfs 0, 0x4(30)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

fn_801CE0A4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 0, 0x230(3)
    clrlwi. 0, 0, 29
    .4byte 0x4082004C # bne .L_801CE10C
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801CE0E4
    li 0, 0x0
    stw 0, 0x24c(31)
L_801CE0E4:
    lwz 12, 0x0(31)
    mr 3, 31
    lwz 12, 0x90(12)
    mtctr 12
    bctrl
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x94(12)
    mtctr 12
    bctrl
L_801CE10C:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801CE120:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x230(3)
    clrlwi. 0, 0, 29
    .4byte 0x40820164 # bne .L_801CE2A4
    lfs 0, 0x254(30)
    lfs 1, 0x258(30)
    fcmpu cr0, 0, 1
    .4byte 0x4182001C # beq .L_801CE16C
    fcmpo cr0, 0, 1
    lfs 2, 0x25c(30)
    .4byte 0x40810008 # ble .L_801CE164
    lfs 2, 0x260(30)
L_801CE164:
    addi 3, 30, 0x254
    bl fn_801CD950
L_801CE16C:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x88(12)
    mtctr 12
    bctrl
    psq_l 1, 0xc(30), 0, 0
    mr 3, 30
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lwz 12, 0x0(30)
    lwz 12, 0x8c(12)
    mtctr 12
    bctrl
    lfs 1, 0x14(30)
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200E0 # bne .L_801CE2A4
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_801CE1FC
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x80(12)
    mtctr 12
    bctrl
    .4byte 0x480000AC # b .L_801CE2A4
L_801CE1FC:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x41820094 # beq .L_801CE298
    lfs 0, 0x14(30)
    .4byte 0xC042C02C # lfs f2, lbl_8053EFCC@sda21(r0)
    fneg 1, 0
    .4byte 0xC002C030 # lfs f0, lbl_8053EFD0@sda21(r0)
    fmuls 1, 2, 1
    stfs 1, 0x14(30)
    lfs 1, 0x44(30)
    fneg 1, 1
    fmuls 1, 2, 1
    stfs 1, 0x44(30)
    lfs 1, 0x254(30)
    fmuls 1, 1, 2
    stfs 1, 0x254(30)
    lfs 1, 0x258(30)
    fmuls 1, 1, 2
    stfs 1, 0x258(30)
    lfs 1, 0x3c(30)
    fmuls 1, 1, 2
    stfs 1, 0x3c(30)
    lfs 1, 0x40(30)
    fmuls 1, 1, 2
    stfs 1, 0x40(30)
    lfs 1, 0x44(30)
    fabs 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_801CE280
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    stfs 0, 0x14(30)
    stfs 0, 0x44(30)
    .4byte 0x48000028 # b .L_801CE2A4
L_801CE280:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x7c(12)
    mtctr 12
    bctrl
    .4byte 0x48000010 # b .L_801CE2A4
L_801CE298:
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    stfs 0, 0x14(30)
    stfs 0, 0x44(30)
L_801CE2A4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801CE2BC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lwz 3, 0x24c(3)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801CE2F0
    li 0, 0x0
    stw 0, 0x24c(31)
L_801CE2F0:
    lwz 12, 0x0(31)
    mr 3, 31
    lwz 12, 0x90(12)
    mtctr 12
    bctrl
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x94(12)
    mtctr 12
    bctrl
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801CE32C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lfs 0, 0x254(3)
    lfs 1, 0x258(3)
    fcmpu cr0, 0, 1
    .4byte 0x4182001C # beq .L_801CE36C
    fcmpo cr0, 0, 1
    lfs 2, 0x25c(30)
    .4byte 0x40810008 # ble .L_801CE364
    lfs 2, 0x260(30)
L_801CE364:
    addi 3, 30, 0x254
    bl fn_801CD950
L_801CE36C:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x88(12)
    mtctr 12
    bctrl
    psq_l 1, 0xc(30), 0, 0
    mr 3, 30
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    lwz 12, 0x0(30)
    lwz 12, 0x8c(12)
    mtctr 12
    bctrl
    lfs 1, 0x14(30)
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200E0 # bne .L_801CE4A4
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182001C # beq .L_801CE3FC
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x80(12)
    mtctr 12
    bctrl
    .4byte 0x480000AC # b .L_801CE4A4
L_801CE3FC:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x41820094 # beq .L_801CE498
    lfs 0, 0x14(30)
    .4byte 0xC042C02C # lfs f2, lbl_8053EFCC@sda21(r0)
    fneg 1, 0
    .4byte 0xC002C030 # lfs f0, lbl_8053EFD0@sda21(r0)
    fmuls 1, 2, 1
    stfs 1, 0x14(30)
    lfs 1, 0x44(30)
    fneg 1, 1
    fmuls 1, 2, 1
    stfs 1, 0x44(30)
    lfs 1, 0x254(30)
    fmuls 1, 1, 2
    stfs 1, 0x254(30)
    lfs 1, 0x258(30)
    fmuls 1, 1, 2
    stfs 1, 0x258(30)
    lfs 1, 0x3c(30)
    fmuls 1, 1, 2
    stfs 1, 0x3c(30)
    lfs 1, 0x40(30)
    fmuls 1, 1, 2
    stfs 1, 0x40(30)
    lfs 1, 0x44(30)
    fabs 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_801CE480
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    stfs 0, 0x14(30)
    stfs 0, 0x44(30)
    .4byte 0x48000028 # b .L_801CE4A4
L_801CE480:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x7c(12)
    mtctr 12
    bctrl
    .4byte 0x48000010 # b .L_801CE4A4
L_801CE498:
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    stfs 0, 0x14(30)
    stfs 0, 0x44(30)
L_801CE4A4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

fn_801CE4BC:
    stwu 1, -0x10(1)
    mflr 0
    addi 3, 3, 0x270
    stw 0, 0x14(1)
    bl fn_801D1C18
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

