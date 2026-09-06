/*
 * WARP-portal-actor cluster, part 2/12.
 *
 * fn_801EDBA4(this): no-ops if this->0x248 (state) == 0x17 - otherwise
 * snapshots this->0xc/0x10/0x14 (position) to the stack, calls
 * fn_801EDC0C(this, this->0x280+0x10c), then UNCONDITIONALLY overwrites
 * this->0xc/0x10/0x14 with the snapshotted values. Net effect: runs
 * fn_801EDC0C purely for its other side effects (the small idle
 * bob/wobble and the draw/icon logic below) while undoing any position
 * change it made to `this` - i.e. "animate/draw myself, but don't
 * actually move" outside of state 0x17.
 *
 * Attempted real-C++ promotion (2 variants): (1) a plain local Vec3
 * struct - MWCC kept the 3 floats live in CALLEE-SAVED FPRs (f29-f31)
 * across the call instead of real stack memory, needing 3x save+3x
 * restore (stfd+psq_st pairs), ballooning to 0x88 vs retail's 0x68;
 * (2) a `volatile Vec3` to force real memory - fixed the register
 * issue but produced 6 SCALAR lfs/stfs instructions each for save and
 * restore instead of retail's paired-single (psq_l/psq_st, 2 floats at
 * once) + 1 scalar for the 3rd field, landing at 0x70 (4 bytes too
 * big). Needs the exact struct/alignment shape that triggers MWCC's
 * paired-single codegen for a 3-float copy, not found in 2 tries -
 * reverted to raw asm.
 */
.section extab, "a"
.balign 4
.global etb_80008D24
etb_80008D24:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80008D24, 8

.section extabindex, "a"
.balign 4
.global eti_80016390
eti_80016390:
    .4byte fn_801EDBA4
    .4byte 0x00000068
    .4byte etb_80008D24
.size eti_80016390, 12

.text
.balign 4
.global fn_801EDBA4

fn_801EDBA4:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x17
    .4byte 0x41820038 # beq .L_801EDBF8
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    lwz 4, 0x280(31)
    psq_st 1, 0x8(1), 0, 0
    addi 4, 4, 0x10c
    stfs 0, 0x10(1)
    bl fn_801EDC0C
    lfs 0, 0x8(1)
    lfs 1, 0xc(1)
    stfs 0, 0xc(31)
    lfs 0, 0x10(1)
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
L_801EDBF8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
