.section extab, "a"
.balign 4
.global etb_8000A3A4
etb_8000A3A4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000A3A4, 8

.section extabindex, "a"
.balign 4
.global eti_800180A0
eti_800180A0:
    .4byte fn_8021AF28
    .4byte 0x00000090
    .4byte etb_8000A3A4
.size eti_800180A0, 12

.text
.balign 4
.global fn_8021AF28

# fn_8021AF28(this) - KEPO's real draw() - a dispatcher, not a direct
# renderer. Temporarily nudges the Y position up by a constant
# (this->0x10 += const) before delegating, restoring it afterward -
# a "draw relative to a raised anchor" idiom. Checks a predicate
# fn_80219E04(this) (new) - if true, delegates to fn_8021B1AC(this)
# (new, the likely "special state" draw path); otherwise dispatches by
# draw mode (this->0x248) into ranges, calling fn_8021AFB8(this) (new)
# for modes [4,5] and [0xb,0xc]. All actual rendering happens inside
# those 3 undecompiled callees - this function itself never touches a
# render primitive.
#
# NOTE: real-C++ promotion attempted (session N, retested session N+1).
# Control flow, field offsets, and the mode-range dispatch (confirmed
# [4,5] and [0xb,0xc], NOT [0xd,...] as an earlier pass of this comment
# guessed) all verified byte-exact in isolation. Blocked by a genuine
# "MWCC's own scheduler decides" near-miss: under this project's real
# build flags, the prologue's `lfs f0, lbl_8053FCC8@sda21(r0)` const
# load - which retail schedules FIRST, even before the `mr 31,3`
# this-pointer preserve - always gets scheduled by MWCC AFTER the
# integer prologue instead (stw/stw/mr then lfs), regardless of source
# statement order, an explicit `#pragma scheduling off/reset` wrap, or
# removing the `this_`-alias local entirely. 16 of 144 bytes differ (4
# reordered instructions); everything else - the dispatch chain's shared
# call site, branch directions/offsets, register choices - matches
# retail exactly. Same documented hard category as extab_801f3708.s.
#
# RETESTED (session N+1): also tried all 4 `-inline` variants
# (auto/off/deferred/on - identical result each time, confirming the
# original comment's "-inline auto is the trigger" phrasing was
# descriptive, not an actual lever) and swapping the addition's operand
# order (`lbl_8053FCC8 + *(f32*)(p+0x10)` instead of the reverse) -
# changed WHICH register holds the constant but did not hoist its load
# any earlier. A dedicated 20-minute decomp-permuter run
# (permuter_work/8021af28/) also found ZERO improvement over this exact
# base source - the most thoroughly negative permuter result of any
# candidate tried this project so far (every other stuck candidate found
# at least some better-scoring, if illegitimate, mutation). Genuinely
# exhausted short of a new technique - don't re-attempt via source
# restructuring, pragmas, or -inline flags again.
fn_8021AF28:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC002CD28 # lfs f0, lbl_8053FCC8@sda21(r0)
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    lfs 1, 0x10(3)
    fadds 0, 1, 0
    stfs 0, 0x10(3)
    bl fn_80219E04
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8021AF64
    mr 3, 31
    bl fn_8021B1AC
    .4byte 0x48000034 # b .L_8021AF94
L_8021AF64:
    lwz 0, 0x248(31)
    cmpwi 0, 0xb
    .4byte 0x40800018 # bge .L_8021AF84
    cmpwi 0, 0x6
    .4byte 0x40800020 # bge .L_8021AF94
    cmpwi 0, 0x4
    .4byte 0x40800010 # bge .L_8021AF8C
    .4byte 0x48000014 # b .L_8021AF94
L_8021AF84:
    cmpwi 0, 0xd
    .4byte 0x4080000C # bge .L_8021AF94
L_8021AF8C:
    mr 3, 31
    bl fn_8021AFB8
L_8021AF94:
    lfs 1, 0x10(31)
    .4byte 0xC002CD28 # lfs f0, lbl_8053FCC8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    lwz 31, 0xc(1)
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

