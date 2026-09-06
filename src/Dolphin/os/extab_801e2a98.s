/*
 * TINK (vtable lbl_804A51E4). "Got hit" reaction handler, comprehensive
 * variant covering all 4 slots of the confirmed 4-player-scan family
 * (fn_8023AE34/fn_8023AA18/fn_8023AC74/fn_8023AD54), each paired with a
 * matching validity predicate (fn_801CC820/fn_801CC538/fn_801CC640 -
 * finally giving concrete callers to that family, previously only
 * referenced from fn_801E1300). Runs the same shared hit-reaction tail
 * as fn_801E2610/fn_801E284C (state 0xc/0x24c>=6 transition, else
 * fn_801E1CF8 gate + cue + counter cycle + companion release), then
 * ADDITIONALLY applies knockback via fn_801F37AC using whichever scan
 * matched: the animation-cue position (fn_8023E724, flag forced to 4)
 * for the fn_8023AE34 match, fixed stack deltas (flag 0) for
 * fn_8023AA18, or a direct position delta against this->0xc/0x14 (flag
 * 0 or 3, gated by fn_801D0DD4) for the other two.
 */
.section extab, "a"
.balign 4
.global etb_800089B8
etb_800089B8:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_800089B8, 8

.section extabindex, "a"
.balign 4
.global eti_80015EC8
eti_80015EC8:
    .4byte fn_801E2A98
    .4byte 0x000002F0
    .4byte etb_800089B8
.size eti_80015EC8, 12

.text
.balign 4
.global fn_801E2A98

fn_801E2A98:
    stwu 1, -0x80(1)
    mflr 0
    .4byte 0xC002C534 # lfs f0, lbl_8053F4D4@sda21(r0)
    stw 0, 0x84(1)
    addi 4, 1, 0x34
    stmw 26, 0x68(1)
    mr 27, 3
    li 30, 0x0
    li 29, 0x0
    li 28, 0x0
    li 26, 0x0
    stfs 0, 0x44(1)
    stfs 0, 0x48(1)
    stfs 0, 0x4c(1)
    bl fn_801F317C
    lwz 4, 0x4(27)
    addi 3, 1, 0x34
    addi 5, 1, 0x8
    bl fn_8023AE34
    mr. 31, 3
    .4byte 0x41800014 # blt .L_801E2AFC
    addi 4, 1, 0x44
    bl fn_801CC820
    mr 30, 3
    .4byte 0x4800007C # b .L_801E2B74
L_801E2AFC:
    lwz 4, 0x4(27)
    addi 3, 1, 0x34
    addi 5, 1, 0x8
    bl fn_8023AA18
    mr. 31, 3
    .4byte 0x4180000C # blt .L_801E2B1C
    li 29, 0x1
    .4byte 0x4800005C # b .L_801E2B74
L_801E2B1C:
    lwz 4, 0x4(27)
    addi 3, 1, 0x34
    addi 5, 1, 0x8
    bl fn_8023AC74
    mr. 31, 3
    .4byte 0x4180001C # blt .L_801E2B4C
    addi 4, 1, 0x8
    addi 5, 1, 0x50
    li 6, 0x0
    bl fn_801CC538
    mr 28, 3
    .4byte 0x4800002C # b .L_801E2B74
L_801E2B4C:
    lwz 4, 0x4(27)
    addi 3, 1, 0x34
    addi 5, 1, 0x8
    bl fn_8023AD54
    mr. 31, 3
    .4byte 0x41800014 # blt .L_801E2B74
    addi 5, 1, 0x44
    li 4, 0x0
    bl fn_801CC640
    mr 26, 3
L_801E2B74:
    clrlwi. 0, 30, 24
    .4byte 0x40820014 # bne .L_801E2B8C
    clrlwi. 0, 28, 24
    .4byte 0x4082000C # bne .L_801E2B8C
    clrlwi. 0, 26, 24
    .4byte 0x4182010C # beq .L_801E2C94
L_801E2B8C:
    lwz 0, 0x248(27)
    cmpwi 0, 0xc
    .4byte 0x40820030 # bne .L_801E2BC4
    lwz 0, 0x24c(27)
    cmpwi 0, 0x6
    .4byte 0x41800024 # blt .L_801E2BC4
    mr 3, 27
    bl fn_801E1DE8
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_801E2BC4
    mr 3, 27
    li 4, 0xd
    bl fn_801E1594
    .4byte 0x480000D4 # b .L_801E2C94
L_801E2BC4:
    mr 3, 27
    bl fn_801E1CF8
    clrlwi. 0, 3, 24
    .4byte 0x418200C4 # beq .L_801E2C94
    lwz 0, 0x230(27)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x408200B8 # bne .L_801E2C94
    lwz 0, 0x230(27)
    lis 4, 0x4
    mr 3, 27
    li 5, 0x0
    oris 0, 0, 0x1
    addi 4, 4, 0x3d
    stw 0, 0x230(27)
    bl fn_801F0E34
    .4byte 0x886D9070 # lbz r3, lbl_8053AC30@sda21(r0)
    addi 3, 3, 0x1
    clrlwi 0, 3, 24
    .4byte 0x986D9070 # stb r3, lbl_8053AC30@sda21(r0)
    cmplwi 0, 0x5
    .4byte 0x4180000C # blt .L_801E2C20
    li 0, 0x0
    .4byte 0x980D9070 # stb r0, lbl_8053AC30@sda21(r0)
L_801E2C20:
    lwz 0, 0x230(27)
    rlwinm 0, 0, 0, 12, 10
    stw 0, 0x230(27)
    lwz 0, 0x230(27)
    rlwinm. 0, 0, 0, 12, 12
    .4byte 0x40820060 # bne .L_801E2C94
    lwz 0, 0x2bc(27)
    cmpwi 0, 0x0
    .4byte 0x41800054 # blt .L_801E2C94
    lis 4, 0x5
    mr 3, 27
    addi 4, 4, 0x1a
    li 5, 0x0
    bl fn_801F0E34
    bl SpatialRegistry_GetBase
    lwz 4, 0x2bc(27)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801E2C78
    li 0, 0x0
    sth 0, 0x94(3)
    stb 0, 0x194(3)
L_801E2C78:
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x2bc(27)
    stw 0, 0x2c0(27)
    lwz 0, 0x230(27)
    rlwinm 0, 0, 0, 17, 15
    stw 0, 0x230(27)
L_801E2C94:
    cmpwi 31, 0x0
    li 26, 0x0
    .4byte 0x418000D4 # blt .L_801E2D70
    mr 3, 31
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    clrlwi. 0, 29, 24
    lfs 0, 0x8(3)
    li 7, 0x0
    psq_st 1, 0x28(1), 0, 0
    stfs 0, 0x30(1)
    .4byte 0x4182000C # beq .L_801E2CCC
    li 7, 0x4
    .4byte 0x48000080 # b .L_801E2D48
L_801E2CCC:
    clrlwi. 0, 28, 24
    .4byte 0x41820020 # beq .L_801E2CF0
    lfs 2, 0x50(1)
    lfs 1, 0x54(1)
    lfs 0, 0x58(1)
    stfs 2, 0x28(1)
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    .4byte 0x4800005C # b .L_801E2D48
L_801E2CF0:
    lfs 0, 0x14(27)
    clrlwi. 0, 30, 24
    psq_l 1, 0xc(27), 0, 0
    stfs 0, 0x18(1)
    psq_l 3, 0x44(1), 0, 0
    psq_l 2, 0x18(1), 1, 0
    psq_l 0, 0x4c(1), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x10(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x1c(1), 0, 0
    psq_st 0, 0x18(1), 1, 0
    lfs 1, 0x1c(1)
    lfs 2, 0x18(1)
    lfs 0, 0x20(1)
    psq_st 3, 0x10(1), 0, 0
    stfs 2, 0x24(1)
    stfs 1, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 2, 0x30(1)
    .4byte 0x41820008 # beq .L_801E2D48
    li 7, 0x3
L_801E2D48:
    lwz 0, 0x230(27)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x41820020 # beq .L_801E2D70
    mr 3, 27
    mr 8, 31
    addi 5, 1, 0x28
    li 4, 0x0
    li 6, 0x0
    bl fn_801F37AC
    mr 26, 3
L_801E2D70:
    mr 3, 26
    lmw 26, 0x68(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

