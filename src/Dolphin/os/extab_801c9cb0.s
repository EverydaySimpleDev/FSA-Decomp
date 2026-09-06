.section extab, "a"
.balign 4
.global etb_800081E8
etb_800081E8:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800081E8, 8

.section extabindex, "a"
.balign 4
.global eti_80015400
eti_80015400:
    .4byte fn_801C9CB0
    .4byte 0x00000208
    .4byte etb_800081E8
.size eti_80015400, 12

.text
.balign 4
.global fn_801C9CB0

# fn_801C9CB0(this) - a boundary/stuck handler for SLK2's ellipse
# wander area. Landed as a structural overview - fn_801F2618 and
# fn_801CE800 (called below) remain undecompiled, so their exact
# contracts are inferred from usage:
# 1. Bails immediately if this->0x230 bit 19 is already set, or if
#    either extent gap (this->0x88-0x80 or this->0x8c-0x84) is below
#    an epsilon (lbl_8053EF20) - i.e. only proceeds when the wander
#    area actually has real size.
# 2. In a config-restricted room (GetRoomConfigRecord()->0x31df, CONFIRMED),
#    if in state 0x1c and near ground level (this->0x14 <= epsilon),
#    collapses this->0x10/0x14 and this->0x1c/0x20 toward the epsilon -
#    a floor-snapping adjustment.
# 3. Calls fn_801F2618(this, &this->0x264, lbl_8053EFC0) (not
#    decompiled - operates on the CONFIRMED ellipse-radii fields from
#    fn_801C9234, extab_801c9234.s) to recompute/validate the wander
#    area, then branches on whether step 2's adjustment fired:
#    - If it fired: repositions this->0x18/0x1c/0x20 from a local point
#      computed by fn_801F2618, and either commits it directly to
#      this->0xc/0x10/0x14, or (if fn_801F2618 signaled a boundary hit)
#      computes a REFLECTED position (mirrored across the boundary) and
#      calls fn_801CE800(this) (not decompiled - likely a bounce/impact
#      reaction).
#    - Otherwise: requires fn_801F2618's result to be true, the
#      per-room flag to be set, this->0x230 bit 28 clear, height near
#      ground level, and BOTH the Z-radius (this->0x268) and current
#      Z-position to already be close to fixed reference values
#      (lbl_8053EF24/28 tolerance) - if ALL hold, snaps
#      this->0x14/0x44 to the epsilon and sets this->0x230 bit 0x10
#      (the SAME "pathfinding failed" flag fn_801C9420 sets,
#      extab_801c9420.s) - a "stuck against this exact boundary,
#      give up" detection.
fn_801C9CB0:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    li 29, 0x0
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 19, 19
    .4byte 0x408201C0 # bne .L_801C9E98
    lfs 1, 0x88(31)
    lfs 0, 0x80(31)
    .4byte 0xC042BF80 # lfs f2, lbl_8053EF20@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408101A8 # ble .L_801C9E98
    lfs 1, 0x8c(31)
    lfs 0, 0x84(31)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810194 # ble .L_801C9E98
    psq_l 1, 0x18(31), 0, 0
    lfs 0, 0x20(31)
    psq_l 3, 0xc(31), 0, 0
    lfs 2, 0x14(31)
    psq_st 1, 0x14(1), 0, 0
    lwz 30, 0x4(31)
    stfs 0, 0x1c(1)
    psq_st 3, 0x8(1), 0, 0
    stfs 2, 0x10(1)
    bl GetRoomConfigRecord
    lwz 0, 0x248(31)
    addis 3, 3, 0x1
    add 3, 3, 30
    li 29, 0x0
    cmpwi 0, 0x1c
    lbz 30, 0x31df(3)
    .4byte 0x40820054 # bne .L_801C9D9C
    lfs 0, 0x14(31)
    .4byte 0xC042BF80 # lfs f2, lbl_8053EF20@sda21(r0)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    mfcr 0
    extrwi. 0, 0, 1, 2
    .4byte 0x40820038 # bne .L_801C9D9C
    cmplwi 30, 0x0
    .4byte 0x41820030 # beq .L_801C9D9C
    lfs 1, 0x1c(31)
    li 29, 0x1
    lfs 0, 0x20(31)
    fsubs 0, 1, 0
    stfs 0, 0x1c(31)
    stfs 2, 0x20(31)
    lfs 1, 0x10(31)
    lfs 0, 0x14(31)
    fsubs 0, 1, 0
    stfs 0, 0x10(31)
    stfs 2, 0x14(31)
L_801C9D9C:
    .4byte 0x88A2C020 # lbz r5, lbl_8053EFC0@sda21(r0)
    mr 3, 31
    addi 4, 31, 0x264
    bl fn_801F2618
    clrlwi. 0, 29, 24
    mr 29, 3
    .4byte 0x4182006C # beq .L_801C9E20
    lfs 0, 0x14(1)
    clrlwi. 0, 3, 24
    lfs 1, 0x18(1)
    stfs 0, 0x18(31)
    lfs 0, 0x1c(1)
    stfs 1, 0x1c(31)
    stfs 0, 0x20(31)
    .4byte 0x40820020 # bne .L_801C9DF4
    lfs 0, 0x8(1)
    lfs 1, 0xc(1)
    stfs 0, 0xc(31)
    lfs 0, 0x10(1)
    stfs 1, 0x10(31)
    stfs 0, 0x14(31)
    .4byte 0x480000A8 # b .L_801C9E98
L_801C9DF4:
    lfs 3, 0x10(1)
    mr 3, 31
    lfs 1, 0xc(1)
    lfs 2, 0x10(31)
    fsubs 0, 1, 3
    fsubs 0, 2, 0
    fsubs 0, 3, 0
    stfs 0, 0x14(31)
    stfs 1, 0x10(31)
    bl fn_801CE800
    .4byte 0x4800007C # b .L_801C9E98
L_801C9E20:
    clrlwi. 0, 3, 24
    .4byte 0x41820074 # beq .L_801C9E98
    cmplwi 30, 0x0
    .4byte 0x4182006C # beq .L_801C9E98
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x40820060 # bne .L_801C9E98
    lfs 0, 0x14(31)
    .4byte 0xC062BF80 # lfs f3, lbl_8053EF20@sda21(r0)
    fcmpo cr0, 0, 3
    cror eq, lt, eq
    .4byte 0x4082004C # bne .L_801C9E98
    lfs 1, 0x268(31)
    .4byte 0xC002BF84 # lfs f0, lbl_8053EF24@sda21(r0)
    .4byte 0xC042BF88 # lfs f2, lbl_8053EF28@sda21(r0)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800030 # bge .L_801C9E98
    lfs 1, 0x10(31)
    lfs 0, 0x1c(31)
    fsubs 0, 1, 0
    fabs 0, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800018 # bge .L_801C9E98
    stfs 3, 0x14(31)
    stfs 3, 0x44(31)
    lwz 0, 0x230(31)
    ori 0, 0, 0x10
    stw 0, 0x230(31)
L_801C9E98:
    lwz 0, 0x34(1)
    mr 3, 29
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr
