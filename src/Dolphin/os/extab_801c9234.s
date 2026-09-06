.section extab, "a"
.balign 4
.global etb_800081C0
etb_800081C0:
    .4byte 0x194A0000
    .4byte 0x00000000
.size etb_800081C0, 8

.section extabindex, "a"
.balign 4
.global eti_800153C4
eti_800153C4:
    .4byte fn_801C9234
    .4byte 0x000001EC
    .4byte etb_800081C0
.size eti_800153C4, 12

.text
.balign 4
.global fn_801C9234

# fn_801C9234(this, outPoint*) - the "candidate wander point" computer
# fn_801C8C84's `exact != 0` path calls internally (extab_801c8c84.s).
# Every instruction was read; the geometry is inferred with high
# confidence from the pattern, though not algebraically re-derived:
#
# 1. Computes this actor's CURRENT heading via fn_80093340(this->0x3c,
#    this->0x40) (the CONFIRMED atan2-style helper, extab_801d02e0.s) -
#    this->0x3c/0x40 being the CONFIRMED per-axis velocity fields
#    fn_801C3B7C's state-entry logic writes.
# 2. Builds TWO candidate 2D offset vectors from this->0x264/0x268 (a
#    pair of ellipse radii) combined with 2 FIXED compass directions
#    from the CONFIRMED lbl_8052EBC0 table (project_fsa_slk2_rail_riding_core.md
#    family - the SAME table fn_801CF888 uses) via a rotate-style cross
#    formula (fmsubs/fmadds pairs) - i.e. two points roughly opposite
#    each other on an ellipse oriented by those fixed directions.
# 3. Computes EACH candidate's own heading (fn_80093340 again), scales
#    both it and the step-1 heading to the same binary-angle units
#    (lbl_8053EEFC), and takes the absolute angular deviation of each
#    candidate from the step-1 heading (via the signed-BAM-difference
#    idiom - subtract, sign-extend, XOR 0x8000 - then an extra
#    subtract/abs pass against lbl_8053EEE8/8053EEE0, likely a
#    half-circle normalization). Picks whichever candidate deviates
#    LESS from the current heading - i.e. "of the two roughly-opposite
#    ellipse points, continue toward the one that keeps my current
#    direction of travel, don't reverse."
# 4. Passes the chosen offset through the not-yet-decompiled
#    fn_801C9420(this, &offset) (presumably a clamp/validate step,
#    modifying it in place), then adds this->0xc/0x10 (current
#    position) and writes the result to *outPoint.
fn_801C9234:
    stwu 1, -0xa0(1)
    mflr 0
    stw 0, 0xa4(1)
    stfd 31, 0x90(1)
    psq_st 31, 0x98(1), 0, 0
    stfd 30, 0x80(1)
    psq_st 30, 0x88(1), 0, 0
    stfd 29, 0x70(1)
    psq_st 29, 0x78(1), 0, 0
    stfd 28, 0x60(1)
    psq_st 28, 0x68(1), 0, 0
    stfd 27, 0x50(1)
    psq_st 27, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    mr 30, 3
    lis 3, lbl_80534C00@ha
    lfs 27, 0x264(30)
    addi 3, 3, lbl_80534C00@l
    lfs 28, 0x268(30)
    mr 31, 4
    lfs 1, 0x3c(30)
    lfs 2, 0x40(30)
    bl fn_80093340
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC002BF5C # lfs f0, lbl_8053EEFC@sda21(r0)
    addi 4, 3, lbl_8052EBC0@l
    lfs 7, 0x1004(4)
    fmuls 2, 1, 0
    lfs 8, 0x1000(4)
    lis 3, lbl_80534C00@ha
    fmuls 0, 28, 7
    lfs 5, 0x3004(4)
    fmuls 1, 28, 8
    fctiwz 4, 2
    lfs 6, 0x3000(4)
    fmuls 3, 28, 5
    fmuls 2, 28, 6
    addi 3, 3, lbl_80534C00@l
    fmsubs 29, 27, 7, 1
    stfd 4, 0x10(1)
    fmadds 28, 27, 8, 0
    fmsubs 31, 27, 5, 2
    fmr 1, 29
    lwz 29, 0x14(1)
    fmr 2, 28
    fmadds 30, 27, 6, 3
    bl fn_80093340
    .4byte 0xC002BF5C # lfs f0, lbl_8053EEFC@sda21(r0)
    lis 0, 0x4330
    lis 3, lbl_80534C00@ha
    stw 0, 0x20(1)
    fmuls 0, 1, 0
    extsh 29, 29
    .4byte 0xC862BF48 # lfd f3, lbl_8053EEE8@sda21(r0)
    fmr 1, 31
    fmr 2, 30
    addi 3, 3, lbl_80534C00@l
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    subf 0, 0, 29
    extsh 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x24(1)
    lfd 0, 0x20(1)
    fsubs 0, 0, 3
    fabs 27, 0
    bl fn_80093340
    .4byte 0xC002BF5C # lfs f0, lbl_8053EEFC@sda21(r0)
    lis 0, 0x4330
    .4byte 0xC042BF40 # lfs f2, lbl_8053EEE0@sda21(r0)
    fmuls 1, 1, 0
    stw 0, 0x30(1)
    .4byte 0xC862BF48 # lfd f3, lbl_8053EEE8@sda21(r0)
    fmuls 0, 2, 27
    fctiwz 1, 1
    stfd 1, 0x28(1)
    lwz 0, 0x2c(1)
    subf 0, 0, 29
    extsh 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x34(1)
    lfd 1, 0x30(1)
    fsubs 1, 1, 3
    fabs 1, 1
    fmuls 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801C93A8
    stfs 31, 0x8(1)
    stfs 30, 0xc(1)
    .4byte 0x4800000C # b .L_801C93B0
L_801C93A8:
    stfs 29, 0x8(1)
    stfs 28, 0xc(1)
L_801C93B0:
    mr 3, 30
    addi 4, 1, 0x8
    bl fn_801C9420
    lfs 1, 0xc(30)
    lfs 0, 0x8(1)
    lfs 3, 0x10(30)
    lfs 2, 0xc(1)
    fadds 0, 1, 0
    fadds 1, 3, 2
    stfs 0, 0x0(31)
    stfs 1, 0x4(31)
    psq_l 31, 0x98(1), 0, 0
    lfd 31, 0x90(1)
    psq_l 30, 0x88(1), 0, 0
    lfd 30, 0x80(1)
    psq_l 29, 0x78(1), 0, 0
    lfd 29, 0x70(1)
    psq_l 28, 0x68(1), 0, 0
    lfd 28, 0x60(1)
    psq_l 27, 0x58(1), 0, 0
    lfd 27, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 0, 0xa4(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr
