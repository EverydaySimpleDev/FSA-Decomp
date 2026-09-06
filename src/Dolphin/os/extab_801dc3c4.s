.section extab, "a"
.balign 4
.global etb_80008870
etb_80008870:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80008870, 8

.section extabindex, "a"
.balign 4
.global eti_80015CDC
eti_80015CDC:
    .4byte fn_801DC3C4
    .4byte 0x000002F0
    .4byte etb_80008870
.size eti_80015CDC, 12

# fn_801DC3C4(this) - this new class's per-frame "launch nearby players"
# update, sharing the same bounding-box-divergence gate as fn_801DC364
# (this->0x68-0x60 AND this->0x6c-0x64 both > threshold). If the box hasn't
# diverged enough, skips straight to the tail (no-op, returns the "did
# anything" flag which stays 0).
#
# If diverged, loops over the 4 player slots (0-3):
#   - fn_801F285C(this, 0, &localBuf, slot, 1) -> filters to just the ONE
#     player slot that actually matches (a "dedup to my own slot" idiom
#     seen elsewhere this session) - skip this slot if it doesn't match.
#   - fn_8023B6CC(slot) + fn_8023E724(slot) feed into
#     fn_801F37AC(this, 0, ..., slot, 0) -> a boolean gate (none of these 3
#     helpers explored yet) - skip this slot if false.
#   - On pass: sets the "did anything" flag, increments this->0x2a8 (a byte
#     counter), and looks up a byte via GetRoomConfigRecord(this->0x4) (a callee
#     already flagged as part of the shared effect/particle subsystem, see
#     project_fsa_shared_effect_subsystem_crossref) into a small table -
#     the looked-up byte selects between 2 near-identical randomized-launch
#     variants below.
#   - Resolves a target via the CONFIRMED registry chain: SpatialRegistry_GetBase()
#     (registry) + fn_801F8544(registry, this->0x4, this+0xc, 2) (the
#     "RUPY-homing velocity kick" utility, matches fn_801D63D0 earlier this
#     session) -> targetID, then SpatialRegistry_GetBase()+fn_801F666C(registry,
#     targetID) -> the resolved target object pointer. Skip this slot if
#     either resolution fails.
#   - Computes a randomized velocity (using the CONFIRMED global PRNG
#     lbl_8053AAF8->0xb4 + the usual 0x4330 int-to-double bias trick,
#     twice per axis) and WRITES it into the RESOLVED TARGET's own
#     this->0x3c/0x40/0x44 fields (velocity) and 0x14 - the exact same
#     "launch/knockback a target, not self" convention already confirmed
#     for fn_801D70BC/fn_801D72C0 earlier this session. The 2 variants
#     (branching on the GetRoomConfigRecord-looked-up byte) differ only in which
#     PRNG-driven constant blend is used, not in the overall shape.
#
# After the loop, if anything was launched this frame: resets this->0xf8=0
# and this->0x3c/0x40/0x44/0x14=0 (stops SELF's own velocity), calls
# fn_801D22DC(this+0x270, 1, 0, 0) - a real method on the CONFIRMED shared
# "timed-cue lookup table" component, embedded here at the same +0x270
# offset used by many other classes this session - then fn_801F0E34(this,
# 0x400054, 0) (the confirmed handle-notification dispatcher) and finally
# fn_801DAC6C()+fn_801DADD0(singleton) (the CONFIRMED record-notify family
# from earlier this session - this launch event notifies the global
# singleton too).
.text
.balign 4
.global fn_801DC3C4

fn_801DC3C4:
    stwu 1, -0x50(1)
    mflr 0
    .4byte 0xC042C3A4 # lfs f2, lbl_8053F344@sda21(r0)
    stw 0, 0x54(1)
    stmw 27, 0x3c(1)
    mr 29, 3
    li 31, 0x0
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408102AC # ble .L_801DC69C
    lfs 1, 0x6c(29)
    lfs 0, 0x64(29)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810298 # ble .L_801DC69C
    li 30, 0x0
L_801DC40C:
    mr 3, 29
    mr 7, 30
    addi 5, 1, 0x1c
    li 4, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpw 30, 3
    .4byte 0x40820214 # bne .L_801DC63C
    mr 3, 30
    bl fn_8023B6CC
    mr 3, 30
    bl fn_8023E724
    lwz 7, 0x1c(1)
    mr 5, 3
    mr 3, 29
    mr 8, 30
    li 4, 0x0
    li 6, 0x0
    bl fn_801F37AC
    clrlwi. 0, 3, 24
    .4byte 0x418201E0 # beq .L_801DC63C
    lbz 3, 0x2a8(29)
    li 31, 0x1
    addi 0, 3, 0x1
    stb 0, 0x2a8(29)
    lwz 28, 0x4(29)
    bl GetRoomConfigRecord
    addis 4, 28, 0x1
    lis 28, 0x5255
    addi 4, 4, 0x31df
    lbzx 27, 3, 4
    bl SpatialRegistry_GetBase
    lwz 5, 0x4(29)
    addi 4, 28, 0x5059
    addi 6, 29, 0xc
    li 7, 0x2
    bl fn_801F8544
    mr. 28, 3
    .4byte 0x41800198 # blt .L_801DC63C
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820184 # beq .L_801DC63C
    cmplwi 27, 0x0
    .4byte 0x418200A8 # beq .L_801DC568
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    .4byte 0xC002C3A4 # lfs f0, lbl_8053F344@sda21(r0)
    addi 6, 4, 0x660d
    lwz 0, 0xb4(5)
    .4byte 0xC082C3A0 # lfs f4, lbl_8053F340@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC042C3AC # lfs f2, lbl_8053F34C@sda21(r0)
    .4byte 0xC062C3A8 # lfs f3, lbl_8053F348@sda21(r0)
    .4byte 0xC022C3B0 # lfs f1, lbl_8053F350@sda21(r0)
    stfs 0, 0x28(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 5, 4, 9
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x18(1)
    lfs 5, 0x18(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 5, 5, 4
    stw 0, 0xb4(7)
    lwz 0, 0xb4(7)
    fnmsubs 1, 2, 5, 1
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stfs 1, 0x24(1)
    stw 0, 0x14(1)
    lfs 1, 0x14(1)
    fsubs 1, 1, 4
    fmsubs 1, 2, 1, 4
    fmuls 1, 3, 1
    stfs 1, 0x20(1)
    psq_l 1, 0x20(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    .4byte 0x480000D8 # b .L_801DC63C
L_801DC568:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 4, 0x19
    addi 6, 4, 0x660d
    .4byte 0xC0A2C3A0 # lfs f5, lbl_8053F340@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC062C3AC # lfs f3, lbl_8053F34C@sda21(r0)
    mullw 4, 0, 6
    .4byte 0xC082C3B4 # lfs f4, lbl_8053F354@sda21(r0)
    .4byte 0xC002C3B8 # lfs f0, lbl_8053F358@sda21(r0)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    .4byte 0x80ED8F38 # lwz r7, lbl_8053AAF8@sda21(r0)
    lwz 4, 0xb4(5)
    lwz 0, 0xb4(7)
    srwi 5, 4, 9
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0x10(1)
    lfs 1, 0x10(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 5
    stw 0, 0xb4(7)
    .4byte 0x810D8F38 # lwz r8, lbl_8053AAF8@sda21(r0)
    fmadds 0, 0, 1, 0
    lwz 4, 0xb4(7)
    lwz 0, 0xb4(8)
    srwi 5, 4, 9
    stfs 0, 0x34(1)
    mullw 4, 0, 6
    oris 0, 5, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    fsubs 1, 1, 5
    stw 0, 0xb4(8)
    lwz 0, 0xb4(8)
    fmsubs 1, 3, 1, 5
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    fmuls 1, 4, 1
    stw 0, 0x8(1)
    lfs 2, 0x8(1)
    stfs 1, 0x30(1)
    fsubs 1, 2, 5
    fmsubs 1, 3, 1, 5
    fmuls 1, 4, 1
    stfs 1, 0x2c(1)
    psq_l 1, 0x2c(1), 0, 0
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
L_801DC63C:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FDC8 # blt .L_801DC40C
    clrlwi. 0, 31, 24
    .4byte 0x41820050 # beq .L_801DC69C
    li 0, 0x0
    .4byte 0xC002C3A4 # lfs f0, lbl_8053F344@sda21(r0)
    stw 0, 0xf8(29)
    addi 3, 29, 0x270
    li 4, 0x1
    li 5, 0x0
    stfs 0, 0x3c(29)
    li 6, 0x0
    stfs 0, 0x40(29)
    stfs 0, 0x44(29)
    stfs 0, 0x14(29)
    bl fn_801D22DC
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0x54
    li 5, 0x0
    bl fn_801F0E34
    bl fn_801DAC6C
    bl fn_801DADD0
L_801DC69C:
    mr 3, 31
    lmw 27, 0x3c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

