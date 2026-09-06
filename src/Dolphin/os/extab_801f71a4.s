.text
.balign 4
.global fn_801F71A4
.global fn_801F71E8

# fn_801F71A4(floatPtr, target, rate, maxStep) - CONFIRMED (already
# referenced as "the CONFIRMED fn_801F71A4" position-jitter/ease
# utility from several already-landed callers, e.g. extab_8013fd50.s,
# extab_8014462c.s, extab_8014dd14.s - this lands its actual body for
# the first time): the general-purpose float "damped approach" used
# throughout the project. No-ops if `*floatPtr == target`. Otherwise
# computes `delta = (target - *floatPtr) * rate`, clamps `delta` to
# `+/-maxStep`, and adds it to `*floatPtr`. This is the single most
# widely-reused per-frame interpolation primitive found so far -
# powers homing turns, position jitter, and smooth value chases across
# dozens of already-landed actors. Kept as raw asm: multiple distinct
# float values alive concurrently, a confirmed-hard category. Split
# from fn_801F714C, which was promoted to Game/stub_801f714c.cpp.
fn_801F71A4:
    lfs 0, 0x0(3)
    fcmpu cr0, 0, 1
    beqlr
    fsubs 0, 1, 0
    fmuls 1, 2, 0
    fcmpo cr0, 1, 3
    .4byte 0x4081000C # ble .L_801F71C8
    fmr 1, 3
    .4byte 0x48000014 # b .L_801F71D8
L_801F71C8:
    fneg 0, 3
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801F71D8
    fmr 1, 0
L_801F71D8:
    lfs 0, 0x0(3)
    fadds 0, 0, 1
    stfs 0, 0x0(3)
    blr

# fn_801F71E8(actorManager, railID, outArray, outCountPtr, maxCount) -
# a "RAIL" waypoint collector: `actorManager->0x1008` is the pool's
# slot count and `actorManager->0x8` is the start of its 1024-entry
# actor-pointer array (the SAME actor-pool convention as the confirmed
# per-frame update/draw loop, see project_fsa_actor_loop_found.md,
# here accessed by incrementally re-deriving each slot's address as
# `actorManager + 8 + 4*i` rather than via an indexed load). For each
# active slot (pointer non-null, `slot->0x11c` nonzero) whose actor
# type code at `+0x1a0` is the 4-char constant
# "RAIL" (`0x5241494C`, confirmed via the classic hi/lo-immediate
# 32-bit-constant-compare idiom) AND whose sub-field at `+0x90`
# (extracted byte, bits 8-15 - presumably a "which rail/track group"
# ID) matches the caller's `railID`, appends that actor's pointer to
# `outArray` and increments `*outCountPtr`. Returns 0 early once
# `*outCountPtr` reaches `maxCount` (found everything requested);
# returns 1 if the whole pool was scanned without reaching it. This is
# the actor-family lead this cluster was landed for: an unrelated
# "RAIL" actor type exists as waypoint/track markers, and at least one
# other actor family (the fn_8018299C/8018359C/801840E0 movement-
# update classes, see their own file) queries this to build its path.
# Kept as raw asm: real loop + indexed access.
#
# NOTE: attempted real-C++ promotion (this session). A natural `for`
# loop with the slot count cached in a local (feeding the mtctr-based
# loop, matching retail's own bdnz structure) reproduced retail's exact
# CONTROL FLOW - same branch layout, same early-continue-per-condition
# shape, same `stwx`-based array append (this array-write context is
# NOT a `lwzx`-wall casualty, unlike other candidates this session) -
# but register allocation differs almost everywhere (e.g. retail caches
# the slot count in r0, mine in r8; similar mismatches cascade through
# the rest of the function), so bytes don't match despite the shape
# being right. Removing the cached-count local (reading the bound
# fresh each loop iteration instead) backfired further - MWCC abandons
# the ctr/bdnz loop form entirely for a `cmpw`-at-the-bottom `b`-loop
# instead. Left as raw asm - the control-flow shape is solved; only
# register allocation remains, likely needing several more targeted
# declaration-order attempts.
fn_801F71E8:
    lwz 0, 0x1008(3)
    li 8, 0x0
    stw 8, 0x0(6)
    mtctr 0
    cmpwi 0, 0x0
    .4byte 0x40810070 # ble .L_801F726C
L_801F7200:
    lwz 9, 0x8(3)
    cmplwi 9, 0x0
    .4byte 0x4182005C # beq .L_801F7264
    lbz 0, 0x11c(9)
    cmplwi 0, 0x0
    .4byte 0x41820050 # beq .L_801F7264
    lwz 8, 0x1a0(9)
    subis 0, 8, 0x5241
    cmplwi 0, 0x494c
    .4byte 0x40820040 # bne .L_801F7264
    lwz 0, 0x90(9)
    extrwi 0, 0, 8, 16
    cmplw 4, 0
    .4byte 0x40820030 # bne .L_801F7264
    lwz 0, 0x0(6)
    slwi 0, 0, 2
    stwx 9, 5, 0
    lwz 8, 0x0(6)
    addi 0, 8, 0x1
    stw 0, 0x0(6)
    lwz 0, 0x0(6)
    cmpw 0, 7
    .4byte 0x4082000C # bne .L_801F7264
    li 3, 0x0
    blr
L_801F7264:
    addi 3, 3, 0x4
    .4byte 0x4200FF98 # bdnz .L_801F7200
L_801F726C:
    li 3, 0x1
    blr
