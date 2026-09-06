.section extab, "a"
.balign 4
.global etb_8000D5CC
etb_8000D5CC:
    .4byte 0x680A0000
    .4byte 0x00000000
.size etb_8000D5CC, 8

.section extabindex, "a"
.balign 4
.global eti_8001C984
eti_8001C984:
    .4byte fn_803075AC
    .4byte 0x00000284
    .4byte etb_8000D5CC
.size eti_8001C984, 12

.text
.balign 4
.global fn_803075AC

# fn_803075AC(callerID, ownerID, posPtr, effectRef, unused1=0, mode,
# targetPlayerIdx=-1, kind, unused2=0, unused3=0) - the real "register a
# per-player shadow/carry-marker slot" primitive, confirmed used by both
# OKTA and TINK's draw() (see project_fsa_okta_actor_progress.md /
# project_fsa_tink_actor_progress.md) with callerID=this->0x198,
# ownerID=this->0x4, posPtr=this+0xc, effectRef=a per-actor-type static
# data pointer, mode=2, targetPlayerIdx=-1, kind=0 (OKTA) or 1 (TINK).
#
# Early-returns doing NOTHING if ownerID is a "normal" player index
# (0<=ownerID<8) - it only proceeds for ownerID==-1 (unowned/world) or
# ownerID>=8 (the CONFIRMED "captured/attached" sentinel convention,
# ownerID==8 specifically). For each of the 4 player slots: resolves
# the player's REAL linked/co-op-chain player index via the confirmed
# fn_8022EA0C ("resolve the linked/related player index" -
# project_fsa_player_target_helper_decoded.md), then checks whether
# that resolved player is "active" (bit test on
# (*lbl_8053AAF8)->0x82), and whether fn_8023DE58(resolvedPlayer) - a
# per-player field read (playerObj->0x3b4, see extab_8023de58.s) -
# equals our ownerID (OR targetPlayerIdx directly names this player,
# bypassing the lookup). This strongly refines fn_8023DE58's own
# "likely a per-player color/type ID" hedge: playerObj->0x3b4 is
# specifically compared against object owner-IDs including the
# captured/attached sentinel 8, consistent with it being "the ID of
# whatever this player is currently carrying/tracking."
#
# For each MATCHING player, indexes into a global 4-player table
# (lbl_80505438, 0x640=1600 bytes/player = 40 slots x 40 bytes) of
# per-player "shadow/marker" records. De-duplicates by callerID
# (slot->0x4): if a slot already registered for this exact caller
# exists (scanned across all 40), REFRESHES its position (paired-single
# copy from posPtr->0x0/0x4 to slot->0x10/0x14, plus posPtr->0x8 to
# slot->0x18) and effectRef (slot->0x1c). Otherwise finds the first
# FREE slot (slot->0x24==0) and fully populates it: mode, callerID,
# ownerID, targetPlayerIdx, position, effectRef, kind, and marks it
# occupied (slot->0x24=1). Returns 1 if any player's table was
# touched, else 0. This table is almost certainly drained/consumed
# once per frame elsewhere to actually render each player's personal
# shadow/carry-indicator markers - that consumer is not yet located.
fn_803075AC:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 19, 0xc(1)
    mr 20, 4
    cmpwi 20, 0x8
    lbz 25, 0x4b(1)
    lbz 26, 0x4f(1)
    mr 19, 3
    mr 21, 5
    mr 22, 6
    mr 23, 8
    mr 24, 9
    .4byte 0x40800014 # bge .L_803075F4
    cmpwi 20, -0x1
    .4byte 0x4182000C # beq .L_803075F4
    li 3, 0x0
    .4byte 0x4800022C # b .L_8030781C
L_803075F4:
    clrlwi 3, 7, 24
    lis 4, lbl_80505438@ha
    neg 0, 3
    clrlwi 29, 10, 24
    or 0, 0, 3
    addi 30, 4, lbl_80505438@l
    li 28, 0x0
    li 27, 0x0
    srwi 31, 0, 31
L_80307618:
    mr 3, 27
    bl fn_8022EA0C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 27
    lbz 4, 0x82(4)
    clrlwi 0, 0, 24
    and. 0, 4, 0
    .4byte 0x418201D0 # beq .L_80307808
    cmpw 24, 27
    .4byte 0x41820018 # beq .L_80307658
    cmpwi 24, 0x0
    .4byte 0x408001C0 # bge .L_80307808
    bl fn_8023DE58
    cmpw 20, 3
    .4byte 0x408201B4 # bne .L_80307808
L_80307658:
    li 0, 0x5
    mr 4, 30
    li 3, 0x0
    mtctr 0
L_80307668:
    lbz 0, 0x24(4)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80307680
    lwz 0, 0x4(4)
    cmpw 0, 19
    .4byte 0x418200F0 # beq .L_8030776C
L_80307680:
    lbz 0, 0x4c(4)
    addi 3, 3, 0x1
    addi 4, 4, 0x28
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_803076A0
    lwz 0, 0x4(4)
    cmpw 0, 19
    .4byte 0x418200D0 # beq .L_8030776C
L_803076A0:
    lbz 0, 0x4c(4)
    addi 3, 3, 0x1
    addi 4, 4, 0x28
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_803076C0
    lwz 0, 0x4(4)
    cmpw 0, 19
    .4byte 0x418200B0 # beq .L_8030776C
L_803076C0:
    lbz 0, 0x4c(4)
    addi 3, 3, 0x1
    addi 4, 4, 0x28
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_803076E0
    lwz 0, 0x4(4)
    cmpw 0, 19
    .4byte 0x41820090 # beq .L_8030776C
L_803076E0:
    lbz 0, 0x4c(4)
    addi 3, 3, 0x1
    addi 4, 4, 0x28
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80307700
    lwz 0, 0x4(4)
    cmpw 0, 19
    .4byte 0x41820070 # beq .L_8030776C
L_80307700:
    lbz 0, 0x4c(4)
    addi 3, 3, 0x1
    addi 4, 4, 0x28
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80307720
    lwz 0, 0x4(4)
    cmpw 0, 19
    .4byte 0x41820050 # beq .L_8030776C
L_80307720:
    lbz 0, 0x4c(4)
    addi 3, 3, 0x1
    addi 4, 4, 0x28
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80307740
    lwz 0, 0x4(4)
    cmpw 0, 19
    .4byte 0x41820030 # beq .L_8030776C
L_80307740:
    lbz 0, 0x4c(4)
    addi 3, 3, 0x1
    addi 4, 4, 0x28
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80307760
    lwz 0, 0x4(4)
    cmpw 0, 19
    .4byte 0x41820010 # beq .L_8030776C
L_80307760:
    addi 4, 4, 0x28
    addi 3, 3, 0x1
    .4byte 0x4200FF00 # bdnz .L_80307668
L_8030776C:
    cmpwi 3, 0x28
    .4byte 0x40800030 # bge .L_803077A0
    stw 20, 0x8(4)
    addi 3, 4, 0x10
    psq_l 1, 0x0(21), 0, 0
    li 28, 0x1
    lfs 0, 0x8(21)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x18(4)
    stw 22, 0x1c(4)
    stb 31, 0x21(4)
    stb 25, 0x22(4)
    .4byte 0x4800006C # b .L_80307808
L_803077A0:
    li 0, 0x28
    mr 4, 30
    mtctr 0
L_803077AC:
    lbz 0, 0x24(4)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_80307800
    stw 23, 0x0(4)
    addi 3, 4, 0x10
    psq_l 1, 0x0(21), 0, 0
    li 0, 0x1
    stw 19, 0x4(4)
    li 28, 0x1
    lfs 0, 0x8(21)
    stw 20, 0x8(4)
    stw 24, 0xc(4)
    psq_st 1, 0x0(3), 0, 0
    stfs 0, 0x18(4)
    stw 22, 0x1c(4)
    stb 31, 0x21(4)
    stb 29, 0x20(4)
    stb 26, 0x23(4)
    stb 25, 0x22(4)
    stb 0, 0x24(4)
    .4byte 0x4800000C # b .L_80307808
L_80307800:
    addi 4, 4, 0x28
    .4byte 0x4200FFA8 # bdnz .L_803077AC
L_80307808:
    addi 27, 27, 0x1
    addi 30, 30, 0x640
    cmpwi 27, 0x4
    .4byte 0x4180FE04 # blt .L_80307618
    mr 3, 28
L_8030781C:
    lmw 19, 0xc(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

