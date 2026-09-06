/*
 * TINK (vtable lbl_804A51E4). "Got hit" reaction handler, registry-scan
 * variant (sibling of fn_801E2610/fn_801E2A98, sharing the same tail -
 * see fn_801E2610 for that tail's full description). Resolves a nearby
 * object via the spatial registry (SpatialRegistry_GetBase/fn_801F82CC, excluding
 * self via this->0x198), checks a per-room blocked-flag byte in the
 * config record (config+0x31df) and a height gate against this->0x14,
 * then validates via fn_801CC8E4. On success (or on fn_801E1CF8 being
 * true), computes a delta position via psq loads against the target's
 * 0x3c/0x44 fields and applies knockback via the confirmed
 * fn_801F37AC (predecessor of fn_801F3D94), marking target->0x164=1 on
 * a real hit before running the shared hit-reaction tail.
 */
.section extab, "a"
.balign 4
.global etb_800089B0
etb_800089B0:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_800089B0, 8

.section extabindex, "a"
.balign 4
.global eti_80015EBC
eti_80015EBC:
    .4byte fn_801E284C
    .4byte 0x0000024C
    .4byte etb_800089B0
.size eti_80015EBC, 12

.text
.balign 4
.global fn_801E284C

fn_801E284C:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    li 31, 0x0
    stw 30, 0x28(1)
    mr 30, 3
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    bl SpatialRegistry_GetBase
    lbz 5, 0x195(30)
    mr 4, 30
    .4byte 0xC022C544 # lfs f1, lbl_8053F4E4@sda21(r0)
    bl fn_801F82CC
    mr. 29, 3
    .4byte 0x418001EC # blt .L_801E2A74
    lwz 0, 0x198(30)
    cmpw 29, 0
    .4byte 0x418201E0 # beq .L_801E2A74
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr. 28, 3
    .4byte 0x418201CC # beq .L_801E2A74
    lwz 29, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 29
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_801E28F0
    lfs 1, 0x14(30)
    .4byte 0xC002C548 # lfs f0, lbl_8053F4E8@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081001C # ble .L_801E28F0
    mr 3, 28
    bl fn_801CC8E4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801E28F0
    li 3, 0x0
    .4byte 0x48000070 # b .L_801E295C
L_801E28F0:
    mr 3, 30
    bl fn_801E1CF8
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_801E2908
    li 3, 0x1
    .4byte 0x48000058 # b .L_801E295C
L_801E2908:
    psq_l 1, 0xc(30), 0, 0
    addi 5, 1, 0x8
    lfs 0, 0x14(30)
    mr 3, 30
    li 6, 0x0
    li 8, -0x1
    stfs 0, 0x10(1)
    psq_st 1, 0x0(5), 0, 0
    psq_l 2, 0x8(5), 1, 0
    psq_l 0, 0x3c(28), 0, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x0(5), 0, 0
    psq_l 0, 0x44(28), 1, 0
    ps_sub 0, 2, 0
    psq_st 0, 0x8(5), 1, 0
    lwz 4, 0x118(28)
    lwz 7, 0x168(28)
    bl fn_801F37AC
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801E295C
    li 31, 0x1
L_801E295C:
    clrlwi. 0, 3, 24
    .4byte 0x41820114 # beq .L_801E2A74
    li 0, 0x1
    stb 0, 0x164(28)
    lwz 0, 0x248(30)
    cmpwi 0, 0xc
    .4byte 0x40820030 # bne .L_801E29A4
    lwz 0, 0x24c(30)
    cmpwi 0, 0x6
    .4byte 0x41800024 # blt .L_801E29A4
    mr 3, 30
    bl fn_801E1DE8
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_801E29A4
    mr 3, 30
    li 4, 0xd
    bl fn_801E1594
    .4byte 0x480000D4 # b .L_801E2A74
L_801E29A4:
    mr 3, 30
    bl fn_801E1CF8
    clrlwi. 0, 3, 24
    .4byte 0x418200C4 # beq .L_801E2A74
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x408200B8 # bne .L_801E2A74
    lwz 0, 0x230(30)
    lis 4, 0x4
    mr 3, 30
    li 5, 0x0
    oris 0, 0, 0x1
    addi 4, 4, 0x3d
    stw 0, 0x230(30)
    bl fn_801F0E34
    .4byte 0x886D9070 # lbz r3, lbl_8053AC30@sda21(r0)
    addi 3, 3, 0x1
    clrlwi 0, 3, 24
    .4byte 0x986D9070 # stb r3, lbl_8053AC30@sda21(r0)
    cmplwi 0, 0x5
    .4byte 0x4180000C # blt .L_801E2A00
    li 0, 0x0
    .4byte 0x980D9070 # stb r0, lbl_8053AC30@sda21(r0)
L_801E2A00:
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 12, 10
    stw 0, 0x230(30)
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 12, 12
    .4byte 0x40820060 # bne .L_801E2A74
    lwz 0, 0x2bc(30)
    cmpwi 0, 0x0
    .4byte 0x41800054 # blt .L_801E2A74
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x1a
    li 5, 0x0
    bl fn_801F0E34
    bl SpatialRegistry_GetBase
    lwz 4, 0x2bc(30)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801E2A58
    li 0, 0x0
    sth 0, 0x94(3)
    stb 0, 0x194(3)
L_801E2A58:
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x2bc(30)
    stw 0, 0x2c0(30)
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 17, 15
    stw 0, 0x230(30)
L_801E2A74:
    lwz 0, 0x34(1)
    mr 3, 31
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

