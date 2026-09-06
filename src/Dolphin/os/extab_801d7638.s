/*
 * fn_801D7638(this) (0x801D7638-0x801D76B4, 0x7C/124 bytes) - a "release my
 * spawned targets" cleanup for the reusable "this+0x4c4" sub-object: loops
 * over all 16 target-ID slots, resolving each via the CONFIRMED SpatialRegistry_GetBase/
 * fn_801F666C pair, and clearing a byte flag (target->0x11c = 0) on every
 * resolved one - clearing an ownership/claimed marker this sub-object set on
 * its spawned "BGBL" actors (see fn_801D74E0, extab_801d74e0.s). Called
 * together with fn_801D76B4 (reset, landed alongside this file) from
 * fn_801D5D84's state-entry logic (extab_801d5d84.s) as a "release and reset"
 * pair, and presumably from dtor_801D7730 (this sub-object's own destructor,
 * not yet directly confirmed).
 *
 * Attempted real-C++ promotion (Phase 4): matched retail's loop logic
 * exactly (walking-pointer style, per the established lesson) but hit a
 * pure register-allocation-only prologue-ordering mismatch, same symptom
 * as dtor_801D7730 (this sub-object's OWN destructor, already a known
 * register-allocation-wall case) and the rest of this batch
 * (fn_801DAD2C/fn_802EB27C/fn_801C1224/fn_801CC730/fn_801CC820).
 * Reverted to raw asm; see project_fsa_phase4_resumed_session2.md.
 */

.section extab, "a"
.balign 4
.global etb_800086DC
etb_800086DC:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_800086DC, 8

.section extabindex, "a"
.balign 4
.global eti_80015A9C
eti_80015A9C:
    .4byte fn_801D7638
    .4byte 0x0000007C
    .4byte etb_800086DC
.size eti_80015A9C, 12

.text
.balign 4
.global fn_801D7638

fn_801D7638:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    li 31, 0x0
    stw 30, 0x18(1)
    mr 30, 3
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    li 28, 0x0
L_801D7660:
    lwz 29, 0x0(30)
    cmpwi 29, 0x0
    .4byte 0x4180001C # blt .L_801D7684
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801D7684
    stb 31, 0x11c(3)
L_801D7684:
    addi 28, 28, 0x1
    addi 30, 30, 0x4
    cmpwi 28, 0x10
    .4byte 0x4180FFD0 # blt .L_801D7660
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

