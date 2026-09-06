.section extab, "a"
.balign 4
.global etb_80008E9C
etb_80008E9C:
    .4byte 0x220A0000
    .4byte 0x00000000
.size etb_80008E9C, 8

.section extabindex, "a"
.balign 4
.global eti_800165C4
eti_800165C4:
    .4byte fn_801F3D94
    .4byte 0x00000900
    .4byte etb_80008E9C
.size eti_800165C4, 12

.text
.balign 4
.global fn_801F3D94

# fn_801F3D94(this, gate) -> bool - NOT a simple "is frozen?" query as
# originally assumed from its call sites in STAL/WIZR (see
# [[project_fsa_stal_wizr_full_depth]]) - it's the shared HIT-REACTION/
# KNOCKBACK-PHYSICS update every actor's update() calls near the top of
# its own logic, BOTH applying physics AND returning whether the caller
# should skip its normal AI this frame (1 = "currently reacting to a hit,
# don't run your own AI"; 0 = normal). Read extensively (~640 of 576
# instructions... survey-level for the finer branches, full architecture
# confirmed):
#
# 1. Gated on a hitstun/knockback-active timer (`this->0xd8`); if zero or
#    `gate` is false, early-outs.
# 2. Decodes a "hit direction/type" value (`this->0xc0`, 0-3ish) selecting
#    one of several knockback-velocity DECAY modes: types 0/1 apply a
#    per-frame friction multiply (`ps_muls0`) to a stored knockback
#    velocity (`this->0x3c/0x40/0x44`) then integrate it into position
#    (the same `ps_add` idiom used throughout this project); other types
#    ramp a vertical/arc component before decaying.
# 3. Looks up a knockback SPEED constant from a per-actor-code table
#    (`lbl_8046A00C`, indexed by `this->0xc0`) - EXCEPT for actor code
#    `'SLK2'` (compared via the literal FourCC, `0x534C4B32`), which uses
#    a hardcoded override constant instead - i.e. every actor has its own
#    tunable knockback resistance/speed, with at least one special case.
# 4. If the resulting velocity magnitude exceeds a threshold, computes a
#    normalized push direction (via `frsqrte`-based fast inverse-sqrt,
#    the standard PowerPC/GX vector-normalize idiom) relative to a fixed
#    global position (`lbl_80539D44` - likely the player/sword-hit
#    origin) and calls `fn_802258D4`/`fn_80225614` (new - shape suggests
#    "check collision/terrain at this position," with the SECOND only
#    tried if the first returns false) to see if the knockback push is
#    obstructed.
# 5. Fires sound cues via the CONFIRMED `fn_8013CC50` primitive at
#    specific transition points (hit-recovery, and a `this->0xfc==5`
#    special case with a distinct code `0x19d`).
# 6. On hitstun-timer EXPIRY (`this->0xe0` reaching 0): zeroes the
#    knockback velocity and fires `this->vtable[0x24]()` - the SAME extra
#    per-actor hook slot the confirmed actor-pool update loop
#    (`fn_801F871C`) and STAL's own update epilogue touch (see
#    [[project_fsa_actor_loop_found]]) - i.e. vtable slot 0x24 fires
#    specifically on "just recovered from being hit," not just "every
#    frame" as previously assumed from the pool-loop's own perspective.
#
# Given this is called from (at least) both STAL's and WIZR's update()
# near-identically (`fn_801F3D94(this,1)`), and its behavior is entirely
# generic (no actor-specific fields touched outside the standard
# knockback/position block), this is very likely called from EVERY
# actor's update() - a genuinely high-leverage shared primitive.
fn_801F3D94:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stfd 29, 0xa0(1)
    psq_st 29, 0xa8(1), 0, 0
    stfd 28, 0x90(1)
    psq_st 28, 0x98(1), 0, 0
    stfd 27, 0x80(1)
    psq_st 27, 0x88(1), 0, 0
    stfd 26, 0x70(1)
    psq_st 26, 0x78(1), 0, 0
    stfd 25, 0x60(1)
    psq_st 25, 0x68(1), 0, 0
    stfd 24, 0x50(1)
    psq_st 24, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    mr 30, 3
    li 31, 0x0
    lwz 3, 0xd8(3)
    cmpwi 3, 0x0
    .4byte 0x418204DC # beq .L_801F42DC
    clrlwi. 0, 4, 24
    li 31, 0x0
    .4byte 0x418203CC # beq .L_801F41D8
    lbz 0, 0xc4(30)
    cmplwi 0, 0x0
    .4byte 0x408203C0 # bne .L_801F41D8
    lwz 0, 0xf8(30)
    psq_l 0, 0xc(30), 0, 0
    lfs 1, 0x14(30)
    cmpwi 0, 0x1
    psq_st 0, 0x34(1), 0, 0
    stfs 1, 0x3c(1)
    .4byte 0x41820068 # beq .L_801F3E9C
    .4byte 0x40800010 # bge .L_801F3E48
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801F3E54
    .4byte 0x480001AC # b .L_801F3FF0
L_801F3E48:
    cmpwi 0, 0x3
    .4byte 0x408001A4 # bge .L_801F3FF0
    .4byte 0x48000094 # b .L_801F3EE4
L_801F3E54:
    subi 0, 3, 0x1
    .4byte 0xC042C814 # lfs f2, lbl_8053F7B4@sda21(r0)
    stw 0, 0xd8(30)
    psq_l 1, 0x3c(30), 0, 0
    psq_l 0, 0x44(30), 1, 0
    ps_muls0 1, 1, 2
    ps_muls0 0, 0, 2
    psq_st 1, 0x3c(30), 0, 0
    psq_st 0, 0x44(30), 1, 0
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    .4byte 0x48000158 # b .L_801F3FF0
L_801F3E9C:
    subi 0, 3, 0x1
    .4byte 0xC042C818 # lfs f2, lbl_8053F7B8@sda21(r0)
    stw 0, 0xd8(30)
    psq_l 1, 0x3c(30), 0, 0
    psq_l 0, 0x44(30), 1, 0
    ps_muls0 1, 1, 2
    ps_muls0 0, 0, 2
    psq_st 1, 0x3c(30), 0, 0
    psq_st 0, 0x44(30), 1, 0
    psq_l 1, 0xc(30), 0, 0
    psq_l 0, 0x3c(30), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(30), 0, 0
    psq_l 1, 0x14(30), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(30), 1, 0
    .4byte 0x48000110 # b .L_801F3FF0
L_801F3EE4:
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810034 # ble .L_801F3F20
    lfs 1, 0x44(30)
    .4byte 0xC002C7B4 # lfs f0, lbl_8053F754@sda21(r0)
    .4byte 0xC042C81C # lfs f2, lbl_8053F7BC@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x44(30)
    psq_l 1, 0x3c(30), 0, 0
    psq_l 0, 0x44(30), 1, 0
    ps_muls0 1, 1, 2
    ps_muls0 0, 0, 2
    psq_st 1, 0x3c(30), 0, 0
    psq_st 0, 0x44(30), 1, 0
    .4byte 0x4800000C # b .L_801F3F28
L_801F3F20:
    subi 0, 3, 0x1
    stw 0, 0xd8(30)
L_801F3F28:
    addi 4, 30, 0xc
    psq_l 0, 0x3c(30), 0, 0
    psq_l 1, 0x0(4), 0, 0
    .4byte 0xC042C7A0 # lfs f2, lbl_8053F740@sda21(r0)
    ps_add 0, 1, 0
    psq_st 0, 0x0(4), 0, 0
    psq_l 1, 0x8(4), 1, 0
    psq_l 0, 0x44(30), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(4), 1, 0
    lfs 0, 0x14(30)
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820074 # bne .L_801F3FD0
    stfs 2, 0x14(30)
    .4byte 0xC002C820 # lfs f0, lbl_8053F7C0@sda21(r0)
    lfs 1, 0x44(30)
    fcmpo cr0, 1, 0
    .4byte 0x40800054 # bge .L_801F3FC4
    .4byte 0xC002C824 # lfs f0, lbl_8053F7C4@sda21(r0)
    li 5, 0x3cf
    .4byte 0xC042C828 # lfs f2, lbl_8053F7C8@sda21(r0)
    li 6, 0x0
    fmuls 0, 1, 0
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    stfs 0, 0x44(30)
    lfs 0, 0x3c(30)
    fmuls 0, 0, 2
    stfs 0, 0x3c(30)
    lfs 0, 0x40(30)
    fmuls 0, 0, 2
    stfs 0, 0x40(30)
    lwz 3, 0x4(30)
    bl fn_8013CC50
    .4byte 0x48000010 # b .L_801F3FD0
L_801F3FC4:
    stfs 2, 0x44(30)
    stfs 2, 0x40(30)
    stfs 2, 0x3c(30)
L_801F3FD0:
    lwz 0, 0xd8(30)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_801F3FF0
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x14(30)
L_801F3FF0:
    .4byte 0xC022C7A0 # lfs f1, lbl_8053F740@sda21(r0)
    lfs 0, 0x14(30)
    fcmpu cr0, 1, 0
    .4byte 0x408201E8 # bne .L_801F41E4
    psq_l 2, 0x3c(30), 0, 0
    lfs 30, 0x44(30)
    ps_mul 2, 2, 2
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    ps_madd 0, 30, 30, 2
    ps_sum0 0, 0, 2, 2
    fcmpo cr0, 0, 1
    .4byte 0x408101C8 # ble .L_801F41E4
    lwz 3, 0x1a0(30)
    .4byte 0xC002C7E4 # lfs f0, lbl_8053F784@sda21(r0)
    subis 0, 3, 0x534c
    cmplwi 0, 0x4b32
    .4byte 0x40820008 # bne .L_801F4038
    .4byte 0x48000018 # b .L_801F404C
L_801F4038:
    lwz 0, 0xc0(30)
    lis 3, lbl_8046A00C@ha
    addi 3, 3, lbl_8046A00C@l
    slwi 0, 0, 2
    lfsx 1, 3, 0
L_801F404C:
    fmuls 30, 0, 1
    .4byte 0xC362C7A0 # lfs f27, lbl_8053F740@sda21(r0)
    fcmpo cr0, 30, 27
    .4byte 0x4081018C # ble .L_801F41E4
    psq_l 1, 0x14(30), 1, 0
    lis 3, lbl_80539D44@ha
    psq_l 0, 0x3c(1), 1, 0
    psq_l 4, 0xc(30), 0, 0
    ps_sub 2, 1, 0
    psq_l 3, 0x34(1), 0, 0
    .4byte 0xC022C7A8 # lfs f1, lbl_8053F748@sda21(r0)
    ps_sub 3, 4, 3
    lfs 0, lbl_80539D44@l(3)
    psq_st 2, 0x18(1), 1, 0
    fmuls 0, 1, 0
    ps_mul 1, 3, 3
    lfs 28, 0x18(1)
    psq_st 3, 0x10(1), 0, 0
    ps_madd 4, 28, 28, 1
    ps_sum0 4, 4, 1, 1
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801F40AC
    .4byte 0x48000058 # b .L_801F4100
L_801F40AC:
    fcmpo cr0, 4, 27
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801F40C0
    fmr 29, 4
    .4byte 0x48000028 # b .L_801F40E4
L_801F40C0:
    frsqrte 3, 4
    .4byte 0xC042C7AC # lfs f2, lbl_8053F74C@sda21(r0)
    .4byte 0xC002C7B0 # lfs f0, lbl_8053F750@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 29, 0
L_801F40E4:
    psq_l 1, 0x10(1), 0, 0
    fmuls 27, 29, 4
    psq_l 0, 0x18(1), 1, 0
    ps_muls0 1, 1, 29
    ps_muls0 0, 0, 29
    psq_st 1, 0x10(1), 0, 0
    psq_st 0, 0x18(1), 1, 0
L_801F4100:
    lwz 4, 0x4(30)
    addi 3, 30, 0xc
    bl fn_802258D4
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_801F4128
    lwz 4, 0x4(30)
    addi 3, 30, 0xc
    bl fn_80225614
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801F4130
L_801F4128:
    li 29, 0x3d4
    .4byte 0x48000008 # b .L_801F4134
L_801F4130:
    li 29, 0x3d3
L_801F4134:
    .4byte 0xC3E2C7A0 # lfs f31, lbl_8053F740@sda21(r0)
    addi 28, 1, 0x1c
    psq_l 26, 0x10(1), 0, 0
    lfs 29, 0x18(1)
    psq_l 24, 0x34(1), 0, 0
    psq_l 25, 0x3c(1), 1, 0
    .4byte 0xC382C82C # lfs f28, lbl_8053F7CC@sda21(r0)
    .4byte 0x4800007C # b .L_801F41CC
L_801F4154:
    stfs 29, 0x24(1)
    ps_muls0 2, 26, 31
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    mr 4, 28
    psq_l 0, 0x8(28), 1, 0
    mr 5, 29
    psq_st 26, 0x0(28), 0, 0
    ps_muls0 0, 0, 31
    li 6, 0x0
    ps_add 3, 2, 24
    psq_st 2, 0x0(28), 0, 0
    li 7, 0x0
    li 8, 0x0
    ps_add 2, 0, 25
    psq_st 0, 0x8(28), 1, 0
    li 9, 0x0
    li 10, 0x1
    psq_st 3, 0x0(28), 0, 0
    psq_st 2, 0x8(28), 1, 0
    lwz 3, 0x4(30)
    bl fn_8013CC50
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_801F41C8
    li 0, 0x1
    .4byte 0xC002C800 # lfs f0, lbl_8053F7A0@sda21(r0)
    stw 0, 0x24(3)
    stfs 0, 0x28(3)
    stfs 30, 0xb0(3)
    stfs 30, 0xb4(3)
L_801F41C8:
    fadds 31, 31, 28
L_801F41CC:
    fcmpo cr0, 31, 27
    .4byte 0x4180FF84 # blt .L_801F4154
    .4byte 0x48000010 # b .L_801F41E4
L_801F41D8:
    lwz 3, 0xd8(30)
    subi 0, 3, 0x1
    stw 0, 0xd8(30)
L_801F41E4:
    lwz 0, 0x108(30)
    cmpwi 0, 0x0
    .4byte 0x418100C0 # bgt .L_801F42AC
    lwz 0, 0xe0(30)
    cmpwi 0, 0x0
    .4byte 0x408200B4 # bne .L_801F42AC
    lwz 4, 0xdc(30)
    lwz 3, 0xd8(30)
    subi 4, 4, 0x8
    neg 0, 4
    orc 0, 4, 0
    srawi 0, 0, 31
    andc 0, 4, 0
    cmpw 3, 0
    .4byte 0x41810090 # bgt .L_801F42AC
    lwz 0, 0xfc(30)
    cmpwi 0, 0x0
    .4byte 0x40820010 # bne .L_801F4238
    li 0, 0x1
    stw 0, 0xe0(30)
    .4byte 0x4800000C # b .L_801F4240
L_801F4238:
    li 0, 0x1e
    stw 0, 0xe0(30)
L_801F4240:
    li 0, 0x0
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    stw 0, 0xd8(30)
    li 31, 0x1
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    lwz 0, 0x100(30)
    cmplwi 0, 0x0
    .4byte 0x41820058 # beq .L_801F42BC
    lwz 28, 0x10c(30)
    li 29, 0xf
    cmpwi 28, 0x0
    .4byte 0x41800010 # blt .L_801F4284
    cmpwi 28, 0x4
    .4byte 0x40800008 # bge .L_801F4284
    mr 29, 28
L_801F4284:
    bl SpatialRegistry_GetBase
    lis 4, 0x424c
    lwz 5, 0x4(30)
    mr 7, 29
    mr 9, 28
    addi 4, 4, 0x5a45
    addi 6, 30, 0xc
    li 8, -0x1
    bl fn_801F9484
    .4byte 0x48000014 # b .L_801F42BC
L_801F42AC:
    lwz 0, 0xd8(30)
    cmpwi 0, 0x0
    .4byte 0x40820008 # bne .L_801F42BC
    li 31, 0x1
L_801F42BC:
    clrlwi. 0, 31, 24
    .4byte 0x41820014 # beq .L_801F42D4
    lwz 3, 0x100(30)
    bl fn_801CB7A0
    lwz 3, 0x104(30)
    bl fn_801CB7A0
L_801F42D4:
    li 31, 0x1
    .4byte 0x480001CC # b .L_801F44A4
L_801F42DC:
    lwz 0, 0xe0(30)
    cmpwi 0, 0x0
    .4byte 0x418201B8 # beq .L_801F449C
    cmpwi 0, 0x1e
    .4byte 0x4082016C # bne .L_801F4458
    lwz 5, 0xc0(30)
    lis 4, lbl_8046A00C@ha
    lwz 0, 0xfc(30)
    lis 3, 0x1
    slwi 5, 5, 2
    addi 4, 4, lbl_8046A00C@l
    cmpwi 0, 0x4
    lfsx 24, 4, 5
    subi 5, 3, 0x1
    .4byte 0x418200C0 # beq .L_801F43D4
    .4byte 0x40800018 # bge .L_801F4330
    cmpwi 0, 0x3
    .4byte 0x408000BC # bge .L_801F43DC
    cmpwi 0, 0x1
    .4byte 0x40800014 # bge .L_801F433C
    .4byte 0x480000FC # b .L_801F4428
L_801F4330:
    cmpwi 0, 0x6
    .4byte 0x408000F4 # bge .L_801F4428
    .4byte 0x48000094 # b .L_801F43CC
L_801F433C:
    lwz 3, 0x10c(30)
    cmpwi 3, 0x0
    .4byte 0x41800080 # blt .L_801F43C4
    cmpwi 3, 0x4
    .4byte 0x40800078 # bge .L_801F43C4
    bl fn_80237060
    cmpwi 3, 0x2
    .4byte 0x4180006C # blt .L_801F43C4
    fmr 1, 24
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    li 5, 0x17a
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    fmr 1, 24
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    li 5, 0x17b
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x5
    mr 3, 30
    addi 4, 4, 0x6b
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000098 # b .L_801F4458
L_801F43C4:
    li 5, 0x174
    .4byte 0x48000060 # b .L_801F4428
L_801F43CC:
    li 5, 0x179
    .4byte 0x48000058 # b .L_801F4428
L_801F43D4:
    li 5, 0x17c
    .4byte 0x48000050 # b .L_801F4428
L_801F43DC:
    lfs 2, 0xf0(30)
    lfs 1, 0xec(30)
    fabs 0, 2
    fabs 3, 1
    fcmpo cr0, 3, 0
    .4byte 0x40810020 # ble .L_801F4410
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801F4408
    li 5, 0x176
    .4byte 0x48000024 # b .L_801F4428
L_801F4408:
    li 5, 0x177
    .4byte 0x4800001C # b .L_801F4428
L_801F4410:
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    fcmpo cr0, 2, 0
    .4byte 0x4080000C # bge .L_801F4424
    li 5, 0x178
    .4byte 0x48000008 # b .L_801F4428
L_801F4424:
    li 5, 0x175
L_801F4428:
    clrlwi 0, 5, 16
    cmplwi 0, 0xffff
    .4byte 0x41820028 # beq .L_801F4458
    fmr 1, 24
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_801F4458:
    lwz 3, 0xe0(30)
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    subi 0, 3, 0x1
    stw 0, 0xe0(30)
    stfs 0, 0x44(30)
    stfs 0, 0x40(30)
    stfs 0, 0x3c(30)
    lwz 0, 0xe0(30)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_801F4494
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_801F4494:
    li 31, 0x1
    .4byte 0x4800000C # b .L_801F44A4
L_801F449C:
    li 0, 0x0
    stb 0, 0xd5(30)
L_801F44A4:
    lwz 0, 0xe8(30)
    cmpwi 0, 0x0
    .4byte 0x4081016C # ble .L_801F4618
    lwz 3, 0xe4(30)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_801F44C8
    subi 0, 3, 0x1
    stw 0, 0xe4(30)
    .4byte 0x48000154 # b .L_801F4618
L_801F44C8:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 5, 3, 0x660d
    lfs 6, 0x14(30)
    lwz 0, 0xb4(4)
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    mullw 3, 0, 5
    .4byte 0xC082C800 # lfs f4, lbl_8053F7A0@sda21(r0)
    .4byte 0xC0A2C804 # lfs f5, lbl_8053F7A4@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    lwz 0, 0xb4(6)
    srwi 4, 3, 9
    lfs 2, 0x10(30)
    mullw 3, 0, 5
    oris 0, 4, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    fsubs 0, 0, 1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    fmsubs 3, 4, 0, 1
    lfs 0, 0xc(30)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    fmadds 3, 5, 3, 2
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    stfs 3, 0x2c(1)
    fsubs 2, 2, 1
    stfs 6, 0x30(1)
    fmsubs 2, 4, 2, 1
    fmadds 0, 5, 2, 0
    stfs 0, 0x28(1)
    lwz 0, 0xfc(30)
    cmpwi 0, 0x5
    .4byte 0x4082002C # bne .L_801F4598
    lwz 3, 0x4(30)
    addi 4, 1, 0x28
    li 5, 0x19d
    li 6, 0x0
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0x48000050 # b .L_801F45E4
L_801F4598:
    lwz 3, 0x4(30)
    addi 4, 1, 0x28
    li 5, 0x24a
    li 6, 0x0
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(30)
    addi 4, 1, 0x28
    .4byte 0xC022C7D4 # lfs f1, lbl_8053F774@sda21(r0)
    li 5, 0x24b
    li 6, 0x0
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_801F45E4:
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x2
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0xe8(30)
    subi 0, 3, 0x1
    stw 0, 0xe8(30)
    lwz 0, 0xe8(30)
    cmpwi 0, 0x0
    .4byte 0x4081000C # ble .L_801F4618
    li 0, 0x5
    stw 0, 0xe4(30)
L_801F4618:
    cmpwi 31, 0x0
    .4byte 0x41820014 # beq .L_801F4630
    lwz 0, 0x108(30)
    cmpwi 0, 0x0
    .4byte 0x41810008 # bgt .L_801F4630
    li 31, -0x1
L_801F4630:
    mr 3, 31
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    psq_l 29, 0xa8(1), 0, 0
    lfd 29, 0xa0(1)
    psq_l 28, 0x98(1), 0, 0
    lfd 28, 0x90(1)
    psq_l 27, 0x88(1), 0, 0
    lfd 27, 0x80(1)
    psq_l 26, 0x78(1), 0, 0
    lfd 26, 0x70(1)
    psq_l 25, 0x68(1), 0, 0
    lfd 25, 0x60(1)
    psq_l 24, 0x58(1), 0, 0
    lfd 24, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 0, 0xd4(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

