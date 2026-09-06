/*
 * fn_801056E4(this): the fn_80105368-class's main update() method
 * (survey-level, not full per-branch semantics). Notable findings:
 *  - Calls fn_801F5930 (unidentified init) then checks the same per-
 *    target quick-reject flag byte as fn_801053E8 (+0x31df); if set,
 *    draws a UI message via fn_80239914 (confirmed message/UI draw).
 *  - Checks this->0x368 as a highlight-target slot (GetRoomConfigRecord+
 *    fn_802D800C, the confirmed per-slot ready/state check) and clears
 *    this->0x11c (an active/validity flag - matches the registry-entry
 *    validity flag documented in project_fsa_shared_effect_subsystem_
 *    crossref.md's fn_801F666C!) if invalid.
 *  - Dispatches on this->0x370 (0-3, an "activation phase" state):
 *    state 2 constructs the ring/chain-adjacency library object at
 *    this->0x230 via the CONFIRMED real constructor fn_800FE3EC (see
 *    project_fsa_extab_bug_resolved.md's 65th landing) - this class
 *    EMBEDS the ring library as a member, not just references it.
 *    State 1 calls the confirmed FindSlotsByType (fn_800FD894) and
 *    smoothed-steering helper (fn_800FDEA0) plus a paired-single
 *    position integration (`ps_add`) and the confirmed chase/follow
 *    iterator (fn_800FE21C) - this class's ring member is actively
 *    driving a chain-following behavior. State 3 is a 60-tick (0x3c)
 *    countdown before advancing.
 *  - Tail: loops over 4 candidates calling the just-landed geometric
 *    hit-test fn_801053E8, and on a hit, several accept-path checks
 *    (fn_8022D75C/fn_80230188/fn_8023E724) before computing a paired-
 *    single delta (`ps_sub`) and calling fn_8023DF68.
 *  - Final call: fn_801D1C18(this+0x374) - the per-frame re-evaluation driver of the
 *    "timed-cue lookup table" shared component this class embeds at +0x374 (see
 *    project_fsa_multiple_inheritance_pattern.md for the full real-decomp writeup).
 *    CORRECTION: earlier framing called this "driving a second base subobject via multiple
 *    inheritance" - it's actually a plain (non-virtual) method call on an embedded MEMBER
 *    object, not a base class. The offset math (+0x374, reset by fn_80105368's destructor
 *    at +0x398=+0x374+0x24) is unaffected; only the C++-level relationship is corrected.
 */

.section extab, "a"
.balign 4
.global etb_800059F0
etb_800059F0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800059F0, 8

.section extabindex, "a"
.balign 4
.global eti_80011E18
eti_80011E18:
    .4byte fn_801056E4
    .4byte 0x00000350
    .4byte etb_800059F0
.size eti_80011E18, 12

.text
.balign 4
.global fn_801056E4

fn_801056E4:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    stw 30, 0x68(1)
    bl fn_801F5930
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182005C # beq .L_80105774
    lfs 1, 0x60(31)
    addi 3, 1, 0x4c
    stfs 1, 0x4c(1)
    lfs 4, 0x64(31)
    stfs 4, 0x50(1)
    lfs 2, 0x68(31)
    stfs 2, 0x54(1)
    lfs 3, 0x6c(31)
    stfs 3, 0x58(1)
    lfs 0, 0xc(31)
    fadds 1, 1, 0
    fadds 0, 2, 0
    stfs 1, 0x4c(1)
    lfs 2, 0x10(31)
    fadds 1, 4, 2
    stfs 0, 0x54(1)
    fadds 0, 3, 2
    stfs 1, 0x50(1)
    stfs 0, 0x58(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
L_80105774:
    lwz 30, 0x368(31)
    cmpwi 30, 0x0
    .4byte 0x40810024 # ble .L_801057A0
    bl GetRoomConfigRecord
    mr 4, 30
    bl fn_802D800C
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_801057A0
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x48000280 # b .L_80105A1C
L_801057A0:
    lwz 0, 0x370(31)
    cmpwi 0, 0x1
    .4byte 0x418200B0 # beq .L_80105858
    .4byte 0x40800010 # bge .L_801057BC
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801057C8
    .4byte 0x480001BC # b .L_80105974
L_801057BC:
    cmpwi 0, 0x3
    .4byte 0x408001B4 # bge .L_80105974
    .4byte 0x48000188 # b .L_8010594C
L_801057C8:
    lwz 4, 0x354(31)
    cmpwi 4, 0x0
    .4byte 0x408101A4 # ble .L_80105974
    psq_l 1, 0xc(31), 0, 0
    addi 5, 1, 0x34
    lfs 0, 0x14(31)
    addi 3, 31, 0x230
    psq_st 1, 0x0(5), 0, 0
    stfs 0, 0x3c(1)
    lwz 6, 0x4(31)
    bl fn_800FE3EC
    lwz 0, 0x354(31)
    cmpwi 0, 0x0
    .4byte 0x40810048 # ble .L_80105844
    lwz 0, 0x364(31)
    cmpwi 0, 0x0
    .4byte 0x4081003C # ble .L_80105844
    addi 3, 31, 0x230
    li 4, -0x1
    li 5, 0x0
    li 6, 0x0
    bl fn_800FD894
    lwz 4, 0x364(31)
    clrlwi 0, 3, 24
    cmpw 4, 0
    .4byte 0x41810018 # bgt .L_80105844
    lbz 0, 0x232(31)
    clrlwi 3, 4, 24
    cmplw 3, 0
    .4byte 0x40800008 # bge .L_80105844
    stb 3, 0x233(31)
L_80105844:
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x360(31)
    stw 0, 0x370(31)
    .4byte 0x48000120 # b .L_80105974
L_80105858:
    lwz 0, 0x354(31)
    cmpwi 0, 0x0
    .4byte 0x40810114 # ble .L_80105974
    .4byte 0xC0229288 # lfs f1, lbl_8053C228@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x60(1)
    addi 4, 1, 0x28
    .4byte 0xC84292A8 # lfd f2, lbl_8053C248@sda21(r0)
    addi 3, 31, 0x230
    stfs 1, 0x40(1)
    addi 5, 1, 0x40
    .4byte 0xC06292A0 # lfs f3, lbl_8053C240@sda21(r0)
    addi 6, 1, 0xc
    stfs 1, 0x44(1)
    addi 7, 1, 0x8
    .4byte 0xC0029294 # lfs f0, lbl_8053C234@sda21(r0)
    li 8, 0x200
    stfs 1, 0x48(1)
    lwz 0, 0x4(31)
    stw 0, 0xc(1)
    lwz 0, 0x358(31)
    psq_l 5, 0xc(31), 0, 0
    xoris 0, 0, 0x8000
    lfs 4, 0x14(31)
    stw 0, 0x64(1)
    lfd 1, 0x60(1)
    psq_st 5, 0x0(4), 0, 0
    fsubs 1, 1, 2
    stfs 4, 0x30(1)
    fmadds 1, 3, 1, 0
    bl fn_800FDEA0
    lfs 0, 0x40(1)
    cmpwi 3, 0x0
    stfs 0, 0x3c(31)
    lfs 0, 0x44(1)
    stfs 0, 0x40(31)
    lfs 0, 0x48(1)
    stfs 0, 0x44(31)
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    .4byte 0x41820064 # beq .L_80105974
    addi 3, 31, 0x230
    li 4, 0xff
    bl fn_800FE21C
    cmplwi 3, 0x0
    .4byte 0x41820050 # beq .L_80105974
    li 0, 0x0
    .4byte 0xC0029288 # lfs f0, lbl_8053C228@sda21(r0)
    stw 0, 0x360(31)
    li 0, 0x2
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    stw 0, 0x370(31)
    .4byte 0x4800002C # b .L_80105974
L_8010594C:
    lwz 3, 0x360(31)
    addi 0, 3, 0x1
    stw 0, 0x360(31)
    lwz 0, 0x360(31)
    cmpwi 0, 0x3c
    .4byte 0x41800014 # blt .L_80105974
    li 3, 0x0
    li 0, 0x1
    stw 3, 0x360(31)
    stw 0, 0x370(31)
L_80105974:
    li 30, 0x0
L_80105978:
    mr 3, 31
    mr 4, 30
    bl fn_801053E8
    clrlwi. 0, 3, 24
    .4byte 0x41820080 # beq .L_80105A08
    mr 3, 30
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x40820070 # bne .L_80105A08
    mr 3, 30
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820060 # bne .L_80105A08
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC0029288 # lfs f0, lbl_8053C228@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41810048 # bgt .L_80105A08
    lfs 0, 0x14(31)
    addi 4, 1, 0x1c
    psq_l 1, 0xc(31), 0, 0
    mr 3, 30
    stfs 0, 0x18(1)
    psq_l 3, 0x18(31), 0, 0
    psq_l 2, 0x18(1), 1, 0
    psq_l 0, 0x20(31), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x10(1), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x10(1), 0, 0
    psq_st 0, 0x18(1), 1, 0
    lfs 0, 0x18(1)
    psq_st 3, 0x0(4), 0, 0
    stfs 0, 0x24(1)
    bl fn_8023DF68
L_80105A08:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF68 # blt .L_80105978
    addi 3, 31, 0x374
    bl fn_801D1C18
L_80105A1C:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

