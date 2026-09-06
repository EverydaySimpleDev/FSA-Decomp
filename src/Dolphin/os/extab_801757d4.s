.section extab, "a"
.balign 4
.global etb_8000746C
etb_8000746C:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000746C, 8

.section extabindex, "a"
.balign 4
.global eti_800140C8
eti_800140C8:
    .4byte fn_801757D4
    .4byte 0x00000D64
    .4byte etb_8000746C
.size eti_800140C8, 12

# fn_801757D4(this) - STAL (Stalfos)'s real update(). By far the largest
# function landed for this actor (857 instructions) - read in full and
# genuinely understood at the architectural level; several of the ~9
# jumptable state-cases (`jumptable_804A0D2C`, dispatching on the
# confirmed `this->0x230` behavior-state field, states 0-8) are
# survey-level rather than instruction-by-instruction, consistent with
# this project's established practice for its largest functions (see
# SLR2's update in [[project_fsa_ddrk_slr2_full_depth]]).
#
# Confirmed structure, top to bottom:
# 1. **Type 4/5 "reassembly" intro**: for the two special spawn types
#    (`this->0x90` 4 or 5, matching `fn_80176538`=setParams' own type
#    dispatch), counts down a per-instance timer (`this->0x44`) while
#    accumulating a physics-style position delta (paired-single `ps_add`
#    on `this->0xc/0x14`, the standard velocity-integration idiom seen
#    throughout this project) - i.e. Stalfos VISIBLY reassembles/rises
#    into position over this window. On expiry: type 4 collapses to type
#    0 (ordinary spawn), type 5 re-arms a 10000-frame "long wait" timer
#    (`this->0x108`) matching setParams' own type-5 timer.
# 2. **Frozen/stunned early-out**: calls `fn_801F3D94(this,1)` (a new,
#    not-yet-decompiled "is this actor incapacitated?" query); if true,
#    sets an idle pose via `fn_801F2618(this,0,0)` and skips the ENTIRE
#    rest of update() for this frame - the standard "don't act while
#    stunned" pattern.
# 3. **The "rattle before assembling" timer** (type 5 only, gated on
#    `fn_801F305C(this)` - another new "should I think this frame?"-style
#    query): counts `this->0x25c` down from 10000-`this->0x108` toward 0,
#    driving 3 "shake intensity" floats (`0x26c/270/274`) and firing a
#    rattle/clatter sound cue via `fn_801F0E34` (the CONFIRMED sound-cue
#    primitive) with distinct codes for "still counting" vs. "just
#    finished." At 0, transitions to state 5 (matching the SAME `0x25c`/
#    shake-float fields `fn_801756E4`=draw's own wobble logic reads).
# 4. **Position-jitter application**: steps the CONFIRMED global PRNG via
#    `GetRoomConfigRecord`+the standard "desync near-simultaneous instances" byte
#    check, computes 2 jittered offsets via `fn_801F71A4` (new - "compute
#    a jittered scalar from a base+range+seed," called twice, X and Z),
#    and integrates both into position via the SAME `ps_add` idiom.
# 5. Conditionally calls `fn_801F2B7C(this,-100,-1,1)` (new - shape
#    suggests a downward raycast/ground-check given the -100 offset) when
#    not in states 4/8 and `this->0x240==0`.
# 6. **Player-interaction check**: calls the CONFIRMED co-op player-target
#    pipeline `fn_801EEC98` (see [[project_fsa_player_target_helper_decoded]]),
#    then - if in states 1/2 with state==1 and the pipeline's output
#    distance is below a threshold - loops all 4 player slots using the
#    CONFIRMED validity accessor `Player_GetCapabilityFlagByIndex` plus an owner-match check
#    (`fn_8023DE58` against `this->0x4`) and a new per-player predicate
#    `fn_8022C3AC`; on a match, transitions to state 3 (a "grabbed/attacked
#    by a specific player" trigger).
# 7. **The state jumptable** (`this->0x230`, 0-8): the pre-jumptable
#    fallthrough path re-runs setParams' EXACT `fn_801F7818(table,'WIZR',
#    this->4,...)` partner-search for type-5 instances EVERY FRAME (not
#    just at spawn) - confirming the Stalfos/Wizzrobe pairing is actively
#    maintained, not a one-time link - falling back to state 7 if the
#    partner disappears.
# 8. **Random-walk movement AI** (states 0/1, `this->0x98` 0-3): a series
#    of PRNG-gated coin-flips (each checked against the SAME
#    `GetRoomConfigRecord`-derived "desync" byte) toggle bits of the movement
#    direction (`this->0x98`), which then indexes a velocity-vector table
#    and a per-direction duration table (both off `this`'s own vtable
#    object `lbl_804A0C10`, stride 6 words, cycled via `this->0x24c`
#    0-5) - a classic wander/patrol AI - and sets one of 4 distinct
#    "shake color" float triples (`0x26c/270/274`) per direction.
# 9. **Epilogue** (shared exit `L_801764BC`/`L_80176524`): calls
#    `this->vtable[0x24]()` (the SAME extra per-actor hook the confirmed
#    actor-pool update loop `fn_801F871C` invokes alongside `vtable[0x14]`
#    - see [[project_fsa_actor_loop_found]]), then decrements FOUR
#    countdown timers with a floor of 0: `this->0x238/23c/240` AND the
#    SAME 3 fields on a nested sub-object at `this->0x8` - i.e. Stalfos
#    owns (or is itself embedded within) a second timer-bearing struct.
#
# New, not-yet-decompiled helpers surfaced: `fn_801F3D94`, `fn_801F305C`,
# `fn_801F71A4`, `fn_801F2B7C`, `fn_8022C3AC`, `fn_801F2618` (called 3x
# with different argument shapes - likely a generic "set pose/animation"
# entry point with several overloaded call conventions).
.text
.balign 4
.global fn_801757D4

fn_801757D4:
    stwu 1, -0x1070(1)
    mflr 0
    .4byte 0xC002ABB8 # lfs f0, lbl_8053DB58@sda21(r0)
    lis 4, lbl_804A0C10@ha
    stw 0, 0x1074(1)
    li 0, -0x1
    stmw 27, 0x105c(1)
    mr 29, 3
    addi 31, 4, lbl_804A0C10@l
    stw 0, 0x24(1)
    stfs 0, 0x20(1)
    lwz 0, 0x90(3)
    cmplwi 0, 0x4
    .4byte 0x41820018 # beq .L_80175820
    cmplwi 0, 0x5
    .4byte 0x408200A0 # bne .L_801758B0
    lwz 0, 0x108(29)
    cmpwi 0, 0x3e8
    .4byte 0x40820094 # bne .L_801758B0
L_80175820:
    lfs 1, 0x14(29)
    .4byte 0xC002ABB8 # lfs f0, lbl_8053DB58@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810054 # ble .L_80175880
    lfs 2, 0x44(29)
    fcmpu cr0, 0, 2
    .4byte 0x41820CEC # beq .L_80176524
    .4byte 0xC022ABB4 # lfs f1, lbl_8053DB54@sda21(r0)
    .4byte 0xC002ABBC # lfs f0, lbl_8053DB5C@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(29)
    lfs 1, 0x44(29)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_8017585C
    stfs 0, 0x44(29)
L_8017585C:
    psq_l 1, 0xc(29), 0, 0
    psq_l 0, 0x3c(29), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(29), 0, 0
    psq_l 1, 0x14(29), 1, 0
    psq_l 0, 0x44(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(29), 1, 0
    .4byte 0x48000CA8 # b .L_80176524
L_80175880:
    stfs 0, 0x14(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    lwz 0, 0x90(29)
    cmplwi 0, 0x4
    .4byte 0x40820010 # bne .L_801758A8
    li 0, 0x0
    stw 0, 0x90(29)
    .4byte 0x4800000C # b .L_801758B0
L_801758A8:
    li 0, 0x2710
    stw 0, 0x108(29)
L_801758B0:
    lwz 0, 0x90(29)
    cmplwi 0, 0x5
    .4byte 0x40820018 # bne .L_801758D0
    lwz 0, 0x108(29)
    cmpwi 0, 0x3e8
    .4byte 0x4182000C # beq .L_801758D0
    li 0, 0x2710
    stw 0, 0x108(29)
L_801758D0:
    lwz 0, 0x90(29)
    cmplwi 0, 0x5
    .4byte 0x40820024 # bne .L_801758FC
    lhz 0, 0x94(29)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801758FC
    lwz 0, 0x230(29)
    cmpwi 0, 0x8
    .4byte 0x4182000C # beq .L_801758FC
    li 0, 0x7
    stw 0, 0x230(29)
L_801758FC:
    mr 3, 29
    li 4, 0x1
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x41820018 # beq .L_80175924
    mr 3, 29
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000C04 # b .L_80176524
L_80175924:
    lwz 0, 0x240(29)
    cmpwi 0, 0x0
    .4byte 0x408200F8 # bne .L_80175A24
    lwz 0, 0x230(29)
    cmpwi 0, 0x6
    .4byte 0x418200EC # beq .L_80175A24
    cmpwi 0, 0x8
    .4byte 0x418200E4 # beq .L_80175A24
    lwz 0, 0xb0(29)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8017595C
    lis 3, 0x4
    addi 0, 3, 0x2205
    stw 0, 0xb0(29)
L_8017595C:
    lwz 0, 0x90(29)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_80175974
    lwz 0, 0x230(29)
    cmpwi 0, 0x4
    .4byte 0x418200B4 # beq .L_80175A24
L_80175974:
    lfs 1, 0x14(29)
    .4byte 0xC002ABB8 # lfs f0, lbl_8053DB58@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x408200A4 # bne .L_80175A24
    mr 3, 29
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x41820094 # beq .L_80175A24
    lwz 0, 0x90(29)
    cmplwi 0, 0x5
    .4byte 0x40820074 # bne .L_80175A10
    lwz 3, 0x108(29)
    lwz 0, 0x25c(29)
    subfic 3, 3, 0x2710
    subf 0, 3, 0
    stw 0, 0x25c(29)
    lwz 0, 0x25c(29)
    cmpwi 0, 0x0
    .4byte 0x4181001C # bgt .L_801759D8
    .4byte 0xC002ABB8 # lfs f0, lbl_8053DB58@sda21(r0)
    li 0, 0x5
    stfs 0, 0x274(29)
    stfs 0, 0x270(29)
    stfs 0, 0x26c(29)
    stw 0, 0x230(29)
L_801759D8:
    lwz 0, 0x25c(29)
    cmpwi 0, 0x0
    .4byte 0x4081001C # ble .L_801759FC
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0x9d
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000018 # b .L_80175A10
L_801759FC:
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0x9e
    li 5, 0x0
    bl fn_801F0E34
L_80175A10:
    mr 3, 29
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x48000B04 # b .L_80176524
L_80175A24:
    lwz 30, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80175A48
    .4byte 0xC002ABC0 # lfs f0, lbl_8053DB60@sda21(r0)
    stfs 0, 0x270(29)
L_80175A48:
    lfs 1, 0x26c(29)
    addi 3, 29, 0x3c
    .4byte 0xC042ABC4 # lfs f2, lbl_8053DB64@sda21(r0)
    .4byte 0xC062ABB4 # lfs f3, lbl_8053DB54@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x270(29)
    addi 3, 29, 0x40
    .4byte 0xC042ABC4 # lfs f2, lbl_8053DB64@sda21(r0)
    .4byte 0xC062ABB4 # lfs f3, lbl_8053DB54@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(29), 0, 0
    psq_l 0, 0x3c(29), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(29), 0, 0
    psq_l 1, 0x14(29), 1, 0
    psq_l 0, 0x44(29), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(29), 1, 0
    lwz 0, 0x240(29)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80175AC4
    lwz 0, 0x230(29)
    cmpwi 0, 0x4
    .4byte 0x41820020 # beq .L_80175AC4
    cmpwi 0, 0x8
    .4byte 0x41820018 # beq .L_80175AC4
    mr 3, 29
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
L_80175AC4:
    mr 3, 29
    addi 4, 1, 0x38
    li 5, 0x0
    bl fn_801F2618
    lwz 4, 0x198(29)
    mr 30, 3
    mr 3, 29
    addi 5, 1, 0x8
    addi 6, 1, 0x28
    addi 7, 1, 0x20
    addi 8, 1, 0x24
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x90(29)
    cmplwi 0, 0x1
    .4byte 0x4182000C # beq .L_80175B10
    cmplwi 0, 0x2
    .4byte 0x40820090 # bne .L_80175B9C
L_80175B10:
    lwz 0, 0x230(29)
    cmpwi 0, 0x1
    .4byte 0x40820084 # bne .L_80175B9C
    lfs 1, 0x20(1)
    .4byte 0xC002ABC8 # lfs f0, lbl_8053DB68@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800074 # bge .L_80175B9C
    li 27, 0x0
L_80175B30:
    mr 3, 27
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820054 # beq .L_80175B90
    lwz 28, 0x4(29)
    mr 3, 27
    bl fn_8023DE58
    cmpw 28, 3
    .4byte 0x40820040 # bne .L_80175B90
    mr 3, 27
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_80175B90
    mr 3, 27
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x41820020 # beq .L_80175B90
    mr 3, 27
    bl fn_8022C3AC
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_80175B90
    li 0, 0x3
    stw 0, 0x230(29)
    .4byte 0x48000010 # b .L_80175B9C
L_80175B90:
    addi 27, 27, 0x1
    cmpwi 27, 0x4
    .4byte 0x4180FF98 # blt .L_80175B30
L_80175B9C:
    lwz 0, 0x230(29)
    cmplwi 0, 0x8
    .4byte 0x41810918 # bgt .L_801764BC
    lis 3, jumptable_804A0D2C@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A0D2C@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x90(29)
    cmplwi 0, 0x5
    .4byte 0x40820034 # bne .L_80175BFC
    bl SpatialRegistry_GetBase
    lis 4, 0x5749
    lwz 5, 0x4(29)
    addi 4, 4, 0x5a52
    addi 6, 1, 0x44
    li 7, -0x1
    bl fn_801F7818
    cmpwi 3, 0x0
    .4byte 0x40820010 # bne .L_80175BFC
    li 0, 0x7
    stw 0, 0x230(29)
    .4byte 0x480008C4 # b .L_801764BC
L_80175BFC:
    lwz 0, 0x23c(29)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_80175C60
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002ABB4 # lfs f0, lbl_8053DB54@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC042ABCC # lfs f2, lbl_8053DB6C@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 1, 0x1c(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x1048(1)
    lwz 3, 0x104c(1)
    addi 0, 3, 0x1e
    stw 0, 0x23c(29)
L_80175C60:
    lwz 28, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820020 # beq .L_80175C98
    clrlwi. 0, 30, 24
    .4byte 0x41820018 # beq .L_80175C98
    lfs 1, 0x3c(1)
    .4byte 0xC002ABB8 # lfs f0, lbl_8053DB58@sda21(r0)
    fcmpu cr0, 1, 0
    .4byte 0x41820008 # beq .L_80175C98
    li 30, 0x0
L_80175C98:
    clrlwi. 0, 30, 24
    .4byte 0x40820058 # bne .L_80175CF4
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022ABB4 # lfs f1, lbl_8053DB54@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002ABC4 # lfs f0, lbl_8053DB64@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 2, 0x18(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x41800010 # blt .L_80175CF4
    lwz 0, 0x28(1)
    cmpwi 0, 0x0
    .4byte 0x40800084 # bge .L_80175D74
L_80175CF4:
    lwz 28, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80175D1C
    lwz 0, 0x98(29)
    xori 0, 0, 0x2
    stw 0, 0x98(29)
L_80175D1C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022ABB4 # lfs f1, lbl_8053DB54@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002ABD0 # lfs f0, lbl_8053DB70@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 2, 0x14(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800070 # bge .L_80175DD0
    lwz 0, 0x98(29)
    xori 0, 0, 0x1
    stw 0, 0x98(29)
    .4byte 0x48000060 # b .L_80175DD0
L_80175D74:
    lwz 28, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80175D9C
    lwz 0, 0x28(1)
    stw 0, 0x98(29)
    .4byte 0x48000038 # b .L_80175DD0
L_80175D9C:
    lwz 3, 0x28(1)
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x4082000C # bne .L_80175DB0
    stw 3, 0x98(29)
    .4byte 0x48000024 # b .L_80175DD0
L_80175DB0:
    lhz 0, 0x8(1)
    cmplwi 0, 0x8000
    .4byte 0x40800010 # bge .L_80175DC8
    li 0, 0x0
    stw 0, 0x98(29)
    .4byte 0x4800000C # b .L_80175DD0
L_80175DC8:
    li 0, 0x1
    stw 0, 0x98(29)
L_80175DD0:
    lwz 3, 0x250(29)
    lwz 0, 0x98(29)
    cmpw 3, 0
    .4byte 0x41820010 # beq .L_80175DEC
    li 0, 0x0
    stw 0, 0x238(29)
    stw 0, 0x24c(29)
L_80175DEC:
    lwz 0, 0x98(29)
    stw 0, 0x250(29)
    lwz 0, 0x98(29)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_80175E50
    .4byte 0x40800014 # bge .L_80175E14
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80175E20
    .4byte 0x4080002C # bge .L_80175E38
    .4byte 0x4800006C # b .L_80175E7C
L_80175E14:
    cmpwi 0, 0x4
    .4byte 0x40800064 # bge .L_80175E7C
    .4byte 0x4800004C # b .L_80175E68
L_80175E20:
    .4byte 0xC022ABD4 # lfs f1, lbl_8053DB74@sda21(r0)
    .4byte 0xC002ABB8 # lfs f0, lbl_8053DB58@sda21(r0)
    stfs 1, 0x26c(29)
    stfs 0, 0x270(29)
    stfs 0, 0x274(29)
    .4byte 0x48000048 # b .L_80175E7C
L_80175E38:
    .4byte 0xC022ABD8 # lfs f1, lbl_8053DB78@sda21(r0)
    .4byte 0xC002ABB8 # lfs f0, lbl_8053DB58@sda21(r0)
    stfs 1, 0x26c(29)
    stfs 0, 0x270(29)
    stfs 0, 0x274(29)
    .4byte 0x48000030 # b .L_80175E7C
L_80175E50:
    .4byte 0xC022ABB8 # lfs f1, lbl_8053DB58@sda21(r0)
    .4byte 0xC002ABD4 # lfs f0, lbl_8053DB74@sda21(r0)
    stfs 1, 0x26c(29)
    stfs 0, 0x270(29)
    stfs 1, 0x274(29)
    .4byte 0x48000018 # b .L_80175E7C
L_80175E68:
    .4byte 0xC022ABB8 # lfs f1, lbl_8053DB58@sda21(r0)
    .4byte 0xC002ABD8 # lfs f0, lbl_8053DB78@sda21(r0)
    stfs 1, 0x26c(29)
    stfs 0, 0x270(29)
    stfs 1, 0x274(29)
L_80175E7C:
    li 0, 0x1
    stw 0, 0x230(29)
    lwz 0, 0x238(29)
    cmpwi 0, 0x0
    .4byte 0x40820058 # bne .L_80175EE4
    lwz 0, 0x98(29)
    addi 4, 31, 0x0
    lwz 5, 0x24c(29)
    addi 3, 31, 0x60
    mulli 0, 0, 0x6
    add 0, 5, 0
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x258(29)
    lwz 0, 0x24c(29)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x238(29)
    lwz 3, 0x24c(29)
    addi 0, 3, 0x1
    stw 0, 0x24c(29)
    lwz 0, 0x24c(29)
    cmpwi 0, 0x5
    .4byte 0x4081000C # ble .L_80175EE4
    li 0, 0x0
    stw 0, 0x24c(29)
L_80175EE4:
    lwz 0, 0x23c(29)
    cmpwi 0, 0x0
    .4byte 0x408205D0 # bne .L_801764BC
    .4byte 0xC002ABB8 # lfs f0, lbl_8053DB58@sda21(r0)
    li 0, 0x0
    stfs 0, 0x26c(29)
    stfs 0, 0x270(29)
    stfs 0, 0x274(29)
    stw 0, 0x230(29)
    .4byte 0x480005B4 # b .L_801764BC
    lwz 0, 0x23c(29)
    cmpwi 0, 0x0
    .4byte 0x408205A8 # bne .L_801764BC
    li 0, 0x0
    stw 0, 0x230(29)
    .4byte 0x4800059C # b .L_801764BC
    lwz 0, 0x28(1)
    cmpwi 0, 0x0
    .4byte 0x41800060 # blt .L_80175F8C
    lwz 28, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_80175F58
    lwz 0, 0x28(1)
    stw 0, 0x98(29)
    .4byte 0x48000038 # b .L_80175F8C
L_80175F58:
    lwz 3, 0x28(1)
    rlwinm. 0, 3, 0, 30, 30
    .4byte 0x4082000C # bne .L_80175F6C
    stw 3, 0x98(29)
    .4byte 0x48000024 # b .L_80175F8C
L_80175F6C:
    lhz 0, 0x8(1)
    cmplwi 0, 0x8000
    .4byte 0x40800010 # bge .L_80175F84
    li 0, 0x0
    stw 0, 0x98(29)
    .4byte 0x4800000C # b .L_80175F8C
L_80175F84:
    li 0, 0x1
    stw 0, 0x98(29)
L_80175F8C:
    lhz 4, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC022ABB0 # lfs f1, lbl_8053DB50@sda21(r0)
    addis 4, 4, 0x1
    addi 0, 4, -0x8000
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x26c(29)
    lwz 28, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x4082003C # bne .L_80176008
    .4byte 0xC002ABDC # lfs f0, lbl_8053DB7C@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC022ABB0 # lfs f1, lbl_8053DB50@sda21(r0)
    stfs 0, 0x44(29)
    lhz 3, 0x8(1)
    addis 3, 3, 0x1
    addi 0, 3, -0x8000
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x270(29)
    .4byte 0x4800000C # b .L_80176010
L_80176008:
    .4byte 0xC002ABE0 # lfs f0, lbl_8053DB80@sda21(r0)
    stfs 0, 0x40(29)
L_80176010:
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0x238(29)
    mr 3, 29
    addi 4, 4, 0x9c
    li 5, 0x0
    stw 0, 0x24c(29)
    bl fn_801F0E34
    li 0, 0x4
    stw 0, 0x230(29)
    .4byte 0x48000484 # b .L_801764BC
    lwz 28, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80176068
    lfs 1, 0x44(29)
    .4byte 0xC002ABE4 # lfs f0, lbl_8053DB84@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(29)
L_80176068:
    lwz 5, 0x24c(29)
    cmpwi 5, 0x4
    .4byte 0x4080004C # bge .L_801760BC
    lwz 0, 0x238(29)
    cmpwi 0, 0x0
    .4byte 0x40820040 # bne .L_801760BC
    lwz 0, 0x98(29)
    addi 4, 31, 0x78
    addi 3, 31, 0xb8
    slwi 0, 0, 2
    add 0, 0, 5
    slwi 0, 0, 2
    lwzx 0, 4, 0
    stw 0, 0x258(29)
    lwz 0, 0x24c(29)
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x238(29)
    lwz 3, 0x24c(29)
    addi 0, 3, 0x1
    stw 0, 0x24c(29)
L_801760BC:
    lwz 28, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801760E8
    lfs 1, 0x14(29)
    .4byte 0xC002ABB8 # lfs f0, lbl_8053DB58@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x41800030 # blt .L_80176114
L_801760E8:
    lwz 28, 0x4(29)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 28
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x418203BC # beq .L_801764BC
    lfs 1, 0x3c(1)
    .4byte 0xC002ABB8 # lfs f0, lbl_8053DB58@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x408003AC # bge .L_801764BC
L_80176114:
    lwz 0, 0x90(29)
    cmplwi 0, 0x2
    .4byte 0x40820080 # bne .L_8017619C
    bl SpatialRegistry_GetBase
    lis 4, 0x4f4b
    lwz 5, 0x4(29)
    addi 4, 4, 0x544d
    addi 6, 29, 0xc
    li 7, 0x2
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 28, 3
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_8017619C
    lhz 0, 0x8(1)
    lis 4, lbl_8052EBC0@ha
    addi 5, 4, lbl_8052EBC0@l
    .4byte 0xC042ABE8 # lfs f2, lbl_8053DB88@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfs 3, 0x34(1)
    add 4, 5, 0
    lfsx 1, 5, 0
    lfs 0, 0x4(4)
    fmuls 1, 2, 1
    fmuls 0, 2, 0
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    psq_l 0, 0x2c(1), 0, 0
    psq_st 0, 0x3c(3), 0, 0
    stfs 3, 0x44(3)
L_8017619C:
    .4byte 0xC022ABB8 # lfs f1, lbl_8053DB58@sda21(r0)
    lis 3, 0x19
    addi 3, 3, 0x660d
    .4byte 0xC002ABB4 # lfs f0, lbl_8053DB54@sda21(r0)
    stfs 1, 0x14(29)
    li 0, 0x2
    .4byte 0xC042ABDC # lfs f2, lbl_8053DB7C@sda21(r0)
    stfs 1, 0x44(29)
    stfs 1, 0x274(29)
    stfs 1, 0x270(29)
    stfs 1, 0x26c(29)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 3, 4, 3
    addis 3, 3, 0x3c6f
    subi 3, 3, 0xca1
    stw 3, 0xb4(5)
    lwz 3, 0xb4(5)
    srwi 3, 3, 9
    oris 3, 3, 0x3f80
    stw 3, 0x10(1)
    lfs 1, 0x10(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x1048(1)
    lwz 3, 0x104c(1)
    addi 3, 3, 0x5
    stw 3, 0x23c(29)
    stw 0, 0x230(29)
    .4byte 0x480002A8 # b .L_801764BC
    li 5, 0x0
    li 4, 0x2ee
    stw 5, 0x24c(29)
    li 3, 0x2
    li 0, 0x6
    stw 5, 0x250(29)
    stw 5, 0x238(29)
    stw 5, 0x23c(29)
    stw 4, 0x244(29)
    lwz 4, 0x260(29)
    stw 4, 0x25c(29)
    stw 3, 0x98(29)
    stw 5, 0xb0(29)
    stw 0, 0x230(29)
    lwz 0, 0x250(29)
    cmpwi 0, 0x1
    .4byte 0x41820054 # beq .L_801762AC
    .4byte 0x40800260 # bge .L_801764BC
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_8017626C
    .4byte 0x48000254 # b .L_801764BC
L_8017626C:
    mr 3, 29
    bl Warp_GetLookupTableValue
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    li 5, 0x35c
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 3, 0x2b2
    li 0, 0x1
    stw 3, 0x248(29)
    stw 0, 0x250(29)
    .4byte 0x48000214 # b .L_801764BC
L_801762AC:
    lwz 3, 0x98(29)
    addi 0, 3, 0x1c
    stw 0, 0x258(29)
    lwz 0, 0x248(29)
    cmpwi 0, 0x1e
    .4byte 0x418101FC # bgt .L_801764BC
    lfs 1, 0x14(29)
    .4byte 0xC002ABB8 # lfs f0, lbl_8053DB58@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820100 # bne .L_801763D4
    stfs 0, 0x14(29)
    lwz 0, 0x244(29)
    cmpwi 0, 0x0
    .4byte 0x40820058 # bne .L_8017633C
    stfs 0, 0x274(29)
    mr 3, 29
    stfs 0, 0x270(29)
    stfs 0, 0x26c(29)
    stfs 0, 0x44(29)
    stfs 0, 0x40(29)
    stfs 0, 0x3c(29)
    bl Warp_GetLookupTableValue
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    li 5, 0x35c
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stw 0, 0x250(29)
    stw 0, 0x230(29)
    .4byte 0x48000184 # b .L_801764BC
L_8017633C:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC002ABF0 # lfs f0, lbl_8053DB90@sda21(r0)
    lwz 5, 0xb4(6)
    addi 0, 4, 0x660d
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC042ABB4 # lfs f2, lbl_8053DB54@sda21(r0)
    mullw 3, 5, 0
    .4byte 0xC062ABEC # lfs f3, lbl_8053DB8C@sda21(r0)
    .4byte 0xC022ABF4 # lfs f1, lbl_8053DB94@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    stfs 0, 0x44(29)
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 0, 0xc(1)
    fsubs 0, 0, 2
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x1048(1)
    lwz 3, 0x104c(1)
    extsh 0, 3
    clrlwi 3, 3, 16
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 4, 0
    add 4, 4, 0
    fmuls 0, 1, 0
    stfs 0, 0x26c(29)
    lfs 0, 0x4(4)
    fmuls 0, 1, 0
    stfs 0, 0x270(29)
    bl ClassifyBamAngleToQuadrant
    stw 3, 0x98(29)
    .4byte 0x480000EC # b .L_801764BC
L_801763D4:
    lfs 1, 0x44(29)
    .4byte 0xC002ABB4 # lfs f0, lbl_8053DB54@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(29)
    .4byte 0x480000D8 # b .L_801764BC
    li 4, 0x0
    li 0, 0x82
    stw 4, 0x24c(29)
    mr 3, 29
    .4byte 0xC002ABB8 # lfs f0, lbl_8053DB58@sda21(r0)
    stw 4, 0x238(29)
    stw 0, 0x248(29)
    stfs 0, 0x274(29)
    stfs 0, 0x270(29)
    stfs 0, 0x26c(29)
    bl Warp_GetLookupTableValue
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    li 5, 0x35c
    li 6, 0x1
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x2
    li 3, 0x0
    stw 0, 0x98(29)
    li 0, 0x8
    stw 3, 0xb0(29)
    stw 0, 0x230(29)
    lwz 3, 0x98(29)
    .4byte 0xC002ABB8 # lfs f0, lbl_8053DB58@sda21(r0)
    addi 0, 3, 0x1c
    stw 0, 0x258(29)
    lfs 1, 0x14(29)
    fcmpo cr0, 1, 0
    .4byte 0x4081002C # ble .L_80176494
    lfs 2, 0x44(29)
    .4byte 0xC022ABB4 # lfs f1, lbl_8053DB54@sda21(r0)
    .4byte 0xC002ABBC # lfs f0, lbl_8053DB5C@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(29)
    lfs 1, 0x44(29)
    fcmpo cr0, 1, 0
    .4byte 0x40800014 # bge .L_8017649C
    stfs 0, 0x44(29)
    .4byte 0x4800000C # b .L_8017649C
L_80176494:
    stfs 0, 0x14(29)
    stfs 0, 0x44(29)
L_8017649C:
    lwz 0, 0x248(29)
    cmpwi 0, 0x0
    .4byte 0x40820018 # bne .L_801764BC
    mr 3, 29
    lwz 12, 0x0(29)
    lwz 12, 0x24(12)
    mtctr 12
    bctrl
L_801764BC:
    lwz 3, 0x238(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801764D0
    subi 0, 3, 0x1
    stw 0, 0x238(29)
L_801764D0:
    lwz 3, 0x23c(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801764E4
    subi 0, 3, 0x1
    stw 0, 0x23c(29)
L_801764E4:
    addi 4, 29, 0x8
    lwz 3, 0x240(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801764FC
    subi 0, 3, 0x1
    stw 0, 0x238(4)
L_801764FC:
    lwz 3, 0x23c(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80176510
    subi 0, 3, 0x1
    stw 0, 0x23c(4)
L_80176510:
    lwz 3, 0x240(4)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80176524
    subi 0, 3, 0x1
    stw 0, 0x240(4)
L_80176524:
    lmw 27, 0x105c(1)
    lwz 0, 0x1074(1)
    mtlr 0
    addi 1, 1, 0x1070
    blr

