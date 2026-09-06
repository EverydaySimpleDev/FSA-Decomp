/*
 * fn_801091EC (0x801091EC-0x801092AC, 0xC4/196 bytes) - a "setup(this)" method for the 4th
 * class this session found embedding the "timed-cue lookup table" shared component (base
 * dtor fn_80108A6C, spawn fn_80108AEC, update fn_80108C34 - see
 * project_fsa_multiple_inheritance_pattern.md) - the structural analog of
 * fn_80107F38/fn_80108764 for the other such classes.
 *
 * Calls fn_801F5938 (the SAME base-class step confirmed at the start of the 3rd such class's
 * own setup(), fn_80108764), initializes an easing-constant float block at this->0x60-0x8c
 * from lbl_8053C36C/8053C370/8053C374 (yet another distinct constant set) and this->0x108=0.
 * Unpacks the low byte of this->0x90 into this->0x268 (matches other classes' bitfield-unpack
 * setup pattern), and snapshots this->0xc/0x10/0x14 into this->0x278/0x27c/0x280, then
 * subtracts a constant from this->0x27c.
 *
 * Then calls fn_801D2608(this+0x230, lbl_8049CDA0, 8, ...), fn_801D22DC(this+0x230,
 * this->0x268, 2, 0), fn_801D1F14(this+0x230, ...). RESOLVED (see
 * project_fsa_multiple_inheritance_pattern.md): fn_801D2608's real signature is
 * `(this, sequenceArrayPtr, sequenceCount)` - so `lbl_8049CDA0` is simply THIS class's own
 * real attack/cue-sequence table data (an array of 8 sequences), not a mystery type-
 * descriptor or sub-vtable pointer. The earlier flagging as an unresolved argument variant
 * is now explained: every class supplies its own sequence array/count here.
 */

.section extab, "a"
.balign 4
.global etb_80005B68
etb_80005B68:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005B68, 8

.section extabindex, "a"
.balign 4
.global eti_80011FBC
eti_80011FBC:
    .4byte fn_801091EC
    .4byte 0x000000C4
    .4byte etb_80005B68
.size eti_80011FBC, 12

.text
.balign 4
.global fn_801091EC

fn_801091EC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801F5938
    .4byte 0xC04293CC # lfs f2, lbl_8053C36C@sda21(r0)
    lis 3, lbl_8049CDA0@ha
    addi 4, 3, lbl_8049CDA0@l
    .4byte 0xC02293D0 # lfs f1, lbl_8053C370@sda21(r0)
    stfs 2, 0x60(31)
    li 0, 0x0
    .4byte 0xC00293D4 # lfs f0, lbl_8053C374@sda21(r0)
    addi 3, 31, 0x230
    stfs 2, 0x64(31)
    li 5, 0x8
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stw 0, 0x108(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 24
    stw 0, 0x268(31)
    lfs 1, 0xc(31)
    stfs 1, 0x278(31)
    lfs 1, 0x10(31)
    stfs 1, 0x27c(31)
    lfs 1, 0x14(31)
    stfs 1, 0x280(31)
    lfs 1, 0x27c(31)
    fsubs 0, 1, 0
    stfs 0, 0x27c(31)
    bl fn_801D2608
    lwz 4, 0x268(31)
    addi 3, 31, 0x230
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC02293D8 # lfs f1, lbl_8053C378@sda21(r0)
    addi 3, 31, 0x230
    bl fn_801D1F14
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

