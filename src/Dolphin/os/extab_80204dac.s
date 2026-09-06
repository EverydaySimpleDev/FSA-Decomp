/*
 * NEW ACTOR (vtable lbl_804A5A30). While state==3 and a "cutscene mode"
 * byte (this->0xc4) is set: resolves an owner "controller" object
 * (this->0xc8) via fn_80230CFC into this->0x98, looks it up via
 * fn_801F6874 into this->0x33c, and teleports this actor to the
 * controller's position (fn_8023E7B0) while resetting facing (0x3c/40/
 * 44). Updates this actor's player-group ownership (this->0x4) from the
 * controller's group (fn_8023DE58) and resets the animation cue index.
 * Resolves a target via the confirmed fn_8022F514/fn_8022F3DC
 * co-op-link delegate pair, caching its anchor point into
 * this->0x32c/0x330/0x334. Otherwise (state != 3), if certain flag bits
 * (0x230, bits 29-31) are all clear, calls the unconfirmed zero-arg
 * fn_801CE32C(). Reads as a cutscene-triggered "possess/teleport to
 * controller" setup.
 *
 * Attempted real-C++ promotion (Phase 4): landed the ENTIRE function
 * except one 3-float-position-copy-plus-a-reused-zero-constant block.
 * fn_8022F514's real return type is `u8` (fixed a genuine byte-vs-word
 * boolean-check diff, confirmed by literal retail bytes using
 * `clrlwi`/mask instead of `cmpwi`), and the SDA zero-constant needs
 * caching in one local reused 3x (same lesson as fn_80211078/
 * fn_801D0ED0). The ONE residual: retail interleaves the zero-constant
 * load with the FIRST of 3 position-copy loads, reusing f1 for all 3
 * position reads and f0 for the zero constant.
 *
 * 5 DISTINCT phrasings tried across 2 sessions, ALL producing the
 * IDENTICAL register pairing (f0=position/f1=zero, opposite of
 * retail) regardless of declaration/temporal order:
 *   1. constant declared after all 3 position copies
 *   2. constant declared mid-copy, right after the first position read
 *      (worse, 10 diffs - reversed load order too)
 *   3. constant declared before the producing call (pulled across the
 *      call boundary, +16 bytes from extra preservation)
 *   4. an explicit named local for the FIRST position value, with its
 *      store deferred until after the constant load (matches retail's
 *      literal temporal order) - still the same wrong register pairing
 *   5. (researched online + in the local zeldaret/tww clone: decomp-
 *      academy's "declaration order colors the registers" lesson
 *      documents that for INTEGER GPRs, the EARLIER-declared local
 *      gets the HIGHER-numbered register (e.g. r31 vs r30) - tried the
 *      inverse hypothesis for floats, declaring the constant FIRST
 *      (right after the call, before any position access, avoiding
 *      variant 3's call-crossing cost) - STILL produced f0=position/
 *      f1=zero, disproving that the GPR declaration-order rule
 *      transfers to float registers in this case either.
 *
 * This is conclusively established as the scheduler-internal float
 * register-role wall (same family as fn_801DBFB0's near-miss) - the
 * register PAIRING itself is fixed by MWCC independent of declaration
 * order, temporal load order, or naming, for both the "GPR rule" and
 * its inverse. Do not re-attempt via source phrasing; would need an
 * actual compiler flag/pragma discovery, or ground-truth source from a
 * matching decomp of the SAME retail binary (not just a same-engine
 * sibling like tww/tp, which don't share this function).
 */
.section extab, "a"
.balign 4
.global etb_80009C18
etb_80009C18:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80009C18, 8

.section extabindex, "a"
.balign 4
.global eti_800175A8
eti_800175A8:
    .4byte fn_80204DAC
    .4byte 0x0000010C
    .4byte etb_80009C18
.size eti_800175A8, 12

.text
.balign 4
.global fn_80204DAC

fn_80204DAC:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x3
    .4byte 0x408200C4 # bne .L_80204E90
    lbz 0, 0xc4(30)
    cmplwi 0, 0x0
    .4byte 0x418200C8 # beq .L_80204EA0
    lwz 3, 0xc8(30)
    bl fn_80230CFC
    stw 3, 0x98(30)
    lwz 3, 0x98(30)
    bl fn_801F6874
    sth 3, 0x33c(30)
    lwz 3, 0xc8(30)
    bl fn_8023E7B0
    lfs 1, 0x0(3)
    .4byte 0xC002C8C0 # lfs f0, lbl_8053F860@sda21(r0)
    stfs 1, 0xc(30)
    lfs 1, 0x4(3)
    stfs 1, 0x10(30)
    lfs 1, 0x8(3)
    stfs 1, 0x14(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    lwz 3, 0xc8(30)
    bl fn_8023DE58
    lwz 0, 0x4(30)
    cmpw 0, 3
    .4byte 0x4182006C # beq .L_80204EA0
    lwz 3, 0xc8(30)
    bl fn_8023DE58
    stw 3, 0x4(30)
    li 0, 0x0
    stw 0, 0x2a8(30)
    lwz 31, 0xc8(30)
    mr 3, 31
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80204E6C
    mr 3, 31
    bl fn_8022F3DC
    mr 31, 3
L_80204E6C:
    mr 3, 31
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x32c(30)
    lfs 0, 0x4(3)
    stfs 0, 0x330(30)
    lfs 0, 0x8(3)
    stfs 0, 0x334(30)
    .4byte 0x48000014 # b .L_80204EA0
L_80204E90:
    lwz 0, 0x230(30)
    clrlwi. 0, 0, 29
    .4byte 0x40820008 # bne .L_80204EA0
    bl fn_801CE32C
L_80204EA0:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
