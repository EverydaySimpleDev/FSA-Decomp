/*
 * fn_80108C34 (0x80108C34-0x801091E8, 0x5B8/1464 bytes) - update() for the 4th class this
 * session found embedding the "timed-cue lookup table" shared component (base dtor
 * fn_80108A6C, spawn fn_80108AEC - see project_fsa_multiple_inheritance_pattern.md). Large,
 * multi-jumptable state machine; survey-level only, not every branch's exact semantics
 * are claimed here.
 *
 * Opens with fn_801F5930 (the SAME base-class per-frame step confirmed at the start of the
 * 3rd such class's own update(), fn_80108568), builds a bounding region from this->0x60-0x6c/
 * 0xc/0x10 (the recurring shape), then dispatches via `jumptable_8049CE54` on this->0x26c
 * (states 0-6, bgt >6 skips straight to the tail call):
 *   - state 0: acquires a candidate (fn_80239914+fn_8022FEB8+fn_8022FD8C, gated by
 *     fn_802300EC), resolves an "owner/child" target via fn_8022F514/fn_8022F3DC, does a
 *     "find nearest slot" query (fn_8030AAF4+fn_80309D6C against lbl_8053AD30, const 0x120),
 *     then commits an action via fn_8038AD24 (using this->0x278/0x280 as a velocity pair via
 *     psq_l/psq_st) - on success stores the target into this->0x270 and advances to state 1.
 *   - state 1: fn_8022FEB8 + fn_803865B8(this->0x270) gate, then fn_8037EFB4(this->0x270)
 *     categorizes into one of several buckets, each compared against threshold tables at
 *     lbl_80464028 via fn_80237774/fn_80236228; on match, either advances to state 2 (via
 *     fn_80388CAC+fn_802308E0) or triggers an animation (fn_8038470C with lbl_8046403C->0x8
 *     or ->0xc) and advances to state 4 or 5.
 *   - a THIRD path (via `jumptable_8049CE34`, an 8-entry attack-pattern dispatch keyed by
 *     this->0x268) applies a positional adjustment (fn_802362C4, using negated offsets from
 *     lbl_80464028) and triggers a specific action (fn_80235FE8+fn_802372F8 with per-pattern
 *     animation IDs 3/4/6/9), accumulating flag bits into r29 per-pattern (via oris/ori),
 *     then advances to state 3 and (via `jumptable_8049CE14`, a further per-this->0x268
 *     selector) OR-ing in more flag bits shifted from this->0x270's low bits, calling
 *     fn_8023E724 (the CONFIRMED "position-getter" from the accept-chain family) and
 *     **fn_801F9484** (the confirmed universal actor-spawn dispatcher, see
 *     project_fsa_shared_effect_subsystem_crossref.md) with registry from SpatialRegistry_GetBase, a
 *     4-char code `0x494D5550` ("IMUP"), this->0x4, and the computed category/flags.
 *   - state 3ish (80109110): fn_80230188(this->0x270) gate, then fn_8023061C to advance to
 *     state 6.
 *   - states 4/5: fn_8022FEB8+fn_80388CAC(this->0x270,this->0x198) completion gate; on
 *     success, resets (this->0x26c=0, this->0x270=-1).
 *   - fallback: this->0x270=-1, then **fn_801F3668** - the SAME function confirmed earlier
 *     this session as the target of a base-destructor trampoline (fn_801030E0->fn_801F3668);
 *     here called directly as an abort/reset notification.
 *
 * Tail: fn_801D1C18(this+0x230) - confirms this class embeds the shared component at +0x230,
 * matching fn_80108A6C's destructor guard exactly (same offset value as the fn_80107360-class,
 * though a different, unrelated class - the shared component being a MEMBER, its embedding
 * offset is independently chosen per class, so this match is coincidental, not structural).
 */

.section extab, "a"
.balign 4
.global etb_80005B60
etb_80005B60:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80005B60, 8

.section extabindex, "a"
.balign 4
.global eti_80011FB0
eti_80011FB0:
    .4byte fn_80108C34
    .4byte 0x000005B8
    .4byte etb_80005B60
.size eti_80011FB0, 12

.text
.balign 4
.global fn_80108C34

fn_80108C34:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    mr 30, 3
    stw 29, 0x34(1)
    bl fn_801F5930
    lfs 1, 0x60(30)
    stfs 1, 0x14(1)
    lfs 4, 0x64(30)
    stfs 4, 0x18(1)
    lfs 2, 0x68(30)
    stfs 2, 0x1c(1)
    lfs 3, 0x6c(30)
    stfs 3, 0x20(1)
    lfs 0, 0xc(30)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x14(1)
    lfs 2, 0x10(30)
    fadds 1, 4, 2
    stfs 0, 0x1c(1)
    fadds 0, 3, 2
    stfs 1, 0x18(1)
    stfs 0, 0x20(1)
    lwz 0, 0x26c(30)
    cmplwi 0, 0x6
    .4byte 0x41810524 # bgt .L_801091C8
    lis 3, jumptable_8049CE54@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049CE54@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 4, 0x4(30)
    addi 3, 1, 0x14
    lwz 5, 0x198(30)
    bl fn_80239914
    lwz 4, 0x4(30)
    addi 3, 1, 0x14
    lwz 5, 0x198(30)
    li 6, 0x0
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x198(30)
    bl fn_8022FD8C
    mr. 29, 3
    .4byte 0x418004D4 # blt .L_801091C8
    bl fn_802300EC
    clrlwi. 0, 3, 24
    .4byte 0x418204C8 # beq .L_801091C8
    mr 31, 29
    mr 3, 29
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80108D24
    mr 3, 29
    bl fn_8022F3DC
    mr 31, 3
L_80108D24:
    mr 3, 31
    bl fn_8030AAF4
    mr 4, 3
    .4byte 0x806D9170 # lwz r3, lbl_8053AD30@sda21(r0)
    li 5, 0x120
    bl fn_80309D6C
    cmplwi 3, 0x0
    .4byte 0x41820488 # beq .L_801091C8
    lis 3, lbl_8046403C@ha
    lwz 5, 0x198(30)
    addi 4, 3, lbl_8046403C@l
    lwz 6, 0x4(30)
    psq_l 1, 0x278(30), 0, 0
    addi 7, 1, 0x8
    lfs 0, 0x280(30)
    mr 3, 29
    lwz 4, 0x0(4)
    li 8, 0x28
    psq_st 1, 0x0(7), 0, 0
    stfs 0, 0x10(1)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x4182044C # beq .L_801091C8
    stw 29, 0x270(30)
    li 0, 0x1
    stw 0, 0x26c(30)
    .4byte 0x4800043C # b .L_801091C8
    lwz 4, 0x4(30)
    addi 3, 1, 0x14
    lwz 5, 0x198(30)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x270(30)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820414 # beq .L_801091C8
    lwz 3, 0x270(30)
    bl fn_8037EFB4
    cmpwi 3, 0x1
    .4byte 0x418200EC # beq .L_80108EB0
    .4byte 0x408000E8 # bge .L_80108EB0
    cmpwi 3, 0x0
    .4byte 0x40800008 # bge .L_80108DD8
    .4byte 0x480000DC # b .L_80108EB0
L_80108DD8:
    lwz 0, 0x268(30)
    lwz 3, 0x270(30)
    cmpwi 0, 0x2
    .4byte 0x41820020 # beq .L_80108E04
    .4byte 0x40800010 # bge .L_80108DF8
    cmpwi 0, 0x0
    .4byte 0x40800044 # bge .L_80108E34
    .4byte 0x48000070 # b .L_80108E64
L_80108DF8:
    cmpwi 0, 0x8
    .4byte 0x40800068 # bge .L_80108E64
    .4byte 0x48000034 # b .L_80108E34
L_80108E04:
    bl fn_80237774
    lwz 0, 0x268(30)
    lis 4, lbl_80464028@ha
    addi 4, 4, lbl_80464028@l
    slwi 0, 0, 1
    lhzx 0, 4, 0
    cmpw 3, 0
    .4byte 0x4081000C # ble .L_80108E2C
    li 0, 0x1
    .4byte 0x48000040 # b .L_80108E68
L_80108E2C:
    li 0, 0x0
    .4byte 0x48000038 # b .L_80108E68
L_80108E34:
    bl fn_80236228
    lwz 0, 0x268(30)
    lis 4, lbl_80464028@ha
    addi 4, 4, lbl_80464028@l
    slwi 0, 0, 1
    lhzx 0, 4, 0
    cmpw 3, 0
    .4byte 0x4180000C # blt .L_80108E5C
    li 0, 0x1
    .4byte 0x48000010 # b .L_80108E68
L_80108E5C:
    li 0, 0x0
    .4byte 0x48000008 # b .L_80108E68
L_80108E64:
    li 0, 0x0
L_80108E68:
    clrlwi. 0, 0, 24
    .4byte 0x41820024 # beq .L_80108E90
    lwz 3, 0x270(30)
    lwz 4, 0x198(30)
    bl fn_80388CAC
    lwz 3, 0x270(30)
    bl fn_802308E0
    li 0, 0x2
    stw 0, 0x26c(30)
    .4byte 0x4800033C # b .L_801091C8
L_80108E90:
    lis 4, lbl_8046403C@ha
    lwz 3, 0x270(30)
    addi 4, 4, lbl_8046403C@l
    lwz 4, 0x8(4)
    bl fn_8038470C
    li 0, 0x5
    stw 0, 0x26c(30)
    .4byte 0x4800031C # b .L_801091C8
L_80108EB0:
    lis 4, lbl_8046403C@ha
    lwz 3, 0x270(30)
    addi 4, 4, lbl_8046403C@l
    lwz 4, 0xc(4)
    bl fn_8038470C
    li 0, 0x4
    stw 0, 0x26c(30)
    .4byte 0x480002FC # b .L_801091C8
    lwz 31, 0x270(30)
    cmpwi 31, 0x0
    .4byte 0x41800170 # blt .L_80109048
    li 0, 0x0
    stb 0, 0x11d(30)
    lwz 0, 0x268(30)
    cmplwi 0, 0x7
    .4byte 0x4181015C # bgt .L_80109048
    lis 3, jumptable_8049CE34@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049CE34@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lis 4, lbl_80464028@ha
    mr 3, 31
    lhz 0, lbl_80464028@l(4)
    neg 4, 0
    bl fn_802362C4
    .4byte 0x4800012C # b .L_80109048
    lis 4, lbl_80464028@ha
    mr 3, 31
    addi 4, 4, lbl_80464028@l
    lhz 0, 0x2(4)
    neg 4, 0
    bl fn_802362C4
    .4byte 0x48000110 # b .L_80109048
    mr 3, 31
    bl fn_80237774
    lis 4, lbl_80464028@ha
    addi 4, 4, lbl_80464028@l
    lhz 0, 0x4(4)
    subf 4, 0, 3
    mr 3, 31
    bl fn_8023764C
    .4byte 0x480000EC # b .L_80109048
    lis 4, lbl_80464028@ha
    mr 3, 31
    addi 4, 4, lbl_80464028@l
    lhz 0, 0x6(4)
    neg 4, 0
    bl fn_802362C4
    .4byte 0x480000D0 # b .L_80109048
    lis 4, lbl_80464028@ha
    mr 3, 31
    addi 4, 4, lbl_80464028@l
    lhz 0, 0x8(4)
    neg 4, 0
    bl fn_802362C4
    mr 3, 31
    bl fn_80235FE8
    mr 3, 31
    li 4, 0x9
    li 5, 0x1
    bl fn_802372F8
    .4byte 0x4800009C # b .L_80109048
    lis 4, lbl_80464028@ha
    mr 3, 31
    addi 4, 4, lbl_80464028@l
    lhz 0, 0xa(4)
    neg 4, 0
    bl fn_802362C4
    mr 3, 31
    bl fn_80235FE8
    mr 3, 31
    li 4, 0x4
    li 5, 0x1
    bl fn_802372F8
    .4byte 0x48000068 # b .L_80109048
    lis 4, lbl_80464028@ha
    mr 3, 31
    addi 4, 4, lbl_80464028@l
    lhz 0, 0xc(4)
    neg 4, 0
    bl fn_802362C4
    mr 3, 31
    bl fn_80235FE8
    mr 3, 31
    li 4, 0x3
    li 5, 0x1
    bl fn_802372F8
    .4byte 0x48000034 # b .L_80109048
    lis 4, lbl_80464028@ha
    mr 3, 31
    addi 4, 4, lbl_80464028@l
    lhz 0, 0xe(4)
    neg 4, 0
    bl fn_802362C4
    mr 3, 31
    bl fn_80235FE8
    mr 3, 31
    li 4, 0x6
    li 5, 0x1
    bl fn_802372F8
L_80109048:
    li 0, 0x3
    li 29, 0x0
    stw 0, 0x26c(30)
    lwz 0, 0x268(30)
    cmplwi 0, 0x7
    .4byte 0x41810070 # bgt .L_801090CC
    lis 3, jumptable_8049CE14@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_8049CE14@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    ori 29, 29, 0x4
    .4byte 0x48000050 # b .L_801090CC
    oris 29, 29, 0x4
    ori 29, 29, 0x20
    .4byte 0x48000044 # b .L_801090CC
    oris 29, 29, 0x5
    .4byte 0x4800003C # b .L_801090CC
    oris 29, 29, 0x4
    ori 29, 29, 0x14
    .4byte 0x48000030 # b .L_801090CC
    oris 29, 29, 0x1
    ori 29, 29, 0x8
    .4byte 0x48000024 # b .L_801090CC
    oris 29, 29, 0x1
    ori 29, 29, 0x3
    .4byte 0x48000018 # b .L_801090CC
    oris 29, 29, 0x1
    ori 29, 29, 0x2
    .4byte 0x4800000C # b .L_801090CC
    oris 29, 29, 0x1
    ori 29, 29, 0x5
L_801090CC:
    lwz 3, 0x270(30)
    slwi 4, 3, 24
    slwi 0, 3, 26
    or 29, 29, 4
    or 29, 29, 0
    bl fn_8023E724
    mr 31, 3
    bl SpatialRegistry_GetBase
    lis 4, 0x494d
    lwz 5, 0x4(30)
    mr 6, 31
    mr 7, 29
    addi 4, 4, 0x5550
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480000BC # b .L_801091C8
    lwz 3, 0x270(30)
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x408200AC # bne .L_801091C8
    lwz 3, 0x270(30)
    li 4, 0x0
    bl fn_8023061C
    li 0, 0x6
    stw 0, 0x26c(30)
    .4byte 0x48000094 # b .L_801091C8
    lwz 4, 0x4(30)
    addi 3, 1, 0x14
    lwz 5, 0x198(30)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x270(30)
    lwz 4, 0x198(30)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_801091C8
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x26c(30)
    stw 0, 0x270(30)
    .4byte 0x48000054 # b .L_801091C8
    lwz 4, 0x4(30)
    addi 3, 1, 0x14
    lwz 5, 0x198(30)
    li 6, 0x1
    li 7, 0x0
    bl fn_8022FEB8
    lwz 3, 0x270(30)
    lwz 4, 0x198(30)
    bl fn_80388CAC
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_801091C8
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x26c(30)
    stw 0, 0x270(30)
    .4byte 0x48000014 # b .L_801091C8
    li 0, -0x1
    mr 3, 30
    stw 0, 0x270(30)
    bl fn_801F3668
L_801091C8:
    addi 3, 30, 0x230
    bl fn_801D1C18
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

