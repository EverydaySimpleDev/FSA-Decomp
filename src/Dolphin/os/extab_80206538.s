.section extab, "a"
.balign 4
.global etb_80009C70
etb_80009C70:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80009C70, 8

.section extabindex, "a"
.balign 4
.global eti_8001762C
eti_8001762C:
    .4byte fn_80206538
    .4byte 0x00000220
    .4byte etb_80009C70
.size eti_8001762C, 12

.text
.balign 4
.global fn_80206538

# fn_80206538(this) - TZOK's real setParams() - dense, survey-level
# for several new helper calls. Calls the base fn_801D0ED0, then
# extracts and clamps THREE small fields from this->0x90 into
# this->0x34a/0x34b/0x34c (byte "tier/level" values - 0x34c is
# additionally ratcheted up to at least 0x34b, a progression-clamp
# idiom), a 2-bit field into this->0x350 (a "variant/table select"
# index, clamped to [0,2]), and a 5-bit field into this->0x354.
# Calls fn_802072E4(this) (new, not yet decompiled).
#
# Overrides the standard scale/offset constants (own
# lbl_8053F89C/F8A0), this->0xb0=0x51303, flag bit 0x200, a
# 1000-frame timer (this->0x108, copied to 0x244). Seeds the
# inherited position-trail-predictor's cache fields (this->0x32c/
# 0x330/0x334) with the spawn position - the SAME idiom SLK2's
# setParams uses (see project_fsa_slk2_actor_and_shared_draw_lesson.md).
# Calls fn_801F6874(this->0x98) (new) storing a 16-bit result to
# this->0x33c.
#
# Registers the inherited "timed-cue lookup table" component at
# this->0x270 with a DYNAMICALLY SELECTED sequence table
# (`lbl_804A59B0 + this->0x350*0x20`, count=8) - unlike every other
# actor landed this session (which always use ONE fixed table), TZOK
# picks from multiple candidate sequence sets based on the earlier
# "variant/table select" field - a genuinely new pattern.
#
# Calls the "add to tracked list" pair (fn_80204638+fn_80204A20, see
# extab_80206758.s). Then, if this->0x354 (the 5-bit field) is
# nonzero, checks a per-owner settings predicate
# (GetRoomConfigRecord()->fn_802D7F40(settings, this->0x354)) and, if true,
# OVERRIDES the scale/offset constants AGAIN with a second set
# (lbl_8053F870/F8A4), clears this->0xb0, clears the visibility flag
# (this->0x11c=0 - HIDDEN), then calls a THIRD tracked-list pair
# (fn_80204638+fn_80204834) - reading as a conditional "spawn already
# hidden/inactive" variant gated by an owner-specific setting.
fn_80206538:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    bl fn_801D0ED0
    lwz 3, 0x90(31)
    li 0, 0x9
    clrlwi 3, 3, 28
    cmplwi 3, 0x9
    .4byte 0x41810008 # bgt .L_80206570
    mr 0, 3
L_80206570:
    stb 0, 0x34a(31)
    li 0, 0x3
    lwz 3, 0x90(31)
    extrwi 3, 3, 8, 16
    cmplwi 3, 0x3
    .4byte 0x40810008 # ble .L_8020658C
    mr 0, 3
L_8020658C:
    stb 0, 0x34b(31)
    li 0, 0x3
    lwz 3, 0x90(31)
    extrwi 3, 3, 8, 8
    cmplwi 3, 0x3
    .4byte 0x40810008 # ble .L_802065A8
    mr 0, 3
L_802065A8:
    stb 0, 0x34c(31)
    lbz 0, 0x34c(31)
    lbz 3, 0x34b(31)
    cmplw 0, 3
    .4byte 0x4181000C # bgt .L_802065C4
    addi 0, 3, 0x1
    stb 0, 0x34c(31)
L_802065C4:
    lwz 3, 0x90(31)
    li 0, 0x3
    extrwi 3, 3, 2, 6
    cmpwi 3, 0x3
    .4byte 0x40800008 # bge .L_802065DC
    mr 0, 3
L_802065DC:
    stw 0, 0x350(31)
    mr 3, 31
    lwz 0, 0x90(31)
    srwi 0, 0, 27
    stw 0, 0x354(31)
    bl fn_802072E4
    .4byte 0xC022C8FC # lfs f1, lbl_8053F89C@sda21(r0)
    lis 3, 0x5
    .4byte 0xC002C900 # lfs f0, lbl_8053F8A0@sda21(r0)
    addi 3, 3, 0x1303
    stfs 1, 0x80(31)
    li 0, 0x3e8
    stfs 1, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 3, 0xb0(31)
    lwz 3, 0x230(31)
    ori 3, 3, 0x200
    stw 3, 0x230(31)
    stw 0, 0x108(31)
    lwz 0, 0x108(31)
    stw 0, 0x244(31)
    lfs 0, 0xc(31)
    stfs 0, 0x32c(31)
    lfs 0, 0x10(31)
    stfs 0, 0x330(31)
    lfs 0, 0x14(31)
    stfs 0, 0x334(31)
    lwz 3, 0x98(31)
    bl fn_801F6874
    sth 3, 0x33c(31)
    li 5, 0x0
    lis 3, lbl_804A59B0@ha
    li 4, -0x1
    stw 5, 0x248(31)
    addi 0, 3, lbl_804A59B0@l
    .4byte 0xC002C8C0 # lfs f0, lbl_8053F860@sda21(r0)
    addi 3, 31, 0x270
    stw 5, 0x24c(31)
    li 5, 0x8
    stw 4, 0x250(31)
    stfs 0, 0x254(31)
    stfs 0, 0x258(31)
    lwz 4, 0x350(31)
    slwi 4, 4, 5
    add 4, 0, 4
    bl fn_801D2608
    lwz 4, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    addi 3, 31, 0x270
    bl fn_801D1D60
    bl fn_80204638
    mr 4, 31
    bl fn_80204A20
    lwz 29, 0x354(31)
    li 30, 0x0
    cmpwi 29, 0x0
    .4byte 0x4182001C # beq .L_802066E8
    bl GetRoomConfigRecord
    mr 4, 29
    bl fn_802D7F40
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_802066E8
    li 30, 0x1
L_802066E8:
    clrlwi. 0, 30, 24
    .4byte 0x41820050 # beq .L_8020673C
    .4byte 0xC022C8D0 # lfs f1, lbl_8053F870@sda21(r0)
    li 0, 0x0
    .4byte 0xC002C904 # lfs f0, lbl_8053F8A4@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    stw 0, 0xb0(31)
    stb 0, 0x11c(31)
    bl fn_80204638
    bl fn_80204834
L_8020673C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

