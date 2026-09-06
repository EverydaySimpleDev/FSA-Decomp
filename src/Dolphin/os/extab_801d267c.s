/*
 * fn_801D267C (0x801D267C-0x801D26F4, 0x78/120 bytes) - the REAL constructor for the
 * "timed-cue lookup table" component (see project_fsa_multiple_inheritance_pattern.md).
 * This is the compact-form constructor several derived actor classes called directly as
 * `fn_801D267C(this+SubobjOffset)` (as opposed to the alternative 3-call
 * fn_801D2608/fn_801D22DC/fn_801D1F14 init sequence some other derived classes use, which
 * populates the table with REAL data immediately rather than deferring to a later setup()).
 *
 * Real understanding, fully confirmed: this->0x0=NULL (no sequence table yet),
 * this->0x4=0 (count), this->0x8=-1 (no sequence selected), this->0xc=0, this->0x10=0,
 * this->0x14=0x7FFFFFFF / this->0x18=0x80000000 (INT_MAX/INT_MIN sentinels so the first
 * fn_801D2608 registration call's min/max comparisons always take the real value),
 * this->0x1c=0, this->0x20=0 (run-guard flag). this->0x24 is NOT a data field of this class
 * at all - it's the START of a nested embedded sub-object (a small blend/interpolation timer
 * utility, own vtable **lbl_8049CC34** - RESOLVED, see project_fsa_multiple_inheritance_pattern.md).
 * The vtable write at this->0x24 is that sub-object's OWN construction (matching what every
 * derived class's destructor resets it back to on teardown, since destroying the outer
 * class's complete object requires tearing down this nested member too). The subsequent
 * `fn_800C3608(this+0x24, 0)` call is that sub-object's own "construct" method - a plain
 * (non-virtual, 2-arg) call, confirmed by reading fn_800C3608 itself: it writes state/flag/value
 * fields relative to its own `this`, not vtable-dispatch shaped.
 *
 * Attempted real-C++ promotion: the field-write ORDER already matched
 * retail exactly (including finding the previously-undocumented 2nd
 * arg=0 to fn_800C3608), but MWCC always hoists the `lis/addi` vtable-
 * address computation to the very START of the function regardless of
 * where the assignment statement appears in source; retail computes it
 * LAZILY (reusing r3 as a scratch register right after this->0x0's
 * write, once r3=this is no longer needed elsewhere). A constant-
 * address-computation-hoisting instance of the general "compiler
 * scheduling choice not controllable via statement order" wall class.
 * Reverted to raw asm.
 */

.section extab, "a"
.balign 4
.global etb_80008530
etb_80008530:
    .4byte 0x08080000
    .4byte 0x00000000
.size etb_80008530, 8

.section extabindex, "a"
.balign 4
.global eti_800158B0
eti_800158B0:
    .4byte fn_801D267C
    .4byte 0x00000078
    .4byte etb_80008530
.size eti_800158B0, 12

.text
.balign 4
.global fn_801D267C

fn_801D267C:
    stwu 1, -0x10(1)
    mflr 0
    lis 5, 0x8000
    li 7, 0x0
    stw 0, 0x14(1)
    li 4, -0x1
    subi 6, 5, 0x1
    stw 31, 0xc(1)
    mr 31, 3
    stw 7, 0x0(3)
    lis 3, lbl_8049CC34@ha
    addi 0, 3, lbl_8049CC34@l
    stw 7, 0x4(31)
    addi 3, 31, 0x24
    stw 4, 0x8(31)
    li 4, 0x0
    stw 7, 0xc(31)
    stw 7, 0x10(31)
    stw 6, 0x14(31)
    stw 5, 0x18(31)
    stw 7, 0x1c(31)
    stb 7, 0x20(31)
    stw 0, 0x24(31)
    bl fn_800C3608
    lwz 0, 0x14(1)
    mr 3, 31
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
