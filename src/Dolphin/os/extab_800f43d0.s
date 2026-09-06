# fn_800F43D0: initializer for the same class as fn_800F3C70/fn_800F3E08 -
# unconditionally sets phase=1 (this->0x230), zeroes the tracking fields
# (this->0x234/0x235/0x238/0x23c), defaults several float pairs (this->0x60/
# 0x64=lbl_8053BE74, 0x68/0x6c=lbl_8053BE78, 0x80/0x84=lbl_8053BE7C, 0x88/
# 0x8c=lbl_8053BE80) and a flags word (this->0xb0=0x11101), clears bit 0 of
# this->0x90 (the universal per-actor spawn-parameter field - looks like
# "consume a one-shot config flag" after reading it elsewhere), and computes
# an initial RANDOMIZED phase-duration (this->0x244) via a PRNG.
#
# CONFIRMED (not a guess - checked the literal constants): lbl_8053AAF8->0xb4
# is a PRNG state updated via the exact "Numerical Recipes in C" LCG:
#   state = state * 1664525 + 1013904223   (0x19660D and 0x3C6EF35F - both
#   confirmed to the exact decimal constant via calculator, not eyeballed)
# then converted to a float in [1.0, 2.0) via the classic bit trick
# (srwi 9; oris 0x3f80 - keep the top 23 mantissa bits, OR in the IEEE-754
# exponent for 1.0), subtracted from/multiplied by a table-driven base/range
# pair (lbl_8053BE60/lbl_8053BE68), truncated to int, plus a fixed floor of
# 0x32 (50, presumably frames). This is the EXACT SAME formula fn_800F3E08
# repeats 3 times at its own phase-transition points (previously described
# there only vaguely as "some formula" before this was identified) -
# retroactively confirms this->0x244 is specifically a randomized countdown
# used to decide how long the current phase lasts before advancing.
.section extab, "a"
.balign 4
.global etb_800056B8
etb_800056B8:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800056B8, 8

.section extabindex, "a"
.balign 4
.global eti_80011944
eti_80011944:
    .4byte fn_800F43D0
    .4byte 0x000000CC
    .4byte etb_800056B8
.size eti_80011944, 12

.text
.balign 4
.global fn_800F43D0

fn_800F43D0:
    stwu 1, -0x20(1)
    lis 5, 0x1
    .4byte 0xC0028ED4 # lfs f0, lbl_8053BE74@sda21(r0)
    addi 7, 5, 0x1101
    lis 4, 0x19
    .4byte 0xC0428ED8 # lfs f2, lbl_8053BE78@sda21(r0)
    stfs 0, 0x60(3)
    li 6, 0x0
    .4byte 0xC0628EDC # lfs f3, lbl_8053BE7C@sda21(r0)
    li 5, 0x1
    stfs 0, 0x64(3)
    addi 0, 4, 0x660d
    .4byte 0xC0228EE0 # lfs f1, lbl_8053BE80@sda21(r0)
    stfs 2, 0x68(3)
    .4byte 0xC0028EC0 # lfs f0, lbl_8053BE60@sda21(r0)
    stfs 2, 0x6c(3)
    .4byte 0xC0428EC8 # lfs f2, lbl_8053BE68@sda21(r0)
    stfs 3, 0x80(3)
    stfs 3, 0x84(3)
    stfs 1, 0x88(3)
    stfs 1, 0x8c(3)
    stw 7, 0xb0(3)
    stw 6, 0x240(3)
    stb 6, 0x235(3)
    stw 5, 0x230(3)
    stw 6, 0x238(3)
    stw 6, 0x23c(3)
    stb 6, 0x234(3)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 4, 0x14(1)
    addi 0, 4, 0x32
    stw 0, 0x244(3)
    lwz 0, 0x90(3)
    clrlwi 0, 0, 31
    stw 0, 0x90(3)
    addi 1, 1, 0x20
    blr

