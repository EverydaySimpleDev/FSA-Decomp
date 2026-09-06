/*
 * fn_801D1974 (0x801D1974-0x801D19F4, 0x80/128 bytes) - the REAL constructor for the
 * "position-trail predictor" class (see project_fsa_multiple_inheritance_pattern.md).
 *
 * Calls fn_801D0F40 first (a base-class construction step, not further explored - matches
 * the DESTROYBASE unwind target dtor_801B7E1C below, i.e. this class singly-inherits from
 * whatever class dtor_801B7E1C belongs to). Sets its OWN primary vtable to
 * **lbl_804A46F4** - this is the class's real vtable, CONFIRMED distinct from the unrelated
 * "timed-cue lookup table" component's lbl_8049CC34 (this class and that one merely share
 * the address neighborhood, not an inheritance relationship - see the correction note in
 * project_fsa_multiple_inheritance_pattern.md).
 *
 * Constructs the 16-slot position-history ring buffer (this->0x2a8=count, this->0x2ac=
 * array) via the generic container constructor __construct_array(this+0x2ac, fn_801546E4, 0, 8,
 * 0x10) - element size 8 bytes (matches the {x,z} float pairs fn_801D12CC reads/writes),
 * capacity 16, with fn_801546E4 as a per-element constructor callback (not explored).
 * Zero-inits the cached-prediction fields (this->0x32c/0x330/0x334), sets this->0x338=-1
 * (no target yet) and this->0x33c=0 (the facing-angle field fn_801D11FC maintains). Has a
 * DESTROYBASE unwind action targeting dtor_801B7E1C.
 */

.section extab, "a"
.balign 4
.global etb_800084C4
etb_800084C4:
    .4byte 0x080A0000
    .4byte 0x00000048
    .4byte 0x00000010
    .4byte 0x00000000
    .4byte 0x8680001F
    .4byte 0x00000000
    .4byte dtor_801B7E1C
.size etb_800084C4, 28

.section extabindex, "a"
.balign 4
.global eti_8001582C
eti_8001582C:
    .4byte fn_801D1974
    .4byte 0x00000080
    .4byte etb_800084C4
.size eti_8001582C, 12

.text
.balign 4
.global fn_801D1974

fn_801D1974:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0F40
    lis 4, lbl_804A46F4@ha
    li 0, 0x0
    addi 4, 4, lbl_804A46F4@l
    lis 3, fn_801546E4@ha
    stw 4, 0x0(31)
    addi 4, 3, fn_801546E4@l
    addi 3, 31, 0x2ac
    li 5, 0x0
    stw 0, 0x2a8(31)
    li 6, 0x8
    li 7, 0x10
    bl __construct_array
    .4byte 0xC002C088 # lfs f0, lbl_8053F028@sda21(r0)
    li 4, -0x1
    li 0, 0x0
    mr 3, 31
    stfs 0, 0x32c(31)
    stfs 0, 0x330(31)
    stfs 0, 0x334(31)
    stw 4, 0x338(31)
    sth 0, 0x33c(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

