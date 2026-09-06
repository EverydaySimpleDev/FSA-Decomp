# fn_8023A240() - no arguments. Scans the CONFIRMED global player
# manager `lbl_8053AC90` (see project_fsa_player_target_helper_decoded.md)
# for the FIRST active player slot (0-3, `player->0xcac` set) that also
# passes `Player_GetLinkedHandleOrInvalid(player)` (an eligibility/priority check, not yet
# decompiled - true when it returns >= 0), returning that player's SLOT
# INDEX. Returns -1 if no player qualifies.
#
# CORRECTION: RUPY's helpers (extab_8032b7c0.s, extab_8032bb90.s)
# describe this as classifying a direction into "5 buckets" - that
# characterization is WRONG. This function takes no position/direction
# input at all; it returns a PLAYER SLOT INDEX (0-3, or -1), and the
# callers' 4 direction-constant blocks are fixed PER-SLOT push
# directions (slot 0/1/2/3 each get one hardcoded direction), not a
# spatial angle classification. The apparent "5th, >=4" case in those
# callers is dead code that can never be reached (this function's
# range is exactly -1..3).
#
# CORRECTION 2 (real-C++ attempt): re-reading the raw bytes shows the
# SUCCESS path actually returns Player_GetLinkedHandleOrInvalid's
# result directly (`bl Player_GetLinkedHandleOrInvalid; cmpwi 3,0; blt
# retry; b end;` - r3 is untouched between the call and the branch to
# end), NOT the loop counter/slot index as the original header claimed -
# only the failure path returns the literal -1 sentinel.
#
# Attempted real-C++ promotion (Phase 4): landed 0x1c (28) bytes SHORT -
# writing the player-pointer lookup as the SAME indexing expression
# twice (once for the flag-gate check, once again for the
# Player_GetLinkedHandleOrInvalid call argument) let MWCC eliminate the
# 2nd computation as a redundant common subexpression, even across the
# intervening `if (flag)` branch. Matches the CONFIRMED CSE-elimination
# wall (see fn_8022C274 family, project log) - 2nd instance in a
# DIFFERENT function shape (a loop, not a flat guard chain). Deferred
# without further attempts since the root cause is already established.
.section extab, "a"
.balign 4
.global etb_8000B000
etb_8000B000:
    .4byte 0x10080000
    .4byte 0x00000000
.size etb_8000B000, 8

.section extabindex, "a"
.balign 4
.global eti_8001930C
eti_8001930C:
    .4byte fn_8023A240
    .4byte 0x000000CC
    .4byte etb_8000B000
.size eti_8001930C, 12

.text
.balign 4
.global fn_8023A240

fn_8023A240:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    .4byte 0x800D90D0 # lwz r0, lbl_8053AC90@sda21(r0)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_8023A268
    li 3, -0x1
    .4byte 0x48000090 # b .L_8023A2F4
L_8023A268:
    li 30, 0x0
    li 31, 0x0
L_8023A270:
    .4byte 0x806D90D0 # lwz r3, lbl_8053AC90@sda21(r0)
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_8023A284
    li 0, 0x0
    .4byte 0x48000040 # b .L_8023A2C0
L_8023A284:
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_8023A294
    li 0, 0x0
    .4byte 0x48000030 # b .L_8023A2C0
L_8023A294:
    cmpwi 30, 0x4
    .4byte 0x4180000C # blt .L_8023A2A4
    li 0, 0x0
    .4byte 0x48000020 # b .L_8023A2C0
L_8023A2A4:
    addi 0, 31, 0x4
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023A2BC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023A2C0
L_8023A2BC:
    lbz 0, 0xcac(4)
L_8023A2C0:
    clrlwi. 0, 0, 24
    .4byte 0x4182001C # beq .L_8023A2E0
    addi 0, 31, 0x4
    lwzx 3, 3, 0
    bl Player_GetLinkedHandleOrInvalid
    cmpwi 3, 0x0
    .4byte 0x41800008 # blt .L_8023A2E0
    .4byte 0x48000018 # b .L_8023A2F4
L_8023A2E0:
    addi 30, 30, 0x1
    addi 31, 31, 0x4
    cmpwi 30, 0x4
    .4byte 0x4180FF84 # blt .L_8023A270
    li 3, -0x1
L_8023A2F4:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
