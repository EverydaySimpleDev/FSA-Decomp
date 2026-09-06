/*
 * fn_8010C00C (0x8010C00C-0x8010C068, 0x64/100 bytes) - the constructor for the 6th class
 * this session found embedding the "timed-cue lookup table" shared component (see
 * project_fsa_multiple_inheritance_pattern.md). Calls Actor_ctor (same base-construction
 * step confirmed for the other such classes' constructors), sets the primary vtable to
 * lbl_8049CFC8 (matches fn_8010BF7C's dtor exactly), zero-inits this->0x230/0x234/0x238/
 * 0x27c and this->0x240 to a constant, then fn_801D267C(this+0x244) - that shared
 * component's own constructor. Has a
 * DESTROYBASE unwind action targeting dtor_801F593C. CLOSES the loop: all landed functions
 * for this class (fn_8010B40C/fn_8010B284/fn_8010B648/fn_8010B8B0/fn_8010BEB8/fn_8010BF7C/
 * fn_8010C00C) are confirmed as one class.
 *
 * Attempted real-C++ promotion (Phase 4): matched retail except a
 * float-load-vs-int-zero-materialize scheduling wall MWCC wouldn't follow
 * via source reordering (3 tried variants) - same class of issue as
 * Snwl_ctor_8012E780.s. Reverted to raw asm; see
 * project_fsa_phase4_resumed_session2.md.
 */

.section extab, "a"
.balign 4
.global etb_80005C20
etb_80005C20:
    .4byte 0x080A0000
    .4byte 0x00000044
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801F593C
.size etb_80005C20, 28

.section extabindex, "a"
.balign 4
.global eti_80012094
eti_80012094:
    .4byte fn_8010C00C
    .4byte 0x00000064
    .4byte etb_80005C20
.size eti_80012094, 12

.text
.balign 4
.global fn_8010C00C

fn_8010C00C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl Actor_ctor
    lis 3, lbl_8049CFC8@ha
    li 0, 0x0
    addi 3, 3, lbl_8049CFC8@l
    .4byte 0xC00294D8 # lfs f0, lbl_8053C478@sda21(r0)
    stw 3, 0x0(31)
    addi 3, 31, 0x244
    stw 0, 0x230(31)
    stw 0, 0x234(31)
    stw 0, 0x238(31)
    stfs 0, 0x240(31)
    bl fn_801D267C
    li 0, 0x0
    mr 3, 31
    stw 0, 0x27c(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
