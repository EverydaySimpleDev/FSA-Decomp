# fn_800F953C: the container class's phase==1 handler (per
# fn_800F8A30's dispatch: phase 1 -> here, phase 2 -> fn_800F9170).
# The LARGEST function landed this session (0x6E4/1764 bytes, needs
# `-mgekko`).
#
# Structure: dispatches on the CACHED OWNER's `+0x230` state
# (`this->0x240->0x230`, the same owner-state field fn_800F8A30 itself
# watches) into 4 near-identical branches (states 3, 4, 1, and a
# default/else) that each compute a target waypoint using the EXACT
# SAME tiered-scale/anchor-table pattern already documented in
# `fn_800F9170`'s banner (bucket `owner->0x2ac` against the same 5
# thresholds, index the shared anchor table `lbl_8052EBC0` and the
# per-tier float table `lbl_8049C634`, advance `owner->0x2ac`) - the
# only differences between the 4 branches are which smoothing-rate
# constant is used (`lbl_8053BFC0`/`lbl_8053C024`/`lbl_8053C028`/
# `lbl_8053C00C`) and a couple of sign/index details matching the
# alternating-spacing formula already seen in `fn_800F8BAC`'s orbit
# path. All 4 branches converge on writing the same 3 stack waypoint
# slots and setting `this->0x249=1`.
#
# Shared tail (same for all 4 branches): calls the CONFIRMED
# `fn_801F3D94(this,1)` gate; if it passes, queries
# `fn_801F285C(this,0,0,1,-1)` and on a valid (non-negative) result
# calls the still-unconfirmed `fn_80238548` effect dispatcher with
# variant ID `0x10` (now seen with 3 different variant IDs across 3
# call sites this session - 0xb, 0x10, 0x10 - reinforcing it's a
# generic parameterized effect call, not ID-specific). Finally
# exponentially smooths position (`this->0xc/0x10/0x14`) toward the
# branch-computed waypoint using the SAME double-bias round-trick
# idiom already seen in `fn_800F82CC`, then calls the still-
# unconfirmed `fn_801F2B7C(this,2,-1,1)` (matching the call already
# flagged unconfirmed in `fn_800F8BAC`'s "at rest" tail). Not yet
# cross-identified against the 195-entry actor dispatch table.
.section extab, "a"
.balign 4
.global etb_800057A0
etb_800057A0:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_800057A0, 8

.section extabindex, "a"
.balign 4
.global eti_80011AA0
eti_80011AA0:
    .4byte fn_800F953C
    .4byte 0x000006E4
    .4byte etb_800057A0
.size eti_80011AA0, 12

.text
.balign 4
.global fn_800F953C

fn_800F953C:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stw 31, 0xbc(1)
    lis 4, 0x8
    mr 31, 3
    addi 3, 4, 0x4
    li 0, 0x1
    stw 3, 0xb0(31)
    stb 0, 0x1a8(31)
    lwz 3, 0x240(31)
    lwz 4, 0x230(3)
    cmpwi 4, 0x3
    .4byte 0x4082014C # bne .L_800F96C4
    lbz 5, 0x2ac(3)
    cmplwi 5, 0x8
    .4byte 0x40800010 # bge .L_800F9594
    li 0, 0x0
    li 4, 0x2000
    .4byte 0x4800005C # b .L_800F95EC
L_800F9594:
    cmplwi 5, 0x10
    .4byte 0x4080000C # bge .L_800F95A4
    li 4, 0x2000
    .4byte 0x4800004C # b .L_800F95EC
L_800F95A4:
    cmplwi 5, 0x15
    .4byte 0x40800010 # bge .L_800F95B8
    li 0, 0x2
    li 4, 0x3332
    .4byte 0x48000038 # b .L_800F95EC
L_800F95B8:
    cmplwi 5, 0x18
    .4byte 0x40800010 # bge .L_800F95CC
    li 0, 0x3
    li 4, 0x5554
    .4byte 0x48000024 # b .L_800F95EC
L_800F95CC:
    cmplwi 5, 0x1a
    .4byte 0x40800014 # bge .L_800F95E4
    lis 4, 0x1
    li 0, 0x4
    addi 4, 4, -0x8000
    .4byte 0x4800000C # b .L_800F95EC
L_800F95E4:
    li 0, 0x5
    li 4, 0x2000
L_800F95EC:
    mullw 5, 5, 4
    slwi 7, 0, 12
    slwi 10, 0, 2
    lbz 4, 0x2ac(3)
    lhz 8, 0x2ae(3)
    lis 6, lbl_8052EBC0@ha
    add 7, 5, 7
    lis 5, 0x4330
    add 8, 8, 7
    lis 9, lbl_8049C634@ha
    addi 7, 6, lbl_8052EBC0@l
    stw 5, 0x80(1)
    clrlwi 6, 8, 16
    addi 8, 9, lbl_8049C634@l
    rlwinm 9, 6, 30, 18, 28
    lfsx 1, 8, 10
    add 6, 7, 9
    lfsx 2, 7, 9
    mulli 0, 0, 0xd
    lfs 0, 0x4(6)
    fmuls 3, 1, 2
    lfs 4, 0x2a8(3)
    fmuls 2, 1, 0
    lfs 0, 0xc(3)
    fmadds 5, 4, 3, 0
    xoris 0, 0, 0x8000
    stw 0, 0x84(1)
    addi 4, 4, 0x1
    lfs 1, 0x10(3)
    li 0, 0x1
    fmadds 4, 4, 2, 1
    lfs 0, 0x14(3)
    .4byte 0xC022905C # lfs f1, lbl_8053BFFC@sda21(r0)
    .4byte 0xC8629038 # lfd f3, lbl_8053BFD8@sda21(r0)
    lfd 2, 0x80(1)
    fadds 0, 1, 0
    stb 4, 0x2ac(3)
    fsubs 1, 2, 3
    .4byte 0xC3E29020 # lfs f31, lbl_8053BFC0@sda21(r0)
    stfs 5, 0x34(1)
    fadds 3, 1, 0
    stfs 4, 0x38(1)
    psq_l 1, 0x34(1), 0, 0
    frsp 0, 3
    stfs 3, 0x3c(1)
    psq_st 1, 0x64(1), 0, 0
    lfs 2, 0x64(1)
    lfs 1, 0x68(1)
    stfs 3, 0x6c(1)
    stfs 2, 0x70(1)
    stfs 1, 0x74(1)
    stfs 0, 0x78(1)
    stb 0, 0x249(31)
    .4byte 0x48000418 # b .L_800F9AD8
L_800F96C4:
    cmpwi 4, 0x4
    .4byte 0x4082017C # bne .L_800F9844
    lbz 9, 0x2ac(3)
    clrlwi. 0, 9, 31
    .4byte 0x41820040 # beq .L_800F9714
    srawi 5, 9, 1
    lis 4, 0x4330
    addi 5, 5, 0x1
    lhz 0, 0x2b2(3)
    mulli 5, 5, 0x14
    stw 4, 0x80(1)
    .4byte 0xC8229038 # lfd f1, lbl_8053BFD8@sda21(r0)
    extsh 4, 0
    .4byte 0xC0429058 # lfs f2, lbl_8053BFF8@sda21(r0)
    xoris 0, 5, 0x8000
    stw 0, 0x84(1)
    lfd 0, 0x80(1)
    fsubs 0, 0, 1
    fadds 4, 2, 0
    .4byte 0x4800003C # b .L_800F974C
L_800F9714:
    srawi 5, 9, 1
    lis 4, 0x4330
    addi 5, 5, 0x1
    lhz 0, 0x2b4(3)
    mulli 5, 5, -0x14
    stw 4, 0x80(1)
    .4byte 0xC8429038 # lfd f2, lbl_8053BFD8@sda21(r0)
    extsh 4, 0
    .4byte 0xC0029058 # lfs f0, lbl_8053BFF8@sda21(r0)
    xoris 0, 5, 0x8000
    stw 0, 0x84(1)
    lfd 1, 0x80(1)
    fsubs 1, 1, 2
    fsubs 4, 1, 0
L_800F974C:
    clrlwi 0, 4, 16
    lis 5, 0x4330
    srawi 0, 0, 5
    lis 6, lbl_8052EBC0@ha
    slwi 0, 0, 3
    lbz 4, 0x2ac(3)
    addi 7, 6, lbl_8052EBC0@l
    lis 6, lbl_8049C3B8@ha
    add 8, 7, 0
    lfsx 5, 7, 0
    lfs 3, 0xc(3)
    addi 7, 4, 0x1
    lfs 2, 0x4(8)
    srawi 4, 9, 1
    lfs 1, 0x10(3)
    addi 6, 6, lbl_8049C3B8@l
    lfs 0, 0x14(3)
    fmadds 9, 4, 5, 3
    fmadds 8, 4, 2, 1
    addi 0, 4, 0x1
    stb 7, 0x2ac(3)
    xoris 4, 0, 0x8000
    .4byte 0xC022905C # lfs f1, lbl_8053BFFC@sda21(r0)
    lha 3, 0x12(6)
    lha 0, 0x10(6)
    fadds 7, 1, 0
    xoris 6, 3, 0x8000
    stw 5, 0x80(1)
    xoris 3, 0, 0x8000
    .4byte 0xC8829038 # lfd f4, lbl_8053BFD8@sda21(r0)
    stw 6, 0x84(1)
    .4byte 0xC0A29084 # lfs f5, lbl_8053C024@sda21(r0)
    frsp 6, 7
    lfd 0, 0x80(1)
    li 0, 0x1
    stw 3, 0x94(1)
    fsubs 3, 0, 4
    .4byte 0xC0429064 # lfs f2, lbl_8053C004@sda21(r0)
    stw 5, 0x90(1)
    .4byte 0xC0029060 # lfs f0, lbl_8053C000@sda21(r0)
    lfd 1, 0x90(1)
    fmadds 2, 5, 3, 2
    stfs 9, 0x28(1)
    fsubs 1, 1, 4
    stfs 8, 0x2c(1)
    psq_l 3, 0x28(1), 0, 0
    fmadds 0, 5, 1, 0
    stw 4, 0x8c(1)
    psq_st 3, 0x58(1), 0, 0
    stw 5, 0x88(1)
    lfs 5, 0x58(1)
    lfd 1, 0x88(1)
    lfs 3, 0x5c(1)
    fsubs 1, 1, 4
    stfs 7, 0x30(1)
    stfs 7, 0x60(1)
    fnmsubs 31, 2, 1, 0
    stfs 5, 0x70(1)
    stfs 3, 0x74(1)
    stfs 6, 0x78(1)
    stb 0, 0x249(31)
    .4byte 0x48000298 # b .L_800F9AD8
L_800F9844:
    cmpwi 4, 0x1
    .4byte 0x4082014C # bne .L_800F9994
    lbz 5, 0x2ac(3)
    cmplwi 5, 0x8
    .4byte 0x40800010 # bge .L_800F9864
    li 0, 0x0
    li 4, 0x2000
    .4byte 0x4800005C # b .L_800F98BC
L_800F9864:
    cmplwi 5, 0x10
    .4byte 0x4080000C # bge .L_800F9874
    li 4, 0x2000
    .4byte 0x4800004C # b .L_800F98BC
L_800F9874:
    cmplwi 5, 0x15
    .4byte 0x40800010 # bge .L_800F9888
    li 0, 0x2
    li 4, 0x3332
    .4byte 0x48000038 # b .L_800F98BC
L_800F9888:
    cmplwi 5, 0x18
    .4byte 0x40800010 # bge .L_800F989C
    li 0, 0x3
    li 4, 0x5554
    .4byte 0x48000024 # b .L_800F98BC
L_800F989C:
    cmplwi 5, 0x1a
    .4byte 0x40800014 # bge .L_800F98B4
    lis 4, 0x1
    li 0, 0x4
    addi 4, 4, -0x8000
    .4byte 0x4800000C # b .L_800F98BC
L_800F98B4:
    li 0, 0x5
    li 4, 0x2000
L_800F98BC:
    mullw 5, 5, 4
    slwi 7, 0, 12
    slwi 10, 0, 2
    lbz 4, 0x2ac(3)
    lhz 8, 0x2ae(3)
    lis 6, lbl_8052EBC0@ha
    add 7, 5, 7
    lis 5, 0x4330
    add 8, 8, 7
    lis 9, lbl_8049C634@ha
    addi 7, 6, lbl_8052EBC0@l
    stw 5, 0x90(1)
    clrlwi 6, 8, 16
    addi 8, 9, lbl_8049C634@l
    rlwinm 9, 6, 30, 18, 28
    lfsx 1, 8, 10
    add 6, 7, 9
    lfsx 2, 7, 9
    mulli 0, 0, 0xd
    lfs 0, 0x4(6)
    fmuls 3, 1, 2
    lfs 4, 0x2a8(3)
    fmuls 2, 1, 0
    lfs 0, 0xc(3)
    fmadds 5, 4, 3, 0
    xoris 0, 0, 0x8000
    stw 0, 0x94(1)
    addi 4, 4, 0x1
    lfs 1, 0x10(3)
    li 0, 0x1
    fmadds 4, 4, 2, 1
    lfs 0, 0x14(3)
    .4byte 0xC022905C # lfs f1, lbl_8053BFFC@sda21(r0)
    .4byte 0xC8629038 # lfd f3, lbl_8053BFD8@sda21(r0)
    lfd 2, 0x90(1)
    fadds 0, 1, 0
    stb 4, 0x2ac(3)
    fsubs 1, 2, 3
    .4byte 0xC3E29088 # lfs f31, lbl_8053C028@sda21(r0)
    stfs 5, 0x1c(1)
    fadds 3, 1, 0
    stfs 4, 0x20(1)
    psq_l 1, 0x1c(1), 0, 0
    frsp 0, 3
    stfs 3, 0x24(1)
    psq_st 1, 0x4c(1), 0, 0
    lfs 2, 0x4c(1)
    lfs 1, 0x50(1)
    stfs 3, 0x54(1)
    stfs 2, 0x70(1)
    stfs 1, 0x74(1)
    stfs 0, 0x78(1)
    stb 0, 0x249(31)
    .4byte 0x48000148 # b .L_800F9AD8
L_800F9994:
    lbz 5, 0x2ac(3)
    cmplwi 5, 0x8
    .4byte 0x40800010 # bge .L_800F99AC
    li 0, 0x0
    li 4, 0x2000
    .4byte 0x4800005C # b .L_800F9A04
L_800F99AC:
    cmplwi 5, 0x10
    .4byte 0x4080000C # bge .L_800F99BC
    li 4, 0x2000
    .4byte 0x4800004C # b .L_800F9A04
L_800F99BC:
    cmplwi 5, 0x15
    .4byte 0x40800010 # bge .L_800F99D0
    li 0, 0x2
    li 4, 0x3332
    .4byte 0x48000038 # b .L_800F9A04
L_800F99D0:
    cmplwi 5, 0x18
    .4byte 0x40800010 # bge .L_800F99E4
    li 0, 0x3
    li 4, 0x5554
    .4byte 0x48000024 # b .L_800F9A04
L_800F99E4:
    cmplwi 5, 0x1a
    .4byte 0x40800014 # bge .L_800F99FC
    lis 4, 0x1
    li 0, 0x4
    addi 4, 4, -0x8000
    .4byte 0x4800000C # b .L_800F9A04
L_800F99FC:
    li 0, 0x5
    li 4, 0x2000
L_800F9A04:
    mullw 5, 5, 4
    slwi 7, 0, 12
    slwi 10, 0, 2
    lbz 4, 0x2ac(3)
    lhz 8, 0x2ae(3)
    lis 6, lbl_8052EBC0@ha
    add 7, 5, 7
    lis 5, 0x4330
    add 8, 8, 7
    lis 9, lbl_8049C634@ha
    addi 7, 6, lbl_8052EBC0@l
    stw 5, 0x90(1)
    clrlwi 6, 8, 16
    addi 8, 9, lbl_8049C634@l
    rlwinm 9, 6, 30, 18, 28
    lfsx 1, 8, 10
    add 6, 7, 9
    lfsx 2, 7, 9
    mulli 0, 0, 0xd
    lfs 0, 0x4(6)
    fmuls 3, 1, 2
    lfs 4, 0x2a8(3)
    fmuls 2, 1, 0
    lfs 0, 0xc(3)
    fmadds 5, 4, 3, 0
    xoris 0, 0, 0x8000
    stw 0, 0x94(1)
    addi 4, 4, 0x1
    lfs 1, 0x10(3)
    li 0, 0x0
    fmadds 4, 4, 2, 1
    lfs 0, 0x14(3)
    .4byte 0xC022905C # lfs f1, lbl_8053BFFC@sda21(r0)
    .4byte 0xC8629038 # lfd f3, lbl_8053BFD8@sda21(r0)
    lfd 2, 0x90(1)
    fadds 0, 1, 0
    stb 4, 0x2ac(3)
    fsubs 1, 2, 3
    .4byte 0xC3E2906C # lfs f31, lbl_8053C00C@sda21(r0)
    stfs 5, 0x10(1)
    fadds 3, 1, 0
    stfs 4, 0x14(1)
    psq_l 1, 0x10(1), 0, 0
    frsp 0, 3
    stfs 3, 0x18(1)
    psq_st 1, 0x40(1), 0, 0
    lfs 2, 0x40(1)
    lfs 1, 0x44(1)
    stfs 3, 0x48(1)
    stfs 2, 0x70(1)
    stfs 1, 0x74(1)
    stfs 0, 0x78(1)
    stb 0, 0x249(31)
L_800F9AD8:
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x4082011C # bne .L_800F9C04
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, -0x1
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x41800024 # blt .L_800F9B2C
    lfs 1, 0x10(31)
    addi 5, 1, 0x8
    lfs 0, 0xc(31)
    li 4, 0x0
    li 6, 0x10
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    bl fn_80238548
L_800F9B2C:
    lfs 0, 0x70(1)
    lis 0, 0x4330
    lfs 6, 0xc(31)
    mr 3, 31
    .4byte 0xC0829034 # lfs f4, lbl_8053BFD4@sda21(r0)
    li 4, 0x2
    fsubs 0, 0, 6
    stw 0, 0x88(1)
    .4byte 0xC8629038 # lfd f3, lbl_8053BFD8@sda21(r0)
    li 5, -0x1
    .4byte 0xC0A29030 # lfs f5, lbl_8053BFD0@sda21(r0)
    li 6, 0x1
    fmuls 2, 4, 0
    lfs 1, 0x74(1)
    stw 0, 0x98(1)
    lfs 0, 0x78(1)
    fctiwz 2, 2
    stw 0, 0xa8(1)
    stfd 2, 0x90(1)
    lwz 0, 0x94(1)
    xoris 0, 0, 0x8000
    stw 0, 0x8c(1)
    lfd 2, 0x88(1)
    fsubs 2, 2, 3
    fmuls 2, 5, 2
    fmadds 2, 2, 31, 6
    stfs 2, 0xc(31)
    lfs 2, 0x10(31)
    fsubs 1, 1, 2
    fmuls 1, 4, 1
    fctiwz 1, 1
    stfd 1, 0x80(1)
    lwz 0, 0x84(1)
    xoris 0, 0, 0x8000
    stw 0, 0x9c(1)
    lfd 1, 0x98(1)
    fsubs 1, 1, 3
    fmuls 1, 5, 1
    fmadds 1, 1, 31, 2
    stfs 1, 0x10(31)
    lfs 1, 0x14(31)
    fsubs 0, 0, 1
    fmuls 0, 4, 0
    fctiwz 0, 0
    stfd 0, 0xa0(1)
    lwz 0, 0xa4(1)
    xoris 0, 0, 0x8000
    stw 0, 0xac(1)
    lfd 0, 0xa8(1)
    fsubs 0, 0, 3
    fmuls 0, 5, 0
    fmadds 0, 0, 31, 1
    stfs 0, 0x14(31)
    bl fn_801F2B7C
L_800F9C04:
    psq_l 31, 0xc8(1), 0, 0
    lwz 0, 0xd4(1)
    lfd 31, 0xc0(1)
    lwz 31, 0xbc(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

