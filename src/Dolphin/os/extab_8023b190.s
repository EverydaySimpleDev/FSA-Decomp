.section extab, "a"
.balign 4
.global etb_8000B098
etb_8000B098:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000B098, 8

.section extabindex, "a"
.balign 4
.global eti_800193F0
eti_800193F0:
    .4byte fn_8023B190
    .4byte 0x0000009C
    .4byte etb_8000B098
.size eti_800193F0, 12

.text
.balign 4
.global fn_8023B190

# fn_8023B190(playerIdx, rectPtr, roomID) - CONFIRMED: the third gate
# `fn_801F2B7C` (extab_801f2b7c.s) checks, called as
# `fn_8023B190(playerIdx, &worldRect, this->0x4)`. Another member of
# the CONFIRMED "per-player capability predicate" family (see
# project_fsa_player_target_helper_decoded.md), but this variant
# preserves the caller's `rectPtr`/`roomID` in `r4`/`r5` untouched and
# passes them straight through to the delegate: `fn_802732C4(player,
# rectPtr, roomID)` (not decompiled) - the argument shape (a player, a
# rect, a room ID) strongly suggests "is this player currently
# standing inside this world-space rectangle." Defaults to false when
# any guard fails.
fn_8023B190:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80ED90D0 # lwz r7, lbl_8053AC90@sda21(r0)
    cmplwi 7, 0x0
    .4byte 0x4082000C # bne .L_8023B1B0
    li 3, 0x0
    .4byte 0x48000070 # b .L_8023B21C
L_8023B1B0:
    .4byte 0x4082000C # bne .L_8023B1BC
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023B1FC
L_8023B1BC:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023B1CC
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023B1FC
L_8023B1CC:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023B1DC
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023B1FC
L_8023B1DC:
    slwi 0, 3, 2
    add 6, 7, 0
    lwz 6, 0x4(6)
    cmplwi 6, 0x0
    .4byte 0x4082000C # bne .L_8023B1F8
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023B1FC
L_8023B1F8:
    lbz 0, 0xcac(6)
L_8023B1FC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023B218
    slwi 0, 3, 2
    add 3, 7, 0
    lwz 3, 0x4(3)
    bl fn_802732C4
    .4byte 0x48000008 # b .L_8023B21C
L_8023B218:
    li 3, 0x0
L_8023B21C:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
