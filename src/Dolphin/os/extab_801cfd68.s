.section extab, "a"
.balign 4
.global etb_80008438
etb_80008438:
    .4byte 0x414A0000
    .4byte 0x00000000
.size etb_80008438, 8

.section extabindex, "a"
.balign 4
.global eti_80015778
eti_80015778:
    .4byte fn_801CFD68
    .4byte 0x000002B8
    .4byte etb_80008438
.size eti_80015778, 12

.text
.balign 4
.global fn_801CFD68

# fn_801CFD68(this, sideIndex, offset) - the area-probe fn_801CFCF0
# (extab_801cfcf0.s) tail-calls with its per-side adjusted `offset`
# (already scaled there by this->0x80/84/88/8c). Closes the loop on
# fn_801C6260's hedge (extab_801c6260.s) calling fn_801CFCF0 with mode
# 0/1 as "which side of the line" before deciding whether to snap the
# facing angle a quarter-turn - this IS that side/collision test:
#
# 1. Copies this->0xc/0x10/0x14 (the actor's 3D position) to the stack,
#    then nudges ONE axis by `offset` (further scaled by
#    lbl_8053EFE4): sideIndex 0 -> X += offset, 1 -> X -= offset,
#    2 -> Z += offset, 3 -> Z -= offset (any other index leaves it
#    unchanged).
# 2. Builds a candidate rectangle from this->0x80/0x84/0x88/0x8c (the
#    same 4 per-side extent fields fn_801CFCF0 reads), but overrides
#    the pair matching the moved axis with +-offset instead of the
#    stored value (sideIndex 0/1 -> override the X-extent pair,
#    2/3 -> override the Z-extent pair), then re-centers the whole
#    rectangle on the nudged position from step 1.
# 3. Quick-rejects (returns 1) if that rectangle isn't fully contained
#    within the current room's config rect (GetRoomConfigRecord(), the same
#    room<8 (+0xcc..+0xd8) / room>=8 (+0xdc..+0xe8) rect family
#    fn_801CFA70/fn_801CD0D0/fn_801CD150 use - this->0x4 doubles as
#    both "owning room" and "ownership group" here, reconciling both
#    uses of that field seen elsewhere in this project) or if either of
#    the rectangle's dimensions is smaller than lbl_8053EFC4 (treated
#    as degenerate).
# 4. Otherwise samples every point of a 2D grid across the rectangle
#    (step length lbl_8053EFDC, step count from lbl_8053EFF8 - the SAME
#    constants fn_801CFA70 uses for its 1D line sampling), snapping the
#    first/last row and column to the EXACT rectangle edges to avoid
#    float drift, calling the per-actor virtual at vtable+0x4c (same
#    slot as fn_801CFA70/fn_801F172C) at each grid point. Returns 1 the
#    instant any sample reports true, else 0 once the whole grid is
#    clear - the 2D-area counterpart to fn_801CFA70's 1D-line sweep.
fn_801CFD68:
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
    stmw 24, 0x30(1)
    mr 24, 3
    .4byte 0xC002C044 # lfs f0, lbl_8053EFE4@sda21(r0)
    psq_l 3, 0xc(24), 0, 0
    cmpwi 4, 0x2
    lfs 2, 0x14(3)
    fmuls 1, 0, 1
    psq_st 3, 0x14(1), 0, 0
    stfs 2, 0x1c(1)
    .4byte 0x41820044 # beq .L_801CFE04
    .4byte 0x40800014 # bge .L_801CFDD8
    cmpwi 4, 0x0
    .4byte 0x41820018 # beq .L_801CFDE4
    .4byte 0x40800024 # bge .L_801CFDF4
    .4byte 0x4800004C # b .L_801CFE20
L_801CFDD8:
    cmpwi 4, 0x4
    .4byte 0x40800044 # bge .L_801CFE20
    .4byte 0x48000034 # b .L_801CFE14
L_801CFDE4:
    lfs 0, 0x14(1)
    fadds 0, 0, 1
    stfs 0, 0x14(1)
    .4byte 0x48000030 # b .L_801CFE20
L_801CFDF4:
    lfs 0, 0x14(1)
    fsubs 0, 0, 1
    stfs 0, 0x14(1)
    .4byte 0x48000020 # b .L_801CFE20
L_801CFE04:
    lfs 0, 0x18(1)
    fadds 0, 0, 1
    stfs 0, 0x18(1)
    .4byte 0x48000010 # b .L_801CFE20
L_801CFE14:
    lfs 0, 0x18(1)
    fsubs 0, 0, 1
    stfs 0, 0x18(1)
L_801CFE20:
    cmpwi 4, 0x2
    lfs 31, 0x80(24)
    lfs 27, 0x84(24)
    lfs 30, 0x88(24)
    lfs 29, 0x8c(24)
    .4byte 0x40800010 # bge .L_801CFE44
    cmpwi 4, 0x0
    .4byte 0x40800014 # bge .L_801CFE50
    .4byte 0x48000024 # b .L_801CFE64
L_801CFE44:
    cmpwi 4, 0x4
    .4byte 0x4080001C # bge .L_801CFE64
    .4byte 0x48000010 # b .L_801CFE5C
L_801CFE50:
    fmr 30, 1
    fneg 31, 1
    .4byte 0x4800000C # b .L_801CFE64
L_801CFE5C:
    fneg 27, 1
    fmr 29, 1
L_801CFE64:
    lfs 1, 0x18(1)
    lfs 0, 0x14(24)
    lfs 2, 0x14(1)
    fsubs 0, 1, 0
    lwz 25, 0x4(24)
    fadds 31, 31, 2
    fadds 30, 30, 2
    fadds 27, 27, 0
    fadds 29, 29, 0
    bl GetRoomConfigRecord
    cmpwi 25, 0x8
    .4byte 0x4080000C # bge .L_801CFE9C
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801CFEA0
L_801CFE9C:
    addi 3, 3, 0xdc
L_801CFEA0:
    lfs 0, 0x0(3)
    li 0, 0x0
    fcmpo cr0, 31, 0
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_801CFEE0
    lfs 0, 0x4(3)
    fcmpo cr0, 27, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_801CFEE0
    lfs 0, 0x8(3)
    fcmpo cr0, 30, 0
    .4byte 0x40800014 # bge .L_801CFEE0
    lfs 0, 0xc(3)
    fcmpo cr0, 29, 0
    .4byte 0x40800008 # bge .L_801CFEE0
    li 0, 0x1
L_801CFEE0:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_801CFEF0
    li 3, 0x1
    .4byte 0x480000F8 # b .L_801CFFE4
L_801CFEF0:
    fsubs 1, 30, 31
    .4byte 0xC042C024 # lfs f2, lbl_8053EFC4@sda21(r0)
    fcmpo cr0, 1, 2
    .4byte 0x41800010 # blt .L_801CFF0C
    fsubs 3, 29, 27
    fcmpo cr0, 3, 2
    .4byte 0x4080000C # bge .L_801CFF14
L_801CFF0C:
    li 3, 0x1
    .4byte 0x480000D4 # b .L_801CFFE4
L_801CFF14:
    .4byte 0xC002C058 # lfs f0, lbl_8053EFF8@sda21(r0)
    li 27, 0x0
    stfs 31, 0x8(1)
    fmuls 1, 0, 1
    .4byte 0xC382C03C # lfs f28, lbl_8053EFDC@sda21(r0)
    fmuls 0, 0, 3
    stfs 27, 0xc(1)
    fctiwz 1, 1
    stfs 2, 0x10(1)
    fctiwz 0, 0
    stfd 1, 0x20(1)
    stfd 0, 0x28(1)
    lwz 4, 0x24(1)
    lwz 3, 0x2c(1)
    addi 28, 4, 0x2
    addi 29, 3, 0x2
    subi 31, 28, 0x1
    subi 30, 29, 0x1
    .4byte 0x4800007C # b .L_801CFFD8
L_801CFF60:
    cmpw 27, 30
    stfs 31, 0x8(1)
    .4byte 0x40820008 # bne .L_801CFF70
    stfs 29, 0xc(1)
L_801CFF70:
    li 26, 0x0
    .4byte 0x4800004C # b .L_801CFFC0
L_801CFF78:
    cmpw 26, 31
    .4byte 0x40820008 # bne .L_801CFF84
    stfs 30, 0x8(1)
L_801CFF84:
    mr 3, 24
    mr 4, 25
    lwz 12, 0x0(24)
    addi 5, 1, 0x8
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801CFFB0
    li 3, 0x1
    .4byte 0x48000038 # b .L_801CFFE4
L_801CFFB0:
    lfs 0, 0x8(1)
    addi 26, 26, 0x1
    fadds 0, 0, 28
    stfs 0, 0x8(1)
L_801CFFC0:
    cmpw 26, 28
    .4byte 0x4180FFB4 # blt .L_801CFF78
    lfs 0, 0xc(1)
    addi 27, 27, 0x1
    fadds 0, 0, 28
    stfs 0, 0xc(1)
L_801CFFD8:
    cmpw 27, 29
    .4byte 0x4180FF84 # blt .L_801CFF60
    li 3, 0x0
L_801CFFE4:
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
    lmw 24, 0x30(1)
    lwz 0, 0xa4(1)
    mtlr 0
    addi 1, 1, 0xa0
    blr
