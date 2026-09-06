.section extab, "a"
.balign 4
.global etb_800081C8
etb_800081C8:
    .4byte 0x29CA0000
    .4byte 0x00000000
.size etb_800081C8, 8

.section extabindex, "a"
.balign 4
.global eti_800153D0
eti_800153D0:
    .4byte fn_801C9420
    .4byte 0x0000034C
    .4byte etb_800081C8
.size eti_800153D0, 12

.text
.balign 4
.global fn_801C9420

# fn_801C9420(this, offset*) - the "walk-and-verify" refinement step
# fn_801C9234's ellipse-candidate selector calls (extab_801c9234.s).
# Every instruction read; the algorithm is fully understood:
#
# For up to 2 attempts (the given direction, then its negation):
#   1. Clamp/normalize `offset`'s length (the standard fast-rsqrt
#      "skip normalize below an epsilon, else Newton-Raphson" idiom
#      seen throughout this cluster) against a threshold
#      (lbl_8053EF08 * lbl_80539D44, the SAME lbl_80539D44 constant
#      fn_801CFA70 uses for its own distance-normalization threshold),
#      then scale by a fixed step length (lbl_8053EF10).
#   2. Walk from this actor's current position (this->0xc/0x10) in
#      steps of that scaled offset, up to 30 steps: at each step, run
#      the CONFIRMED fn_801CF888 line-of-sight sweep
#      (project_fsa_slk2_area_probe_closed.md) between the previous and
#      new step point. If obstructed, abandon this attempt (try the
#      negated direction, or give up after both). If clear, check
#      whether the new step point is close enough (same threshold
#      constants) to the ORIGINAL rail target (this->0x32c/0x330); if
#      so, write the TOTAL displacement from the start position to the
#      current step back into *offset and return immediately - "found
#      a clear line of steps that reaches near the real target."
#   3. If a full 30 steps pass without ever getting close enough (and
#      without hitting an obstruction), OR an obstruction is hit,
#      negate `offset` and retry once from the top.
# If BOTH the original and negated directions fail to reach the target
# clear of obstructions: sets this->0x230 bit 0x10 (a "pathfinding
# failed" flag), negates `offset` a third time (net: opposite of the
# original), and just returns it re-clamped/re-scaled by the same
# length rules as step 1, WITHOUT any further line-of-sight
# verification - a last-resort fallback direction.
#
# In short: this takes fn_801C9234's candidate direction and tries to
# actually walk it (or its reverse) toward the real target, verifying
# line-of-sight the whole way, before committing to it.
fn_801C9420:
    stwu 1, -0xb0(1)
    mflr 0
    stw 0, 0xb4(1)
    stfd 31, 0xa0(1)
    psq_st 31, 0xa8(1), 0, 0
    stfd 30, 0x90(1)
    psq_st 30, 0x98(1), 0, 0
    stfd 29, 0x80(1)
    psq_st 29, 0x88(1), 0, 0
    stfd 28, 0x70(1)
    psq_st 28, 0x78(1), 0, 0
    stfd 27, 0x60(1)
    psq_st 27, 0x68(1), 0, 0
    stfd 26, 0x50(1)
    psq_st 26, 0x58(1), 0, 0
    stfd 25, 0x40(1)
    psq_st 25, 0x48(1), 0, 0
    stmw 27, 0x2c(1)
    mr 27, 3
    lis 3, lbl_80539D44@ha
    lfs 28, 0xc(27)
    mr 28, 4
    lfs 27, 0x10(27)
    addi 31, 3, lbl_80539D44@l
    .4byte 0xC3C2BF68 # lfs f30, lbl_8053EF08@sda21(r0)
    li 29, 0x0
    .4byte 0xC3E2BF74 # lfs f31, lbl_8053EF14@sda21(r0)
    .4byte 0xC3A2BF70 # lfs f29, lbl_8053EF10@sda21(r0)
L_801C9490:
    lfs 0, 0x0(28)
    lfs 1, 0x4(28)
    fmuls 2, 0, 0
    lfs 0, 0x0(31)
    fmuls 1, 1, 1
    fmuls 0, 30, 0
    fadds 4, 2, 1
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820050 # beq .L_801C9504
    .4byte 0xC002BF54 # lfs f0, lbl_8053EEF4@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801C94CC
    .4byte 0x48000024 # b .L_801C94EC
L_801C94CC:
    frsqrte 3, 4
    .4byte 0xC042BF38 # lfs f2, lbl_8053EED8@sda21(r0)
    .4byte 0xC002BF6C # lfs f0, lbl_8053EF0C@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 4, 2, 0
L_801C94EC:
    lfs 0, 0x0(28)
    fmuls 0, 0, 4
    stfs 0, 0x0(28)
    lfs 0, 0x4(28)
    fmuls 0, 0, 4
    stfs 0, 0x4(28)
L_801C9504:
    lfs 0, 0x0(28)
    li 30, 0x0
    fmuls 0, 0, 29
    stfs 0, 0x0(28)
    lfs 0, 0x4(28)
    fmuls 0, 0, 29
    stfs 0, 0x4(28)
    lfs 26, 0x0(28)
    lfs 25, 0x4(28)
    stfs 28, 0x18(1)
    stfs 27, 0x1c(1)
L_801C9530:
    lfs 0, 0x18(1)
    mr 3, 27
    lfs 2, 0x1c(1)
    addi 4, 1, 0x8
    fadds 1, 0, 26
    stfs 0, 0x8(1)
    fadds 0, 2, 25
    addi 5, 1, 0x18
    stfs 2, 0xc(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 6, 0x4(27)
    bl fn_801CF888
    clrlwi. 0, 3, 24
    .4byte 0x408200D8 # bne .L_801C9640
    lfs 2, 0x330(27)
    lfs 1, 0x1c(1)
    lfs 0, 0x0(31)
    fsubs 5, 2, 1
    lfs 2, 0x32c(27)
    lfs 1, 0x18(1)
    fmuls 0, 30, 0
    fsubs 4, 2, 1
    fmuls 1, 5, 5
    fmadds 6, 4, 4, 1
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801C95DC
    .4byte 0xC002BF54 # lfs f0, lbl_8053EEF4@sda21(r0)
    fcmpo cr0, 6, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801C95B4
    .4byte 0x48000024 # b .L_801C95D4
L_801C95B4:
    frsqrte 3, 6
    .4byte 0xC042BF38 # lfs f2, lbl_8053EED8@sda21(r0)
    .4byte 0xC002BF6C # lfs f0, lbl_8053EF0C@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 6, 1, 0
    fmuls 6, 2, 0
L_801C95D4:
    fmuls 4, 4, 6
    fmuls 5, 5, 6
L_801C95DC:
    fmuls 4, 4, 31
    lfs 1, 0x18(1)
    fmuls 5, 5, 31
    lfs 0, 0x1c(1)
    mr 3, 27
    addi 4, 1, 0x18
    fadds 1, 1, 4
    addi 5, 1, 0x10
    fadds 0, 0, 5
    stfs 1, 0x10(1)
    stfs 0, 0x14(1)
    lwz 6, 0x4(27)
    bl fn_801CF888
    clrlwi. 0, 3, 24
    .4byte 0x40820020 # bne .L_801C9634
    lfs 0, 0x18(1)
    lfs 1, 0x1c(1)
    fsubs 0, 0, 28
    fsubs 1, 1, 27
    stfs 0, 0x0(28)
    stfs 1, 0x4(28)
    .4byte 0x480000F0 # b .L_801C9720
L_801C9634:
    addi 30, 30, 0x1
    cmpwi 30, 0x1e
    .4byte 0x4180FEF4 # blt .L_801C9530
L_801C9640:
    lfs 0, 0x0(28)
    addi 29, 29, 0x1
    cmpwi 29, 0x2
    fneg 0, 0
    stfs 0, 0x0(28)
    lfs 0, 0x4(28)
    fneg 0, 0
    stfs 0, 0x4(28)
    .4byte 0x4180FE30 # blt .L_801C9490
    lwz 0, 0x230(27)
    lis 3, lbl_80539D44@ha
    .4byte 0xC022BF68 # lfs f1, lbl_8053EF08@sda21(r0)
    oris 0, 0, 0x10
    stw 0, 0x230(27)
    lfs 0, 0x0(28)
    fneg 0, 0
    stfs 0, 0x0(28)
    lfs 0, 0x4(28)
    fneg 0, 0
    stfs 0, 0x4(28)
    lfs 0, 0x0(28)
    lfs 2, 0x4(28)
    fmuls 3, 0, 0
    lfs 0, lbl_80539D44@l(3)
    fmuls 2, 2, 2
    fmuls 0, 1, 0
    fadds 4, 3, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820050 # beq .L_801C9704
    .4byte 0xC002BF54 # lfs f0, lbl_8053EEF4@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801C96CC
    .4byte 0x48000024 # b .L_801C96EC
L_801C96CC:
    frsqrte 3, 4
    .4byte 0xC042BF38 # lfs f2, lbl_8053EED8@sda21(r0)
    .4byte 0xC002BF6C # lfs f0, lbl_8053EF0C@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 4, 2, 0
L_801C96EC:
    lfs 0, 0x0(28)
    fmuls 0, 0, 4
    stfs 0, 0x0(28)
    lfs 0, 0x4(28)
    fmuls 0, 0, 4
    stfs 0, 0x4(28)
L_801C9704:
    lfs 0, 0x0(28)
    .4byte 0xC022BF70 # lfs f1, lbl_8053EF10@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x0(28)
    lfs 0, 0x4(28)
    fmuls 0, 0, 1
    stfs 0, 0x4(28)
L_801C9720:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    psq_l 29, 0x88(1), 0, 0
    lfd 29, 0x80(1)
    psq_l 28, 0x78(1), 0, 0
    lfd 28, 0x70(1)
    psq_l 27, 0x68(1), 0, 0
    lfd 27, 0x60(1)
    psq_l 26, 0x58(1), 0, 0
    lfd 26, 0x50(1)
    psq_l 25, 0x48(1), 0, 0
    lfd 25, 0x40(1)
    lmw 27, 0x2c(1)
    lwz 0, 0xb4(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr
