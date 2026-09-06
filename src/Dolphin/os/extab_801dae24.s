/*
 * fn_801DAE24(this) (0x801DAE24-0x801DAEAC, 0x88/136 bytes) - called from
 * fn_801D9C58's state 0x14 (cleanup/death) case (extab_801d9c58.s), this is
 * a "notify all my tracked children" teardown: loops over an ID-list array
 * embedded at this+0x8 (up to this->0x80 entries - see the add/remove pair
 * fn_801DAF14/fn_801DAEAC in oscluster_801daeac.c), resolves each via the
 * CONFIRMED SpatialRegistry_GetBase/fn_801F666C pair, and for every valid one sets its
 * own back-reference (target->0x10c = -1) then makes a REAL VIRTUAL CALL
 * through that target's own vtable slot 0x24/4=9 - an "onParentDied"-shaped
 * hook, telling every tracked child that this actor (their parent/owner) is
 * gone.
 *
 * Attempted real-C++ promotion (Phase 4): matched retail's loop/virtual-
 * call logic exactly but hit a pure register-allocation-only prologue-
 * ordering mismatch, same symptom as the rest of this batch
 * (fn_801DAD2C/fn_802EB27C/fn_801C1224/fn_801CC730/fn_801CC820/
 * fn_801D7638). Reverted to raw asm; see
 * project_fsa_phase4_resumed_session2.md.
 */

.section extab, "a"
.balign 4
.global etb_800087F0
etb_800087F0:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_800087F0, 8

.section extabindex, "a"
.balign 4
.global eti_80015C1C
eti_80015C1C:
    .4byte fn_801DAE24
    .4byte 0x00000088
    .4byte etb_800087F0
.size eti_80015C1C, 12

.text
.balign 4
.global fn_801DAE24

fn_801DAE24:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    lwz 31, 0x80(3)
    stw 30, 0x18(1)
    li 30, -0x1
    stw 29, 0x14(1)
    mr 29, 3
    stw 28, 0x10(1)
    li 28, 0x0
    .4byte 0x48000034 # b .L_801DAE84
L_801DAE54:
    bl SpatialRegistry_GetBase
    lwz 4, 0x8(29)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_801DAE7C
    stw 30, 0x10c(3)
    lwz 12, 0x0(3)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_801DAE7C:
    addi 29, 29, 0x4
    addi 28, 28, 0x1
L_801DAE84:
    cmpw 28, 31
    .4byte 0x4180FFCC # blt .L_801DAE54
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

