/*
 * fn_80108494 (0x80108494-0x80108568, 0xD4/212 bytes) - a method of the new class whose
 * base destructor just landed as fn_80108414 (the 3rd class this session found embedding
 * the "timed-cue lookup table" shared component - see
 * project_fsa_multiple_inheritance_pattern.md). No vtable-pointer store here, so likely NOT the constructor itself - probably
 * a "spawn/trigger an effect at this+0xc" method called after construction.
 *
 * Calls fn_801F5778 (unidentified, new this session) first. If this->0x4 < 8 (the confirmed
 * "type<8" gating used elsewhere by the fn_802F745C/fn_802F86CC-consuming classes), queries
 * the global manager singleton (lbl_8053AAF8->0xa4, vtable slot 6 - CONFIRMED shared "lookup
 * by type" contract) with a 4-char actor code 0x534F4220 ("SOB ") and a name pointer
 * lbl_80464014, getting a handle back; passes that handle plus this+0xc and an easing
 * constant (lbl_8053C318) into **fn_802F86CC** (the spatial-triad function - ANOTHER real
 * call site, using the registry from lbl_8053AB10->0x20). Unconditionally (after the branch
 * merges) also calls **fn_803075AC** with this->0x198/0x4/0x248+0x1ab and this+0xc - the
 * same two-function pairing already confirmed in fn_80107458's landing (see
 * project_fsa_shared_effect_subsystem_crossref.md).
 */

.section extab, "a"
.balign 4
.global etb_80005B14
etb_80005B14:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80005B14, 8

.section extabindex, "a"
.balign 4
.global eti_80011F5C
eti_80011F5C:
    .4byte fn_80108494
    .4byte 0x000000D4
    .4byte etb_80005B14
.size eti_80011F5C, 12

.text
.balign 4
.global fn_80108494

fn_80108494:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    bl fn_801F5778
    lwz 0, 0x4(29)
    addi 30, 29, 0xc
    lwz 3, 0x248(29)
    cmpwi 0, 0x8
    addi 31, 3, 0x1ab
    .4byte 0x40800050 # bge .L_80108518
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80464014@ha
    addi 5, 3, lbl_80464014@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC0229378 # lfs f1, lbl_8053C318@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 30
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(6)
    mr 6, 31
    bl fn_802F86CC
L_80108518:
    li 0, 0x0
    addi 5, 29, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x248(29)
    lwz 3, 0x198(29)
    lwz 4, 0x4(29)
    addi 6, 6, 0x1ab
    bl fn_803075AC
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

