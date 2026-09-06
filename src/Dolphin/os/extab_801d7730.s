/*
 * dtor_801D7730(this, flag) (0x801D7730-0x801D77B4, 0x84/132 bytes) - the REAL
 * destructor for the "this+0x4c4" launcher sub-object (see extab_801d74e0.s).
 * Inlines the SAME "release my spawned targets" logic as fn_801D7638
 * (extab_801d7638.s, byte-identical loop shape) rather than calling it -
 * loops all 16 target-ID slots, resolves each via SpatialRegistry_GetBase/fn_801F666C,
 * clears target->0x11c. Conditionally (flag>0) tail-calls dtor_80084580(this)
 * - a 3RD sighting of this reused generic destructor (also called by
 * dtor_801D46FC and dtor_801D69FC), confirming it's a genuinely shared,
 * engine-wide teardown primitive, not specific to any one class.
 *
 * Attempted real-C++ promotion (Phase 4): matched retail except a pure
 * register-allocation choice in the loop (retail keeps the loop COUNTER in
 * r30 and the WALKING POINTER in r29; both a fresh-index-expression variant
 * and an explicit-incrementing-pointer variant compiled to the OPPOSITE
 * assignment - counter in r29, pointer in r30 - identical instructions/
 * order, just swapped registers). Same class of issue as fn_80317BB8/
 * fn_80107014/fn_801C5680/fn_801DA438/fn_801E2180. Reverted to raw asm;
 * see project_fsa_phase4_resumed_session2.md.
 */

.section extab, "a"
.balign 4
.global etb_800086E4
etb_800086E4:
    .4byte 0x30080000
    .4byte 0x00000000
.size etb_800086E4, 8

.section extabindex, "a"
.balign 4
.global eti_80015AA8
eti_80015AA8:
    .4byte dtor_801D7730
    .4byte 0x00000084
    .4byte etb_800086E4
.size eti_80015AA8, 12

.text
.balign 4
.global dtor_801D7730

dtor_801D7730:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr. 26, 3
    mr 27, 4
    .4byte 0x41820054 # beq .L_801D779C
    li 30, 0x0
    mr 29, 26
    mr 31, 30
L_801D7758:
    lwz 28, 0x0(29)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_801D777C
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801D777C
    stb 31, 0x11c(3)
L_801D777C:
    addi 30, 30, 0x1
    addi 29, 29, 0x4
    cmpwi 30, 0x10
    .4byte 0x4180FFD0 # blt .L_801D7758
    extsh. 0, 27
    .4byte 0x4081000C # ble .L_801D779C
    mr 3, 26
    bl dtor_80084580
L_801D779C:
    mr 3, 26
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

