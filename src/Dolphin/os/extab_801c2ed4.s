.section extab, "a"
.balign 4
.global etb_800080A8
etb_800080A8:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800080A8, 8

.section extabindex, "a"
.balign 4
.global eti_8001525C
eti_8001525C:
    .4byte fn_801C2ED4
    .4byte 0x00000CA8
    .4byte etb_800080A8
.size eti_8001525C, 12

.text
.balign 4
.global fn_801C2ED4

# fn_801C2ED4(this, hasCollided) - SLK2's real per-frame orchestrator,
# the confirmed vtable+0x90 update() (project_fsa_slk2_is_the_rail_cart.md).
# Landed as Track A (byte-matched, 0xCA8 = 3240 bytes, the LARGEST
# function in the project) with the following structural overview - a
# full line-by-line trace of all ~48 states was out of scope for one
# session, but the architecture is solid and every already-confirmed
# helper this function calls is cross-referenced below:
#
# 1. Collision-recovery prologue (only if `hasCollided` is true): calls
#    the confirmed shared virtual at vtable+0x4c (the SAME slot
#    fn_801CFA70/fn_801CFD68/fn_801F172C use) on THIS actor's OWN
#    position (this->0x4=room, this->0xc/0x10=position) rather than a
#    probe point - "am I currently standing somewhere invalid." If so,
#    rolls this->0xc/0x10 back to a previously-saved this->0x18/0x1c
#    pair, then calls fn_801D01A0(this, &this->0x32c, &local) and adds
#    its 2-float result on top - a "snap back and re-integrate" response.
# 2. Reads a GLOBAL flags singleton via fn_801C0D70() (CONFIRMED,
#    extab_801c0d70.s - takes NO args; a lazily-initialized shared
#    struct at lbl_804C7E70, NOT per-actor). Its halfword at +0x0 is a
#    bitfield read/OR'd throughout this whole function. If bit 21 is set AND
#    fn_801D0DD4(this) (CONFIRMED, extab_801d0dd4.s) is true AND the
#    current state (this->0x248) minus 0xe falls in [0,0x19] (states
#    0xe-0x27), dispatches through a SECOND, narrower jump table
#    (`jumptable_804A454C`, 25 entries) - a "hit-reaction pre-pass" that
#    runs BEFORE the main per-state body for that state range only.
# 3. Common per-frame housekeeping (`.L_801C3000`): ticks an embedded
#    sub-object via fn_802188B0(&this->0x540) (not decompiled), toggles
#    a saturating byte counter at this->0x55c gated by this->0x230 bit
#    13, then decrements 5 independent saturating byte cooldown timers
#    (this->0x597/0x598/0x599/0x59a/0x59b) by 1 each, floored at 0.
# 4. MAIN state dispatch (`.L_801C3098`): if this->0x248 (current state,
#    0-0x2f = 48 states) is in range, jumps through `jumptable_804A448C`
#    to the per-state body; every handler that doesn't return falls into
#    the shared epilogue. Notable confirmed shapes among the states
#    (not all 48 traced individually):
#    - Many are pure TIMER GATES comparing this->0x24c against
#      this->0x250 (the established "elapsed vs required" pair from
#      fn_801C6260/fn_801C5EBC) or a fixed literal, transitioning via
#      `fn_801C3B7C(this, newState)` (the CONFIRMED state-transition
#      setter referenced throughout this project's SLK2 banners, itself
#      still undecompiled).
#    - Several gate on fn_801D0DD4(this) (CONFIRMED) as a precondition.
#    - One computes a forward probe point and calls fn_801D05F8(this,
#      &probe) (CONFIRMED target-selector) to decide whether to enter
#      state 1.
#    - One re-derives the CONFIRMED per-room `+0x31df` flag
#      (GetRoomConfigRecord()) and, if clear, reseeds 4 float fields
#      (this->0x60/64/68/6c, mirrored to 0x70/74/78/7c) from shared
#      constants - this exact 12-instruction block appears TWICE
#      verbatim, clearly meant to be its own helper that got inlined.
#    - One state is a genuine PRNG-gated interrupt: rolls the CONFIRMED
#      global PRNG (lbl_8053AAF8->0xb4) against threshold constants,
#      gated by this->0x524 bit 28 and the this->0x597 cooldown from
#      step 3, calls fn_801D183C(this) (not decompiled) and transitions
#      to state 0x22 on success; otherwise resets this->0x597 to 0x3c
#      and falls back to state 0x1b.
#    - Two periodic-tick states use a "this->0x24c mod N" bit-trick
#      (mod 6 via a reciprocal-multiply constant 0x2aab, and mod 8 via
#      shift/mask) to fire a quarter-turn facing snap (this->0x33c +=
#      0x4000) every Nth frame.
#    - One delegates through a 4-entry lookup table (`lbl_80469450`,
#      indexed by this->0x560) into fn_801F0E34(this, entry, 0), gated
#      by a cross-check against a DIFFERENT state number (this->0x248
#      == 0x2c) - a genuine cross-state consistency check.
#    - Others delegate outright to already-confirmed rail-riding cores
#      (fn_801C5B08, fn_801C7370) or to still-undecompiled sibling
#      vtable-slot functions (fn_801C6784/fn_801C6A4C/fn_801C6BA8/
#      fn_801C6C7C/fn_801C8BC4) and external helpers (SpatialRegistry_GetBase/
#      fn_801F68E0/fn_80458F9C/fn_802189AC/fn_8021CFF8/fn_8021CDE4/
#      fn_801C1224/fn_802D79E8/fn_802144F0/fn_802146A4/fn_80217374/
#      fn_80214E50/fn_802153A8/fn_801CD228/fn_801CD2F8/fn_801C0FEC),
#      none decompiled this session.
# 5. Shared epilogue (`.L_801C3B40`, reached from every path): if
#    this->0x230 bit 11 is set, calls fn_801C71BC(this) (one of SLK2's
#    own still-undecompiled extra vtable-slot functions). Then
#    UNCONDITIONALLY converts the facing angle (this->0x33c) to a vector
#    via ClassifyBamAngleToQuadrant(angle) and caches it at this->0x98, before
#    returning.
#
# This ties together nearly everything decoded across the whole SLK2
# investigation (fn_801D05F8 target selection, fn_801D0DD4 state-flag
# checks, the global PRNG, the per-room flag, fn_801C3B7C transitions,
# the confirmed rail-riding cores) into one literal 48-state finite
# state machine - the natural next targets are fn_801C3B7C itself (the
# state setter) and fn_801C0D70 (the flags-record accessor), both
# called from nearly every branch above.
fn_801C2ED4:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    clrlwi. 0, 4, 24
    stw 31, 0x3c(1)
    mr 31, 4
    stw 30, 0x38(1)
    mr 30, 3
    .4byte 0x41820068 # beq .L_801C2F5C
    lwz 12, 0x0(3)
    addi 5, 30, 0xc
    lwz 4, 0x4(30)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820048 # beq .L_801C2F5C
    lfs 0, 0x18(30)
    mr 3, 30
    .4byte 0xC022BE74 # lfs f1, lbl_8053EE14@sda21(r0)
    addi 4, 30, 0x32c
    stfs 0, 0xc(30)
    addi 5, 1, 0xc
    lfs 0, 0x1c(30)
    stfs 0, 0x10(30)
    bl fn_801D01A0
    lfs 1, 0xc(30)
    lfs 0, 0xc(1)
    fadds 0, 1, 0
    stfs 0, 0xc(30)
    lfs 1, 0x10(30)
    lfs 0, 0x10(1)
    fadds 0, 1, 0
    stfs 0, 0x10(30)
L_801C2F5C:
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 21, 21
    .4byte 0x41820098 # beq .L_801C3000
    mr 3, 30
    bl fn_801D0DD4
    clrlwi. 0, 3, 24
    .4byte 0x41820088 # beq .L_801C3000
    lwz 3, 0x248(30)
    subi 0, 3, 0xe
    cmplwi 0, 0x19
    .4byte 0x41810078 # bgt .L_801C3000
    lis 3, jumptable_804A454C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A454C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    bl fn_801C0D70
    addi 4, 30, 0xc
    addi 5, 1, 0x14
    bl fn_801C0FEC
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_801C2FF4
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 20, 20
    .4byte 0x41820038 # beq .L_801C3000
    lfs 2, 0x18(1)
    mr 3, 30
    lfs 1, 0x14(1)
    li 4, 0x1d
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    stfs 1, 0x32c(30)
    stfs 2, 0x330(30)
    stfs 0, 0x334(30)
    bl fn_801C3B7C
    .4byte 0x48000010 # b .L_801C3000
L_801C2FF4:
    mr 3, 30
    li 4, 0x2f
    bl fn_801C3B7C
L_801C3000:
    addi 3, 30, 0x540
    bl fn_802188B0
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 13, 13
    .4byte 0x4182001C # beq .L_801C302C
    lbz 3, 0x55c(30)
    cmplwi 3, 0xff
    .4byte 0x41820018 # beq .L_801C3034
    addi 0, 3, 0x1
    stb 0, 0x55c(30)
    .4byte 0x4800000C # b .L_801C3034
L_801C302C:
    li 0, 0x0
    stb 0, 0x55c(30)
L_801C3034:
    lbz 3, 0x597(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801C3048
    subi 0, 3, 0x1
    stb 0, 0x597(30)
L_801C3048:
    lbz 3, 0x598(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801C305C
    subi 0, 3, 0x1
    stb 0, 0x598(30)
L_801C305C:
    lbz 3, 0x599(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801C3070
    subi 0, 3, 0x1
    stb 0, 0x599(30)
L_801C3070:
    lbz 3, 0x59a(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801C3084
    subi 0, 3, 0x1
    stb 0, 0x59a(30)
L_801C3084:
    lbz 3, 0x59b(30)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801C3098
    subi 0, 3, 0x1
    stb 0, 0x59b(30)
L_801C3098:
    lwz 4, 0x248(30)
    cmplwi 4, 0x2f
    .4byte 0x41810AA0 # bgt .L_801C3B40
    lis 3, jumptable_804A448C@ha
    slwi 0, 4, 2
    addi 3, 3, jumptable_804A448C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820A7C # beq .L_801C3B40
    lwz 3, 0x4(30)
    bl fn_801CD228
    clrlwi. 0, 3, 24
    .4byte 0x41820A6C # beq .L_801C3B40
    lbz 5, 0x55e(30)
    lis 0, 0x4330
    stw 0, 0x28(1)
    mr 3, 30
    .4byte 0xC822BEA0 # lfd f1, lbl_8053EE40@sda21(r0)
    addi 4, 30, 0xc
    stw 5, 0x2c(1)
    .4byte 0xC042BE78 # lfs f2, lbl_8053EE18@sda21(r0)
    lfd 0, 0x28(1)
    fsubs 0, 0, 1
    fmuls 1, 2, 0
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x41800A34 # blt .L_801C3B40
    mr 3, 30
    li 4, 0x1
    bl fn_801C3B7C
    .4byte 0x48000A24 # b .L_801C3B40
    bl SpatialRegistry_GetBase
    bl fn_801F68E0
    cmpwi 3, 0x0
    .4byte 0x41820A14 # beq .L_801C3B40
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
    bl fn_801C0D70
    lhz 0, 0x0(3)
    ori 0, 0, 0x8
    sth 0, 0x0(3)
    .4byte 0x480009F4 # b .L_801C3B40
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x418009E4 # blt .L_801C3B40
    mr 3, 30
    li 4, 0x3
    bl fn_801C3B7C
    .4byte 0x480009D4 # b .L_801C3B40
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x418009C4 # blt .L_801C3B40
    mr 3, 30
    li 4, 0x4
    bl fn_801C3B7C
    .4byte 0x480009B4 # b .L_801C3B40
    lwz 0, 0x24c(30)
    cmpwi 0, 0x1
    .4byte 0x408109A8 # ble .L_801C3B40
    mr 3, 30
    bl fn_801D0DD4
    clrlwi. 0, 3, 24
    .4byte 0x41820998 # beq .L_801C3B40
    mr 3, 30
    li 4, 0x5
    bl fn_801C3B7C
    .4byte 0x48000988 # b .L_801C3B40
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x41800978 # blt .L_801C3B40
    lwz 0, 0x230(30)
    ori 0, 0, 0x8000
    stw 0, 0x230(30)
    bl fn_801C0D70
    lhz 0, 0x0(3)
    ori 0, 0, 0x10
    sth 0, 0x0(3)
    .4byte 0x48000958 # b .L_801C3B40
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x41800948 # blt .L_801C3B40
    li 0, 0x0
    sth 0, 0x33c(30)
    bl fn_801C0D70
    lhz 0, 0x0(3)
    clrlwi. 0, 0, 31
    .4byte 0x40820014 # bne .L_801C3224
    mr 3, 30
    li 4, 0x9
    bl fn_801C3B7C
    .4byte 0x48000920 # b .L_801C3B40
L_801C3224:
    mr 3, 30
    li 4, 0x7
    bl fn_801C3B7C
    .4byte 0x48000910 # b .L_801C3B40
    lwz 0, 0x24c(30)
    cmpwi 0, 0x1e
    .4byte 0x41800904 # blt .L_801C3B40
    mr 3, 30
    li 4, 0x8
    bl fn_801C3B7C
    .4byte 0x480008F4 # b .L_801C3B40
    lwz 0, 0x24c(30)
    cmpwi 0, 0x5a
    .4byte 0x418008E8 # blt .L_801C3B40
    mr 3, 30
    li 4, 0x9
    bl fn_801C3B7C
    .4byte 0x480008D8 # b .L_801C3B40
    lwz 0, 0x24c(30)
    cmpwi 0, 0x3c
    .4byte 0x418008CC # blt .L_801C3B40
    lwz 0, 0x524(30)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x41820014 # beq .L_801C3294
    mr 3, 30
    li 4, 0xa
    bl fn_801C3B7C
    .4byte 0x480008B0 # b .L_801C3B40
L_801C3294:
    mr 3, 30
    li 4, 0xc
    bl fn_801C3B7C
    .4byte 0x480008A0 # b .L_801C3B40
    lwz 0, 0x24c(30)
    cmpwi 0, 0x73
    .4byte 0x41800894 # blt .L_801C3B40
    mr 3, 30
    li 4, 0xb
    bl fn_801C3B7C
    .4byte 0x48000884 # b .L_801C3B40
    lwz 0, 0x24c(30)
    cmpwi 0, 0x3c
    .4byte 0x41800878 # blt .L_801C3B40
    mr 3, 30
    li 4, 0xc
    bl fn_801C3B7C
    .4byte 0x48000868 # b .L_801C3B40
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4182085C # beq .L_801C3B40
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    lbz 0, 0x10a(3)
    cmplwi 0, 0x0
    .4byte 0x4082084C # bne .L_801C3B40
    bl fn_801C0D70
    lhz 0, 0x0(3)
    ori 0, 0, 0x20
    sth 0, 0x0(3)
    .4byte 0x48000838 # b .L_801C3B40
    lwz 0, 0x24c(30)
    cmpwi 0, 0xa0
    .4byte 0x4180082C # blt .L_801C3B40
    lfs 1, 0x10(30)
    mr 3, 30
    .4byte 0xC002BE7C # lfs f0, lbl_8053EE1C@sda21(r0)
    li 4, 0x1e
    fadds 0, 1, 0
    stfs 0, 0x10(30)
    bl fn_801C3B7C
    .4byte 0x4800080C # b .L_801C3B40
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x41800048 # blt .L_801C338C
    lfs 1, 0x5a4(30)
    mr 3, 30
    addi 4, 30, 0xc
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x41800030 # blt .L_801C338C
    lbz 0, 0x59c(30)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801C337C
    addi 3, 30, 0x4ec
    bl fn_80214E50
    li 0, 0x3c
    stb 0, 0x59c(30)
L_801C337C:
    mr 3, 30
    li 4, 0x11
    bl fn_801C3B7C
    .4byte 0x480007B8 # b .L_801C3B40
L_801C338C:
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x40820014 # bne .L_801C33AC
    lwz 4, 0x24c(30)
    lhz 0, 0x5a0(30)
    cmpw 4, 0
    .4byte 0x40800020 # bge .L_801C33C8
L_801C33AC:
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820030 # bne .L_801C33E4
    lwz 3, 0x24c(30)
    lhz 0, 0x5a2(30)
    cmpw 3, 0
    .4byte 0x41800020 # blt .L_801C33E4
L_801C33C8:
    mr 3, 30
    li 4, 0x11
    bl fn_801C3B7C
    mr 3, 30
    li 4, 0x0
    bl fn_801C8BC4
    .4byte 0x48000760 # b .L_801C3B40
L_801C33E4:
    lha 4, 0x33c(30)
    addi 3, 30, 0x550
    bl fn_80217374
    sth 3, 0x33c(30)
    .4byte 0x4800074C # b .L_801C3B40
    lwz 4, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 4, 0
    .4byte 0x41800030 # blt .L_801C3434
    lwz 0, 0x564(30)
    cmpwi 0, 0x3
    .4byte 0x40820014 # bne .L_801C3424
    mr 3, 30
    li 4, 0x2e
    bl fn_801C3B7C
    .4byte 0x48000720 # b .L_801C3B40
L_801C3424:
    mr 3, 30
    li 4, 0xf
    bl fn_801C3B7C
    .4byte 0x48000710 # b .L_801C3B40
L_801C3434:
    lis 3, 0x2aab
    subi 0, 3, 0x5555
    mulhw 3, 0, 4
    srwi 0, 3, 31
    add 0, 3, 0
    mulli 0, 0, 0x6
    subf. 0, 0, 4
    .4byte 0x408206F0 # bne .L_801C3B40
    lha 3, 0x33c(30)
    addi 0, 3, 0x4000
    sth 0, 0x33c(30)
    .4byte 0x480006E0 # b .L_801C3B40
    mr 3, 30
    mr 4, 31
    bl fn_801C7370
    .4byte 0x480006D0 # b .L_801C3B40
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x40800014 # bge .L_801C3494
    addi 3, 30, 0x540
    bl fn_802189AC
    clrlwi. 0, 3, 24
    .4byte 0x418206B0 # beq .L_801C3B40
L_801C3494:
    mr 3, 30
    li 4, 0x13
    bl fn_801C3B7C
    .4byte 0x480006A0 # b .L_801C3B40
    mr 3, 30
    bl fn_801D0DD4
    clrlwi. 0, 3, 24
    .4byte 0x41820690 # beq .L_801C3B40
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x4080001C # bge .L_801C34DC
    cmpwi 3, 0x2
    .4byte 0x41800678 # blt .L_801C3B40
    addi 3, 30, 0x540
    bl fn_802189AC
    clrlwi. 0, 3, 24
    .4byte 0x41820668 # beq .L_801C3B40
L_801C34DC:
    mr 3, 30
    li 4, 0x14
    bl fn_801C3B7C
    .4byte 0x48000658 # b .L_801C3B40
    lbz 0, 0x34d(30)
    cmplwi 0, 0x7
    .4byte 0x40820064 # bne .L_801C3558
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 24, 22
    stw 0, 0x230(30)
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082003C # bne .L_801C3558
    .4byte 0xC022BE80 # lfs f1, lbl_8053EE20@sda21(r0)
    .4byte 0xC002BE74 # lfs f0, lbl_8053EE14@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
L_801C3558:
    lwz 0, 0x24c(30)
    cmpwi 0, 0x1
    .4byte 0x408105E0 # ble .L_801C3B40
    lfs 1, 0x14(30)
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408205CC # bne .L_801C3B40
    addi 3, 30, 0x4ec
    bl fn_802144F0
    mr 3, 30
    li 4, 0x15
    bl fn_801C3B7C
    .4byte 0x480005B4 # b .L_801C3B40
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x418005A4 # blt .L_801C3B40
    mr 3, 30
    li 4, 0x16
    bl fn_801C3B7C
    .4byte 0x48000594 # b .L_801C3B40
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x41800584 # blt .L_801C3B40
    mr 3, 30
    li 4, 0x11
    bl fn_801C3B7C
    .4byte 0x48000574 # b .L_801C3B40
    lwz 0, 0x24c(30)
    cmpwi 0, 0x6e
    .4byte 0x41800568 # blt .L_801C3B40
    mr 3, 30
    li 4, 0x11
    bl fn_801C3B7C
    .4byte 0x48000558 # b .L_801C3B40
    lwz 0, 0x24c(30)
    cmpwi 0, 0x73
    .4byte 0x418000AC # blt .L_801C36A0
    cmpwi 4, 0x19
    .4byte 0x4182000C # beq .L_801C3608
    cmpwi 4, 0x1a
    .4byte 0x40820014 # bne .L_801C3618
L_801C3608:
    mr 3, 30
    li 4, 0xf
    bl fn_801C3B7C
    .4byte 0x4800052C # b .L_801C3B40
L_801C3618:
    addi 4, 30, 0xc
    lfs 2, 0x14(30)
    psq_l 0, 0x0(4), 0, 0
    mr 3, 30
    lwz 31, 0x4(30)
    lwz 0, 0x57c(30)
    psq_st 0, 0x1c(1), 0, 0
    .4byte 0xC022BE84 # lfs f1, lbl_8053EE24@sda21(r0)
    stw 0, 0x4(30)
    lfs 0, 0x580(30)
    stfs 2, 0x24(1)
    stfs 0, 0xc(30)
    lfs 0, 0x584(30)
    stfs 0, 0x10(30)
    lfs 0, 0x588(30)
    stfs 0, 0x14(30)
    bl fn_801D05F8
    stw 31, 0x4(30)
    cmpwi 3, 0x0
    lfs 0, 0x1c(1)
    lfs 1, 0x20(1)
    stfs 0, 0xc(30)
    lfs 0, 0x24(1)
    stfs 1, 0x10(30)
    stfs 0, 0x14(30)
    .4byte 0x41800014 # blt .L_801C3690
    mr 3, 30
    li 4, 0x1e
    bl fn_801C3B7C
    .4byte 0x480004B4 # b .L_801C3B40
L_801C3690:
    mr 3, 30
    li 4, 0x11
    bl fn_801C3B7C
    .4byte 0x480004A4 # b .L_801C3B40
L_801C36A0:
    cmpwi 0, 0x46
    .4byte 0x40820018 # bne .L_801C36BC
    lwz 0, 0x58c(30)
    cmpwi 0, 0x0
    .4byte 0x4082000C # bne .L_801C36BC
    addi 3, 30, 0x4ec
    bl fn_802146A4
L_801C36BC:
    lwz 3, 0x24c(30)
    slwi 0, 3, 30
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 2
    add. 0, 0, 3
    .4byte 0x4082046C # bne .L_801C3B40
    lha 3, 0x33c(30)
    addi 0, 3, 0x4000
    sth 0, 0x33c(30)
    .4byte 0x4800045C # b .L_801C3B40
    mr 3, 30
    mr 4, 31
    bl fn_801C5B08
    .4byte 0x4800044C # b .L_801C3B40
    lbz 0, 0x34d(30)
    cmplwi 0, 0x7
    .4byte 0x40820064 # bne .L_801C3764
    lwz 0, 0x230(30)
    rlwinm 0, 0, 0, 24, 22
    stw 0, 0x230(30)
    lwz 31, 0x4(30)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 31
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082003C # bne .L_801C3764
    .4byte 0xC022BE80 # lfs f1, lbl_8053EE20@sda21(r0)
    .4byte 0xC002BE74 # lfs f0, lbl_8053EE14@sda21(r0)
    stfs 1, 0x60(30)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    lfs 0, 0x60(30)
    stfs 0, 0x70(30)
    lfs 0, 0x64(30)
    stfs 0, 0x74(30)
    lfs 0, 0x68(30)
    stfs 0, 0x78(30)
    lfs 0, 0x6c(30)
    stfs 0, 0x7c(30)
L_801C3764:
    lwz 0, 0x24c(30)
    cmpwi 0, 0x1
    .4byte 0x408103D4 # ble .L_801C3B40
    mr 3, 30
    bl fn_801D0DD4
    clrlwi. 0, 3, 24
    .4byte 0x418203C4 # beq .L_801C3B40
    mr 3, 30
    li 4, 0x1f
    bl fn_801C3B7C
    .4byte 0x480003B4 # b .L_801C3B40
    mr 3, 30
    bl fn_801D0DD4
    clrlwi. 0, 3, 24
    .4byte 0x418203A4 # beq .L_801C3B40
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 21, 21
    .4byte 0x41820020 # beq .L_801C37CC
    lwz 0, 0x24c(30)
    cmpwi 0, 0x1e
    .4byte 0x40810388 # ble .L_801C3B40
    mr 3, 30
    li 4, 0x1e
    bl fn_801C3B7C
    .4byte 0x48000378 # b .L_801C3B40
L_801C37CC:
    lwz 0, 0x24c(30)
    cmpwi 0, 0x1
    .4byte 0x4081036C # ble .L_801C3B40
    mr 3, 30
    li 4, 0x1e
    bl fn_801C3B7C
    .4byte 0x4800035C # b .L_801C3B40
    lwz 0, 0x24c(30)
    cmpwi 0, 0x1
    .4byte 0x40810350 # ble .L_801C3B40
    lfs 1, 0x14(30)
    .4byte 0xC002BE68 # lfs f0, lbl_8053EE08@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082033C # bne .L_801C3B40
    addi 3, 30, 0x4ec
    bl fn_802144F0
    lwz 3, 0x230(30)
    rlwinm. 0, 3, 0, 7, 7
    .4byte 0x41820020 # beq .L_801C3838
    lwz 0, 0x230(30)
    mr 3, 30
    li 4, 0x2c
    rlwinm 0, 0, 0, 8, 6
    stw 0, 0x230(30)
    bl fn_801C3B7C
    .4byte 0x4800030C # b .L_801C3B40
L_801C3838:
    rlwinm. 0, 3, 0, 6, 6
    .4byte 0x41820014 # beq .L_801C3850
    mr 3, 30
    li 4, 0x11
    bl fn_801C3B7C
    .4byte 0x480002F4 # b .L_801C3B40
L_801C3850:
    mr 3, 30
    li 4, 0x1f
    bl fn_801C3B7C
    .4byte 0x480002E4 # b .L_801C3B40
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x418002D4 # blt .L_801C3B40
    mr 3, 30
    li 4, 0x1b
    bl fn_801C3B7C
    .4byte 0x480002C4 # b .L_801C3B40
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 5, 5
    .4byte 0x418202B8 # beq .L_801C3B40
    lwz 3, 0x24c(30)
    slwi 0, 3, 30
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 2
    add. 0, 0, 3
    .4byte 0x4082029C # bne .L_801C3B40
    lha 3, 0x33c(30)
    addi 0, 3, 0x4000
    sth 0, 0x33c(30)
    .4byte 0x4800028C # b .L_801C3B40
    mr 3, 30
    bl fn_801C6C7C
    .4byte 0x48000280 # b .L_801C3B40
    mr 3, 30
    bl fn_801C6BA8
    .4byte 0x48000274 # b .L_801C3B40
    mr 3, 30
    bl fn_801C6A4C
    .4byte 0x48000268 # b .L_801C3B40
    lwz 3, 0x24c(30)
    lwz 0, 0x250(30)
    cmpw 3, 0
    .4byte 0x41800258 # blt .L_801C3B40
    lwz 0, 0x524(30)
    rlwinm. 0, 0, 0, 28, 28
    .4byte 0x4182007C # beq .L_801C3970
    lbz 0, 0x597(30)
    cmplwi 0, 0x0
    .4byte 0x40820070 # bne .L_801C3970
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BE88 # lfs f1, lbl_8053EE28@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BE8C # lfs f0, lbl_8053EE2C@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800028 # bge .L_801C3970
    .4byte 0xC022BE90 # lfs f1, lbl_8053EE30@sda21(r0)
    mr 3, 30
    bl fn_801D183C
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801C3970
    mr 3, 30
    li 4, 0x22
    bl fn_801C3B7C
    .4byte 0x480001D4 # b .L_801C3B40
L_801C3970:
    li 0, 0x3c
    mr 3, 30
    stb 0, 0x597(30)
    li 4, 0x1b
    bl fn_801C3B7C
    .4byte 0x480001BC # b .L_801C3B40
    lwz 0, 0x24c(30)
    cmpwi 0, 0xa0
    .4byte 0x41800034 # blt .L_801C39C4
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 15, 15
    .4byte 0x41820010 # beq .L_801C39AC
    bl fn_801C0D70
    lwz 4, 0x10c(30)
    bl fn_801C1224
L_801C39AC:
    mr 3, 30
    lwz 12, 0x0(30)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
    .4byte 0x48000180 # b .L_801C3B40
L_801C39C4:
    lwz 0, 0x230(30)
    andis. 0, 0, 0x801
    .4byte 0x4182001C # beq .L_801C39E8
    bl GetRoomConfigRecord
    lwz 4, 0x4(30)
    li 5, 0x0
    .4byte 0xC022BE94 # lfs f1, lbl_8053EE34@sda21(r0)
    .4byte 0xC042BE98 # lfs f2, lbl_8053EE38@sda21(r0)
    bl fn_802D79E8
L_801C39E8:
    lwz 3, 0x24c(30)
    slwi 0, 3, 29
    srwi 3, 3, 31
    subf 0, 3, 0
    rotlwi 0, 0, 3
    add. 0, 0, 3
    .4byte 0x40820140 # bne .L_801C3B40
    lha 3, 0x33c(30)
    addi 0, 3, 0x4000
    sth 0, 0x33c(30)
    .4byte 0x48000130 # b .L_801C3B40
    mr 3, 30
    bl fn_801D0DD4
    clrlwi. 0, 3, 24
    .4byte 0x41820120 # beq .L_801C3B40
    mr 3, 30
    bl fn_801C6784
    mr 3, 30
    li 4, 0x1c
    bl fn_801C3B7C
    .4byte 0x48000108 # b .L_801C3B40
    lwz 0, 0x24c(30)
    cmpwi 0, 0x78
    .4byte 0x418000FC # blt .L_801C3B40
    lwz 0, 0x230(30)
    mr 3, 30
    li 4, 0x1d
    oris 0, 0, 0x100
    stw 0, 0x230(30)
    bl fn_801C3B7C
    .4byte 0x480000E0 # b .L_801C3B40
    lwz 31, 0x560(30)
    addi 3, 30, 0x548
    bl fn_802153A8
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_801C3A98
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0xbf
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 30
    li 4, 0x2d
    bl fn_801C3B7C
L_801C3A98:
    lbz 0, 0x549(30)
    stw 0, 0x560(30)
    lwz 0, 0x248(30)
    cmpwi 0, 0x2c
    .4byte 0x40820098 # bne .L_801C3B40
    lwz 0, 0x560(30)
    cmpw 31, 0
    .4byte 0x4182008C # beq .L_801C3B40
    cmpwi 0, 0x0
    .4byte 0x41800084 # blt .L_801C3B40
    cmpwi 0, 0x3
    .4byte 0x4181007C # bgt .L_801C3B40
    lis 3, lbl_80469450@ha
    slwi 0, 0, 2
    addi 4, 3, lbl_80469450@l
    mr 3, 30
    lwzx 4, 4, 0
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x4800005C # b .L_801C3B40
    lwz 0, 0x24c(30)
    cmpwi 0, 0x4a
    .4byte 0x41800050 # blt .L_801C3B40
    mr 3, 30
    li 4, 0x1b
    bl fn_801C3B7C
    .4byte 0x48000040 # b .L_801C3B40
    mr 3, 30
    bl fn_8021CFF8
    clrlwi. 0, 3, 24
    .4byte 0x41820030 # beq .L_801C3B40
    mr 3, 30
    li 4, 0x2
    bl fn_8021CDE4
    .4byte 0x48000020 # b .L_801C3B40
    bl fn_801C0D70
    lhz 0, 0x0(3)
    rlwinm. 0, 0, 0, 21, 21
    .4byte 0x40820010 # bne .L_801C3B40
    mr 3, 30
    li 4, 0xf
    bl fn_801C3B7C
L_801C3B40:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 11, 11
    .4byte 0x4182000C # beq .L_801C3B54
    mr 3, 30
    bl fn_801C71BC
L_801C3B54:
    lha 0, 0x33c(30)
    clrlwi 3, 0, 16
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(30)
    lwz 0, 0x44(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    mtlr 0
    addi 1, 1, 0x40
    blr
