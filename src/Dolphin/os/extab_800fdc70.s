# fn_800FDC70(outVec3, ringArray, otherPosPtr, maxDist, slotIndexOr
# Sentinel): a sibling of `fn_800FD998` in the same ring-math cluster -
# "clamp distance from an anchor" (a leash/tether utility). Resolves
# the ring slot the same established way, reads its position, and
# computes the difference from `otherPosPtr` via `PSVECMag`. If
# `maxDist==0`: outputs the ring slot's position directly (unclamped).
# Otherwise: normalizes the difference (a SIXTH-plus instance this
# session of the fast-inverse-sqrt idiom), converts `maxDist` from
# integer to float via the classic double-bias trick, divides the
# ORIGINAL distance by the scaled cap to get a clamp ratio, and
# applies that scaled direction to the output - i.e. "move toward the
# ring slot, but never more than `maxDist` away from `otherPosPtr`."
# A natural fit alongside `fn_800FD998`'s arc-placement for keeping
# chain/ring segments from stretching past a maximum link length.
# Needs `-mgekko`. Caller not traced; not yet cross-identified against
# the 195-entry dispatch table.
.section extab, "a"
.balign 4
.global etb_80005860
etb_80005860:
    .4byte 0x10CA0000
    .4byte 0x00000000
.size etb_80005860, 8

.section extabindex, "a"
.balign 4
.global eti_80011BC0
eti_80011BC0:
    .4byte fn_800FDC70
    .4byte 0x000001C8
    .4byte etb_80005860
.size eti_80011BC0, 12

.text
.balign 4
.global fn_800FDC70

fn_800FDC70:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    clrlwi 0, 7, 24
    mr 30, 3
    cmplwi 0, 0xff
    mr 31, 6
    .4byte 0x40820028 # bne .L_800FDCD4
    lbz 0, 0x3(4)
    slwi 0, 0, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    .4byte 0x48000020 # b .L_800FDCF0
L_800FDCD4:
    clrlslwi 0, 7, 24, 2
    add 3, 4, 0
    lwz 3, 0x4(3)
    psq_l 1, 0xc(3), 0, 0
    lfs 0, 0x14(3)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
L_800FDCF0:
    lfs 0, 0x10(1)
    addi 3, 1, 0x14
    psq_l 1, 0x8(1), 0, 0
    stfs 0, 0x1c(1)
    psq_l 3, 0x0(5), 0, 0
    psq_l 2, 0x8(3), 1, 0
    psq_l 0, 0x8(5), 1, 0
    ps_sub 3, 1, 3
    psq_st 1, 0x0(3), 0, 0
    ps_sub 0, 2, 0
    psq_st 3, 0x0(3), 0, 0
    psq_st 0, 0x8(3), 1, 0
    bl PSVECMag
    cmpwi 31, 0x0
    .4byte 0x40820018 # bne .L_800FDD40
    psq_l 1, 0x14(1), 0, 0
    lfs 0, 0x1c(1)
    psq_st 1, 0x0(30), 0, 0
    stfs 0, 0x8(30)
    .4byte 0x480000CC # b .L_800FDE08
L_800FDD40:
    psq_l 3, 0x14(1), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 29, 0x1c(1)
    ps_mul 3, 3, 3
    .4byte 0xC042911C # lfs f2, lbl_8053C0BC@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 5, 29, 29, 3
    fmuls 0, 2, 0
    ps_sum0 5, 5, 3, 3
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_800FDDC4
    .4byte 0xC0029118 # lfs f0, lbl_8053C0B8@sda21(r0)
    fcmpo cr0, 5, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_800FDD88
    fmr 30, 5
    .4byte 0x48000028 # b .L_800FDDAC
L_800FDD88:
    frsqrte 4, 5
    .4byte 0xC0629114 # lfs f3, lbl_8053C0B4@sda21(r0)
    .4byte 0xC0029120 # lfs f0, lbl_8053C0C0@sda21(r0)
    frsp 4, 4
    fmuls 2, 4, 4
    fmuls 3, 3, 4
    fnmsubs 0, 5, 2, 0
    fmuls 0, 3, 0
    fmr 30, 0
L_800FDDAC:
    psq_l 2, 0x14(1), 0, 0
    psq_l 0, 0x1c(1), 1, 0
    ps_muls0 2, 2, 30
    ps_muls0 0, 0, 30
    psq_st 2, 0x14(1), 0, 0
    psq_st 0, 0x1c(1), 1, 0
L_800FDDC4:
    xoris 3, 31, 0x8000
    lis 0, 0x4330
    stw 3, 0x24(1)
    .4byte 0xC8429128 # lfd f2, lbl_8053C0C8@sda21(r0)
    stw 0, 0x20(1)
    psq_l 3, 0x1c(1), 1, 0
    lfd 0, 0x20(1)
    psq_l 4, 0x14(1), 0, 0
    fsubs 0, 0, 2
    fdivs 31, 1, 0
    ps_muls0 0, 3, 31
    ps_muls0 1, 4, 31
    psq_st 0, 0x1c(1), 1, 0
    psq_st 1, 0x14(1), 0, 0
    lfs 0, 0x1c(1)
    psq_st 1, 0x0(30), 0, 0
    stfs 0, 0x8(30)
L_800FDE08:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 0, 0x64(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

