.section extab, "a"
.balign 4
.global etb_8000DC5C
etb_8000DC5C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DC5C, 8

.section extabindex, "a"
.balign 4
.global eti_8001D2F0
eti_8001D2F0:
    .4byte fn_8032D6C0
    .4byte 0x000006B0
    .4byte etb_8000DC5C
.size eti_8001D2F0, 12

.text
.balign 4
.global fn_8032D6C0

# fn_8032D6C0(this) - RUPY's (Rupee) setParams. Unpacks the spawn param
# word (this->0x90) into: subtype (this->0x94, byte[8:16), the value
# checked everywhere in draw()/update() - rupee color/value), size
# class (this->0x268, byte[16:24)), two single-bit flags (this->0x280/
# 0x281, bits 6/5), a byte count (this->0x278, byte[16:24)), and
# another bit (this->0x27f, bit 7).
#
# Initializes timers/counters to 0, default tracked-player sentinel
# this->0x260=1, initial "state-machine delay" this->0x234=0x12,
# this->0x264=-1 (no player tint), speed this->0x238=1.0/friction
# this->0x23c=0.0. Rolls the CONFIRMED global PRNG for a randomized
# initial countdown (this->0x250 = 0x3c + jitter). Sets a bounding
# rect (this->0x80/0x84/0x88/0x8c) and a second rect (this->0x60/0x64/
# 0x68/0x6c) from decoded param floats, OVERRIDDEN with a different
# fixed constant set when size class >= 8 (large-variant bounds,
# matching draw()'s size-based branches). Picks the long-term lifetime
# timer this->0x24c = 0x3f2(1010) or 0x33e(830) frames depending on the
# confirmed global mode flag `lbl_8053AAF8->0x7e`. Zeroes several more
# flags/floats and caches the actor's own spawn position into
# this->0x29c/0x2a0/0x2a4 (the "anchor" triple draw()/update() read
# from, same convention as WNWN's this->0x384/0x388).
#
# SUBTYPE DISPATCH (jumptable_804AB774, this->0x94, values 0-0x26,
# reduces to 16 unique blocks - many subtypes intentionally share
# behavior, e.g. every "same color, different value" pickup variant):
#   0x00, 0x22: queries the level/room config record (GetRoomConfigRecord,
#     confirmed accessor) for a per-room flag (byte 0x31df); if set,
#     subtracts the current position from itself (this->0x10/0x14 and
#     this->0x40/0x44) - a "snap to room-relative placement" step.
#     state=0 (idle default).
#   0x01: state=0xb (a distinct wait state).
#   0x02: sets a 300-frame timer, overrides bounds to a fixed constant
#     set, and nudges its OWN position by a fixed offset - a "hop on
#     spawn" effect. state=2.
#   0x03: same room-flag snap as case 0/0x22 but touches only
#     this->0x40 (a single-axis correction), plus a long 780-frame
#     timer and this->0x27d=1. state=9.
#   0x04-0x07,0x1d and 0x08-0x0b,0x1e: makes a virtual call through the
#     actor's own vtable slot 0x34 (the same generic query slot
#     fn_8032D660 uses); on failure, calls fn_801F3668 (the confirmed
#     "hide+register into the config-record system" helper - see
#     project_fsa_option_b_loose_ends_round1.md) instead of finishing
#     setup, meaning the rupee immediately hides/deregisters itself.
#     On success: state=7, this->0x280=1 (visible). The two groups
#     differ only in whether this->0x248 was left at its 0 default or
#     wasn't pre-set at all before sharing this same block.
#   0x0c-0x0f,0x1f and 0x15-0x18,0x21: the SAME vtable-slot-0x34-check-
#     with-fn_801F3668-fallback shape as above, but landing on state=8
#     instead of 7 on success; the 0x15-0x18,0x21 group additionally
#     pre-sets this->0x248=2 before falling into the shared check.
#   0x10: a THIRD copy of the same vtable-slot-0x34 check (fallback
#     fn_801F3668); success sets a fixed speed constant, this->0x280=1,
#     state=0xc.
#   0x11-0x14,0x20: pre-sets this->0x248=1, then falls into the SAME
#     shared block as 0x04-0x07,0x1d (state=7 on success).
#   0x19,0x1a: zeroes speed, sets this->0x280=1 and an effect/sound
#     code this->0x274=0xa, then the same vtable-slot-0x34 check; on
#     success AND subtype specifically ==0x1a, restores speed to 1.0.
#     state=0xa (matches draw()'s early-out check for state 0xa with
#     zero speed - a "held still, briefly invisible" variant).
#   0x1b: picks between two different PRNG-jittered initial animation-
#     timer (this->0x242) formulas based on the PARITY of the actor's
#     own ID (this->0x198, bit 0) - a deliberate per-instance visual
#     desync so identical rupees don't animate in lockstep. state=0xd.
#   0x1c: sets a fixed speed constant, state=0xe; additionally, if size
#     class>=8 AND this->0x4>=8, spawns an "RSNP" actor (code
#     0x52534e50, a REAL dispatch code - see
#     reference_fsa_full_dispatch_sweep.md) at its own position via the
#     confirmed dispatcher fn_801F9484.
#   0x23,0x24: sets the same 780-frame timer and this->0x27d=1 as case
#     0x03, but skips the room-flag position-snap step. state=9.
#   0x25: same shape as 0x23/0x24 plus this->0x274=0xa (effect code);
#     reuses r4/r5 values left over from earlier in the function rather
#     than setting them fresh (compiler-proven-constant carryover, not
#     re-verified further).
#   0x26: re-runs the SAME lbl_8053AAF8->0x7e-driven long-lifetime-
#     timer choice AND the SAME room-flag position-snap as the
#     function's own prologue/case-0 logic, plus this->0x274=0xa.
#     state=0xf.
#
# SHARED TAIL: if this->0x278 (the byte-count field unpacked from the
# spawn params) is positive, caches the just-chosen state into
# this->0x234 and overrides this->0x230 to 0x11 (a "sparkling variant"
# override - matches draw()'s early-out for state 0x11). Then checks a
# SEPARATE global flag `lbl_8053AAF8->0x7f`: if clear, calls
# fn_801F3668 (hide/deregister) one more time; otherwise sets
# this->0x194=1 (a "fully initialized" flag).
fn_8032D6C0:
    stwu 1, -0x30(1)
    mflr 0
    li 7, 0x0
    li 6, 0x1
    stw 0, 0x34(1)
    li 5, 0x12
    li 4, -0x1
    .4byte 0xC0E2EDF0 # lfs f7, lbl_80541D90@sda21(r0)
    stw 31, 0x2c(1)
    mr 31, 3
    lis 3, 0x19
    .4byte 0xC0C2EDE8 # lfs f6, lbl_80541D88@sda21(r0)
    stw 30, 0x28(1)
    .4byte 0xC0A2EE5C # lfs f5, lbl_80541DFC@sda21(r0)
    lwz 0, 0x90(31)
    .4byte 0xC062EE7C # lfs f3, lbl_80541E1C@sda21(r0)
    extrwi 0, 0, 8, 8
    .4byte 0xC042EDF8 # lfs f2, lbl_80541D98@sda21(r0)
    sth 0, 0x94(31)
    addi 0, 3, 0x660d
    .4byte 0xC022EE80 # lfs f1, lbl_80541E20@sda21(r0)
    lwz 3, 0x90(31)
    .4byte 0xC002EE84 # lfs f0, lbl_80541E24@sda21(r0)
    clrlwi 3, 3, 24
    stw 3, 0x268(31)
    stw 7, 0x24c(31)
    stw 7, 0x250(31)
    stw 7, 0x254(31)
    sth 7, 0x240(31)
    stw 7, 0x258(31)
    sth 7, 0x242(31)
    stw 7, 0x25c(31)
    sth 7, 0x244(31)
    stw 6, 0x260(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 1, 6
    stb 3, 0x280(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 1, 5
    stb 3, 0x281(31)
    lwz 3, 0x90(31)
    extrwi 3, 3, 8, 16
    stw 3, 0x278(31)
    stw 5, 0x234(31)
    stw 4, 0x264(31)
    stfs 7, 0x238(31)
    stfs 6, 0x23c(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 4, 0x10(1)
    fsubs 4, 4, 7
    fmuls 4, 5, 4
    fctiwz 4, 4
    stfd 4, 0x18(1)
    lwz 3, 0x1c(1)
    addi 0, 3, 0x3c
    stw 0, 0x250(31)
    stfs 3, 0x80(31)
    stfs 6, 0x84(31)
    stfs 2, 0x88(31)
    stfs 1, 0x8c(31)
    stfs 0, 0x60(31)
    stfs 0, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8032D800
    li 0, 0x3f2
    stw 0, 0x24c(31)
    .4byte 0x4800000C # b .L_8032D808
L_8032D800:
    li 0, 0x33e
    stw 0, 0x24c(31)
L_8032D808:
    li 0, 0x0
    stw 0, 0x248(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x8
    .4byte 0x4180003C # blt .L_8032D854
    .4byte 0xC022EE84 # lfs f1, lbl_80541E24@sda21(r0)
    .4byte 0xC002EE7C # lfs f0, lbl_80541E1C@sda21(r0)
    stfs 1, 0x80(31)
    .4byte 0xC022EE80 # lfs f1, lbl_80541E20@sda21(r0)
    stfs 0, 0x84(31)
    .4byte 0xC002EDF4 # lfs f0, lbl_80541D94@sda21(r0)
    stfs 1, 0x88(31)
    .4byte 0xC022EE88 # lfs f1, lbl_80541E28@sda21(r0)
    stfs 0, 0x8c(31)
    .4byte 0xC002EE8C # lfs f0, lbl_80541E2C@sda21(r0)
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 0, 0x68(31)
    stfs 0, 0x6c(31)
L_8032D854:
    li 0, -0x1
    li 5, 0x0
    stw 0, 0x26c(31)
    li 4, 0x1
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    stb 5, 0x282(31)
    stb 4, 0x27c(31)
    stb 5, 0x27d(31)
    stb 5, 0x27e(31)
    stfs 0, 0x28c(31)
    stfs 0, 0x288(31)
    stfs 0, 0x284(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 1, 7
    stb 0, 0x27f(31)
    stw 5, 0x270(31)
    stfs 0, 0x298(31)
    stfs 0, 0x294(31)
    stfs 0, 0x290(31)
    stw 5, 0x274(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x29c(31), 0, 0
    stfs 0, 0x2a4(31)
    stb 5, 0x283(31)
    lhz 0, 0x94(31)
    cmplwi 0, 0x26
    .4byte 0x41810458 # bgt .L_8032DD18
    lis 3, jumptable_804AB774@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804AB774@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
L_8032D8DC:
    lis 3, 0x2
    stw 3, 0xb0(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_8032D8F8
    addi 0, 3, 0xa
    stw 0, 0xb0(31)
L_8032D8F8:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_8032D940
    lfs 1, 0x10(31)
    lfs 0, 0x14(31)
    .4byte 0xC042EDE8 # lfs f2, lbl_80541D88@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    stfs 2, 0x14(31)
    lfs 1, 0x40(31)
    lfs 0, 0x44(31)
    fsubs 0, 1, 0
    stfs 0, 0x40(31)
    stfs 2, 0x44(31)
L_8032D940:
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x480003D0 # b .L_8032DD18
L_8032D94C:
    li 0, 0xb
    stw 0, 0x230(31)
    .4byte 0x480003C4 # b .L_8032DD18
L_8032D958:
    li 0, 0x12c
    .4byte 0xC002EE7C # lfs f0, lbl_80541E1C@sda21(r0)
    stw 0, 0x24c(31)
    li 0, 0x2
    .4byte 0xC022EDF8 # lfs f1, lbl_80541D98@sda21(r0)
    stfs 0, 0x80(31)
    stfs 0, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    lfs 0, 0x14(31)
    fadds 0, 0, 1
    stfs 0, 0x14(31)
    lfs 0, 0x10(31)
    fadds 0, 0, 1
    stfs 0, 0x10(31)
    stw 0, 0x230(31)
    .4byte 0x48000380 # b .L_8032DD18
L_8032D99C:
    lis 3, 0x2
    stw 3, 0xb0(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x4
    .4byte 0x4180000C # blt .L_8032D9B8
    addi 0, 3, 0xa
    stw 0, 0xb0(31)
L_8032D9B8:
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_8032D9DC
    .4byte 0xC002EE14 # lfs f0, lbl_80541DB4@sda21(r0)
    stfs 0, 0x40(31)
L_8032D9DC:
    li 0, 0x30c
    li 3, 0x1
    stw 0, 0x24c(31)
    li 0, 0x9
    stb 3, 0x27d(31)
    stw 0, 0x230(31)
    .4byte 0x48000324 # b .L_8032DD18
L_8032D9F8:
    li 0, 0x2
    stw 0, 0x248(31)
L_8032DA00:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8032DA28
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000334 # b .L_8032DD58
L_8032DA28:
    li 0, 0x0
    li 3, 0x8
    stw 0, 0x24c(31)
    li 0, 0x1
    stw 3, 0x230(31)
    stb 0, 0x280(31)
    .4byte 0x480002D8 # b .L_8032DD18
L_8032DA44:
    li 0, 0x1
    stw 0, 0x248(31)
L_8032DA4C:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8032DA74
    mr 3, 31
    bl fn_801F3668
    .4byte 0x480002E8 # b .L_8032DD58
L_8032DA74:
    li 0, 0x0
    li 3, 0x7
    stw 0, 0x24c(31)
    li 0, 0x1
    stw 3, 0x230(31)
    stb 0, 0x280(31)
    .4byte 0x4800028C # b .L_8032DD18
L_8032DA90:
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    li 4, 0x1
    li 0, 0xa
    mr 3, 31
    stfs 0, 0x238(31)
    stb 4, 0x280(31)
    stw 0, 0x274(31)
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8032DAD8
    lhz 0, 0x94(31)
    cmplwi 0, 0x1a
    .4byte 0x4082000C # bne .L_8032DAD8
    .4byte 0xC002EDF0 # lfs f0, lbl_80541D90@sda21(r0)
    stfs 0, 0x238(31)
L_8032DAD8:
    li 0, 0xa
    stw 0, 0x230(31)
    .4byte 0x48000238 # b .L_8032DD18
L_8032DAE4:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_8032DB0C
    mr 3, 31
    bl fn_801F3668
    .4byte 0x48000250 # b .L_8032DD58
L_8032DB0C:
    .4byte 0xC002EE90 # lfs f0, lbl_80541E30@sda21(r0)
    li 3, 0x1
    li 0, 0xc
    stfs 0, 0x14(31)
    stb 3, 0x280(31)
    stw 0, 0x230(31)
    .4byte 0x480001F4 # b .L_8032DD18
L_8032DB28:
    lwz 0, 0x198(31)
    clrlwi. 0, 0, 31
    .4byte 0x4082005C # bne .L_8032DB8C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002EDF0 # lfs f0, lbl_80541D90@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042EE94 # lfs f2, lbl_80541E34@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmadds 0, 2, 0, 2
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    sth 0, 0x242(31)
    .4byte 0x4800005C # b .L_8032DBE4
L_8032DB8C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022EDF0 # lfs f1, lbl_80541D90@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC062EE94 # lfs f3, lbl_80541E34@sda21(r0)
    mullw 3, 3, 0
    .4byte 0xC002EE98 # lfs f0, lbl_80541E38@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fnmsubs 0, 3, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    sth 0, 0x242(31)
L_8032DBE4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8032DC00
    li 0, 0x3f2
    stw 0, 0x24c(31)
    .4byte 0x4800000C # b .L_8032DC08
L_8032DC00:
    li 0, 0x33e
    stw 0, 0x24c(31)
L_8032DC08:
    li 0, 0xd
    stw 0, 0x230(31)
    .4byte 0x48000108 # b .L_8032DD18
L_8032DC14:
    .4byte 0xC002EE90 # lfs f0, lbl_80541E30@sda21(r0)
    li 0, 0xe
    stfs 0, 0x14(31)
    stw 0, 0x230(31)
    lwz 0, 0x268(31)
    cmpwi 0, 0x4
    .4byte 0x418000EC # blt .L_8032DD18
    lwz 30, 0x4(31)
    cmpwi 30, 0x8
    .4byte 0x418000E0 # blt .L_8032DD18
    bl SpatialRegistry_GetBase
    lis 4, 0x5253
    mr 5, 30
    addi 4, 4, 0x4e50
    addi 6, 31, 0xc
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    .4byte 0x480000B8 # b .L_8032DD18
L_8032DC64:
    li 0, 0x30c
    li 3, 0x1
    stw 0, 0x24c(31)
    li 0, 0x9
    stb 3, 0x27d(31)
    stw 0, 0x230(31)
    .4byte 0x4800009C # b .L_8032DD18
L_8032DC80:
    li 3, 0xa
    li 0, 0x30c
    stw 3, 0x274(31)
    stw 0, 0x24c(31)
    stb 4, 0x27d(31)
    stw 5, 0x230(31)
    .4byte 0x48000080 # b .L_8032DD18
L_8032DC9C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_8032DCB8
    li 0, 0x3d9
    stw 0, 0x24c(31)
    .4byte 0x4800000C # b .L_8032DCC0
L_8032DCB8:
    li 0, 0x325
    stw 0, 0x24c(31)
L_8032DCC0:
    li 0, 0xa
    stw 0, 0x274(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_8032DD10
    lfs 1, 0x10(31)
    lfs 0, 0x14(31)
    .4byte 0xC042EDE8 # lfs f2, lbl_80541D88@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    stfs 2, 0x14(31)
    lfs 1, 0x40(31)
    lfs 0, 0x44(31)
    fsubs 0, 1, 0
    stfs 0, 0x40(31)
    stfs 2, 0x44(31)
L_8032DD10:
    li 0, 0xf
    stw 0, 0x230(31)
L_8032DD18:
    lwz 0, 0x278(31)
    cmpwi 0, 0x0
    .4byte 0x40810014 # ble .L_8032DD34
    lwz 3, 0x230(31)
    li 0, 0x11
    stw 3, 0x234(31)
    stw 0, 0x230(31)
L_8032DD34:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8032DD50
    mr 3, 31
    bl fn_801F3668
    .4byte 0x4800000C # b .L_8032DD58
L_8032DD50:
    li 0, 0x1
    stb 0, 0x194(31)
L_8032DD58:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr
