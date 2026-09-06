.section extab, "a"
.balign 4
.global etb_8000AAF0
etb_8000AAF0:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000AAF0, 8

.section extabindex, "a"
.balign 4
.global eti_80018B74
eti_80018B74:
    .4byte fn_8022F9E4
    .4byte 0x0000009C
    .4byte etb_8000AAF0
.size eti_80018B74, 12

.text
.balign 4
.global fn_8022F9E4

# fn_8022F9E4(playerIndex) -> bool - NOT part of the room-data flag family
# (see extab_802d49a8.s/oscluster_802d7544.c/oscluster_802d800c.c) despite
# being flagged alongside them - this is a PER-PLAYER capability check.
# Bounds-checks `playerIndex` (0-3) against the CONFIRMED global
# player-manager `lbl_8053AC90` (header + 4 player-object pointers, see
# [[project_fsa_player_registry_discovery]]), reads that player's
# `->0xcac` capability-predicate flag byte (the SAME field gating the
# whole "per-player capability predicate" family documented in
# [[project_fsa_player_registry_discovery]]), and - if set - delegates to
# `fn_8025EFFC(playerObj)` (new) for a final confirm check. Reads as "can
# player N currently receive/interact with an item" - confirmed used in
# KEY0's update pickup-chain (see [[project_fsa_door_key0_full_depth]]).
fn_8022F9E4:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x810D90D0 # lwz r8, lbl_8053AC90@sda21(r0)
    cmplwi 8, 0x0
    .4byte 0x4082000C # bne .L_8022FA04
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022FA70
L_8022FA04:
    .4byte 0x4082000C # bne .L_8022FA10
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022FA50
L_8022FA10:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022FA20
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022FA50
L_8022FA20:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022FA30
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022FA50
L_8022FA30:
    slwi 0, 3, 2
    add 7, 8, 0
    lwz 7, 0x4(7)
    cmplwi 7, 0x0
    .4byte 0x4082000C # bne .L_8022FA4C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022FA50
L_8022FA4C:
    lbz 0, 0xcac(7)
L_8022FA50:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022FA6C
    slwi 0, 3, 2
    add 3, 8, 0
    lwz 3, 0x4(3)
    bl fn_8025EFFC
    .4byte 0x48000008 # b .L_8022FA70
L_8022FA6C:
    li 3, 0x0
L_8022FA70:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

