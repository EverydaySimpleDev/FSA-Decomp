.section extab, "a"
.balign 4
.global etb_8000B2B8
etb_8000B2B8:
    .4byte 0x28080000
    .4byte 0x00000000
.size etb_8000B2B8, 8

.section extabindex, "a"
.balign 4
.global eti_80019708
eti_80019708:
    .4byte fn_80240670
    .4byte 0x00000198
    .4byte etb_8000B2B8
.size eti_80019708, 12

# fn_80240670 - the sub-checker delegate for fn_8022F478 in the "per-
# player capability predicate" family (see
# [[project_fsa_player_target_helper_decoded]]). Survey-level - more
# complex than its siblings (0x198 bytes vs. the usual ~0x50). Opens with
# a genuine new discovery: it builds a per-player BIT (1 << playerObj->0x4,
# i.e. the player's own slot/character index) and tests it against a byte
# flags field at the confirmed global PRNG/state struct's +0x82
# (`lbl_8053AAF8->0x82`) - a per-player enable-bitmask living in the SAME
# struct as the global LCG state. If that bit is clear AND the player
# isn't linked (playerObj->0xd60 < 0), returns true immediately. Otherwise
# falls into a loop over all 4 player slots (via fn_8022F514/fn_8022F3DC,
# both still unexplored - likely "same group"/"priority order" checks)
# counting matches, then branches on a mode value (from fn_8022CAF8 or
# playerObj->0x120c) to pick between two further counting passes and a
# final parity/sign-based boolean combine.
#
# Full instruction-by-instruction trace (Phase 4 attempt): builds
# `u8 bit = 1 << this->0x4;` (byte-narrowed, matching the established
# fn_80251AEC lesson) and tests `(lbl_8053AAF8[0]->0x82 & bit) == 0 &&
# this->0xd60 < 0` for the early-return-true path. Otherwise loops i=0..3:
# if i==this->0x4 (self), counts as a match; else if fn_8022F514(i) is
# true, counts a match when (this->0xd60<0 ? this->0x4 : this->0xd60)
# equals fn_8022F3DC(i); else (fn_8022F514(i) false) counts a match when
# i==this->0xd60 directly (a linked-partner index, not a group id).
# matchCount>1 picks a "mode" (fn_8022CAF8(link) if linked, else
# this->0x120c); matchCount<=1 forces mode=5. mode!=4 returns
# `1 ^ (this->0xd60>>31)` (i.e. 1 if linked). mode==4 resolves `val`
# (fn_80234004(link) if linked else this->0x1224), then counts
# same-group slots (j=0..this->0x4-1) whose fn_8022F3DC(j)==link into
# `count` (0 if unlinked), and returns `val != count`.
#
# Attempted real-C++ promotion (Phase 4): landed the ENTIRE function
# except a single missing 4-byte (1-instruction) CSE collapse - the
# closest possible near-miss short of a full byte-exact match. 2 real
# fixes were needed en route:
# 1. If/else physical layout (2 instances, same class as
#    fn_801D5338/fn_80401FA0/fn_801D2E70): the "matchCount<=1" case
#    (mode=5) must be written FIRST with an explicit `goto haveMode;`,
#    and the "field read" alternatives (this->0x120c, this->0x1224)
#    must be the LAST block before their respective merge labels
#    (falling through with no trailing jump) - retail treats the
#    "simple/fallback" case as fallthrough-adjacent-to-merge and the
#    "call" case as the one needing an explicit skip-jump, the opposite
#    of naive if-true-first codegen. Needed explicit goto/label
#    restructuring (a plain if/else always put both branches non-
#    adjacent to the merge, costing 2 branches where retail has only 1).
# 2. Field-read-before-call ordering: `if (fieldRead == someCall())`
#    written inline let MWCC evaluate the call BEFORE the field read
#    (opposite of retail, which loads the field first) - fixed by
#    hoisting the field read to its own named local statement
#    (`s32 myGroup2 = *(s32*)(p+0x4); if (myGroup2 == fn_8022F3DC(i))`)
#    BEFORE the comparison, forcing the read to happen first.
#
# The ONE remaining residual: this->0x4 is read TWICE in the real source
# (once for the initial bit/shift computation, once later for the loop's
# `myGroup` bound) with a conditional early-return in between - retail
# keeps these as 2 SEPARATE loads (into different registers), but
# MWCC always collapses them into a single cached value reused via one
# register, regardless of phrasing (tried: named locals at both sites;
# fully inlining the second read with no persisting first-read local).
# This is the SAME confirmed "CSE-elimination" wall already established
# twice this session (fn_8022C274 family, fn_8023A240) - MWCC eliminates
# a redundant computation retail's own build deliberately kept. Deferred
# without further attempts per standing discipline; this function is a
# textbook-clean instance of the wall (single isolated 4-byte residual,
# nothing else differs) - both real fixes above are preserved for a
# future landing attempt if a new lever for the CSE wall is ever found.
#
# REVISITED (post-compile patch mechanism, same session): attempted to
# patch this residual via tools/patch_obj.py (see
# reference_fsa_param_register_pairing_wall_investigation.md and the
# fn_800FAB50/fn_801F15BC/fn_801D2E70/fn_80104EB0 landings it unlocked).
# On fresh recompile, the residual turned out LARGER than the "single
# isolated 4-byte gap" characterized above: retail computes the initial
# shift amount (`1 << this->0x4`) using a SHORT-LIVED r0 loaded as the
# very FIRST instruction (before even the `stmw` prologue save), then
# does a genuinely FRESH, separately-registered reload of this->0x4 for
# the loop's `myGroup` bound later (r29) - MWCC instead allocates ONE
# persistent callee-saved register up front for this->0x4 and reuses it
# for BOTH purposes, cascading into a much larger register-identity
# mismatch through the rest of the function than a single missing
# instruction. Not attempted further via the patch tool given the
# larger, less-isolated scope; would need substantially more manual
# byte-level reconciliation than the other 4 near-misses this session,
# which were all clean single-cause residuals. Worth revisiting with
# the now-proven patch tool if a future session wants to invest the
# extra derivation effort - the tool itself handles this correctly once
# the exact patch bytes are worked out, as proven on fn_80104EB0's own
# CSE/missing-instruction case.
.text
.balign 4
.global fn_80240670

fn_80240670:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    lwz 0, 0x4(3)
    stmw 27, 0xc(1)
    mr 31, 3
    li 3, 0x1
    slw 0, 3, 0
    clrlwi 0, 0, 24
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lbz 4, 0x82(4)
    and. 0, 4, 0
    .4byte 0x40820018 # bne .L_802406B8
    lwz 0, 0xd60(31)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802406B8
    li 3, 0x1
    .4byte 0x48000140 # b .L_802407F4
L_802406B8:
    li 28, 0x0
    lwz 29, 0x4(31)
    mr 27, 28
L_802406C4:
    cmpw 27, 29
    .4byte 0x4082000C # bne .L_802406D4
    addi 28, 28, 0x1
    .4byte 0x48000064 # b .L_80240734
L_802406D4:
    mr 3, 27
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820044 # beq .L_80240724
    lwz 30, 0xd60(31)
    cmpwi 30, 0x0
    .4byte 0x4180001C # blt .L_80240708
    mr 3, 27
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x40820038 # bne .L_80240734
    addi 28, 28, 0x1
    .4byte 0x48000030 # b .L_80240734
L_80240708:
    lwz 30, 0x4(31)
    mr 3, 27
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x4082001C # bne .L_80240734
    addi 28, 28, 0x1
    .4byte 0x48000014 # b .L_80240734
L_80240724:
    lwz 0, 0xd60(31)
    cmpw 27, 0
    .4byte 0x40820008 # bne .L_80240734
    addi 28, 28, 0x1
L_80240734:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF88 # blt .L_802406C4
    cmpwi 28, 0x1
    .4byte 0x4181000C # bgt .L_80240750
    li 3, 0x5
    .4byte 0x4800001C # b .L_80240768
L_80240750:
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x4180000C # blt .L_80240764
    bl fn_8022CAF8
    .4byte 0x48000008 # b .L_80240768
L_80240764:
    lwz 3, 0x120c(31)
L_80240768:
    cmpwi 3, 0x4
    .4byte 0x4082007C # bne .L_802407E8
    lwz 3, 0xd60(31)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_80240788
    bl fn_80234004
    mr 29, 3
    .4byte 0x48000008 # b .L_8024078C
L_80240788:
    lwz 29, 0x1224(31)
L_8024078C:
    lwz 30, 0xd60(31)
    cmpwi 30, 0x0
    .4byte 0x4080000C # bge .L_802407A0
    li 0, 0x0
    .4byte 0x48000038 # b .L_802407D4
L_802407A0:
    li 27, 0x0
    lwz 31, 0x4(31)
    mr 28, 27
    .4byte 0x4800001C # b .L_802407C8
L_802407B0:
    mr 3, 28
    bl fn_8022F3DC
    cmpw 30, 3
    .4byte 0x40820008 # bne .L_802407C4
    addi 27, 27, 0x1
L_802407C4:
    addi 28, 28, 0x1
L_802407C8:
    cmpw 28, 31
    .4byte 0x4180FFE4 # blt .L_802407B0
    addi 0, 27, 0x1
L_802407D4:
    subf 3, 29, 0
    subf 0, 0, 29
    or 0, 3, 0
    srwi 3, 0, 31
    .4byte 0x48000010 # b .L_802407F4
L_802407E8:
    lwz 0, 0xd60(31)
    srwi 0, 0, 31
    xori 3, 0, 0x1
L_802407F4:
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

