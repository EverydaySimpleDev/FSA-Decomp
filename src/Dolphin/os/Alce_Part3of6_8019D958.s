# ALCE cluster, part 3/6 (Track A byte-match + overview - 772B).
# update() state handler #2. Same general shape as handler #1 (shares
# fn_8019DC5C, GetRoomConfigRecord/fn_802D79E8, fn_8013CC50), plus the player
# validity/position family fn_8023DE58/fn_8023E724/Player_GetCapabilityFlagByIndex (same
# accessors GNON's slot22 used).
.section extab, "a"
.balign 4
.global etb_800078BC
etb_800078BC:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800078BC, 8

.section extabindex, "a"
.balign 4
.global eti_80014698
eti_80014698:
    .4byte fn_8019D958
    .4byte 0x00000304
    .4byte etb_800078BC
.size eti_80014698, 12

.text
.balign 4
.global fn_8019D958

fn_8019D958:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC002B4A0 # lfs f0, lbl_8053E440@sda21(r0)
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(4)
    lfs 1, 0x10(4)
    fneg 1, 1
    stfs 1, 0x8(1)
    lfs 1, 0x20(4)
    fneg 1, 1
    stfs 0, 0x10(1)
    stfs 1, 0xc(1)
    lwz 0, 0x230(3)
    cmpwi 0, 0x2
    .4byte 0x418201F8 # beq .L_8019DB9C
    .4byte 0x40800298 # bge .L_8019DC40
    cmpwi 0, 0x1
    .4byte 0x40800008 # bge .L_8019D9B8
    .4byte 0x4800028C # b .L_8019DC40
L_8019D9B8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x1
    bl fn_80134FC4
    bl fn_8022ADE4
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x8e
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x8f
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x90
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x421
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x422
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x423
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x8
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x425
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x1
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x3
    li 5, 0x0
    bl fn_80134DE4
    li 29, 0x0
L_8019DB08:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_8019DB5C
    lwz 30, 0x4(31)
    mr 3, 29
    bl fn_8023DE58
    cmpw 30, 3
    .4byte 0x40820034 # bne .L_8019DB5C
    mr 3, 29
    bl fn_8023E724
    mr 4, 3
    lwz 3, 0x4(31)
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x424
    li 6, 0x1
    li 7, 0x4
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_8019DB5C:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFA4 # blt .L_8019DB08
    lwz 3, 0x4(31)
    addi 4, 1, 0x8
    .4byte 0xC022B4A4 # lfs f1, lbl_8053E444@sda21(r0)
    li 5, 0x550
    li 6, 0x1
    li 7, 0x7
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x480000A8 # b .L_8019DC40
L_8019DB9C:
    lis 4, 0x3
    li 5, 0x0
    addi 4, 4, 0x5b
    bl fn_801F0E34
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0xbe
    .4byte 0x4082003C # bne .L_8019DBFC
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC022B4A8 # lfs f1, lbl_8053E448@sda21(r0)
    .4byte 0xC042B4A0 # lfs f2, lbl_8053E440@sda21(r0)
    bl fn_802D79E8
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x5c
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 31
    bl fn_8019DC5C
    .4byte 0x48000048 # b .L_8019DC40
L_8019DBFC:
    mr 3, 31
    li 4, 0x4f
    bl fn_801F0D20
    lwz 0, 0x24c(31)
    cmpwi 0, 0x104
    .4byte 0x41800030 # blt .L_8019DC40
    li 0, 0x0
    li 4, 0x0
    stb 0, 0x11c(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80134FC4
    bl fn_8022ADCC
    .4byte 0x806D91B0 # lwz r3, lbl_8053AD70@sda21(r0)
    bl fn_8037AE30
    li 0, 0x0
    stw 0, 0x248(31)
    .4byte 0x980D8FF0 # stb r0, lbl_8053ABB0@sda21(r0)
L_8019DC40:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

