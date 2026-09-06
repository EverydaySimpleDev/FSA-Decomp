# Fresh-gap-hunt batch 18 landing (4 non-ctors, screened safe): raw dtk transcription, verified byte-exact via main.dol OK.
.section extab, "a"
.balign 4
.global etb_8000C9FC
etb_8000C9FC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000C9FC, 8

.global etb_8000CA04
etb_8000CA04:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_8000CA04, 8

.section extabindex, "a"
.balign 4
.global eti_8001B874
eti_8001B874:
    .4byte fn_802C1674
    .4byte 0x00000104
    .4byte etb_8000C9FC
.size eti_8001B874, 12

.global eti_8001B880
eti_8001B880:
    .4byte fn_802C1778
    .4byte 0x00000144
    .4byte etb_8000CA04
.size eti_8001B880, 12

.text
.balign 4
.global fn_802C1674
.global fn_802C1778

fn_802C1674:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    lwz 0, 0x240(3)
    cmpwi 0, 0x4
    .4byte 0x408200C4 # bne .L_802C175C
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x408200B8 # bne .L_802C175C
    lbz 0, 0x2af(31)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_802C16B8
    .4byte 0x480000A8 # b .L_802C175C
L_802C16B8:
    lhz 7, 0x2a8(31)
    cmplwi 7, 0xffff
    .4byte 0x4182009C # beq .L_802C175C
    lwz 0, 0x23c(31)
    lfs 3, 0x230(31)
    lfs 2, 0x234(31)
    slwi 3, 0, 30
    lfs 1, 0xc(31)
    lfs 0, 0x10(31)
    lbz 0, 0x2b5(31)
    stfs 3, 0x18(1)
    slwi 0, 0, 29
    lwz 4, 0x280(31)
    or 30, 3, 0
    stfs 1, 0x20(1)
    rlwimi 30, 4, 24, 3, 7
    lwz 6, 0x4(31)
    stfs 2, 0x1c(1)
    rlwimi 30, 7, 8, 8, 23
    lwz 29, 0x238(31)
    rlwimi 30, 6, 0, 24, 31
    stfs 0, 0x24(1)
    lwz 5, 0x18(1)
    lwz 4, 0x1c(1)
    lwz 3, 0x20(1)
    lwz 0, 0x24(1)
    stw 5, 0x10(1)
    stw 4, 0x14(1)
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    bl GetRoomConfigRecord
    mr 6, 30
    mr 7, 29
    addi 4, 1, 0x8
    addi 5, 1, 0x10
    bl fn_802D6D70
    lis 3, 0x1
    li 0, 0x0
    subi 3, 3, 0x1
    sth 3, 0x2a8(31)
    stb 0, 0x2af(31)
L_802C175C:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

fn_802C1778:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    lwz 0, 0x4(3)
    cmpwi 0, 0x8
    .4byte 0x41800104 # blt .L_802C18A0
    lhz 0, 0x2a8(31)
    cmplwi 0, 0xffff
    .4byte 0x418200F8 # beq .L_802C18A0
    lwz 3, 0x23c(31)
    bl fn_8022F478
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082001C # bne .L_802C17D8
    lwz 29, 0x198(31)
    lwz 3, 0x23c(31)
    bl fn_8023EF50
    cmpw 3, 29
    .4byte 0x4182003C # beq .L_802C180C
    .4byte 0x480000CC # b .L_802C18A0
L_802C17D8:
    lwz 3, 0xd0(31)
    bl fn_8022F478
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x408200B8 # bne .L_802C18A0
    lwz 0, 0x240(31)
    cmpwi 0, 0xa
    .4byte 0x408200AC # bne .L_802C18A0
    lbz 0, 0xcc(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_802C180C
    .4byte 0x4800009C # b .L_802C18A0
    .4byte 0x48000098 # b .L_802C18A0
L_802C180C:
    lwz 0, 0x23c(31)
    lfs 3, 0x230(31)
    lfs 2, 0x234(31)
    slwi 3, 0, 30
    lfs 1, 0xc(31)
    lfs 0, 0x10(31)
    lbz 0, 0x2b5(31)
    lwz 4, 0x280(31)
    slwi 0, 0, 29
    stfs 3, 0x18(1)
    or 30, 3, 0
    lhz 5, 0x2a8(31)
    stfs 1, 0x20(1)
    rlwimi 30, 4, 24, 3, 7
    rlwimi 30, 5, 8, 8, 23
    lwz 6, 0x4(31)
    stfs 2, 0x1c(1)
    lwz 29, 0x238(31)
    rlwimi 30, 6, 0, 24, 31
    stfs 0, 0x24(1)
    lwz 5, 0x18(1)
    lwz 4, 0x1c(1)
    lwz 3, 0x20(1)
    lwz 0, 0x24(1)
    stw 5, 0x10(1)
    stw 4, 0x14(1)
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    bl GetRoomConfigRecord
    mr 6, 30
    mr 7, 29
    addi 4, 1, 0x8
    addi 5, 1, 0x10
    bl fn_802D6D70
    lis 3, 0x1
    subi 0, 3, 0x1
    sth 0, 0x2a8(31)
L_802C18A0:
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

