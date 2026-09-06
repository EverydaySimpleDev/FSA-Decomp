# fn_800F8BAC: the rupee-container's OWN physics/orbit update, called
# from fn_800F8A30 when `this->0x248 != 1`. By far the largest/most
# complex function landed this session (0x5C4/1476 bytes, heavy
# paired-single FP, needs `-mgekko`). Confirms this class carries a
# full physics body: position `this->0xc/0x10/0x14` (X/Y/Z) and
# velocity `this->0x3c/0x40/0x44` - the SAME velocity offsets
# fn_800F87E4 writes a random "pop" scatter into when spawning a RUPY,
# reused here on the container itself (so the container also gets
# knocked/thrown with physics, not just the rupee it spawns).
#
# Top-level branch: reads a 16-bit "orbit slot" value from the cached
# owner/manager object (`this->0x240`) at `+0x284 + this->0x247*2`
# (`this->0x247` acting as this item's index into a per-item array on
# the owner):
#   - slot==0 -> FREE-FALL/BOUNCE physics (L_800F8E24): gravity
#     decrement on velocity.y, paired-single position += velocity,
#     and if position.y drops to/below 0, floor it and reflect+damp
#     velocity.x/z (a ground-bounce with damping constant
#     `lbl_8053C010`) - straightforward projectile physics for a
#     knocked-around container.
#   - slot!=0 -> ORBIT-ANCHOR path: looks up ANOTHER per-item 16-bit
#     value (`+0x2b2` or `+0x2b4` on the owner, chosen by whether
#     `this->0x247==0`) as a signed index into the SAME global anchor-
#     position table `lbl_8052EBC0` that `fn_800F8548` already reads -
#     confirms that table is a shared set of container "socket"/anchor
#     positions. Blends the anchor into a target position (alternating
#     sign spacing based on item index, a "distribute N items around a
#     center" formula) and homes position/velocity toward it -
#     structurally similar to the grid-snap homing idiom in
#     `fn_800F82CC`, but inlined here for anchors specifically rather
#     than calling that shared utility.
#
# Both paths converge on a shared tail: a wrap-at-30 idle counter
# (`this->0x24a`), an "is velocity near zero" rest-check (repeated
# twice) gating calls to `fn_801F2618`/`fn_801F2740`/`fn_801F2B7C` -
# NEW, UNCONFIRMED, plausibly bounding-box/collision/settle-state
# helpers - and, when "not at rest", `fn_801F285C(this, 0, 0, 1, -1)`
# (NEW/unconfirmed) whose non-negative result feeds a THIRD use this
# session of the fast-inverse-sqrt idiom (frsqrte+Newton-Raphson) to
# normalize a direction toward the CONFIRMED player-position accessor
# `fn_8023E724`, finally calling `fn_80238548(playerIdx, 0,
# &offset, 0x10)` - the SAME still-unconfirmed "hit/trigger effect"
# function already flagged in `fn_800F802C`'s banner (called there
# with a different variant ID, 0xb) - reinforcing it's a generic
# effect/hit dispatcher parameterized by a variant ID, not something
# ID-specific. Not yet cross-identified against the 195-entry actor
# dispatch table; `fn_801F2618`/`fn_801F2740`/`fn_801F2B7C`/
# `fn_801F285C`/`fn_80239914`/`fn_80238548` remain open follow-ups.
.section extab, "a"
.balign 4
.global etb_80005790
etb_80005790:
    .4byte 0x10CA0000
    .4byte 0x00000000
.size etb_80005790, 8

.section extabindex, "a"
.balign 4
.global eti_80011A88
eti_80011A88:
    .4byte fn_800F8BAC
    .4byte 0x000005C4
    .4byte etb_80005790
.size eti_80011A88, 12

.text
.balign 4
.global fn_800F8BAC

fn_800F8BAC:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stfd 29, 0xa0(1)
    psq_st 29, 0xa8(1), 0, 0
    stw 31, 0x9c(1)
    stw 30, 0x98(1)
    mr 31, 3
    lbz 5, 0x247(3)
    lwz 3, 0x240(3)
    clrlslwi 0, 5, 24, 1
    add 4, 3, 0
    lha 0, 0x284(4)
    cmpwi 0, 0x0
    .4byte 0x41820230 # beq .L_800F8E24
    clrlwi. 0, 5, 24
    .4byte 0x40820044 # bne .L_800F8C40
    lbz 5, 0x2ac(3)
    lis 4, 0x4330
    lhz 0, 0x2b2(3)
    srawi 5, 5, 1
    stw 4, 0x60(1)
    addi 4, 5, 0x1
    .4byte 0xC8429038 # lfd f2, lbl_8053BFD8@sda21(r0)
    mulli 4, 4, 0x14
    .4byte 0xC0629058 # lfs f3, lbl_8053BFF8@sda21(r0)
    extsh 6, 0
    xoris 0, 4, 0x8000
    stw 0, 0x64(1)
    lfd 1, 0x60(1)
    fsubs 1, 1, 2
    fadds 4, 3, 1
    .4byte 0x48000040 # b .L_800F8C7C
L_800F8C40:
    lbz 5, 0x2ac(3)
    lis 4, 0x4330
    lhz 0, 0x2b4(3)
    srawi 5, 5, 1
    stw 4, 0x60(1)
    addi 4, 5, 0x1
    .4byte 0xC8629038 # lfd f3, lbl_8053BFD8@sda21(r0)
    mulli 4, 4, -0x14
    .4byte 0xC0229058 # lfs f1, lbl_8053BFF8@sda21(r0)
    extsh 6, 0
    xoris 0, 4, 0x8000
    stw 0, 0x64(1)
    lfd 2, 0x60(1)
    fsubs 2, 2, 3
    fsubs 4, 2, 1
L_800F8C7C:
    lis 5, lbl_8052EBC0@ha
    lis 4, 0x4330
    rlwinm 0, 6, 30, 18, 28
    lfs 2, 0xc(3)
    addi 6, 5, lbl_8052EBC0@l
    lbz 7, 0x2ac(3)
    lfsx 5, 6, 0
    add 5, 6, 0
    lfs 3, 0x4(5)
    li 0, 0x1
    fmadds 5, 4, 5, 2
    lfs 1, 0x10(3)
    lfs 2, 0x14(3)
    srawi 3, 7, 1
    fmadds 4, 4, 3, 1
    .4byte 0xC062905C # lfs f3, lbl_8053BFFC@sda21(r0)
    stb 0, 0x249(31)
    fadds 12, 3, 2
    addi 3, 3, 0x1
    .4byte 0xC0629034 # lfs f3, lbl_8053BFD4@sda21(r0)
    lfs 1, 0xc(31)
    xoris 0, 3, 0x8000
    stfs 5, 0x10(1)
    frsp 9, 12
    .4byte 0xC8E29038 # lfd f7, lbl_8053BFD8@sda21(r0)
    stfs 4, 0x14(1)
    .4byte 0xC1029064 # lfs f8, lbl_8053C004@sda21(r0)
    stfs 1, 0x3c(31)
    psq_l 2, 0x10(1), 0, 0
    lfs 1, 0x10(31)
    psq_st 2, 0x1c(1), 0, 0
    .4byte 0xC0A29060 # lfs f5, lbl_8053C000@sda21(r0)
    stfs 1, 0x40(31)
    lfs 11, 0x1c(1)
    lfs 1, 0x14(31)
    lfs 10, 0x20(1)
    stfs 1, 0x44(31)
    .4byte 0xC0829030 # lfs f4, lbl_8053BFD0@sda21(r0)
    lfs 2, 0xc(31)
    stw 0, 0x64(1)
    fsubs 1, 11, 2
    stw 4, 0x60(1)
    fmuls 1, 3, 1
    lfd 6, 0x60(1)
    stw 4, 0x70(1)
    fsubs 6, 6, 7
    fctiwz 1, 1
    stw 4, 0x80(1)
    fnmsubs 5, 8, 6, 5
    stw 4, 0x90(1)
    stfd 1, 0x68(1)
    lwz 0, 0x6c(1)
    stfs 12, 0x18(1)
    xoris 0, 0, 0x8000
    stw 0, 0x74(1)
    lfd 1, 0x70(1)
    stfs 12, 0x24(1)
    fsubs 1, 1, 7
    stfs 11, 0x50(1)
    fmuls 1, 4, 1
    stfs 10, 0x54(1)
    stfs 9, 0x58(1)
    fmadds 1, 1, 5, 2
    stfs 1, 0xc(31)
    lfs 2, 0x10(31)
    fsubs 1, 10, 2
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x78(1)
    lwz 0, 0x7c(1)
    xoris 0, 0, 0x8000
    stw 0, 0x84(1)
    lfd 1, 0x80(1)
    fsubs 1, 1, 7
    fmuls 1, 4, 1
    fmadds 1, 1, 5, 2
    stfs 1, 0x10(31)
    lfs 2, 0x14(31)
    fsubs 1, 9, 2
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x88(1)
    lwz 0, 0x8c(1)
    xoris 0, 0, 0x8000
    stw 0, 0x94(1)
    lfd 1, 0x90(1)
    fsubs 1, 1, 7
    fmuls 1, 4, 1
    fmadds 1, 1, 5, 2
    .4byte 0xC0029068 # lfs f0, lbl_8053C008@sda21(r0)
    stfs 1, 0x14(31)
    psq_l 2, 0x3c(31), 0, 0
    psq_l 1, 0xc(31), 0, 0
    ps_sub 1, 2, 1
    psq_st 1, 0x3c(31), 0, 0
    psq_l 2, 0x44(31), 1, 0
    psq_l 1, 0x14(31), 1, 0
    ps_sub 1, 2, 1
    psq_st 1, 0x44(31), 1, 0
    psq_l 1, 0x3c(31), 0, 0
    psq_l 2, 0x44(31), 1, 0
    ps_muls0 1, 1, 0
    ps_muls0 0, 2, 0
    psq_st 1, 0x3c(31), 0, 0
    psq_st 0, 0x44(31), 1, 0
    .4byte 0x48000100 # b .L_800F8F20
L_800F8E24:
    lfs 2, 0x44(31)
    .4byte 0xC022906C # lfs f1, lbl_8053C00C@sda21(r0)
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    psq_l 2, 0xc(31), 0, 0
    psq_l 1, 0x3c(31), 0, 0
    ps_add 1, 2, 1
    psq_st 1, 0xc(31), 0, 0
    psq_l 2, 0x14(31), 1, 0
    psq_l 1, 0x44(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(31), 1, 0
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820028 # bne .L_800F8E8C
    stfs 0, 0x14(31)
    .4byte 0xC0229070 # lfs f1, lbl_8053C010@sda21(r0)
    stfs 0, 0x44(31)
    lfs 0, 0x3c(31)
    fmuls 0, 0, 1
    stfs 0, 0x3c(31)
    lfs 0, 0x40(31)
    fmuls 0, 0, 1
    stfs 0, 0x40(31)
L_800F8E8C:
    mr 3, 31
    addi 4, 1, 0x44
    li 5, 0x0
    bl fn_801F2618
    clrlwi. 0, 3, 24
    .4byte 0x41820080 # beq .L_800F8F20
    lfs 1, 0x40(31)
    lfs 0, 0x48(1)
    lfs 2, 0x3c(31)
    fmuls 0, 1, 0
    lfs 5, 0x44(1)
    lfs 4, 0x44(31)
    lfs 3, 0x4c(1)
    fmadds 1, 2, 5, 0
    .4byte 0xC0029050 # lfs f0, lbl_8053BFF0@sda21(r0)
    fmadds 1, 4, 3, 1
    fmuls 3, 0, 1
    fnmsubs 0, 3, 5, 2
    stfs 0, 0x3c(31)
    lfs 1, 0x48(1)
    lfs 0, 0x40(31)
    fnmsubs 0, 3, 1, 0
    stfs 0, 0x40(31)
    lfs 1, 0x4c(1)
    lfs 0, 0x44(31)
    fnmsubs 0, 3, 1, 0
    stfs 0, 0x44(31)
    lbz 0, 0x24a(31)
    cmplwi 0, 0x0
    .4byte 0x40820020 # bne .L_800F8F20
    lis 4, 0x4
    mr 3, 31
    addi 4, 4, 0x2d
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x1
    stb 0, 0x24a(31)
L_800F8F20:
    lbz 3, 0x24a(31)
    cmplwi 3, 0x0
    .4byte 0x41820020 # beq .L_800F8F48
    addi 0, 3, 0x1
    stb 0, 0x24a(31)
    lbz 0, 0x24a(31)
    cmplwi 0, 0x1e
    .4byte 0x4180000C # blt .L_800F8F48
    li 0, 0x0
    stb 0, 0x24a(31)
L_800F8F48:
    lfs 0, 0x3c(31)
    .4byte 0xC022902C # lfs f1, lbl_8053BFCC@sda21(r0)
    fabs 0, 0
    fcmpo cr0, 0, 1
    .4byte 0x40800074 # bge .L_800F8FCC
    lfs 0, 0x40(31)
    fabs 0, 0
    fcmpo cr0, 0, 1
    .4byte 0x40800064 # bge .L_800F8FCC
    .4byte 0xC002905C # lfs f0, lbl_8053BFFC@sda21(r0)
    addi 3, 1, 0x34
    lfs 4, 0x10(31)
    lfs 1, 0xc(31)
    fadds 3, 0, 4
    fadds 2, 0, 1
    fsubs 1, 1, 0
    fsubs 0, 4, 0
    stfs 3, 0x40(1)
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
    stfs 2, 0x3c(1)
    lwz 4, 0x4(31)
    lwz 5, 0x198(31)
    bl fn_80239914
    mr 3, 31
    li 4, -0x1
    bl fn_801F2740
    clrlwi. 0, 3, 24
    .4byte 0x41820028 # beq .L_800F8FE0
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    stfs 0, 0x3c(31)
    stfs 0, 0x40(31)
    .4byte 0x48000018 # b .L_800F8FE0
L_800F8FCC:
    mr 3, 31
    li 4, 0x2
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_800F8FE0:
    lfs 0, 0x3c(31)
    .4byte 0xC022902C # lfs f1, lbl_8053BFCC@sda21(r0)
    fabs 0, 0
    fcmpo cr0, 0, 1
    .4byte 0x40800150 # bge .L_800F9140
    lfs 0, 0x40(31)
    fabs 0, 0
    fcmpo cr0, 0, 1
    .4byte 0x40800140 # bge .L_800F9140
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    li 6, 0x1
    li 7, -0x1
    bl fn_801F285C
    mr. 30, 3
    .4byte 0x41800120 # blt .L_800F9140
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    stfs 0, 0x28(1)
    stfs 0, 0x2c(1)
    stfs 0, 0x30(1)
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 30
    lfs 0, 0xc(31)
    fsubs 0, 1, 0
    stfs 0, 0x28(1)
    bl fn_8023E724
    lfs 1, 0x4(3)
    lis 3, lbl_80539D44@ha
    lfs 0, 0x10(31)
    lfs 29, 0x30(1)
    fsubs 2, 1, 0
    .4byte 0xC0229074 # lfs f1, lbl_8053C014@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    stfs 2, 0x2c(1)
    fmuls 0, 1, 0
    psq_l 1, 0x28(1), 0, 0
    ps_mul 1, 1, 1
    ps_madd 4, 29, 29, 1
    ps_sum0 4, 4, 1, 1
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_800F90E4
    .4byte 0xC002900C # lfs f0, lbl_8053BFAC@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_800F90A8
    fmr 31, 4
    .4byte 0x48000028 # b .L_800F90CC
L_800F90A8:
    frsqrte 3, 4
    .4byte 0xC0429010 # lfs f2, lbl_8053BFB0@sda21(r0)
    .4byte 0xC0029000 # lfs f0, lbl_8053BFA0@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_800F90CC:
    psq_l 1, 0x28(1), 0, 0
    psq_l 0, 0x30(1), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x28(1), 0, 0
    psq_st 0, 0x30(1), 1, 0
L_800F90E4:
    .4byte 0xC3C29078 # lfs f30, lbl_8053C018@sda21(r0)
    mr 3, 30
    psq_l 0, 0x28(1), 0, 0
    addi 5, 1, 0x8
    psq_l 1, 0x30(1), 1, 0
    li 4, 0x0
    ps_muls0 0, 0, 30
    .4byte 0xC0429048 # lfs f2, lbl_8053BFE8@sda21(r0)
    ps_muls0 3, 1, 30
    li 6, 0x10
    psq_st 0, 0x28(1), 0, 0
    lfs 1, 0x28(1)
    lfs 0, 0x2c(1)
    fmuls 1, 2, 1
    psq_st 3, 0x30(1), 1, 0
    fmuls 0, 2, 0
    stfs 1, 0x3c(31)
    stfs 0, 0x40(31)
    lfs 1, 0x10(31)
    lfs 0, 0xc(31)
    stfs 0, 0x8(1)
    stfs 1, 0xc(1)
    bl fn_80238548
L_800F9140:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    psq_l 29, 0xa8(1), 0, 0
    lfd 29, 0xa0(1)
    lwz 31, 0x9c(1)
    lwz 0, 0xd4(1)
    lwz 30, 0x98(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

