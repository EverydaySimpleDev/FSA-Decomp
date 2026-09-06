/*
 * fn_801D6D08(this) (0x801D6D08-0x801D6D38, 0x30/48 bytes) - tail-calls
 * fn_801E4AB0(this+0x28, rate=lbl_8053F154, duration=0x1e, flags=0x400) - a
 * "trigger" call against the SAME 0x14-byte-strided sub-object family driven
 * by fn_801E4B0C (constructor, confirmed in extab_801d686c.s) and fn_801E4AB0
 * (see fn_801D6D38 for a second, richer call site). Part of the reusable
 * "this+0x4c4" sub-object's own utility library.
 *
 * Attempted real-C++ promotion: retail loads the float constant BEFORE
 * computing `this+0x28`/the integer literal args, but MWCC always hoists
 * the float load AFTER the integer arg setup regardless of source
 * statement order (2 variants tried: plain local, then a `volatile`
 * local to force ordering - the volatile version got WORSE, adding a
 * spurious stack spill). Matches the documented "prologue LR-save
 * placement relative to independent float loads" scheduling wall (see
 * reference_fsa_mwcc_scheduling_wall_investigation.md). Reverted to raw
 * asm.
 */

.section extab, "a"
.balign 4
.global etb_800086AC
etb_800086AC:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800086AC, 8

.section extabindex, "a"
.balign 4
.global eti_80015A54
eti_80015A54:
    .4byte fn_801D6D08
    .4byte 0x00000030
    .4byte etb_800086AC
.size eti_80015A54, 12

.text
.balign 4
.global fn_801D6D08

fn_801D6D08:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022C1B4 # lfs f1, lbl_8053F154@sda21(r0)
    addi 3, 3, 0x28
    stw 0, 0x14(1)
    li 4, 0x1e
    li 5, 0x400
    bl fn_801E4AB0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
