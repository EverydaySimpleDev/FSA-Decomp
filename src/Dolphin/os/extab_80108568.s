/*
 * fn_80108568 (0x80108568-0x80108764, 0x1FC/508 bytes) - update() for the 3rd class this
 * session found embedding the "timed-cue lookup table" shared component (base dtor
 * fn_80108414, spawn/trigger method fn_80108494 - see
 * project_fsa_multiple_inheritance_pattern.md). Survey-level; several new action-execution
 * primitives are not individually understood.
 *
 * Opens with fn_801F5930 (unidentified base-class per-frame step, new this session), then
 * builds a bounding region on the stack from this->0x60-0x6c + this->0xc/0x10 (SAME shape
 * as fn_80107660's this->0x44-0x50 region), and calls fn_80239914(this, this->0x4,
 * this->0x198, &region) - a new bounding/candidate-check call.
 *
 * Dispatches on this->0x230 (a state field, NOT this->0x274 - this class's own state var,
 * distinct from the fn_80107360-class's naming even though both embed the same shared
 * component):
 *   - state 0: acquires a candidate via fn_8022FEB8+fn_8022FD8C(this->0x198), gates on
 *     fn_802300EC(); on success, picks an action ID (0x259 by default, or 0x2aa if a
 *     registry lookup for the 4-char code "SIMT" - via SpatialRegistry_GetBase+fn_801F7A08+fn_801F666C,
 *     the CONFIRMED registry-get/find-by-ID pair - fails to find an entry), then commits via
 *     fn_8038AD24(candidate, actionID, this->0x198, this->0x4, &{position, this->0x14, 0x28})
 *     (uses psq_l/psq_st to copy this->0xc/0x10 as a pair); on success, stores the candidate
 *     into this->0x234 and advances state to 1.
 *   - state 1: fn_8022FF8C(this->0x234, &region, this->0x4, this->0x198, 1, 0) then
 *     fn_80388CAC(this->0x234, this->0x198); on success, finalizes (this->0x234=-1,
 *     this->0x230=0) - looks like "drive the ongoing action, detect completion".
 *   - state 2: no-op here (handled elsewhere, possibly a not-yet-landed sibling method).
 *   - state 3: fn_80388EEC(this->0x234); on success, same finalize (this->0x234=-1,
 *     this->0x230=0).
 *   - state 4+: no-op.
 *
 * Tail: fn_801D1C18(this+0x238) - CONFIRMS this class embeds the shared component at +0x238,
 * exactly matching fn_80108414's destructor guard offset (0x238, resetting the nested
 * blend-timer's vtable at 0x238+0x24=0x25c).
 */

.section extab, "a"
.balign 4
.global etb_80005B1C
etb_80005B1C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80005B1C, 8

.section extabindex, "a"
.balign 4
.global eti_80011F68
eti_80011F68:
    .4byte fn_80108568
    .4byte 0x000001FC
    .4byte etb_80005B1C
.size eti_80011F68, 12

.text
.balign 4
.global fn_80108568

fn_80108568:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    mr 31, 3
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    bl fn_801F5930
    lfs 1, 0x60(31)
    addi 3, 1, 0x14
    stfs 1, 0x14(1)
    lfs 4, 0x64(31)
    stfs 4, 0x18(1)
    lfs 2, 0x68(31)
    stfs 2, 0x1c(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x20(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    lwz 0, 0x230(31)
    cmpwi 0, 0x2
    .4byte 0x41820150 # beq .L_8010873C
    .4byte 0x40800014 # bge .L_80108604
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80108610
    .4byte 0x408000DC # bge .L_801086D8
    .4byte 0x4800013C # b .L_8010873C
L_80108604:
    cmpwi 0, 0x4
    .4byte 0x40800134 # bge .L_8010873C
    .4byte 0x48000110 # b .L_8010871C
L_80108610:
    lwz 4, 0x4(31)
    addi 3, 1, 0x14
    lwz 5, 0x198(31)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    mr. 29, 3
    .4byte 0x41800108 # blt .L_8010873C
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418200FC # beq .L_8010873C
    li 28, 0x259
    bl SpatialRegistry_GetBase
    lis 4, 0x5349
    addi 4, 4, 0x544d
    bl fn_801F7A08
    mr. 30, 3
    .4byte 0x4080000C # bge .L_80108668
    li 0, 0x0
    .4byte 0x48000024 # b .L_80108688
L_80108668:
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4082000C # bne .L_80108684
    li 0, 0x0
    .4byte 0x48000008 # b .L_80108688
L_80108684:
    li 0, 0x1
L_80108688:
    clrlwi. 0, 0, 24
    .4byte 0x40820008 # bne .L_80108694
    li 28, 0x2aa
L_80108694:
    lwz 5, 0x198(31)
    addi 7, 1, 0x8
    lwz 6, 0x4(31)
    mr 3, 29
    psq_l 1, 0xc(31), 0, 0
    clrlwi 4, 28, 16
    lfs 0, 0x14(31)
    li 8, 0x28
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x10(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820078 # beq .L_8010873C
    stw 29, 0x234(31)
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x48000068 # b .L_8010873C
L_801086D8:
    lwz 3, 0x234(31)
    addi 4, 1, 0x14
    lwz 5, 0x4(31)
    li 7, 0x1
    lwz 6, 0x198(31)
    li 8, 0x0
    bl fn_8022FF8C
    lwz 3, 0x234(31)
    lwz 4, 0x198(31)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_8010873C
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x234(31)
    stw 0, 0x230(31)
    .4byte 0x48000024 # b .L_8010873C
L_8010871C:
    lwz 3, 0x234(31)
    bl fn_80388EEC
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_8010873C
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x234(31)
    stw 0, 0x230(31)
L_8010873C:
    addi 3, 31, 0x238
    bl fn_801D1C18
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

