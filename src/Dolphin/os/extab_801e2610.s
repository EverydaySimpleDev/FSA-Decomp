/*
 * TINK (vtable lbl_804A51E4). "Got hit" reaction handler, player-scan
 * variant: probes for a nearby player via fn_801F285C; if found and
 * fn_801E1CF8 (idle-pick gate) is true, validates the player via
 * fn_80235448/fn_80235310 and applies fn_801CB688(owner, &this->0xc, 0,
 * 0). Shares a tail pattern with fn_801E284C/fn_801E2A98 (its knockback-
 * and scan-triggered siblings): if state==0xc and this->0x24c>=6, gates
 * on fn_801E1DE8 and transitions to state 0xd via fn_801E1594; otherwise,
 * if fn_801E1CF8 passes and flag bit 0x230:15 is clear, queues an
 * animation cue (0x43D), cycles a global 0-4 visual-variant counter
 * (lbl_8053AC30), clears flag bits, and - if a companion reward is
 * pending (this->0x2bc>=0) - queues a second cue (0x51A) and releases it
 * via the spatial registry, resetting this->0x2bc/0x2c0/flags. The
 * fn_801E1CF8==false path instead loops the 4 players via fn_801F285C
 * checking fn_801E1D7C (state 11/12), notifying a matched player via
 * fn_8023B6CC + fn_802379E4(player, &this->0xc).
 */
.section extab, "a"
.balign 4
.global etb_800089A8
etb_800089A8:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_800089A8, 8

.section extabindex, "a"
.balign 4
.global eti_80015EB0
eti_80015EB0:
    .4byte fn_801E2610
    .4byte 0x0000023C
    .4byte etb_800089A8
.size eti_80015EB0, 12

.text
.balign 4
.global fn_801E2610

fn_801E2610:
    stwu 1, -0x20(1)
    mflr 0
    li 4, 0x0
    li 5, 0x0
    stw 0, 0x24(1)
    li 6, 0x1
    li 7, -0x1
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    bl fn_801F285C
    mr. 29, 3
    .4byte 0x418001E4 # blt .L_801E282C
    mr 3, 31
    bl fn_801E1CF8
    clrlwi. 0, 3, 24
    .4byte 0x41820148 # beq .L_801E27A0
    mr 3, 29
    bl fn_80235448
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_801E267C
    mr 3, 29
    bl fn_80235310
    clrlwi. 0, 3, 24
    .4byte 0x41820128 # beq .L_801E27A0
L_801E267C:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    bl fn_801CB688
    lwz 0, 0x248(31)
    cmpwi 0, 0xc
    .4byte 0x40820030 # bne .L_801E26C8
    lwz 0, 0x24c(31)
    cmpwi 0, 0x6
    .4byte 0x41800024 # blt .L_801E26C8
    mr 3, 31
    bl fn_801E1DE8
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_801E26C8
    mr 3, 31
    li 4, 0xd
    bl fn_801E1594
    .4byte 0x480000D4 # b .L_801E2798
L_801E26C8:
    mr 3, 31
    bl fn_801E1CF8
    clrlwi. 0, 3, 24
    .4byte 0x418200C4 # beq .L_801E2798
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x408200B8 # bne .L_801E2798
    lwz 0, 0x230(31)
    lis 4, 0x4
    mr 3, 31
    li 5, 0x0
    oris 0, 0, 0x1
    addi 4, 4, 0x3d
    stw 0, 0x230(31)
    bl fn_801F0E34
    .4byte 0x886D9070 # lbz r3, lbl_8053AC30@sda21(r0)
    addi 3, 3, 0x1
    clrlwi 0, 3, 24
    .4byte 0x986D9070 # stb r3, lbl_8053AC30@sda21(r0)
    cmplwi 0, 0x5
    .4byte 0x4180000C # blt .L_801E2724
    li 0, 0x0
    .4byte 0x980D9070 # stb r0, lbl_8053AC30@sda21(r0)
L_801E2724:
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 12, 10
    stw 0, 0x230(31)
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 12, 12
    .4byte 0x40820060 # bne .L_801E2798
    lwz 0, 0x2bc(31)
    cmpwi 0, 0x0
    .4byte 0x41800054 # blt .L_801E2798
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x1a
    li 5, 0x0
    bl fn_801F0E34
    bl SpatialRegistry_GetBase
    lwz 4, 0x2bc(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801E277C
    li 0, 0x0
    sth 0, 0x94(3)
    stb 0, 0x194(3)
L_801E277C:
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x2bc(31)
    stw 0, 0x2c0(31)
    lwz 0, 0x230(31)
    rlwinm 0, 0, 0, 17, 15
    stw 0, 0x230(31)
L_801E2798:
    li 30, 0x1
    .4byte 0x48000090 # b .L_801E282C
L_801E27A0:
    mr 3, 31
    bl fn_801E1D7C
    clrlwi. 0, 3, 24
    .4byte 0x41820080 # beq .L_801E282C
    li 29, 0x0
L_801E27B4:
    mr 3, 31
    mr 7, 29
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpw 29, 3
    .4byte 0x40820018 # bne .L_801E27E8
    mr 3, 29
    bl fn_8023B6CC
    mr 3, 29
    addi 4, 31, 0xc
    bl fn_802379E4
L_801E27E8:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FFC4 # blt .L_801E27B4
    lwz 0, 0x248(31)
    cmpwi 0, 0xc
    .4byte 0x4082002C # bne .L_801E2828
    lwz 0, 0x24c(31)
    cmpwi 0, 0x6
    .4byte 0x41800020 # blt .L_801E2828
    mr 3, 31
    bl fn_801E1DE8
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_801E2828
    mr 3, 31
    li 4, 0xd
    bl fn_801E1594
L_801E2828:
    li 30, 0x1
L_801E282C:
    lwz 0, 0x24(1)
    mr 3, 30
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

