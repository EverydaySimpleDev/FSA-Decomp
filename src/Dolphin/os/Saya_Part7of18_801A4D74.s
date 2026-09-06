# SAYA cluster, part 7/18 (Track A byte-match + overview - 488B). Third
# of 4 state-handler bodies. Uses fn_801F0E34/fn_801F37AC/fn_801F4694,
# player-position fn_8023E724, per-room config GetRoomConfigRecord, plus
# unfamiliar fn_8023AA18/8023B520.
.section extab, "a"
.balign 4
.global etb_800079D4
etb_800079D4:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_800079D4, 8

.section extabindex, "a"
.balign 4
.global eti_8001483C
eti_8001483C:
    .4byte fn_801A4D74
    .4byte 0x000001E8
    .4byte etb_800079D4
.size eti_8001483C, 12

.text
.balign 4
.global fn_801A4D74

fn_801A4D74:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 27, 0x2c(1)
    mr 31, 3
    mr 27, 4
    mr 28, 5
    lwz 0, 0xb0(3)
    extrwi. 29, 0, 4, 20
    .4byte 0x4082000C # bne .L_801A4DA4
    li 3, 0x0
    .4byte 0x480001A8 # b .L_801A4F48
L_801A4DA4:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_801A4DD8
    lfs 1, 0x14(31)
    .4byte 0xC002B63C # lfs f0, lbl_8053E5DC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801A4DD8
    li 3, 0x0
    .4byte 0x48000174 # b .L_801A4F48
L_801A4DD8:
    lwz 4, 0x4(31)
    mr 3, 27
    mr 5, 28
    bl fn_8023AA18
    mr. 28, 3
    .4byte 0x4080000C # bge .L_801A4DF8
    li 3, 0x0
    .4byte 0x48000154 # b .L_801A4F48
L_801A4DF8:
    cmpwi 29, 0x3
    .4byte 0x4182012C # beq .L_801A4F28
    lwz 0, 0xd8(31)
    cmpwi 0, 0x0
    .4byte 0x40820128 # bne .L_801A4F30
    lwz 30, 0x108(31)
    bl fn_8023B520
    subf. 3, 3, 30
    stw 28, 0x10c(31)
    .4byte 0x41810098 # bgt .L_801A4EB4
    lwz 0, 0xbc(31)
    li 3, 0x0
    cmpwi 0, 0x3
    .4byte 0x41820088 # beq .L_801A4EB4
    li 0, 0x0
    .4byte 0xC002B62C # lfs f0, lbl_8053E5CC@sda21(r0)
    stw 0, 0x108(31)
    mr 3, 31
    .4byte 0xC022B628 # lfs f1, lbl_8053E5C8@sda21(r0)
    stw 28, 0x10c(31)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stw 28, 0xa0(31)
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    psq_st 1, 0x48(31), 0, 0
    stfs 0, 0x50(31)
    stw 0, 0xd8(31)
    stw 0, 0xdc(31)
    stw 0, 0xa4(31)
    bl fn_801F4694
    lwz 0, 0x4(31)
    cmpwi 0, 0x8
    .4byte 0x41800010 # blt .L_801A4E8C
    li 0, 0x1e
    stw 0, 0xa8(31)
    .4byte 0x4800000C # b .L_801A4E94
L_801A4E8C:
    li 0, 0x23
    stw 0, 0xa8(31)
L_801A4E94:
    .4byte 0x938D8540 # stw r28, lbl_8053A100@sda21(r0)
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x44(12)
    mtctr 12
    bctrl
    li 3, 0x28
    .4byte 0x48000098 # b .L_801A4F48
L_801A4EB4:
    stw 3, 0x108(31)
    mr 3, 28
    bl fn_8023E724
    mr 5, 3
    mr 3, 31
    li 4, 0x0
    li 6, 0x0
    li 7, 0x4
    li 8, -0x1
    bl fn_801F37AC
    lwz 0, 0xbc(31)
    cmpwi 0, 0x3
    .4byte 0x40820020 # bne .L_801A4F04
    .4byte 0xC002B634 # lfs f0, lbl_8053E5D4@sda21(r0)
    stfs 0, 0x14(1)
    stfs 0, 0x18(1)
    psq_l 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
L_801A4F04:
    cmpwi 28, 0x0
    .4byte 0x41800008 # blt .L_801A4F10
    .4byte 0x938D8540 # stw r28, lbl_8053A100@sda21(r0)
L_801A4F10:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x44(12)
    mtctr 12
    bctrl
    .4byte 0x4800000C # b .L_801A4F30
L_801A4F28:
    li 3, 0xff
    .4byte 0x4800001C # b .L_801A4F48
L_801A4F30:
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x1e
    li 5, 0x0
    bl fn_801F0E34
    li 3, 0x1e
L_801A4F48:
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

