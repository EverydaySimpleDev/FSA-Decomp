# ZDCO cluster, part 3/4 (Track A byte-match + overview - 2584B).
# update() core. Uses fn_801EEC98/fn_801F0D20/fn_801F0E34/fn_801F6884/
# fn_801F68E0/SpatialRegistry_GetBase, the player validity/position family
# fn_8023DE58/fn_8023E724/Player_GetCapabilityFlagByIndex, the per-room config family
# GetRoomConfigRecord/fn_802D79E8/fn_802D8050/fn_802D9FF4/fn_802DBD60, plus an
# extensive set of unfamiliar helpers (fn_80119998/80119DD0/80138A30/
# 8022D534/8022DCD8/8022EA0C/8022FD8C/8022FE80/8022FEB8/802300EC/
# 80230188/80230C6C/80230FD0/80236554/80236B50/80384C58/803865B8/
# 80388CAC/8038AD24) not chased further given size.
.section extab, "a"
.balign 4
.global etb_80007BFC
etb_80007BFC:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_80007BFC, 8

.section extabindex, "a"
.balign 4
.global eti_80014B78
eti_80014B78:
    .4byte fn_801B3FC4
    .4byte 0x00000A18
    .4byte etb_80007BFC
.size eti_80014B78, 12

.text
.balign 4
.global fn_801B3FC4

fn_801B3FC4:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stw 31, 0x7c(1)
    stw 30, 0x78(1)
    stw 29, 0x74(1)
    stw 28, 0x70(1)
    .4byte 0xC002BA20 # lfs f0, lbl_8053E9C0@sda21(r0)
    li 0, -0x1
    stw 0, 0x10(1)
    mr 29, 3
    stfs 0, 0xc(1)
    lwz 0, 0x230(3)
    cmplwi 0, 0xa
    .4byte 0x41810974 # bgt .L_801B4978
    lis 4, jumptable_804A37B0@ha
    slwi 0, 0, 2
    addi 4, 4, jumptable_804A37B0@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    lwz 0, 0x25c(29)
    cmpwi 0, 0x0
    .4byte 0x41820950 # beq .L_801B4978
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_801B4070
    lwz 28, 0x254(29)
    cmpwi 28, 0x0
    .4byte 0x41820018 # beq .L_801B4064
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_801B4064:
    li 0, 0x1
    sth 0, 0x94(29)
    .4byte 0x4800090C # b .L_801B4978
L_801B4070:
    li 0, 0x0
    addi 3, 1, 0x48
    sth 0, 0x94(29)
    li 6, 0x0
    li 7, 0x0
    lfs 1, 0x70(29)
    stfs 1, 0x48(1)
    lfs 4, 0x74(29)
    stfs 4, 0x4c(1)
    lfs 2, 0x78(29)
    stfs 2, 0x50(1)
    lfs 3, 0x7c(29)
    stfs 3, 0x54(1)
    lfs 0, 0x26c(29)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x48(1)
    lfs 2, 0x270(29)
    fadds 1, 4, 2
    stfs 0, 0x50(1)
    fadds 0, 3, 2
    stfs 1, 0x4c(1)
    stfs 0, 0x54(1)
    lwz 4, 0x4(29)
    lwz 5, 0x198(29)
    bl fn_8022FEB8
    lwz 3, 0x198(29)
    bl fn_8022FD8C
    stw 3, 0x248(29)
    lwz 3, 0x248(29)
    cmpwi 3, 0x0
    .4byte 0x4180088C # blt .L_801B4978
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820880 # beq .L_801B4978
    psq_l 0, 0xc(29), 0, 0
    lis 3, lbl_804A3740@ha
    lfs 2, 0x14(29)
    addi 7, 1, 0x20
    psq_st 0, 0x3c(1), 0, 0
    addi 4, 3, lbl_804A3740@l
    .4byte 0xC002BA24 # lfs f0, lbl_8053E9C4@sda21(r0)
    li 8, 0x0
    lfs 1, 0x40(1)
    lwz 5, 0x198(29)
    fsubs 0, 1, 0
    lwz 6, 0x4(29)
    stfs 2, 0x44(1)
    stfs 0, 0x40(1)
    psq_l 0, 0x3c(1), 0, 0
    stfs 2, 0x28(1)
    psq_st 0, 0x0(7), 0, 0
    lwz 0, 0x258(29)
    lwz 3, 0x248(29)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820820 # beq .L_801B4978
    li 0, 0x3
    stw 0, 0x230(29)
    .4byte 0x48000814 # b .L_801B4978
    lwz 0, 0x25c(29)
    cmpwi 0, 0x0
    .4byte 0x41820808 # beq .L_801B4978
    lwz 12, 0x0(3)
    li 4, 0xff
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    li 0, 0xa
    stw 0, 0x230(29)
    .4byte 0x480007E4 # b .L_801B4978
    lwz 0, 0x25c(29)
    cmpwi 0, 0x0
    .4byte 0x418207D8 # beq .L_801B4978
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_801B41E8
    lwz 28, 0x254(29)
    cmpwi 28, 0x0
    .4byte 0x41820018 # beq .L_801B41DC
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_801B41DC:
    li 0, 0x1
    sth 0, 0x94(29)
    .4byte 0x48000794 # b .L_801B4978
L_801B41E8:
    li 0, 0x0
    sth 0, 0x94(29)
    .4byte 0x48000788 # b .L_801B4978
    lwz 3, 0x248(29)
    li 6, 0x1
    lwz 4, 0x4(29)
    li 7, 0x0
    lwz 5, 0x198(29)
    bl fn_8022FE80
    lwz 3, 0x248(29)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820760 # beq .L_801B4978
    lwz 3, 0x248(29)
    lwz 4, 0x198(29)
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x4182074C # beq .L_801B4978
    li 0, 0x0
    stw 0, 0x230(29)
    .4byte 0x48000740 # b .L_801B4978
    lwz 0, 0x25c(29)
    cmpwi 0, 0x0
    .4byte 0x41820734 # beq .L_801B4978
    lwz 4, 0x198(29)
    addi 6, 1, 0x10
    addi 7, 1, 0xc
    li 5, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x250(29)
    cmpwi 0, 0x3
    .4byte 0x40820024 # bne .L_801B4294
    lwz 0, 0x10(1)
    cmpwi 0, 0x0
    .4byte 0x418006FC # blt .L_801B4978
    lfs 1, 0xc(1)
    .4byte 0xC002BA28 # lfs f0, lbl_8053E9C8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408101D4 # ble .L_801B4460
    .4byte 0x480006E8 # b .L_801B4978
L_801B4294:
    li 31, 0x0
    li 30, 0x0
L_801B429C:
    mr 3, 31
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820180 # beq .L_801B4428
    mr 3, 31
    bl fn_8022EA0C
    cmpw 31, 3
    .4byte 0x40820170 # bne .L_801B4428
    lwz 28, 0x4(29)
    mr 3, 31
    bl fn_8023DE58
    cmpw 28, 3
    .4byte 0x4082015C # bne .L_801B4428
    mr 3, 31
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082014C # bne .L_801B4428
    mr 3, 31
    bl fn_8022DCD8
    clrlwi. 0, 3, 24
    .4byte 0x4082013C # bne .L_801B4428
    mr 3, 31
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x4082012C # bne .L_801B4428
    mr 3, 31
    bl fn_8022D534
    clrlwi. 0, 3, 24
    .4byte 0x4082011C # bne .L_801B4428
    mr 3, 31
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 31
    lfs 0, 0xc(29)
    fsubs 31, 1, 0
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(29)
    .4byte 0xC002BA20 # lfs f0, lbl_8053E9C0@sda21(r0)
    fsubs 1, 2, 1
    fmuls 1, 1, 1
    fmadds 4, 31, 31, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_801B4394
    frsqrte 1, 4
    .4byte 0xC862BA30 # lfd f3, lbl_8053E9D0@sda21(r0)
    .4byte 0xC842BA38 # lfd f2, lbl_8053E9D8@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_801B4418
L_801B4394:
    .4byte 0xC802BA40 # lfd f0, lbl_8053E9E0@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_801B43AC
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_801B4418
L_801B43AC:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_801B43D4
    .4byte 0x40800040 # bge .L_801B4404
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_801B43EC
    .4byte 0x48000034 # b .L_801B4404
L_801B43D4:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801B43E4
    li 0, 0x1
    .4byte 0x48000028 # b .L_801B4408
L_801B43E4:
    li 0, 0x2
    .4byte 0x48000020 # b .L_801B4408
L_801B43EC:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_801B43FC
    li 0, 0x5
    .4byte 0x48000010 # b .L_801B4408
L_801B43FC:
    li 0, 0x3
    .4byte 0x48000008 # b .L_801B4408
L_801B4404:
    li 0, 0x4
L_801B4408:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_801B4418
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_801B4418:
    .4byte 0xC002BA48 # lfs f0, lbl_8053E9E8@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800008 # bge .L_801B4428
    addi 30, 30, 0x1
L_801B4428:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FE6C # blt .L_801B429C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpw 30, 3
    .4byte 0x41800538 # blt .L_801B4978
    lwz 0, 0x10(1)
    cmpwi 0, 0x0
    .4byte 0x4180052C # blt .L_801B4978
    lfs 1, 0xc(1)
    .4byte 0xC002BA28 # lfs f0, lbl_8053E9C8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4181051C # bgt .L_801B4978
L_801B4460:
    lwz 0, 0x258(29)
    cmpwi 0, 0x0
    .4byte 0x40820030 # bne .L_801B4498
    lwz 28, 0x254(29)
    cmpwi 28, 0x0
    .4byte 0x41820018 # beq .L_801B448C
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_801B448C:
    li 0, 0x0
    stb 0, 0x11c(29)
    .4byte 0x480004E4 # b .L_801B4978
L_801B4498:
    li 0, 0x5
    stw 0, 0x230(29)
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x418204CC # beq .L_801B4978
    li 28, 0x0
L_801B44B4:
    mr 3, 28
    bl fn_80230C6C
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFF0 # blt .L_801B44B4
    li 0, 0x6
    stw 0, 0x230(29)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(29)
    .4byte 0xC002BA4C # lfs f0, lbl_8053E9EC@sda21(r0)
    lwz 3, 0x24(3)
    fsubs 2, 1, 0
    stfs 1, 0x5c(1)
    lbz 0, 0x840(3)
    lfs 3, 0xc(29)
    lfs 0, 0x14(29)
    cmplwi 0, 0x0
    stfs 3, 0x58(1)
    stfs 0, 0x60(1)
    stfs 2, 0x5c(1)
    .4byte 0x40820030 # bne .L_801B4534
    li 0, 0x1
    .4byte 0xC022BA50 # lfs f1, lbl_8053E9F0@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002BA54 # lfs f0, lbl_8053E9F4@sda21(r0)
    stfs 3, 0x84c(3)
    stfs 3, 0x844(3)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801B4534:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B4558
    li 0, 0x1
    .4byte 0xC002BA58 # lfs f0, lbl_8053E9F8@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B4558:
    .4byte 0xC042BA60 # lfs f2, lbl_8053EA00@sda21(r0)
    addi 3, 1, 0x2c
    .4byte 0xC062BA48 # lfs f3, lbl_8053E9E8@sda21(r0)
    li 6, 0x0
    stfs 2, 0x2c(1)
    li 7, 0x0
    .4byte 0xC0A2BA20 # lfs f5, lbl_8053E9C0@sda21(r0)
    stfs 2, 0x30(1)
    .4byte 0xC082BA5C # lfs f4, lbl_8053E9FC@sda21(r0)
    stfs 3, 0x34(1)
    stfs 3, 0x38(1)
    lfs 1, 0x26c(29)
    stfs 5, 0x5c(1)
    fadds 0, 2, 1
    fadds 1, 3, 1
    stfs 5, 0x60(1)
    stfs 0, 0x2c(1)
    lfs 0, 0x270(29)
    stfs 5, 0x58(1)
    fadds 2, 2, 0
    fadds 0, 3, 0
    stfs 1, 0x34(1)
    stfs 2, 0x30(1)
    stfs 0, 0x38(1)
    stfs 4, 0x5c(1)
    lwz 4, 0x4(29)
    lwz 5, 0x198(29)
    bl fn_8022FEB8
    lwz 3, 0x198(29)
    bl fn_8022FD8C
    stw 3, 0x248(29)
    lwz 0, 0x248(29)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_801B45E8
    li 0, 0x0
    stw 0, 0x248(29)
L_801B45E8:
    lwz 5, 0x198(29)
    lis 3, lbl_804A3740@ha
    lwz 6, 0x4(29)
    addi 7, 1, 0x14
    psq_l 1, 0x58(1), 0, 0
    addi 4, 3, lbl_804A3740@l
    lfs 0, 0x60(1)
    li 8, 0x4102
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x1c(1)
    lwz 0, 0x258(29)
    lwz 3, 0x248(29)
    slwi 0, 0, 2
    lwzx 4, 4, 0
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820350 # beq .L_801B4978
    li 0, 0x7
    stw 0, 0x230(29)
    .4byte 0x48000344 # b .L_801B4978
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 1, 0x10(29)
    .4byte 0xC002BA4C # lfs f0, lbl_8053E9EC@sda21(r0)
    lwz 3, 0x24(3)
    fsubs 2, 1, 0
    stfs 1, 0x5c(1)
    lbz 0, 0x840(3)
    lfs 3, 0xc(29)
    lfs 0, 0x14(29)
    cmplwi 0, 0x0
    stfs 3, 0x58(1)
    stfs 0, 0x60(1)
    stfs 2, 0x5c(1)
    .4byte 0x40820030 # bne .L_801B469C
    li 0, 0x1
    .4byte 0xC022BA50 # lfs f1, lbl_8053E9F0@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002BA54 # lfs f0, lbl_8053E9F4@sda21(r0)
    stfs 3, 0x84c(3)
    stfs 3, 0x844(3)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801B469C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B46C0
    li 0, 0x1
    .4byte 0xC002BA58 # lfs f0, lbl_8053E9F8@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B46C0:
    lwz 3, 0x248(29)
    li 6, 0x0
    lwz 4, 0x4(29)
    li 7, 0x0
    lwz 5, 0x198(29)
    bl fn_8022FE80
    lwz 3, 0x248(29)
    lwz 4, 0x198(29)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820290 # beq .L_801B4978
    lwz 0, 0x250(29)
    cmpwi 0, 0x3
    .4byte 0x40820038 # bne .L_801B472C
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    lwz 28, 0x254(29)
    cmpwi 28, 0x0
    .4byte 0x41820018 # beq .L_801B4720
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_801B4720:
    li 0, 0x0
    stb 0, 0x11c(29)
    .4byte 0x48000250 # b .L_801B4978
L_801B472C:
    li 3, 0x5a
    li 0, 0x8
    stw 3, 0x234(29)
    stw 0, 0x230(29)
    .4byte 0x4800023C # b .L_801B4978
    lwz 0, 0x234(29)
    cmpwi 0, 0x0
    .4byte 0x41820054 # beq .L_801B479C
    bl GetRoomConfigRecord
    lwz 4, 0x4(29)
    li 5, 0x0
    .4byte 0xC022BA64 # lfs f1, lbl_8053EA04@sda21(r0)
    .4byte 0xC042BA20 # lfs f2, lbl_8053E9C0@sda21(r0)
    bl fn_802D79E8
    mr 3, 29
    li 4, 0x50
    bl fn_801F0D20
    lwz 0, 0x234(29)
    cmpwi 0, 0x1
    .4byte 0x40820200 # bne .L_801B4978
    mr 3, 29
    li 4, 0xff
    lwz 12, 0x0(29)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    .4byte 0x480001E0 # b .L_801B4978
L_801B479C:
    lwz 12, 0x0(3)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x408201C8 # bne .L_801B4978
    bl GetRoomConfigRecord
    lwz 4, 0x4(29)
    li 5, 0x0
    .4byte 0xC022BA64 # lfs f1, lbl_8053EA04@sda21(r0)
    .4byte 0xC042BA20 # lfs f2, lbl_8053E9C0@sda21(r0)
    bl fn_802D79E8
    mr 3, 29
    li 4, 0x50
    bl fn_801F0D20
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    lwz 28, 0x254(29)
    cmpwi 28, 0x0
    .4byte 0x41820018 # beq .L_801B4800
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, 0x1
    li 6, 0xff
    bl fn_802D8050
L_801B4800:
    bl fn_80119DD0
    li 4, 0xc8
    li 5, 0x0
    li 6, 0x2
    li 7, 0x0
    li 8, 0x0
    li 9, 0x64
    li 10, 0x0
    bl fn_80119998
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0xb7
    li 5, 0x0
    bl fn_801F0E34
    li 28, 0x0
    lis 30, 0x1
L_801B4840:
    mr 3, 28
    addi 4, 30, 0x3
    bl fn_80230FD0
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFEC # blt .L_801B4840
    li 3, 0xc8
    li 0, 0x9
    stw 3, 0x234(29)
    stw 0, 0x230(29)
    .4byte 0x48000110 # b .L_801B4978
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lfs 2, 0xc(29)
    lwz 4, 0x24(3)
    lfs 1, 0x10(29)
    lbz 0, 0x7f5(4)
    lfs 0, 0x14(29)
    cmplwi 0, 0x0
    stfs 2, 0x58(1)
    stfs 1, 0x5c(1)
    stfs 0, 0x60(1)
    .4byte 0x40820034 # bne .L_801B48C8
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0xc(29)
    stfs 0, 0x7fc(4)
    lfs 0, 0x10(29)
    stfs 0, 0x800(4)
    lfs 0, 0x14(29)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
L_801B48C8:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801B48EC
    li 0, 0x1
    .4byte 0xC002BA58 # lfs f0, lbl_8053E9F8@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801B48EC:
    bl GetRoomConfigRecord
    lwz 4, 0x4(29)
    li 5, 0x0
    .4byte 0xC022BA64 # lfs f1, lbl_8053EA04@sda21(r0)
    .4byte 0xC042BA20 # lfs f2, lbl_8053E9C0@sda21(r0)
    bl fn_802D79E8
    mr 3, 29
    li 4, 0x50
    bl fn_801F0D20
    lwz 0, 0x234(29)
    cmpwi 0, 0x0
    .4byte 0x40820060 # bne .L_801B4978
    li 30, 0x0
L_801B4920:
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_801B4954
    lwz 28, 0x4(29)
    mr 3, 30
    bl fn_8023DE58
    cmpw 28, 3
    .4byte 0x40820014 # bne .L_801B4954
    mr 3, 30
    li 4, 0x20
    li 5, 0x0
    bl fn_80236554
L_801B4954:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFC4 # blt .L_801B4920
    bl GetRoomConfigRecord
    li 4, 0x0
    li 5, 0x9
    bl fn_802D9FF4
    bl GetRoomConfigRecord
    bl fn_802DBD60
L_801B4978:
    lwz 3, 0x234(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B498C
    subi 0, 3, 0x1
    stw 0, 0x234(29)
L_801B498C:
    lwz 3, 0x238(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B49A0
    subi 0, 3, 0x1
    stw 0, 0x238(29)
L_801B49A0:
    lwz 3, 0x23c(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801B49B4
    subi 0, 3, 0x1
    stw 0, 0x23c(29)
L_801B49B4:
    psq_l 31, 0x88(1), 0, 0
    lwz 0, 0x94(1)
    lfd 31, 0x80(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    lwz 29, 0x74(1)
    lwz 28, 0x70(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

