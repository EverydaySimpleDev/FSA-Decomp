# SYKY cluster, part 8/10 (Track A byte-match + overview - 0xEA0=3744B,
# the largest piece of this actor). update() state handler #3. Uses
# the global PRNG advance, the confirmed lookup-table accessor
# fn_801EE8F4 (WARP family), fn_801F0D20/fn_801F666C/fn_801F6884/
# fn_801F68E0/SpatialRegistry_GetBase, the generic FourCC actor dispatcher
# fn_801F9484, the player validity/position family fn_8023DE58/
# Player_GetCapabilityFlagByIndex, the per-room config accessor GetRoomConfigRecord, sound
# fn_80458FF0/fn_80458508, plus an extensive set of unfamiliar
# helpers (ClearSessionFlag_0x6f/8022B194/8022F340/8022F478/8022F514/8022FD8C/
# 8022FE80/8022FEB8/802300EC/80230534/80230C6C/8023725C/802372F8/
# 802373EC/80239914/8037EFB4/8038470C/80384C58/803865B8/80388CAC/
# 8038AD24) not chased further given the function's size.
.section extab, "a"
.balign 4
.global etb_8000791C
etb_8000791C:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_8000791C, 8

.section extabindex, "a"
.balign 4
.global eti_80014728
eti_80014728:
    .4byte fn_8019F3AC
    .4byte 0x00000EA0
    .4byte etb_8000791C
.size eti_80014728, 12

.text
.balign 4
.global fn_8019F3AC

fn_8019F3AC:
    stwu 1, -0xf0(1)
    mflr 0
    .4byte 0xC002B51C # lfs f0, lbl_8053E4BC@sda21(r0)
    stw 0, 0xf4(1)
    stmw 26, 0xd8(1)
    mr 31, 3
    addi 3, 1, 0x90
    psq_l 3, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    lfs 4, 0xc(31)
    psq_st 3, 0xb8(1), 0, 0
    stfs 4, 0xac(1)
    lfs 1, 0xbc(1)
    lfs 5, 0x10(31)
    fsubs 0, 1, 0
    psq_st 3, 0xa0(1), 0, 0
    stfs 5, 0xb0(1)
    lfs 1, 0x14(31)
    stfs 0, 0xbc(1)
    stfs 1, 0xb4(1)
    lfs 0, 0x60(31)
    stfs 2, 0xc0(1)
    fadds 3, 0, 4
    stfs 0, 0x90(1)
    lfs 0, 0x64(31)
    stfs 2, 0xa8(1)
    fadds 2, 0, 5
    stfs 0, 0x94(1)
    lfs 0, 0x68(31)
    stfs 0, 0x98(1)
    fadds 1, 0, 4
    lfs 4, 0x6c(31)
    fadds 0, 4, 5
    stfs 4, 0x9c(1)
    stfs 3, 0x90(1)
    stfs 2, 0x94(1)
    stfs 1, 0x98(1)
    stfs 0, 0x9c(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 3, 0x70(31)
    lwz 0, 0x74(31)
    stw 3, 0x90(1)
    stw 0, 0x94(1)
    lfs 3, 0x90(1)
    lwz 3, 0x78(31)
    lwz 0, 0x7c(31)
    lfs 2, 0x94(1)
    stw 3, 0x98(1)
    stw 0, 0x9c(1)
    lfs 1, 0x98(1)
    lfs 4, 0xc(31)
    lfs 0, 0x9c(1)
    fadds 3, 3, 4
    fadds 1, 1, 4
    stfs 3, 0x90(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0x98(1)
    fadds 0, 0, 3
    stfs 2, 0x94(1)
    stfs 0, 0x9c(1)
    lwz 0, 0x230(31)
    cmplwi 0, 0x8
    .4byte 0x41810CF4 # bgt .L_801A01A4
    lis 3, jumptable_804A2B6C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A2B6C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    li 27, 0x0
    li 26, 0x0
L_8019F4D4:
    lwz 29, 0x4(31)
    mr 3, 26
    bl fn_8023DE58
    cmpw 29, 3
    .4byte 0x4182000C # beq .L_8019F4F0
    li 27, 0x1
    .4byte 0x48000010 # b .L_8019F4FC
L_8019F4F0:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFDC # blt .L_8019F4D4
L_8019F4FC:
    cmpwi 27, 0x0
    .4byte 0x41820138 # beq .L_8019F638
    lwz 4, 0x4(31)
    addi 3, 1, 0x90
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x250(31)
    lwz 3, 0x250(31)
    cmpwi 3, 0x0
    .4byte 0x41800C74 # blt .L_801A01A4
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820C68 # beq .L_801A01A4
    lwz 5, 0x198(31)
    addi 7, 1, 0x74
    lwz 6, 0x4(31)
    li 4, 0x342
    psq_l 1, 0xb8(1), 0, 0
    li 8, 0x0
    lfs 0, 0xc0(1)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x7c(1)
    lwz 3, 0x250(31)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820C34 # beq .L_801A01A4
    lwz 6, 0x250(31)
    mr 3, 31
    addi 4, 1, 0x44
    addi 5, 1, 0x1c
    addi 6, 6, 0x1
    bl fn_801EE8F4
    lfs 1, 0x1c(1)
    .4byte 0xC002B520 # lfs f0, lbl_8053E4C0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800094 # bge .L_8019F62C
    lfs 1, 0x44(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x48(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002B524 # lfs f0, lbl_8053E4C4@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xc8(1)
    lwz 0, 0xcc(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_8019F5E0
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_8019F5EC
L_8019F5E0:
    li 0, 0x3
    stw 0, 0x98(31)
    .4byte 0x48000044 # b .L_8019F62C
L_8019F5EC:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_8019F608
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_8019F608
    li 0, 0x1
    stw 0, 0x98(31)
    .4byte 0x48000028 # b .L_8019F62C
L_8019F608:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_8019F624
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_8019F624
    li 0, 0x2
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_8019F62C
L_8019F624:
    li 0, 0x0
    stw 0, 0x98(31)
L_8019F62C:
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x48000B70 # b .L_801A01A4
L_8019F638:
    lwz 4, 0x4(31)
    addi 3, 1, 0x90
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x250(31)
    lwz 3, 0x250(31)
    cmpwi 3, 0x0
    .4byte 0x41800B40 # blt .L_801A01A4
    lwz 5, 0x198(31)
    addi 7, 1, 0x68
    lwz 6, 0x4(31)
    li 4, 0x334
    psq_l 1, 0xb8(1), 0, 0
    li 8, 0x0
    lfs 0, 0xc0(1)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x70(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820B10 # beq .L_801A01A4
    lwz 6, 0x250(31)
    mr 3, 31
    addi 4, 1, 0x38
    addi 5, 1, 0x18
    addi 6, 6, 0x1
    bl fn_801EE8F4
    lfs 1, 0x18(1)
    .4byte 0xC002B520 # lfs f0, lbl_8053E4C0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800094 # bge .L_8019F750
    lfs 1, 0x38(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x3c(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002B524 # lfs f0, lbl_8053E4C4@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xc8(1)
    lwz 0, 0xcc(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_8019F704
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_8019F710
L_8019F704:
    li 0, 0x3
    stw 0, 0x98(31)
    .4byte 0x48000044 # b .L_8019F750
L_8019F710:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_8019F72C
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_8019F72C
    li 0, 0x1
    stw 0, 0x98(31)
    .4byte 0x48000028 # b .L_8019F750
L_8019F72C:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_8019F748
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_8019F748
    li 0, 0x2
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_8019F750
L_8019F748:
    li 0, 0x0
    stw 0, 0x98(31)
L_8019F750:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000A4C # b .L_801A01A4
    lwz 4, 0x4(31)
    addi 3, 1, 0x90
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x250(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820A24 # beq .L_801A01A4
    lwz 3, 0x250(31)
    bl fn_8037EFB4
    cmpwi 3, 0x1
    .4byte 0x4182002C # beq .L_8019F7BC
    .4byte 0x40800A10 # bge .L_801A01A4
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_8019F7A4
    .4byte 0x48000A04 # b .L_801A01A4
L_8019F7A4:
    lwz 3, 0x250(31)
    li 4, 0x335
    bl fn_8038470C
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x480009EC # b .L_801A01A4
L_8019F7BC:
    lwz 3, 0x250(31)
    li 4, 0x336
    bl fn_8038470C
    li 0, 0x8
    stw 0, 0x230(31)
    .4byte 0x480009D4 # b .L_801A01A4
    lwz 4, 0x4(31)
    addi 3, 1, 0x90
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x250(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x418209A8 # beq .L_801A01A4
    li 3, 0x0
    bl fn_80230534
    mr 3, 31
    li 4, 0x3a
    bl fn_801F0D20
    lis 4, 0x100
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    addi 4, 4, 0x7
    li 5, 0x1
    li 6, 0x0
    bl fn_80458FF0
    bl SetSessionFlag_0x6f
    li 0, 0x2
    li 7, 0x0
    stw 0, 0x98(31)
    li 0, 0x78
    mr 3, 31
    addi 4, 1, 0x2c
    stw 7, 0x24c(31)
    addi 5, 1, 0x14
    li 6, 0x2
    stw 7, 0x250(31)
    stw 7, 0x254(31)
    stw 7, 0x258(31)
    stw 7, 0x25c(31)
    stw 7, 0x260(31)
    stw 0, 0x23c(31)
    stw 7, 0x240(31)
    stw 7, 0x244(31)
    bl fn_801EE8F4
    lfs 1, 0x14(1)
    .4byte 0xC002B520 # lfs f0, lbl_8053E4C0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800094 # bge .L_8019F918
    lfs 1, 0x2c(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x30(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002B524 # lfs f0, lbl_8053E4C4@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xc8(1)
    lwz 0, 0xcc(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_8019F8CC
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_8019F8D8
L_8019F8CC:
    li 0, 0x3
    stw 0, 0x98(31)
    .4byte 0x48000044 # b .L_8019F918
L_8019F8D8:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_8019F8F4
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_8019F8F4
    li 0, 0x1
    stw 0, 0x98(31)
    .4byte 0x48000028 # b .L_8019F918
L_8019F8F4:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_8019F910
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_8019F910
    li 0, 0x2
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_8019F918
L_8019F910:
    li 0, 0x0
    stw 0, 0x98(31)
L_8019F918:
    li 3, 0x1
    li 0, 0x3
    stb 3, 0x28c(31)
    stw 0, 0x230(31)
    .4byte 0x4800087C # b .L_801A01A4
    stfs 4, 0xac(1)
    addi 3, 1, 0x90
    .4byte 0xC022B528 # lfs f1, lbl_8053E4C8@sda21(r0)
    stfs 3, 0xb0(1)
    .4byte 0xC002B52C # lfs f0, lbl_8053E4CC@sda21(r0)
    lfs 2, 0x14(31)
    stfs 2, 0xb4(1)
    stfs 1, 0xc(31)
    stfs 0, 0x10(31)
    lwz 4, 0x70(31)
    lwz 0, 0x74(31)
    stw 4, 0x90(1)
    stw 0, 0x94(1)
    lfs 3, 0x90(1)
    lwz 4, 0x78(31)
    lwz 0, 0x7c(31)
    lfs 2, 0x94(1)
    stw 4, 0x98(1)
    stw 0, 0x9c(1)
    lfs 1, 0x98(1)
    lfs 4, 0xc(31)
    lfs 0, 0x9c(1)
    fadds 3, 3, 4
    fadds 1, 1, 4
    stfs 3, 0x90(1)
    lfs 3, 0x10(31)
    fadds 2, 2, 3
    stfs 1, 0x98(1)
    fadds 0, 0, 3
    stfs 2, 0x94(1)
    stfs 0, 0x9c(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lfs 0, 0xac(1)
    li 26, 0x0
    mr 27, 26
    stfs 0, 0xc(31)
    lfs 0, 0xb0(1)
    stfs 0, 0x10(31)
    lfs 0, 0xb4(1)
    stfs 0, 0x14(31)
L_8019F9D4:
    mr 3, 26
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8019F9F8
    mr 3, 26
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800008 # bge .L_8019F9F8
    li 27, 0x1
L_8019F9F8:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFD4 # blt .L_8019F9D4
    cmpwi 27, 0x0
    .4byte 0x408200C8 # bne .L_8019FAD0
    bl GetRoomConfigRecord
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    lwz 6, 0xcc(3)
    lwz 7, 0x24(4)
    lwz 5, 0xd0(3)
    lbz 0, 0x7f5(7)
    lwz 4, 0xd4(3)
    lwz 3, 0xd8(3)
    cmplwi 0, 0x0
    stw 6, 0x80(1)
    stw 5, 0x84(1)
    stw 4, 0x88(1)
    stw 3, 0x8c(1)
    .4byte 0x4082003C # bne .L_8019FA7C
    li 0, 0x1
    li 3, 0x5
    stb 0, 0x7f4(7)
    li 0, 0x0
    lfs 1, 0x80(1)
    stw 3, 0x7f8(7)
    lfs 0, 0x84(1)
    stfs 1, 0x808(7)
    lfs 1, 0x88(1)
    stfs 0, 0x80c(7)
    lfs 0, 0x8c(1)
    stfs 1, 0x810(7)
    stfs 0, 0x814(7)
    stb 0, 0x7f6(7)
L_8019FA7C:
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x4082004C # bne .L_8019FAD0
    li 29, 0x0
    mr 30, 31
L_8019FA90:
    mr 3, 29
    bl fn_802373EC
    stw 3, 0x26c(30)
    mr 3, 29
    bl fn_8023725C
    stw 3, 0x27c(30)
    mr 3, 29
    li 4, 0x4
    li 5, 0x1
    bl fn_802372F8
    addi 29, 29, 0x1
    addi 30, 30, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFCC # blt .L_8019FA90
    li 0, 0x1
    stw 0, 0x260(31)
L_8019FAD0:
    li 26, 0x0
    lis 3, lbl_804C6330@ha
    mr 27, 26
    .4byte 0x3B8D8FF8 # li r28, lbl_8053ABB8@sda21
    addi 29, 3, lbl_804C6330@l
    li 30, 0x1
L_8019FAE8:
    mr 3, 26
    bl fn_8022F340
    slwi 0, 3, 2
    lwzx 0, 29, 0
    cmpwi 0, 0xa
    .4byte 0x41800008 # blt .L_8019FB04
    stb 30, 0x0(28)
L_8019FB04:
    lbz 0, 0x0(28)
    cmplwi 0, 0x1
    .4byte 0x41820014 # beq .L_8019FB20
    mr 3, 26
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8019FB24
L_8019FB20:
    addi 27, 27, 0x1
L_8019FB24:
    addi 26, 26, 0x1
    addi 28, 28, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFB8 # blt .L_8019FAE8
    cmpwi 27, 0x4
    .4byte 0x418000A0 # blt .L_8019FBD8
    lwz 3, 0x25c(31)
    addi 0, 3, 0x1
    stw 0, 0x25c(31)
    lwz 0, 0x25c(31)
    cmpwi 0, 0x46
    .4byte 0x40810088 # ble .L_8019FBD8
    li 0, -0x1
    stw 0, 0x2ac(31)
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x4182063C # beq .L_801A01A4
    li 26, 0x0
L_8019FB70:
    mr 3, 26
    bl fn_80230C6C
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFF0 # blt .L_8019FB70
    mr 3, 31
    li 4, 0x3b
    bl fn_801F0D20
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80458508
    li 0, 0x2
    li 3, 0x0
    stw 0, 0x98(31)
    li 0, 0x4
    stw 3, 0x24c(31)
    stw 3, 0x250(31)
    stw 3, 0x254(31)
    stw 3, 0x258(31)
    stw 3, 0x25c(31)
    stw 3, 0x23c(31)
    stw 3, 0x240(31)
    stw 3, 0x244(31)
    stb 3, 0x28c(31)
    stw 0, 0x230(31)
    .4byte 0x480005D0 # b .L_801A01A4
L_8019FBD8:
    lwz 0, 0x258(31)
    cmpwi 0, 0x0
    .4byte 0x4082006C # bne .L_8019FC4C
    lis 3, lbl_804C6330@ha
    li 27, 0x0
    addi 28, 3, lbl_804C6330@l
    mr 29, 27
L_8019FBF4:
    lwz 0, 0x0(28)
    cmpwi 0, 0x5
    .4byte 0x40800014 # bge .L_8019FC10
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_8019FC14
L_8019FC10:
    addi 29, 29, 0x1
L_8019FC14:
    addi 27, 27, 0x1
    addi 28, 28, 0x4
    cmpwi 27, 0x4
    .4byte 0x4180FFD4 # blt .L_8019FBF4
    cmpwi 29, 0x4
    .4byte 0x41800024 # blt .L_8019FC4C
    mr 3, 31
    li 4, 0x3f
    bl fn_801F0D20
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x1
    bl fn_80458508
    li 0, 0x1
    stw 0, 0x258(31)
L_8019FC4C:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x408200BC # bne .L_8019FD10
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022B4C0 # lfs f1, lbl_8053E460@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002B4E4 # lfs f0, lbl_8053E484@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8019FCB0
    .4byte 0xC002B4EC # lfs f0, lbl_8053E48C@sda21(r0)
    li 26, 0x1
    stfs 0, 0xac(1)
    .4byte 0x48000010 # b .L_8019FCBC
L_8019FCB0:
    .4byte 0xC002B4F0 # lfs f0, lbl_8053E490@sda21(r0)
    li 26, 0x0
    stfs 0, 0xac(1)
L_8019FCBC:
    .4byte 0xC002B530 # lfs f0, lbl_8053E4D0@sda21(r0)
    stfs 0, 0xb0(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x5359
    addi 6, 1, 0xac
    addi 4, 4, 0x4b59
    li 5, 0x0
    li 7, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 29, 3
    .4byte 0x4180001C # blt .L_8019FD08
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_8019FD08
    stw 26, 0x98(3)
L_8019FD08:
    li 0, 0x78
    stw 0, 0x23c(31)
L_8019FD10:
    lwz 0, 0x240(31)
    cmpwi 0, 0x0
    .4byte 0x408200DC # bne .L_8019FDF4
    .4byte 0xC022B4EC # lfs f1, lbl_8053E48C@sda21(r0)
    .4byte 0xC002B534 # lfs f0, lbl_8053E4D4@sda21(r0)
    stfs 1, 0xac(1)
    stfs 0, 0xb0(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x5359
    addi 6, 1, 0xac
    addi 4, 4, 0x4b59
    li 5, 0x0
    li 7, 0x2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 29, 3
    .4byte 0x41800020 # blt .L_8019FD74
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8019FD74
    li 0, 0x1
    stw 0, 0x98(3)
L_8019FD74:
    li 0, 0x3c
    stw 0, 0x240(31)
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x3
    .4byte 0x41800064 # blt .L_8019FDF4
    li 0, 0x0
    lis 3, 0x19
    stw 0, 0x250(31)
    addi 0, 3, 0x660d
    .4byte 0xC002B4C0 # lfs f0, lbl_8053E460@sda21(r0)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    .4byte 0xC042B538 # lfs f2, lbl_8053E4D8@sda21(r0)
    lwz 3, 0xb4(4)
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
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0xc8(1)
    lwz 3, 0xcc(1)
    addi 0, 3, 0x5a
    stw 0, 0x240(31)
L_8019FDF4:
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x408203A8 # bne .L_801A01A4
    .4byte 0xC022B4F0 # lfs f1, lbl_8053E490@sda21(r0)
    .4byte 0xC002B53C # lfs f0, lbl_8053E4DC@sda21(r0)
    stfs 1, 0xac(1)
    stfs 0, 0xb0(1)
    bl SpatialRegistry_GetBase
    lis 4, 0x5359
    addi 6, 1, 0xac
    addi 4, 4, 0x4b59
    li 5, 0x0
    li 7, 0x3
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 29, 3
    .4byte 0x41800020 # blt .L_8019FE58
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_8019FE58
    li 0, 0x0
    stw 0, 0x98(3)
L_8019FE58:
    li 0, 0x64
    stw 0, 0x244(31)
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    cmpwi 0, 0x3
    .4byte 0x41800330 # blt .L_801A01A4
    li 0, 0x0
    stw 0, 0x254(31)
    .4byte 0x48000324 # b .L_801A01A4
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x32
    .4byte 0x4081030C # ble .L_801A01A4
    li 0, 0x33
    stw 0, 0x24c(31)
    lwz 0, 0x2ac(31)
    cmpwi 0, 0x0
    .4byte 0x4080002C # bge .L_8019FED8
    li 26, 0x0
L_8019FEB4:
    mr 3, 26
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_8019FECC
    stw 26, 0x2ac(31)
    .4byte 0x48000010 # b .L_8019FED8
L_8019FECC:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FFE0 # blt .L_8019FEB4
L_8019FED8:
    lwz 3, 0x2ac(31)
    bl fn_8023DE58
    mr 4, 3
    lwz 3, 0x2ac(31)
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    lwz 0, 0x2ac(31)
    cmpw 0, 3
    .4byte 0x4082029C # bne .L_801A01A4
    lwz 5, 0x198(31)
    addi 7, 1, 0x5c
    lwz 6, 0x4(31)
    mr 3, 0
    psq_l 1, 0xb8(1), 0, 0
    li 4, 0x337
    lfs 0, 0xc0(1)
    li 8, 0x2
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x64(1)
    bl fn_8038AD24
    li 0, 0x5
    stw 0, 0x230(31)
    .4byte 0x48000264 # b .L_801A01A4
    lwz 3, 0x2ac(31)
    bl fn_8023DE58
    mr 4, 3
    lwz 3, 0x2ac(31)
    lwz 5, 0x198(31)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FE80
    lwz 3, 0x2ac(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820234 # beq .L_801A01A4
    lwz 3, 0x2ac(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x41820220 # beq .L_801A01A4
    bl SpatialRegistry_GetBase
    bl fn_801F6884
    li 29, 0x0
    mr 28, 31
L_8019FF98:
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_8019FFB8
    lwz 4, 0x26c(28)
    mr 3, 29
    lwz 5, 0x27c(28)
    bl fn_802372F8
L_8019FFB8:
    addi 29, 29, 0x1
    addi 28, 28, 0x4
    cmpwi 29, 0x4
    .4byte 0x4180FFD4 # blt .L_8019FF98
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    mr 3, 31
    li 4, 0xff
    lwz 12, 0x0(31)
    li 5, 0x1
    lwz 12, 0x30(12)
    mtctr 12
    bctrl
    bl ClearSessionFlag_0x6f
    li 0, 0x6
    stw 0, 0x230(31)
    .4byte 0x480001AC # b .L_801A01A4
    lwz 4, 0x4(31)
    addi 3, 1, 0x90
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    stw 3, 0x250(31)
    lwz 3, 0x250(31)
    cmpwi 3, 0x0
    .4byte 0x4180017C # blt .L_801A01A4
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x41820170 # beq .L_801A01A4
    lwz 5, 0x198(31)
    addi 7, 1, 0x50
    lwz 6, 0x4(31)
    li 4, 0x338
    psq_l 1, 0xb8(1), 0, 0
    li 8, 0x0
    lfs 0, 0xc0(1)
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x58(1)
    lwz 3, 0x250(31)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x4182013C # beq .L_801A01A4
    lwz 6, 0x250(31)
    mr 3, 31
    addi 4, 1, 0x20
    addi 5, 1, 0x10
    addi 6, 6, 0x1
    bl fn_801EE8F4
    lfs 1, 0x10(1)
    .4byte 0xC002B520 # lfs f0, lbl_8053E4C0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800094 # bge .L_801A0124
    lfs 1, 0x20(1)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x24(1)
    addi 3, 3, lbl_80534C00@l
    fneg 1, 1
    fneg 2, 0
    bl fn_80093340
    .4byte 0xC002B524 # lfs f0, lbl_8053E4C4@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0xc8(1)
    lwz 0, 0xcc(1)
    clrlwi 0, 0, 16
    cmplwi 0, 0x2000
    .4byte 0x4180000C # blt .L_801A00D8
    cmplwi 0, 0xe000
    .4byte 0x41800010 # blt .L_801A00E4
L_801A00D8:
    li 0, 0x3
    stw 0, 0x98(31)
    .4byte 0x48000044 # b .L_801A0124
L_801A00E4:
    cmplwi 0, 0x2000
    .4byte 0x41800018 # blt .L_801A0100
    cmplwi 0, 0x6000
    .4byte 0x40800010 # bge .L_801A0100
    li 0, 0x1
    stw 0, 0x98(31)
    .4byte 0x48000028 # b .L_801A0124
L_801A0100:
    cmplwi 0, 0x6000
    .4byte 0x41800018 # blt .L_801A011C
    cmplwi 0, 0xa000
    .4byte 0x41810010 # bgt .L_801A011C
    li 0, 0x2
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_801A0124
L_801A011C:
    li 0, 0x0
    stw 0, 0x98(31)
L_801A0124:
    li 0, 0x7
    stw 0, 0x230(31)
    .4byte 0x48000078 # b .L_801A01A4
    lwz 4, 0x4(31)
    addi 3, 1, 0x90
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x250(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182004C # beq .L_801A01A4
    li 3, 0x2
    li 0, 0x6
    stw 3, 0x98(31)
    stw 0, 0x230(31)
    .4byte 0x48000038 # b .L_801A01A4
    lwz 4, 0x4(31)
    addi 3, 1, 0x90
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x250(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801A01A4
    li 0, 0x0
    stw 0, 0x230(31)
L_801A01A4:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A01B8
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_801A01B8:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A01CC
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_801A01CC:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A01E0
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_801A01E0:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801A01F4
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_801A01F4:
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082003C # bne .L_801A0238
    lwz 4, 0x248(31)
    lis 3, lbl_804A2B08@ha
    addi 3, 3, lbl_804A2B08@l
    li 0, 0xf
    slwi 4, 4, 2
    lwzx 3, 3, 4
    stw 3, 0x264(31)
    stw 0, 0x238(31)
    lwz 3, 0x248(31)
    addi 0, 3, 0x1
    stw 0, 0x248(31)
    lwz 0, 0x248(31)
    clrlwi 0, 0, 30
    stw 0, 0x248(31)
L_801A0238:
    lmw 26, 0xd8(1)
    lwz 0, 0xf4(1)
    mtlr 0
    addi 1, 1, 0xf0
    blr

