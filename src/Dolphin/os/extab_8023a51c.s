.section extab, "a"
.balign 4
.global etb_8000B020
etb_8000B020:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B020, 8

.section extabindex, "a"
.balign 4
.global eti_8001933C
eti_8001933C:
    .4byte fn_8023A51C
    .4byte 0x0000009C
    .4byte etb_8000B020
.size eti_8001933C, 12

.text
.balign 4
.global fn_8023A51C

# fn_8023A51C(playerIdx) - another member of the CONFIRMED "per-player
# capability predicate" family (see
# project_fsa_player_target_helper_decoded.md): standard bounds-check
# (0<=idx<4) + non-null player + `player->0xcac` master-enable flag,
# then delegates to `Player_HasAnyStatusFlagSet(player)` (a boolean predicate, not yet
# decompiled) and returns its result; false (0) if any guard fails.
# This is the "is this player slot valid to interact with" check
# RUPY's proximity scans (extab_8032abe0.s and siblings) run first,
# before the position/owner checks.
fn_8023A51C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023A53C
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023A5A8
L_8023A53C:
    .4byte 0x4082000C # bne .L_8023A548
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023A588
L_8023A548:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023A558
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023A588
L_8023A558:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023A568
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023A588
L_8023A568:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023A584
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023A588
L_8023A584:
    lbz 0, 0xcac(4)
L_8023A588:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023A5A4
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl Player_HasAnyStatusFlagSet
    .4byte 0x48000008 # b .L_8023A5A8
L_8023A5A4:
    li 3, 0x0
L_8023A5A8:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
