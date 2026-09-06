# HBB2 cluster, part 4/4 (432B). setParams - initializes a fixed-count
# array of 0x60-byte records (position/rotation-style fields) then
# defaults several scalar fields (0x108/0x190/0x230/0x260/0x264/0x268/
# 0x278). No extab (leaf per dtk's exception-data determination despite
# the size - large frame but no possible unwind-relevant call).
#
# NOTE: attempted real-C++ promotion (Phase 4) - substantial progress,
# a genuine near-miss (38 of 432 bytes differ, 91% byte-exact), not a
# structural failure. The real 5-iteration `bdnz` loop (an 8-record,
# 24-store unrolled inner body per iteration) promotes CLEANLY as a
# `for` loop AS LONG AS the loop pointer starts at `this` itself
# (matching retail's `mr r6,r3`) with the 0x294 record-array base baked
# into each field's LITERAL offset (`*(f32*)(rec+0x294)=...`), NOT
# pre-added to the pointer before the loop (`dst=p+0x294; dst[0]=...`) -
# the first (wrong) phrasing produced a completely different but
# equally-valid addressing-mode split (embedding the +0x294 in the
# pointer's initial value, then using tiny 0/4/8 literal suboffsets)
# that doesn't match retail's chosen split; the fix (bake 0x294 into
# the offset, advance the pointer by only 0x60) closed ALL 24
# differing instructions in the loop body in one step. All non-loop
# straight-line stores (11 zero-inits, the 6x uncached this->0xc/0x10/
# 0x14 copies before the loop) also matched immediately, confirming yet
# again that "repeated this-relative reads are safe to write literally"
# generalizes to a loop body too, not just straight-line code.
#
# Residual (all confirmed-hard, NOT fixed): 2 separate float-register-
# allocation groups (g1/g2, a tight pair; g4/g5/g6, a 3-value group)
# both get ASCENDING register assignment from natural inline-declared-
# at-first-use C++, while retail wants DESCENDING-by-first-use-order
# for both groups (the same pattern as fn_801B49DC's a/b/c triple this
# same batch). The g1/g2 pair additionally does NOT respond to the
# "declare uninitialized in reverse order" trick that fixed
# fn_8021FB44's 2-value case (batch 50) - tried, zero effect, confirming
# that trick's success is function-shape-dependent, not a general 2-
# value guarantee. One more small 2-instruction reorder (an unrelated
# `li r5,0`/float-reload pair near the very end) WAS fixed by moving
# the reload's declaration one statement later; a second, adjacent
# reorder (`li r0,0x2710` vs a G3 reload) was NOT fixed by 2 further
# variations (tried moving the reload both earlier and to point-of-use)
# - both gave DIFFERENT wrong orderings, never retail's. Left as raw
# asm - by far the closest full-function near-miss in this whole batch
# (38/432 bytes, all residual diffs isolated to the 2 already-documented
# hard categories).
.text
.balign 4
.global fn_801A8CB8

fn_801A8CB8:
    .4byte 0xC022B724 # lfs f1, lbl_8053E6C4@sda21(r0)
    li 5, 0x0
    .4byte 0xC002B728 # lfs f0, lbl_8053E6C8@sda21(r0)
    li 4, 0x1
    stfs 1, 0x60(3)
    li 0, 0x5
    .4byte 0xC062B6F0 # lfs f3, lbl_8053E690@sda21(r0)
    mr 6, 3
    stfs 1, 0x64(3)
    .4byte 0xC042B734 # lfs f2, lbl_8053E6D4@sda21(r0)
    stfs 0, 0x68(3)
    .4byte 0xC022B738 # lfs f1, lbl_8053E6D8@sda21(r0)
    stfs 0, 0x6c(3)
    .4byte 0xC002B73C # lfs f0, lbl_8053E6DC@sda21(r0)
    stfs 3, 0x80(3)
    stfs 3, 0x84(3)
    stfs 3, 0x88(3)
    stfs 3, 0x8c(3)
    stw 5, 0x240(3)
    stw 5, 0x244(3)
    stw 5, 0x248(3)
    stw 5, 0x24c(3)
    stw 5, 0x250(3)
    stw 5, 0x254(3)
    stw 5, 0x258(3)
    stw 5, 0x25c(3)
    stw 5, 0x234(3)
    stw 5, 0x238(3)
    stw 5, 0x23c(3)
    stfs 2, 0x270(3)
    stb 4, 0x11e(3)
    stfs 1, 0x26c(3)
    stfs 0, 0x274(3)
    lfs 0, 0xc(3)
    stfs 0, 0x27c(3)
    lfs 0, 0x10(3)
    stfs 0, 0x280(3)
    lfs 0, 0x14(3)
    stfs 0, 0x284(3)
    lfs 0, 0xc(3)
    stfs 0, 0x288(3)
    lfs 0, 0x10(3)
    stfs 0, 0x28c(3)
    lfs 0, 0x14(3)
    stfs 0, 0x290(3)
    mtctr 0
L_801A8D70:
    lfs 0, 0xc(3)
    stfs 0, 0x294(6)
    lfs 0, 0x10(3)
    stfs 0, 0x298(6)
    lfs 0, 0x14(3)
    stfs 0, 0x29c(6)
    lfs 0, 0xc(3)
    stfs 0, 0x2a0(6)
    lfs 0, 0x10(3)
    stfs 0, 0x2a4(6)
    lfs 0, 0x14(3)
    stfs 0, 0x2a8(6)
    lfs 0, 0xc(3)
    stfs 0, 0x2ac(6)
    lfs 0, 0x10(3)
    stfs 0, 0x2b0(6)
    lfs 0, 0x14(3)
    stfs 0, 0x2b4(6)
    lfs 0, 0xc(3)
    stfs 0, 0x2b8(6)
    lfs 0, 0x10(3)
    stfs 0, 0x2bc(6)
    lfs 0, 0x14(3)
    stfs 0, 0x2c0(6)
    lfs 0, 0xc(3)
    stfs 0, 0x2c4(6)
    lfs 0, 0x10(3)
    stfs 0, 0x2c8(6)
    lfs 0, 0x14(3)
    stfs 0, 0x2cc(6)
    lfs 0, 0xc(3)
    stfs 0, 0x2d0(6)
    lfs 0, 0x10(3)
    stfs 0, 0x2d4(6)
    lfs 0, 0x14(3)
    stfs 0, 0x2d8(6)
    lfs 0, 0xc(3)
    stfs 0, 0x2dc(6)
    lfs 0, 0x10(3)
    stfs 0, 0x2e0(6)
    lfs 0, 0x14(3)
    stfs 0, 0x2e4(6)
    lfs 0, 0xc(3)
    stfs 0, 0x2e8(6)
    lfs 0, 0x10(3)
    stfs 0, 0x2ec(6)
    lfs 0, 0x14(3)
    stfs 0, 0x2f0(6)
    addi 6, 6, 0x60
    .4byte 0x4200FF3C # bdnz .L_801A8D70
    li 5, 0x0
    .4byte 0xC002B6F0 # lfs f0, lbl_8053E690@sda21(r0)
    sth 5, 0x268(3)
    li 0, 0x2710
    stw 5, 0x190(3)
    stfs 0, 0x278(3)
    lwz 4, 0x108(3)
    stw 4, 0x264(3)
    stw 0, 0x108(3)
    stw 5, 0x260(3)
    stw 5, 0x230(3)
    blr

