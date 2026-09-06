# fn_802F4B50 - GSCK: update() (0x298)
# Reuses fn_801F3668 (NAVI sway utility, x2), the player-validity family
# (fn_8023E724 x3), heavy per-room config access (GetRoomConfigRecord x5,
# fn_802D7F40 x4, fn_802D7F84), fn_80230498 (SWDL's most-repeated callee),
# fn_80230534/8023077C(x2)/80230FD0, fn_801F0D20, and fn_8030C210 (x2,
# unfamiliar). Per [[reference_fsa_actor_dispatch_table]] GSCK is
# independently confirmed elsewhere as sharing a vtable-variant pair with
# FGAM.
.section extab, "a"
.balign 4
.global etb_8000D3AC
etb_8000D3AC:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000D3AC, 8

.section extabindex, "a"
.balign 4
.global eti_8001C684
eti_8001C684:
    .4byte fn_802F4B50
    .4byte 0x00000298
    .4byte etb_8000D3AC
.size eti_8001C684, 12

.text
.balign 4
.global fn_802F4B50

fn_802F4B50:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stmw 27, 0x3c(1)
    mr 31, 3
    lwz 0, 0x230(3)
    lwz 29, 0x90(3)
    cmpwi 0, 0x2
    extrwi 28, 29, 5, 20
    .4byte 0x418200E4 # beq .L_802F4C58
    .4byte 0x40800014 # bge .L_802F4B8C
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_802F4B98
    .4byte 0x408000AC # bge .L_802F4C30
    .4byte 0x4800024C # b .L_802F4DD4
L_802F4B8C:
    cmpwi 0, 0x4
    .4byte 0x40800244 # bge .L_802F4DD4
    .4byte 0x480001B8 # b .L_802F4D4C
L_802F4B98:
    extrwi 30, 29, 5, 10
    extrwi 27, 29, 5, 15
    bl GetRoomConfigRecord
    extrwi 4, 29, 5, 5
    bl fn_802D7F40
    clrlwi. 0, 3, 24
    .4byte 0x41820224 # beq .L_802F4DD4
    bl GetRoomConfigRecord
    mr 4, 30
    bl fn_802D7F40
    clrlwi. 0, 3, 24
    .4byte 0x41820210 # beq .L_802F4DD4
    bl GetRoomConfigRecord
    mr 4, 27
    bl fn_802D7F40
    clrlwi. 0, 3, 24
    .4byte 0x418201FC # beq .L_802F4DD4
    bl GetRoomConfigRecord
    mr 4, 28
    bl fn_802D7F40
    clrlwi. 0, 3, 24
    .4byte 0x40820038 # bne .L_802F4C24
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_802F4C18
    li 0, 0x2
    li 3, 0x0
    stw 0, 0x230(31)
    li 0, 0x1e
    stw 3, 0x234(31)
    stw 0, 0x238(31)
    .4byte 0x480001C0 # b .L_802F4DD4
L_802F4C18:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x480001B4 # b .L_802F4DD4
L_802F4C24:
    mr 3, 31
    bl fn_801F3668
    .4byte 0x480001A8 # b .L_802F4DD4
L_802F4C30:
    bl fn_8023077C
    clrlwi. 0, 3, 24
    .4byte 0x4182019C # beq .L_802F4DD4
    li 0, 0x2
    li 3, 0x0
    stw 0, 0x230(31)
    li 0, 0x1e
    stw 3, 0x234(31)
    stw 0, 0x238(31)
    .4byte 0x48000180 # b .L_802F4DD4
L_802F4C58:
    li 28, 0x0
    addi 30, 1, 0x20
L_802F4C60:
    mr 3, 28
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 30
    lfs 0, 0x8(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    psq_st 1, 0x0(30), 0, 0
    stfs 0, 0x28(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFD0 # blt .L_802F4C60
    lwz 3, 0x238(31)
    subi 0, 3, 0x1
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x4082012C # bne .L_802F4DD4
    lwz 3, 0x234(31)
    addi 29, 1, 0x14
    li 28, 0x0
    lis 30, 0x1
    addi 0, 3, 0x1
    stw 0, 0x234(31)
L_802F4CC4:
    mr 3, 28
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 29
    lfs 0, 0x8(3)
    mr 3, 28
    li 6, 0xff
    li 7, -0x80
    psq_st 1, 0x0(29), 0, 0
    li 8, -0x80
    li 9, 0x1
    stfs 0, 0x1c(1)
    lwz 5, 0x234(31)
    addi 5, 5, 0xdb
    bl fn_80230498
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x40820010 # bne .L_802F4D18
    mr 3, 28
    addi 4, 30, 0x1
    bl fn_80230FD0
L_802F4D18:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FFA4 # blt .L_802F4CC4
    li 0, 0x2
    stw 0, 0x238(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0xd
    .4byte 0x408200A0 # bne .L_802F4DD4
    li 3, 0x3
    li 0, 0xa
    stw 3, 0x230(31)
    stw 0, 0x238(31)
    .4byte 0x4800008C # b .L_802F4DD4
L_802F4D4C:
    li 30, 0x0
    addi 29, 1, 0x8
L_802F4D54:
    mr 3, 30
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    mr 4, 29
    lfs 0, 0x8(3)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    psq_st 1, 0x0(29), 0, 0
    stfs 0, 0x10(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FFD0 # blt .L_802F4D54
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4082003C # bne .L_802F4DCC
    li 3, 0x0
    bl fn_80230534
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_802F4DD4
    bl GetRoomConfigRecord
    mr 4, 28
    li 5, 0x1
    bl fn_802D7F84
    mr 3, 31
    li 4, 0x3
    bl fn_801F0D20
    mr 3, 31
    bl fn_801F3668
    .4byte 0x4800000C # b .L_802F4DD4
L_802F4DCC:
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_802F4DD4:
    lmw 27, 0x3c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

