.section extab, "a"
.balign 4
.global etb_80008120
etb_80008120:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_80008120, 8

.section extabindex, "a"
.balign 4
.global eti_800152D4
eti_800152D4:
    .4byte fn_801C5B08
    .4byte 0x000003B4
    .4byte etb_80008120
.size eti_800152D4, 12

.text
.balign 4
.global fn_801C5B08

# fn_801C5B08(this, targetRoomOrParam) - MAJOR FINDING: this is SLK2's
# "evaluate/arrive at current RAIL waypoint" behavior (SLK2, an
# already-landed richer NPC - project_fsa_slk2_actor_and_shared_draw_lesson.md
# - turns out to be the actor that rides RAIL waypoint paths, see
# project_fsa_slk2_is_the_rail_cart.md). Reached from SLK2's giant
# per-frame orchestrator `fn_801C2ED4` (vtable slot +0x90) via a
# jump-table case that calls `fn_801C5B08(this, this->0x4)`.
#
# 1. Calls `Slk2_RailGuardAlwaysFalse` (not decompiled, already-claimed address
#    range adjacent to SLK2's own ctor/dtor - likely an "is a
#    special/paused mode active" check). If true: sets a state-flag
#    bit (`this->0x230 |= 0x200`), transitions to state `0x1e` via the
#    CONFIRMED state-setter `fn_801C3B7C`, and returns early.
# 2. Otherwise reads a spawn-configured float (`this->0x5ac`, a
#    speed/duration parameter) and calls `fn_801D05F8(this,
#    this->0xc)` (not decompiled - returns a signed comparison-style
#    result). If negative: rolls the CONFIRMED global PRNG
#    (`lbl_8053AAF8->0xb4`) against a probability threshold and
#    transitions to state `0xf` or `0x11` accordingly, then returns.
# 3. If non-negative: stores the result into `this->0x338` (a
#    target/index field) and calls `fn_801C6260` (0x524 bytes, not
#    decompiled - hypothesized "pick the next target waypoint," not
#    yet confirmed). Then, only in mode `0x1b`, with a cooldown
#    (`this->0x59a`) expired and a "valid path target" check
#    (`fn_801D0DD4`) passing and a specific flag (`this->0x524` bit
#    25) clear: branches on the CONFIRMED per-room `+0x31df` flag (the
#    SAME flag `fn_8022461C`/other terrain checks use) to either pick
#    a fixed 90-degree turn jittered by PRNG, or a computed turn via
#    `fn_801D0280`/`fn_801CD664` - either way transitioning to state
#    `0x1c` with a 180-frame cooldown (`this->0x59a = 0xb4`).
# 4. The MAIN arrival-detection path (when not in the above special
#    cases): reads a small per-waypoint array header at `this->0x358`
#    (via the not-decompiled `GetCurrentSlotPtr` accessor) - this is
#    strongly suspected to be the SAME kind of "ring of N linked RAIL
#    waypoints" struct the CONFIRMED `fn_800FD4C0`/`548`/`594`/`5E8`/
#    `818` ring-adjacency library operates on (project_fsa_rail_actor_identified.md).
#    Computes the squared distance from `this`'s position to the
#    waypoint's position (via `fn_800FE2E4`/`fn_800FE294`, not
#    decompiled) and compares against a threshold (`lbl_8053EE74`). If
#    within range, calls the CONFIRMED `fn_800FD5E8(this->0x358,
#    waypointIndex)` - RAIL's own adjacency-check function
#    (extab_800fd4c0-style file, oscluster_800fd498.c) - if it reports
#    "adjacent," sets the "arrived" flag (local `r31=1`). If NOT close
#    enough by distance, instead checks facing-angle alignment
#    (`fn_801D02E0` vs `this->0x33c`) and, if aligned, rolls the PRNG
#    once more as a final probabilistic "close enough" pass.
# 5. If arrived: transitions to state `0x11`, sets a "reached" flag
#    bit (`this->0x230 |= 0x20`) and a follow-up cooldown
#    (`this->0x598 = 0x78`). If NOT yet arrived: calls
#    `fn_801C5EBC(this, roomID, mode)` (extab_801c5ebc.s) - the
#    steering-while-traveling continuation, landed alongside this
#    function.
#
# `Slk2_RailGuardAlwaysFalse`, `fn_801D05F8`, `fn_801C6260`, `fn_801D0DD4`,
# `fn_801CC9F8`, `GetCurrentSlotPtr`, `fn_800FE2E4`, `fn_800FE294`,
# `fn_801D0280` remain undecompiled - real open threads for a future
# deep-dive, but the OVERALL "detect arrival at a RAIL waypoint, with
# probabilistic/angle-based tolerance, then advance the state machine"
# shape is confirmed with real evidence, not guessed.

fn_801C5B08:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stmw 26, 0x48(1)
    mr 28, 3
    mr 29, 4
    bl Slk2_RailGuardAlwaysFalse
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801C5B48
    lwz 0, 0x230(28)
    mr 3, 28
    li 4, 0x1e
    oris 0, 0, 0x200
    stw 0, 0x230(28)
    bl fn_801C3B7C
    .4byte 0x48000364 # b .L_801C5EA8
L_801C5B48:
    lfs 1, 0x5ac(28)
    mr 3, 28
    addi 4, 28, 0xc
    bl fn_801D05F8
    cmpwi 3, 0x0
    .4byte 0x4080006C # bge .L_801C5BC8
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BEC8 # lfs f1, lbl_8053EE68@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BECC # lfs f0, lbl_8053EE6C@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 2, 0x10(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_801C5BB8
    mr 3, 28
    li 4, 0xf
    bl fn_801C3B7C
    .4byte 0x480002F4 # b .L_801C5EA8
L_801C5BB8:
    mr 3, 28
    li 4, 0x11
    bl fn_801C3B7C
    .4byte 0x480002E4 # b .L_801C5EA8
L_801C5BC8:
    mr 30, 3
    mr 3, 28
    stw 30, 0x338(28)
    bl fn_801C6260
    lwz 0, 0x248(28)
    cmpwi 0, 0x1b
    .4byte 0x408202C8 # bne .L_801C5EA8
    lbz 0, 0x59a(28)
    cmplwi 0, 0x0
    .4byte 0x408200FC # bne .L_801C5CE8
    lwz 0, 0x24c(28)
    cmpwi 0, 0xf0
    .4byte 0x418000F0 # blt .L_801C5CE8
    mr 3, 28
    bl fn_801D0DD4
    clrlwi. 0, 3, 24
    .4byte 0x418200E0 # beq .L_801C5CE8
    lwz 0, 0x524(28)
    rlwinm. 0, 0, 0, 25, 25
    .4byte 0x408200D4 # bne .L_801C5CE8
    lwz 27, 0x4(28)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 27
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820078 # beq .L_801C5CA8
    lwz 4, 0x4(28)
    addi 3, 28, 0xc
    bl fn_801CC9F8
    clrlwi. 0, 3, 24
    .4byte 0x40820064 # bne .L_801C5CA8
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BEC8 # lfs f1, lbl_8053EE68@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BED0 # lfs f0, lbl_8053EE70@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801C5C9C
    li 0, 0x4000
    sth 0, 0x33c(28)
    .4byte 0x48000038 # b .L_801C5CD0
L_801C5C9C:
    li 0, -0x4000
    sth 0, 0x33c(28)
    .4byte 0x4800002C # b .L_801C5CD0
L_801C5CA8:
    mr 3, 28
    mr 4, 30
    bl fn_801D0280
    sth 3, 0x33c(28)
    li 3, 0x4001
    bl fn_801CD664
    lha 0, 0x33c(28)
    subi 3, 3, 0x2000
    add 0, 0, 3
    sth 0, 0x33c(28)
L_801C5CD0:
    mr 3, 28
    li 4, 0x1c
    bl fn_801C3B7C
    li 0, 0xb4
    stb 0, 0x59a(28)
    .4byte 0x480001C4 # b .L_801C5EA8
L_801C5CE8:
    lbz 0, 0x599(28)
    li 31, 0x0
    cmplwi 0, 0x0
    .4byte 0x4082016C # bne .L_801C5E60
    addi 3, 28, 0x358
    bl GetCurrentSlotPtr
    lbz 26, 0x3(3)
    addi 3, 28, 0x358
    psq_l 1, 0xc(28), 0, 0
    lfs 0, 0x14(28)
    psq_st 1, 0x20(1), 0, 0
    stfs 0, 0x28(1)
    bl GetCurrentSlotPtr
    lwz 5, 0x4(28)
    addi 4, 1, 0x20
    bl fn_800FE2E4
    clrlwi 27, 3, 24
    addi 3, 28, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 26, 0
    .4byte 0x40800008 # bge .L_801C5D44
    stb 26, 0x3(3)
L_801C5D44:
    addi 3, 28, 0x358
    bl GetCurrentSlotPtr
    mr 4, 3
    mr 5, 27
    addi 3, 1, 0x2c
    bl fn_800FE294
    psq_l 0, 0x2c(1), 0, 0
    lfs 1, 0x34(1)
    psq_st 0, 0x14(1), 0, 0
    .4byte 0xC002BED4 # lfs f0, lbl_8053EE74@sda21(r0)
    stfs 1, 0x1c(1)
    lfs 4, 0x14(1)
    lfs 3, 0xc(28)
    lfs 2, 0x18(1)
    lfs 1, 0x10(28)
    fsubs 3, 4, 3
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200C4 # bne .L_801C5E60
    addi 3, 28, 0x358
    bl GetCurrentSlotPtr
    mr 4, 27
    bl fn_800FD5E8
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801C5DC0
    li 31, 0x1
    .4byte 0x480000A4 # b .L_801C5E60
L_801C5DC0:
    mr 3, 28
    addi 4, 1, 0x14
    bl fn_801D02E0
    lha 4, 0x33c(28)
    extsh 3, 3
    lis 0, 0x4330
    .4byte 0xC862BEE8 # lfd f3, lbl_8053EE88@sda21(r0)
    subf 3, 3, 4
    stw 0, 0x38(1)
    extsh 0, 3
    .4byte 0xC022BED8 # lfs f1, lbl_8053EE78@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC002BEDC # lfs f0, lbl_8053EE7C@sda21(r0)
    stw 0, 0x3c(1)
    lfd 2, 0x38(1)
    fsubs 2, 2, 3
    fabs 2, 2
    fmuls 1, 1, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820050 # bne .L_801C5E60
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BEC8 # lfs f1, lbl_8053EE68@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BEE0 # lfs f0, lbl_8053EE80@sda21(r0)
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
    .4byte 0x40800008 # bge .L_801C5E60
    li 31, 0x1
L_801C5E60:
    clrlwi. 0, 31, 24
    .4byte 0x41820034 # beq .L_801C5E98
    lwz 0, 0x230(28)
    mr 3, 28
    li 4, 0x11
    oris 0, 0, 0x20
    stw 0, 0x230(28)
    bl fn_801C3B7C
    lwz 3, 0x230(28)
    li 0, 0x78
    rlwinm 3, 3, 0, 11, 9
    stw 3, 0x230(28)
    stb 0, 0x598(28)
    .4byte 0x48000014 # b .L_801C5EA8
L_801C5E98:
    mr 3, 28
    mr 4, 30
    mr 5, 29
    bl fn_801C5EBC
L_801C5EA8:
    lmw 26, 0x48(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

