# fn_800FD998(outVec3, ringArray, otherPosPtr, stepIndex, isFinalStep,
# totalSteps, slotIndexOrSentinel): a "compute a point along an arc
# between two ring anchors" utility, tying the ring/chain-adjacency
# library (`oscluster_800fd498.c`/`fn_800FD894`) directly to the
# shared anchor table `lbl_8052EBC0` already seen throughout the
# OIWA/RUPY/rupee-container/WRTC investigations this session. Resolves
# `slotIndexOrSentinel` the SAME way as `fn_800FD5E8`/`fn_800FD894`
# (sentinel `0xFF` -> `ringArray->0x3`), reads that slot's position
# (`+0xc`/`+0x14`, paired-single), and combines it with a caller-
# supplied second position (`otherPosPtr`) into a midpoint (average)
# and half-difference (radius vector) via paired-single add/sub
# scaled by 0.5.
#
# If `totalSteps==0`: just outputs the midpoint directly. If a second
# flag is 0: outputs a fixed default position constant instead.
# Otherwise: computes a per-step angle increment (`0x8000/totalSteps`,
# a 16-bit-angle half-circle divided evenly among the steps),
# normalizes the radius vector via `PSVECMag` + a FIFTH-plus instance
# this session of the fast-inverse-sqrt idiom (frsqrte+Newton-
# Raphson), then looks up TWO direction vectors from `lbl_8052EBC0`
# (indexed by `stepIndex` and `stepIndex-1`, both scaled by the angle
# increment) to place the output point ON THE ARC between the two
# endpoints at this step's position - i.e. "distribute N points
# evenly along an arc/chord connecting 2 given anchors," a strong,
# concrete fit for laying out a chain/ring of N linked segments
# between two attachment points. Needs `-mgekko`. Caller not traced;
# not yet cross-identified against the 195-entry dispatch table.
.section extab, "a"
.balign 4
.global etb_80005858
etb_80005858:
    .4byte 0x210A0000
    .4byte 0x00000000
.size etb_80005858, 8

.section extabindex, "a"
.balign 4
.global eti_80011BB4
eti_80011BB4:
    .4byte fn_800FD998
    .4byte 0x000002D8
    .4byte etb_80005858
.size eti_80011BB4, 12

.text
.balign 4
.global fn_800FD998

fn_800FD998:
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
    stw 31, 0x6c(1)
    stw 30, 0x68(1)
    stw 29, 0x64(1)
    stw 28, 0x60(1)
    clrlwi 0, 8, 24
    mr 30, 3
    cmplwi 0, 0xff
    mr 28, 5
    mr 31, 6
    mr 29, 7
    .4byte 0x40820028 # bne .L_800FDA14
    lbz 0, 0x3(4)
    slwi 0, 0, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    .4byte 0x48000020 # b .L_800FDA30
L_800FDA14:
    clrlslwi 0, 8, 24, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
L_800FDA30:
    lfs 0, 0x1c(1)
    addi 3, 1, 0x50
    psq_l 1, 0x14(1), 0, 0
    stfs 0, 0x34(1)
    psq_l 0, 0x0(28), 0, 0
    psq_l 3, 0x8(28), 1, 0
    psq_l 2, 0x34(1), 1, 0
    ps_add 4, 0, 1
    ps_sub 6, 1, 0
    .4byte 0xC0A29114 # lfs f5, lbl_8053C0B4@sda21(r0)
    ps_add 0, 3, 2
    psq_st 1, 0x2c(1), 0, 0
    ps_sub 3, 2, 3
    ps_muls0 2, 4, 5
    psq_st 4, 0x38(1), 0, 0
    ps_muls0 1, 0, 5
    psq_st 0, 0x40(1), 1, 0
    psq_st 2, 0x38(1), 0, 0
    psq_st 1, 0x40(1), 1, 0
    psq_st 6, 0x0(3), 0, 0
    psq_st 3, 0x8(3), 1, 0
    bl PSVECMag
    .4byte 0xC0629114 # lfs f3, lbl_8053C0B4@sda21(r0)
    cmpwi 29, 0x0
    fmuls 0, 3, 1
    .4byte 0x40820018 # bne .L_800FDAAC
    psq_l 1, 0x50(1), 0, 0
    lfs 0, 0x58(1)
    psq_st 1, 0x0(30), 0, 0
    stfs 0, 0x8(30)
    .4byte 0x48000188 # b .L_800FDC30
L_800FDAAC:
    cmpwi 31, 0x0
    .4byte 0x40820024 # bne .L_800FDAD4
    .4byte 0xC0029118 # lfs f0, lbl_8053C0B8@sda21(r0)
    stfs 0, 0x54(1)
    stfs 0, 0x50(1)
    stfs 0, 0x58(1)
    psq_l 1, 0x50(1), 0, 0
    psq_st 1, 0x0(30), 0, 0
    stfs 0, 0x8(30)
    .4byte 0x48000160 # b .L_800FDC30
L_800FDAD4:
    lis 4, 0x1
    psq_l 2, 0x8(28), 1, 0
    addi 0, 4, -0x8000
    psq_l 1, 0x40(1), 1, 0
    divw 0, 0, 29
    psq_l 5, 0x0(28), 0, 0
    ps_sub 1, 2, 1
    psq_l 4, 0x38(1), 0, 0
    lis 3, lbl_80539D44@ha
    .4byte 0xC042911C # lfs f2, lbl_8053C0BC@sda21(r0)
    ps_sub 4, 5, 4
    psq_st 1, 0x28(1), 1, 0
    lfs 1, lbl_80539D44@l(3)
    clrlwi 5, 0, 16
    lfs 30, 0x28(1)
    ps_mul 6, 4, 4
    fmuls 1, 2, 1
    psq_st 4, 0x20(1), 0, 0
    ps_madd 5, 30, 30, 6
    ps_sum0 5, 5, 6, 6
    fcmpo cr0, 5, 1
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_800FDB80
    .4byte 0xC0229118 # lfs f1, lbl_8053C0B8@sda21(r0)
    fcmpo cr0, 5, 1
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_800FDB48
    fmr 31, 5
    .4byte 0x48000024 # b .L_800FDB68
L_800FDB48:
    frsqrte 4, 5
    .4byte 0xC0229120 # lfs f1, lbl_8053C0C0@sda21(r0)
    frsp 4, 4
    fmuls 2, 4, 4
    fmuls 3, 3, 4
    fnmsubs 1, 5, 2, 1
    fmuls 1, 3, 1
    fmr 31, 1
L_800FDB68:
    psq_l 2, 0x20(1), 0, 0
    psq_l 1, 0x28(1), 1, 0
    ps_muls0 2, 2, 31
    ps_muls0 1, 1, 31
    psq_st 2, 0x20(1), 0, 0
    psq_st 1, 0x28(1), 1, 0
L_800FDB80:
    mullw 3, 31, 5
    lfs 5, 0x28(1)
    lfs 3, 0x20(1)
    lis 4, lbl_8052EBC0@ha
    lfs 4, 0x24(1)
    subi 0, 31, 0x1
    addi 4, 4, lbl_8052EBC0@l
    rlwinm 3, 3, 30, 18, 28
    addi 4, 4, 0x4
    stfs 5, 0x58(1)
    lfsx 1, 4, 3
    mullw 0, 0, 5
    psq_l 2, 0x58(1), 1, 0
    fmuls 29, 0, 1
    stfs 5, 0x4c(1)
    stfs 3, 0x50(1)
    ps_muls0 2, 2, 29
    rlwinm 0, 0, 30, 18, 28
    stfs 4, 0x54(1)
    lfsx 1, 4, 0
    psq_st 2, 0x58(1), 1, 0
    fmuls 28, 0, 1
    psq_l 0, 0x4c(1), 1, 0
    lfs 2, 0x58(1)
    stfs 3, 0x44(1)
    ps_muls0 1, 0, 28
    psq_l 0, 0x50(1), 0, 0
    stfs 2, 0x10(1)
    ps_muls0 0, 0, 29
    psq_l 2, 0x10(1), 1, 0
    stfs 4, 0x48(1)
    ps_sub 3, 2, 1
    psq_l 2, 0x44(1), 0, 0
    psq_st 0, 0x50(1), 0, 0
    ps_muls0 2, 2, 28
    psq_st 3, 0x10(1), 1, 0
    ps_sub 4, 0, 2
    psq_st 0, 0x8(1), 0, 0
    lfs 3, 0x10(1)
    psq_st 2, 0x44(1), 0, 0
    psq_st 4, 0x0(30), 0, 0
    psq_st 1, 0x4c(1), 1, 0
    psq_st 4, 0x8(1), 0, 0
    stfs 3, 0x8(30)
L_800FDC30:
    psq_l 31, 0xa8(1), 0, 0
    lfd 31, 0xa0(1)
    psq_l 30, 0x98(1), 0, 0
    lfd 30, 0x90(1)
    psq_l 29, 0x88(1), 0, 0
    lfd 29, 0x80(1)
    psq_l 28, 0x78(1), 0, 0
    lfd 28, 0x70(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    lwz 29, 0x64(1)
    lwz 0, 0xb4(1)
    lwz 28, 0x60(1)
    mtlr 0
    addi 1, 1, 0xb0
    blr

