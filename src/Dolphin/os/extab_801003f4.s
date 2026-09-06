/*
 * fn_801003F4(this): called directly from fn_800FF6F8's state-6 transition
 * (bl fn_801003F4, r3=this). Method of the same class.
 *  - First loop: for each of `this`'s N slots (N = a PRNG draw via
 *    fn_80138A30, capped/masked against lbl_80543F18), calls GetRoomConfigRecord
 *    then fn_802D7844(slot_index, active) where active is 1 if
 *    this->0x250-family[i]==0 else 0 - looks like a per-slot
 *    highlight/deactivate toggle keyed on a "count exhausted" condition.
 *  - Second loop: a selection-sort-style ranking pass over the N
 *    this->0x250-family count fields, computing (for each rank position)
 *    the index of the largest remaining unclaimed value (ties broken by
 *    first-seen), writing the winning slot index into this->0x264,0x268,
 *    0x26c,0x270 in descending-rank order and marking claimed slots in a
 *    stack byte array so they aren't picked twice.
 *  - Tail: walks the resulting rank order pairwise (rank0 vs rank1, rank1
 *    vs rank2, rank2 vs rank3) comparing the underlying count values for
 *    equality, storing a tie-flag (0=tie, 1/2/3=rank gap) into
 *    this->0x274/0x278/0x27c/0x280. This is a real "who's in the lead,
 *    and is it a tie" computation over 4 candidates - looks like a
 *    scoring/placement (1st/2nd/3rd/4th) system for the 4 slot-pairs
 *    tracked by fn_800FF0C0/fn_800FF6F8's this->0x250-0x26c fields.
 */

.section extab, "a"
.balign 4
.global etb_800058C0
etb_800058C0:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_800058C0, 8

.section extabindex, "a"
.balign 4
.global eti_80011C50
eti_80011C50:
    .4byte fn_801003F4
    .4byte 0x000001D0
    .4byte etb_800058C0
.size eti_80011C50, 12

.text
.balign 4
.global fn_801003F4

fn_801003F4:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stmw 27, 0x1c(1)
    mr 30, 3
    li 28, 0x0
    .4byte 0x80020F78 # lwz r0, lbl_80543F18@sda21(r0)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    stw 0, 0x8(1)
    bl fn_80138A30
    mr 31, 3
    mr 29, 30
    li 27, 0x0
    .4byte 0x4800003C # b .L_80100464
L_8010042C:
    lwz 0, 0x250(29)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_8010044C
    bl GetRoomConfigRecord
    mr 5, 27
    li 4, 0x1
    bl fn_802D7844
    .4byte 0x48000014 # b .L_8010045C
L_8010044C:
    bl GetRoomConfigRecord
    mr 5, 27
    li 4, 0x0
    bl fn_802D7844
L_8010045C:
    addi 29, 29, 0x4
    addi 27, 27, 0x1
L_80100464:
    cmpw 27, 31
    .4byte 0x4180FFC4 # blt .L_8010042C
    mr 7, 30
    addi 3, 1, 0x8
    lis 4, 0xf
    .4byte 0x48000068 # b .L_801004E0
L_8010047C:
    mr 5, 30
    addi 9, 4, 0x4240
    addi 6, 1, 0x8
    li 10, -0x1
    li 11, 0x0
    mtctr 31
    cmpwi 31, 0x0
    .4byte 0x40810034 # ble .L_801004CC
L_8010049C:
    lwz 8, 0x250(5)
    cmpw 9, 8
    .4byte 0x40810018 # ble .L_801004BC
    lbz 0, 0x0(6)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801004BC
    mr 9, 8
    mr 10, 11
L_801004BC:
    addi 5, 5, 0x4
    addi 6, 6, 0x1
    addi 11, 11, 0x1
    .4byte 0x4200FFD4 # bdnz .L_8010049C
L_801004CC:
    li 0, 0x1
    stw 10, 0x264(7)
    addi 7, 7, 0x4
    addi 28, 28, 0x1
    stbx 0, 3, 10
L_801004E0:
    cmpw 28, 31
    .4byte 0x4082FF98 # bne .L_8010047C
    li 5, 0x0
    stw 5, 0x274(30)
    lwz 3, 0x264(30)
    lwz 0, 0x268(30)
    slwi 3, 3, 2
    slwi 0, 0, 2
    add 4, 30, 3
    add 3, 30, 0
    lwz 4, 0x250(4)
    lwz 0, 0x250(3)
    cmpw 4, 0
    .4byte 0x4082000C # bne .L_80100520
    stw 5, 0x278(30)
    .4byte 0x4800000C # b .L_80100528
L_80100520:
    li 0, 0x1
    stw 0, 0x278(30)
L_80100528:
    cmpwi 31, 0x2
    .4byte 0x41820084 # beq .L_801005B0
    lwz 3, 0x268(30)
    lwz 0, 0x26c(30)
    slwi 3, 3, 2
    slwi 0, 0, 2
    add 4, 30, 3
    add 3, 30, 0
    lwz 4, 0x250(4)
    lwz 0, 0x250(3)
    cmpw 4, 0
    .4byte 0x40820010 # bne .L_80100564
    lwz 0, 0x278(30)
    stw 0, 0x27c(30)
    .4byte 0x4800000C # b .L_8010056C
L_80100564:
    li 0, 0x2
    stw 0, 0x27c(30)
L_8010056C:
    cmpwi 31, 0x3
    .4byte 0x41820040 # beq .L_801005B0
    lwz 3, 0x26c(30)
    lwz 0, 0x270(30)
    slwi 3, 3, 2
    slwi 0, 0, 2
    add 4, 30, 3
    add 3, 30, 0
    lwz 4, 0x250(4)
    lwz 0, 0x250(3)
    cmpw 4, 0
    .4byte 0x40820010 # bne .L_801005A8
    lwz 0, 0x27c(30)
    stw 0, 0x280(30)
    .4byte 0x4800000C # b .L_801005B0
L_801005A8:
    li 0, 0x3
    stw 0, 0x280(30)
L_801005B0:
    lmw 27, 0x1c(1)
    lwz 0, 0x34(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

