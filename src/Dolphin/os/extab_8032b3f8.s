.section extab, "a"
.balign 4
.global etb_8000DC24
etb_8000DC24:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000DC24, 8

.section extabindex, "a"
.balign 4
.global eti_8001D29C
eti_8001D29C:
    .4byte fn_8032B3F8
    .4byte 0x000003C8
    .4byte etb_8000DC24
.size eti_8001D29C, 12

.text
.balign 4
.global fn_8032B3F8

# fn_8032B3F8(this) - RUPY's ground-physics/bounce-settle gate, called
# from update()'s state 0 (extab_8032c664.s). Queries the level config
# record (`GetRoomConfigRecord`) and branches on a per-room flag (byte
# `0x31df`) into two parallel physics modes:
#
# MODE A (flag clear - "instant" physics): while still airborne or
# still moving downward, applies simple friction to the vertical
# velocity (this->0x44) and returns true (still settling). Once
# grounded (height<=0 and velocity<=0), snaps height to exactly 0,
# stops a looping sound if one was playing, then calls the CONFIRMED
# `fn_8032B0A4` terrain check - if THAT reports a hazard interaction,
# this function returns FALSE (the caller treats that as "handled
# elsewhere, do nothing more"). Otherwise, if not yet marked settled
# (this->0x260), plays a landing thud (`fn_801F0E34`) UNLESS the
# CONFIRMED `fn_802DEBA0` "special room" check suppresses it, marks
# settled, and (unless this->0x27f is set, in which case it just does
# a simple full-stop instead) rolls the CONFIRMED global PRNG for a
# randomized new bounce direction across all three velocity components
# - the same "random bounce blend" idiom update() itself uses. If
# ALREADY marked settled, transitions to state 9 (the config-wait
# state) or state 1 depending on this->0x27d, matching update()'s
# documented state semantics.
#
# MODE B (flag set - "gravity" physics): integrates vertical velocity
# into position (this->0x40 -= this->0x44, then resets 0x44) and, if
# still airborne, snaps height down by the same amount and zeroes it -
# i.e. a real one-step gravity/impact integration rather than a
# instant snap. Adds a fixed gravity constant to 0x40. If this->0x27e
# is set and the (now gravity-updated) vertical velocity has flipped
# past a stored reference (this->0x284), cancels horizontal drift
# (0x3c=0); if a second reference (this->0x288) matches exactly,
# returns immediately (a "frozen" early-out). Otherwise proceeds
# through the SAME settle/re-bounce logic as Mode A (stop sound, check
# `fn_802DEBA0`-gated landing thud, mark settled, roll a fresh PRNG
# bounce direction using a DIFFERENT constant set anchored at 0x284/
# 0x288) or, if already settled, resets velocity to fixed constants
# and transitions to state 9/1 the same way Mode A does.
fn_8032B3F8:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    stw 30, 0x28(1)
    lwz 30, 0x4(3)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x408201C8 # bne .L_8032B5F0
    lfs 2, 0x14(31)
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x41810010 # bgt .L_8032B448
    lfs 0, 0x44(31)
    fcmpo cr0, 0, 1
    .4byte 0x40810018 # ble .L_8032B45C
L_8032B448:
    lfs 1, 0x44(31)
    .4byte 0xC002EE08 # lfs f0, lbl_80541DA8@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    .4byte 0x4800034C # b .L_8032B7A4
L_8032B45C:
    fcmpo cr0, 2, 1
    cror eq, lt, eq
    .4byte 0x40820340 # bne .L_8032B7A4
    stfs 1, 0x14(31)
    lbz 0, 0x280(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8032B48C
    mr 3, 31
    li 4, 0x42
    bl fn_801F0D20
    li 0, 0x0
    stb 0, 0x280(31)
L_8032B48C:
    mr 3, 31
    bl fn_8032B0A4
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_8032B4A4
    li 3, 0x0
    .4byte 0x48000308 # b .L_8032B7A8
L_8032B4A4:
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x40820110 # bne .L_8032B5BC
    bl fn_802DEBA0
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_8032B4D0
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0xa
    li 5, 0x0
    bl fn_801F0E34
L_8032B4D0:
    li 0, 0x1
    stw 0, 0x260(31)
    lbz 0, 0x27f(31)
    cmplwi 0, 0x0
    .4byte 0x408200C8 # bne .L_8032B5A8
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC042EDF0 # lfs f2, lbl_80541D90@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC062EE00 # lfs f3, lbl_80541DA0@sda21(r0)
    mullw 3, 0, 4
    .4byte 0xC022EE0C # lfs f1, lbl_80541DAC@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 0, 0x18(1)
    fsubs 0, 0, 2
    fnmsubs 0, 3, 0, 2
    fadds 0, 3, 0
    stfs 0, 0x44(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 0, 0x14(1)
    fsubs 0, 0, 2
    fsubs 0, 1, 0
    stfs 0, 0x3c(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 0, 0x10(1)
    fsubs 0, 0, 2
    fsubs 0, 1, 0
    stfs 0, 0x40(31)
    .4byte 0x48000200 # b .L_8032B7A4
L_8032B5A8:
    .4byte 0xC002EE00 # lfs f0, lbl_80541DA0@sda21(r0)
    li 0, 0x0
    stfs 0, 0x44(31)
    stb 0, 0x27f(31)
    .4byte 0x480001EC # b .L_8032B7A4
L_8032B5BC:
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lbz 0, 0x27d(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8032B5E4
    li 0, 0x9
    stw 0, 0x230(31)
    .4byte 0x480001C4 # b .L_8032B7A4
L_8032B5E4:
    li 0, 0x1
    stw 0, 0x230(31)
    .4byte 0x480001B8 # b .L_8032B7A4
L_8032B5F0:
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    lfs 2, 0x44(31)
    fcmpu cr0, 1, 2
    .4byte 0x41820014 # beq .L_8032B610
    lfs 0, 0x40(31)
    fsubs 0, 0, 2
    stfs 0, 0x40(31)
    stfs 1, 0x44(31)
L_8032B610:
    lfs 2, 0x14(31)
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    fcmpo cr0, 2, 1
    .4byte 0x40810014 # ble .L_8032B630
    lfs 0, 0x10(31)
    fsubs 0, 0, 2
    stfs 0, 0x10(31)
    stfs 1, 0x14(31)
L_8032B630:
    lfs 1, 0x40(31)
    .4byte 0xC002EE08 # lfs f0, lbl_80541DA8@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x40(31)
    lbz 0, 0x27e(31)
    cmplwi 0, 0x1
    .4byte 0x4082015C # bne .L_8032B7A4
    lfs 0, 0x40(31)
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x4081014C # ble .L_8032B7A4
    lfs 0, 0x284(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820010 # beq .L_8032B674
    lfs 0, 0x3c(31)
    fsubs 0, 0, 0
    stfs 0, 0x3c(31)
L_8032B674:
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    lfs 0, 0x288(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820124 # beq .L_8032B7A4
    lbz 0, 0x280(31)
    cmplwi 0, 0x1
    .4byte 0x40820018 # bne .L_8032B6A4
    mr 3, 31
    li 4, 0x42
    bl fn_801F0D20
    li 0, 0x0
    stb 0, 0x280(31)
L_8032B6A4:
    lwz 0, 0x260(31)
    cmpwi 0, 0x0
    .4byte 0x408200C4 # bne .L_8032B770
    bl fn_802DEBA0
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_8032B6D0
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0xa
    li 5, 0x0
    bl fn_801F0E34
L_8032B6D0:
    li 0, 0x1
    lis 3, 0x19
    stw 0, 0x260(31)
    addi 4, 3, 0x660d
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    .4byte 0xC062EDF0 # lfs f3, lbl_80541D90@sda21(r0)
    stfs 0, 0x44(31)
    .4byte 0xC082EE0C # lfs f4, lbl_80541DAC@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC022EE00 # lfs f1, lbl_80541DA0@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC042EE10 # lfs f2, lbl_80541DB0@sda21(r0)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 3
    fsubs 0, 4, 0
    stfs 0, 0x3c(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 0, 0x8(1)
    fsubs 0, 0, 3
    fnmsubs 0, 1, 0, 3
    fadds 0, 2, 0
    stfs 0, 0x40(31)
    .4byte 0x48000038 # b .L_8032B7A4
L_8032B770:
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    .4byte 0xC002EE14 # lfs f0, lbl_80541DB4@sda21(r0)
    stfs 1, 0x3c(31)
    stfs 1, 0x44(31)
    stfs 0, 0x40(31)
    lbz 0, 0x27d(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_8032B79C
    li 0, 0x9
    stw 0, 0x230(31)
    .4byte 0x4800000C # b .L_8032B7A4
L_8032B79C:
    li 0, 0x1
    stw 0, 0x230(31)
L_8032B7A4:
    li 3, 0x1
L_8032B7A8:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    mtlr 0
    addi 1, 1, 0x30
    blr
