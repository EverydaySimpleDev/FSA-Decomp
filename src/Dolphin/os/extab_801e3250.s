/*
 * TINK (vtable lbl_804A51E4) - fn_801E3250(this, useUpperNibble). Queries
 * the spatial registry for the nearest "TINB" (0x54494E42, the confirmed
 * IPOT/FSPO/FSOB/TINB actor family) via fn_801F7884, then reads either
 * the upper nibble or low 4 bits of the found TINB's this->0x90 (an
 * orientation/rotation code) depending on useUpperNibble. Compares that
 * code against the global PRNG state's byte at lbl_8053AAF8->0x7e to
 * decide a true/false result (matching 2 when the byte is 0, or 1
 * otherwise) - reads as a "does this TINB's orientation match the
 * current random pick" check, likely gating TINK's teleport-target
 * selection against a nearby TINB waypoint's facing.
 *
 * Attempted real-C++ promotion (Phase 4): a SIGNED s32 for `code`
 * produced the wrong comparison instructions (cmpwi where retail uses
 * cmplwi); switching to `u32` fixed EVERY comparison and the entire
 * back half of the function byte-for-byte. The ONE residual: retail
 * assigns r31=this_ / r30=result (result reuses r31 for `idx` after
 * this_'s last use); every declaration-order variant tried (result
 * first, result after idx's computation) instead assigns r31=result /
 * r30=this_ - the opposite pairing. 3 attempts, deferred - very close
 * (9 of ~51 words differ, all register-number swaps plus one knock-on
 * instruction-selection change).
 */
.section extab, "a"
.balign 4
.global etb_800089E8
etb_800089E8:
    .4byte 0x18080000
    .4byte 0x00000000
.size etb_800089E8, 8

.section extabindex, "a"
.balign 4
.global eti_80015F10
eti_80015F10:
    .4byte fn_801E3250
    .4byte 0x000000CC
    .4byte etb_800089E8
.size eti_80015F10, 12

.text
.balign 4
.global fn_801E3250

fn_801E3250:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    li 30, 0x0
    stw 29, 0x14(1)
    mr 29, 4
    bl SpatialRegistry_GetBase
    lis 4, 0x5449
    mr 5, 31
    addi 4, 4, 0x4e42
    bl fn_801F7884
    mr. 31, 3
    .4byte 0x41800070 # blt .L_801E32FC
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182005C # beq .L_801E32FC
    clrlwi. 0, 29, 24
    .4byte 0x41820010 # beq .L_801E32B8
    lwz 0, 0x90(3)
    extrwi 4, 0, 4, 24
    .4byte 0x4800000C # b .L_801E32C0
L_801E32B8:
    lwz 0, 0x90(3)
    clrlwi 4, 0, 28
L_801E32C0:
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_801E32D0
    li 30, 0x1
    .4byte 0x48000030 # b .L_801E32FC
L_801E32D0:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801E32F0
    cmplwi 4, 0x2
    .4byte 0x40820018 # bne .L_801E32FC
    li 30, 0x1
    .4byte 0x48000010 # b .L_801E32FC
L_801E32F0:
    cmplwi 4, 0x1
    .4byte 0x40820008 # bne .L_801E32FC
    li 30, 0x1
L_801E32FC:
    lwz 0, 0x24(1)
    mr 3, 30
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
