.section extab, "a"
.balign 4
.global etb_8000DC3C
etb_8000DC3C:
    .4byte 0x218A0000
    .4byte 0x00000000
.size etb_8000DC3C, 8

.section extabindex, "a"
.balign 4
.global eti_8001D2C0
eti_8001D2C0:
    .4byte fn_8032BFB0
    .4byte 0x000006B4
    .4byte etb_8000DC3C
.size eti_8001D2C0, 12

.text
.balign 4
.global fn_8032BFB0

# fn_8032BFB0(this) - RUPY's (Rupee) draw(). Rich, multi-path render
# function.
#
# EARLY-OUT: skips drawing entirely for several "hidden" states
# (this->0x230 in {7,8,c,e,11}), subtype this->0x94==0x24, state==0xa
# while this->0x238==0.0, or states 0xf/0x10 while this->0x4<8.
#
# SPIN SETUP: computes sin/cos of this->0x23c (and a fixed 0.0 angle)
# and builds a hand-rolled Y-axis rotation matrix (12 floats, scaled by
# this->0x238) into a large local render-descriptor record - RUPY
# visibly spins in place.
#
# STATES 5/6 - "being consumed" SPECIAL PATH: computes an animation
# frame from this->0x24c via a fixed-point ease, resolves a resource id
# through a SEPARATE global manager (`lbl_8053AAF8->0xa4`, virtual slot
# 0x18 - not otherwise explored) with a literal resource tag
# `0x534f4220`, then draws via the CONFIRMED shared render primitive
# `fn_802F86CC` (see project_fsa_rendering_pipeline_foothold.md) instead
# of the main body path below - a distinct sparkle/pickup-effect
# render, then returns early.
#
# BLINK-NEAR-DESPAWN GATE: for subtype!=2, while this->0x24c<0x100 and
# on alternating check-windows (bit 1 of this->0x24c), requires a
# GLOBAL synchronized blink flag (`lbl_8053AAF8->0x96==1`) to still
# draw - otherwise skips the whole rest of the function. This means
# many different despawning pickups blink in visual sync off one shared
# global toggle, not independently.
#
# SIZE/FLASH VARIANT: while this->0x4>=8 and this->0x24c<0xe0, derives
# a secondary animation index via a fixed-point modulo-33 idiom, picking
# between two different phase-curve constant sets depending on the
# result - a warning-flash pattern for large/valuable variants.
#
# SHADOW/ELEVATION + SUBTYPE-0x23 VARIANT: sets a "shadow" selector byte
# from whether this->0x14 (vertical offset) is positive, or forces it
# for subtype 0x23. Subtype 0x23 additionally hard-overrides several
# descriptor bytes to 0x7f (full alpha/white, a distinct "sparkling"
# render variant, plausibly a special silver/rainbow rupee).
#
# PLAYER-COLOR TINT: in states 3/4, with this->0x264 (a player index,
# 0-3) valid, calls `fn_8023CB24`/`fn_8023CA88` (in the same address
# neighborhood as the confirmed player-registry accessor family, see
# project_fsa_player_registry_discovery.md - not yet individually
# decompiled, plausibly "get this player's color index/tint") to color
# the render descriptor - RUPY tints itself to match whichever player
# is currently carrying/throwing it.
#
# MAIN DRAW: temporarily offsets its own position by two small stored
# vectors (this->0x290/0x294 bob, this->0x298/0x29c secondary wiggle),
# draws the main body via the CONFIRMED shared render primitive
# `fn_801F06F0` against a resource table (`lbl_80471948`, indexed by
# this->0x268), then restores its original position.
#
# HUD MARKER: registers a per-player HUD marker via the CONFIRMED
# `fn_803075AC` (see project_fsa_shadow_marker_system_and_shared_draw.md)
# using this->0x198 (ID) and this->0x4, with a boolean varying by
# whether state==0xb - RUPY shows an on-screen indicator like other
# trackable pickups/actors.
fn_8032BFB0:
    stwu 1, -0x110(1)
    mflr 0
    stw 0, 0x114(1)
    stfd 31, 0x100(1)
    psq_st 31, 0x108(1), 0, 0
    stfd 30, 0xf0(1)
    psq_st 30, 0xf8(1), 0, 0
    stfd 29, 0xe0(1)
    psq_st 29, 0xe8(1), 0, 0
    stfd 28, 0xd0(1)
    psq_st 28, 0xd8(1), 0, 0
    stfd 27, 0xc0(1)
    psq_st 27, 0xc8(1), 0, 0
    stfd 26, 0xb0(1)
    psq_st 26, 0xb8(1), 0, 0
    stw 31, 0xac(1)
    stw 30, 0xa8(1)
    stw 29, 0xa4(1)
    stw 28, 0xa0(1)
    mr 28, 3
    lis 3, lbl_80471948@ha
    lwz 4, 0x230(28)
    addi 31, 3, lbl_80471948@l
    cmpwi 4, 0x7
    .4byte 0x41820604 # beq .L_8032C614
    cmpwi 4, 0x8
    .4byte 0x418205FC # beq .L_8032C614
    cmpwi 4, 0xc
    .4byte 0x418205F4 # beq .L_8032C614
    cmpwi 4, 0xe
    .4byte 0x418205EC # beq .L_8032C614
    cmpwi 4, 0x11
    .4byte 0x418205E4 # beq .L_8032C614
    lhz 0, 0x94(28)
    cmplwi 0, 0x24
    .4byte 0x40820008 # bne .L_8032C044
    .4byte 0x480005D4 # b .L_8032C614
L_8032C044:
    cmpwi 4, 0xa
    .4byte 0x40820018 # bne .L_8032C060
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    lfs 0, 0x238(28)
    fcmpu cr0, 1, 0
    .4byte 0x40820024 # bne .L_8032C07C
    .4byte 0x480005B8 # b .L_8032C614
L_8032C060:
    cmpwi 4, 0xf
    .4byte 0x4182000C # beq .L_8032C070
    cmpwi 4, 0x10
    .4byte 0x40820010 # bne .L_8032C07C
L_8032C070:
    lwz 0, 0x4(28)
    cmpwi 0, 0x8
    .4byte 0x4180059C # blt .L_8032C614
L_8032C07C:
    lwz 0, 0x268(28)
    addi 29, 31, 0xe0
    lfs 29, 0x238(28)
    li 30, 0x0
    cmpwi 0, 0x8
    .4byte 0x4180000C # blt .L_8032C09C
    addi 29, 31, 0xf4
    li 30, 0x1
L_8032C09C:
    li 0, -0x1
    addi 9, 1, 0x4c
    stw 0, 0x5c(1)
    li 10, 0x0
    stw 0, 0x60(1)
    .4byte 0x48000064 # b .L_8032C114
L_8032C0B4:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_8032C114:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_8032C0B4
    li 6, 0x0
    li 5, 0x1
    li 7, -0x1
    li 4, 0x3
    li 0, 0x2
    stw 7, 0x5c(1)
    addi 3, 1, 0x1c
    stw 6, 0x60(1)
    stw 6, 0x64(1)
    stb 6, 0x68(1)
    stb 6, 0x69(1)
    stb 6, 0x6a(1)
    stb 5, 0x6b(1)
    stb 5, 0x6c(1)
    stb 6, 0x6d(1)
    stb 6, 0x6e(1)
    stb 6, 0x6f(1)
    stb 6, 0x70(1)
    stb 6, 0x71(1)
    stb 5, 0x72(1)
    stw 4, 0x74(1)
    stb 5, 0x78(1)
    stb 6, 0x79(1)
    stb 6, 0x7a(1)
    stw 7, 0x7c(1)
    stw 6, 0x80(1)
    stw 0, 0x84(1)
    bl PSMTXIdentity
    lfs 30, 0x23c(28)
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    bl sin
    frsp 28, 1
    fmr 1, 30
    bl sin
    frsp 27, 1
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    bl sin
    frsp 26, 1
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    bl cos
    frsp 31, 1
    fmr 1, 30
    bl cos
    frsp 30, 1
    .4byte 0xC022EDE8 # lfs f1, lbl_80541D88@sda21(r0)
    bl cos
    frsp 3, 1
    addi 4, 1, 0x1c
    fmuls 7, 30, 26
    li 3, 0x1
    fneg 6, 27
    li 0, 0x0
    fmuls 10, 31, 3
    stw 4, 0x64(1)
    fmuls 2, 28, 27
    fmuls 9, 31, 26
    stb 3, 0x79(1)
    fmuls 1, 28, 26
    fmuls 0, 28, 3
    stb 0, 0x6c(1)
    fmuls 8, 30, 3
    fmsubs 5, 2, 3, 9
    fmadds 4, 2, 26, 10
    fmuls 3, 28, 30
    fmadds 2, 10, 27, 1
    fmsubs 1, 9, 27, 0
    fmuls 0, 31, 30
    fmuls 8, 29, 8
    fmuls 7, 29, 7
    fmuls 6, 29, 6
    fmuls 5, 29, 5
    stfs 8, 0x1c(1)
    fmuls 4, 29, 4
    fmuls 3, 29, 3
    stfs 7, 0x2c(1)
    fmuls 2, 29, 2
    fmuls 1, 29, 1
    stfs 6, 0x3c(1)
    fmuls 0, 29, 0
    stfs 5, 0x20(1)
    stfs 4, 0x30(1)
    stfs 3, 0x40(1)
    stfs 2, 0x24(1)
    stfs 1, 0x34(1)
    stfs 0, 0x44(1)
    lwz 0, 0x230(28)
    cmpwi 0, 0x5
    .4byte 0x4182000C # beq .L_8032C288
    cmpwi 0, 0x6
    .4byte 0x408200B4 # bne .L_8032C338
L_8032C288:
    lwz 4, 0x24c(28)
    lis 0, 0x4330
    stw 0, 0x88(1)
    addi 3, 31, 0x0
    xoris 0, 4, 0x8000
    .4byte 0xC842EE38 # lfd f2, lbl_80541DD8@sda21(r0)
    stw 0, 0x8c(1)
    .4byte 0xC062EE24 # lfs f3, lbl_80541DC4@sda21(r0)
    lfd 1, 0x88(1)
    .4byte 0xC002EE28 # lfs f0, lbl_80541DC8@sda21(r0)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fdivs 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x90(1)
    lwz 0, 0x94(1)
    stb 0, 0x5f(1)
    lwz 4, 0x268(28)
    lwz 0, 0x4(28)
    slwi 4, 4, 2
    lwz 5, 0x254(28)
    lwzx 3, 3, 4
    cmpwi 0, 0x8
    add 30, 5, 3
    .4byte 0x4080032C # bge .L_8032C614
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lis 4, 0x534f
    mr 5, 29
    lwz 3, 0xa4(3)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022EDF0 # lfs f1, lbl_80541D90@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x4c
    lwz 3, 0x20(4)
    addi 4, 28, 0xc
    bl fn_802F86CC
    .4byte 0x480002E0 # b .L_8032C614
L_8032C338:
    lhz 0, 0x94(28)
    cmplwi 0, 0x2
    .4byte 0x41820034 # beq .L_8032C374
    lwz 0, 0x24c(28)
    cmpwi 0, 0x100
    .4byte 0x40800028 # bge .L_8032C374
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x41820020 # beq .L_8032C374
    lwz 0, 0x4(28)
    cmpwi 0, 0x8
    .4byte 0x41800014 # blt .L_8032C374
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x96(3)
    cmplwi 0, 0x1
    .4byte 0x408202A4 # bne .L_8032C614
L_8032C374:
    li 0, 0x1
    stb 0, 0x69(1)
    lwz 0, 0x4(28)
    cmpwi 0, 0x8
    .4byte 0x408000B0 # bge .L_8032C434
    lwz 3, 0x24c(28)
    cmpwi 3, 0xe0
    .4byte 0x408000A4 # bge .L_8032C434
    slwi 0, 3, 26
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 6
    add 0, 0, 3
    cmpwi 0, 0x20
    .4byte 0x4081004C # ble .L_8032C3F8
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x94(1)
    .4byte 0xC822EE38 # lfd f1, lbl_80541DD8@sda21(r0)
    stw 0, 0x90(1)
    .4byte 0xC042EE2C # lfs f2, lbl_80541DCC@sda21(r0)
    lfd 0, 0x90(1)
    .4byte 0xC062EE24 # lfs f3, lbl_80541DC4@sda21(r0)
    fsubs 1, 0, 1
    .4byte 0xC002EE30 # lfs f0, lbl_80541DD0@sda21(r0)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    stb 0, 0x5f(1)
    .4byte 0x48000040 # b .L_8032C434
L_8032C3F8:
    xoris 3, 0, 0x8000
    lis 0, 0x4330
    stw 3, 0x94(1)
    .4byte 0xC842EE38 # lfd f2, lbl_80541DD8@sda21(r0)
    stw 0, 0x90(1)
    .4byte 0xC062EE24 # lfs f3, lbl_80541DC4@sda21(r0)
    lfd 1, 0x90(1)
    .4byte 0xC002EE30 # lfs f0, lbl_80541DD0@sda21(r0)
    fsubs 1, 1, 2
    fmuls 1, 3, 1
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x88(1)
    lwz 0, 0x8c(1)
    stb 0, 0x5f(1)
L_8032C434:
    lfs 1, 0x14(28)
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810010 # ble .L_8032C450
    li 0, 0x1
    stb 0, 0x68(1)
    .4byte 0x48000024 # b .L_8032C470
L_8032C450:
    lhz 0, 0x94(28)
    cmplwi 0, 0x23
    .4byte 0x40820010 # bne .L_8032C468
    li 0, -0x1
    stb 0, 0x68(1)
    .4byte 0x4800000C # b .L_8032C470
L_8032C468:
    li 0, 0x0
    stb 0, 0x68(1)
L_8032C470:
    lhz 0, 0x94(28)
    li 7, 0x7
    cmplwi 0, 0x23
    .4byte 0x40820020 # bne .L_8032C49C
    li 0, 0x7f
    li 7, -0x1
    stb 0, 0x5f(1)
    stb 0, 0x5c(1)
    stb 0, 0x5d(1)
    stb 0, 0x5e(1)
    .4byte 0x48000048 # b .L_8032C4E0
L_8032C49C:
    lwz 0, 0x230(28)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_8032C4B0
    cmpwi 0, 0x4
    .4byte 0x40820034 # bne .L_8032C4E0
L_8032C4B0:
    lwz 3, 0x264(28)
    cmpwi 3, 0x0
    .4byte 0x41800024 # blt .L_8032C4DC
    cmpwi 3, 0x3
    .4byte 0x4181001C # bgt .L_8032C4DC
    bl fn_8023CB24
    addi 0, 3, 0x1
    stb 0, 0x69(1)
    lwz 3, 0x264(28)
    bl fn_8023CA88
    stb 3, 0x68(1)
L_8032C4DC:
    li 7, -0x1
L_8032C4E0:
    lwz 0, 0x230(28)
    cmpwi 0, 0xd
    .4byte 0x4082001C # bne .L_8032C504
    lfs 1, 0x14(28)
    .4byte 0xC002EDE8 # lfs f0, lbl_80541D88@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_8032C504
    li 0, 0x11
    stw 0, 0x7c(1)
L_8032C504:
    psq_l 2, 0xc(28), 0, 0
    addi 5, 31, 0x0
    psq_l 1, 0x290(28), 0, 0
    mr 3, 28
    lfs 0, 0x14(28)
    mr 4, 29
    ps_add 3, 2, 1
    .4byte 0xC022EDF0 # lfs f1, lbl_80541D90@sda21(r0)
    psq_st 2, 0x10(1), 0, 0
    addi 6, 1, 0x4c
    fmr 2, 1
    psq_st 3, 0xc(28), 0, 0
    psq_l 4, 0x14(28), 1, 0
    psq_l 3, 0x298(28), 1, 0
    stfs 0, 0x18(1)
    ps_add 0, 4, 3
    psq_st 0, 0x14(28), 1, 0
    lwz 0, 0x268(28)
    lwz 8, 0x254(28)
    slwi 0, 0, 2
    lwzx 0, 5, 0
    add 5, 8, 0
    bl fn_801F06F0
    lwz 0, 0x268(28)
    addi 3, 31, 0x0
    lwz 5, 0x254(28)
    slwi 4, 0, 2
    cmpwi 0, 0x8
    lwzx 0, 3, 4
    add 6, 5, 0
    .4byte 0x41800010 # blt .L_8032C58C
    add 3, 3, 4
    lwz 0, -0x10(3)
    add 6, 5, 0
L_8032C58C:
    lwz 0, 0x230(28)
    cmpwi 0, 0xb
    .4byte 0x4082003C # bne .L_8032C5D0
    li 3, 0x0
    neg 0, 30
    stw 3, 0x8(1)
    or 0, 0, 30
    srwi 7, 0, 31
    addi 5, 28, 0xc
    stw 3, 0xc(1)
    li 8, 0x2
    li 9, -0x1
    li 10, 0x1
    lwz 3, 0x198(28)
    lwz 4, 0x4(28)
    bl fn_803075AC
    .4byte 0x48000038 # b .L_8032C604
L_8032C5D0:
    li 3, 0x0
    neg 0, 30
    stw 3, 0x8(1)
    or 0, 0, 30
    srwi 7, 0, 31
    addi 5, 28, 0xc
    stw 3, 0xc(1)
    li 8, 0x2
    li 9, -0x1
    li 10, 0x0
    lwz 3, 0x198(28)
    lwz 4, 0x4(28)
    bl fn_803075AC
L_8032C604:
    psq_l 1, 0x10(1), 0, 0
    lfs 0, 0x18(1)
    psq_st 1, 0xc(28), 0, 0
    stfs 0, 0x14(28)
L_8032C614:
    psq_l 31, 0x108(1), 0, 0
    lfd 31, 0x100(1)
    psq_l 30, 0xf8(1), 0, 0
    lfd 30, 0xf0(1)
    psq_l 29, 0xe8(1), 0, 0
    lfd 29, 0xe0(1)
    psq_l 28, 0xd8(1), 0, 0
    lfd 28, 0xd0(1)
    psq_l 27, 0xc8(1), 0, 0
    lfd 27, 0xc0(1)
    psq_l 26, 0xb8(1), 0, 0
    lfd 26, 0xb0(1)
    lwz 31, 0xac(1)
    lwz 30, 0xa8(1)
    lwz 29, 0xa4(1)
    lwz 0, 0x114(1)
    lwz 28, 0xa0(1)
    mtlr 0
    addi 1, 1, 0x110
    blr
