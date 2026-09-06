# fn_800F5248: another method of the OIWA (falling-boulder) scheduler class
# (see project_fsa_extab_bug_resolved.md and project_fsa_shared_effect_subsystem_crossref.md)
# - back to referencing this->0x230 (phase)/0x23c/0x244/0x248/0x11c, same as
# fn_800F3E08/fn_800F4724. Dispatches on phase (0,1,3,5 seen here) into
# per-phase blocks that decay a float field (this->0x44, subtracting a
# table-driven constant each call - consistent with a "time remaining"
# countdown), accumulate paired-single position (this->0xc/0x3c and
# this->0x14/0x44 via ps_add, same pattern as fn_800F4C70's fallthrough
# path), and once a threshold (this->0x14 <= lbl_8053BE94, a comparison seen
# repeatedly across this whole cluster) is crossed, CONFIRMED (real IDs,
# not guessed) plays TWO sounds via the documented fn_8013CC50 primitive
# (see project_fsa_effect_playback_primitive.md) with IDs 0x76/0x77 (phases
# 0/1/3) or 0x497/0x498 (phase 5) and fires a settings-gated notification
# via fn_801F0E34 (also documented there) with magicConstant 0x30075 or
# 0x3005a - CONFIRMS (matching fn_800F4724's own observation) that this
# class calls fn_801F0E34 with `this` directly as the first arg, not
# `this+0xc` like GNON's call sites - a real, now twice-observed pattern
# difference worth reconciling if fn_801F0E34's documented signature is
# revisited. Phase 1 additionally calls GetRoomConfigRecord (confirmed shared
# settings accessor) then fn_802D79E8 (not yet explored). Ends by clearing
# this->0x11c (a flag also touched by fn_800F4724's phase 2) - consistent
# with this being reached only once the boulder's flight/decay is complete
# (an "impact"/"landing" handler), though not fully confirmed. Calls two
# sibling phase-handlers not yet landed: fn_800F5E08 (phase 0) and
# fn_800F555C (phase 3, immediately following this function in memory).
# Uses paired-single instructions - needs -mgekko in cflags.
.section extab, "a"
.balign 4
.global etb_800056F0
etb_800056F0:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_800056F0, 8

.section extabindex, "a"
.balign 4
.global eti_80011998
eti_80011998:
    .4byte fn_800F5248
    .4byte 0x00000314
    .4byte etb_800056F0
.size eti_80011998, 12

.text
.balign 4
.global fn_800F5248

fn_800F5248:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stfd 31, 0x10(1)
    psq_st 31, 0x18(1), 0, 0
    stw 31, 0xc(1)
    mr 31, 3
    lbz 0, 0x230(3)
    cmpwi 0, 0x3
    .4byte 0x418201F8 # beq .L_800F5464
    .4byte 0x4080001C # bge .L_800F528C
    cmpwi 0, 0x1
    .4byte 0x4182002C # beq .L_800F52A4
    .4byte 0x4080013C # bge .L_800F53B8
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_800F5298
    .4byte 0x480002B8 # b .L_800F5540
L_800F528C:
    cmpwi 0, 0x5
    .4byte 0x418201DC # beq .L_800F546C
    .4byte 0x408002AC # bge .L_800F5540
L_800F5298:
    mr 3, 31
    bl fn_800F5E08
    .4byte 0x480002A0 # b .L_800F5540
L_800F52A4:
    lfs 0, 0x3c(31)
    .4byte 0xC0228EF4 # lfs f1, lbl_8053BE94@sda21(r0)
    fcmpu cr0, 0, 1
    .4byte 0x4082001C # bne .L_800F52CC
    lfs 0, 0x40(31)
    fcmpu cr0, 0, 1
    .4byte 0x40820010 # bne .L_800F52CC
    lfs 0, 0x44(31)
    fcmpu cr0, 0, 1
    .4byte 0x4182002C # beq .L_800F52F4
L_800F52CC:
    mr 3, 31
    li 4, 0x2
    li 5, -0x1
    li 6, 0x6
    bl fn_801F2B7C
    lfs 1, 0x44(31)
    .4byte 0xC0028F20 # lfs f0, lbl_8053BEC0@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x44(31)
    .4byte 0x4800000C # b .L_800F52FC
L_800F52F4:
    li 0, 0x0
    stw 0, 0x23c(31)
L_800F52FC:
    psq_l 2, 0xc(31), 0, 0
    psq_l 1, 0x3c(31), 0, 0
    .4byte 0xC0028EF4 # lfs f0, lbl_8053BE94@sda21(r0)
    ps_add 1, 2, 1
    psq_st 1, 0xc(31), 0, 0
    psq_l 2, 0x14(31), 1, 0
    psq_l 1, 0x44(31), 1, 0
    ps_add 1, 2, 1
    psq_st 1, 0x14(31), 1, 0
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820214 # bne .L_800F5540
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x75
    li 5, 0x0
    bl fn_801F0E34
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0228F1C # lfs f1, lbl_8053BEBC@sda21(r0)
    li 5, 0x76
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0228F1C # lfs f1, lbl_8053BEBC@sda21(r0)
    li 5, 0x77
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    bl GetRoomConfigRecord
    lwz 4, 0x4(31)
    li 5, 0x0
    .4byte 0xC0228F28 # lfs f1, lbl_8053BEC8@sda21(r0)
    .4byte 0xC0428EF4 # lfs f2, lbl_8053BE94@sda21(r0)
    bl fn_802D79E8
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800018C # b .L_800F5540
L_800F53B8:
    li 4, 0x1
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    lfs 2, 0x44(31)
    addi 4, 31, 0xc
    .4byte 0xC0228F20 # lfs f1, lbl_8053BEC0@sda21(r0)
    .4byte 0xC0028EF4 # lfs f0, lbl_8053BE94@sda21(r0)
    fsubs 2, 2, 1
    stfs 2, 0x44(31)
    psq_l 3, 0x0(4), 0, 0
    psq_l 2, 0x3c(31), 0, 0
    ps_add 2, 3, 2
    psq_st 2, 0x0(4), 0, 0
    psq_l 3, 0x8(4), 1, 0
    psq_l 2, 0x44(31), 1, 0
    ps_add 2, 3, 2
    psq_st 2, 0x8(4), 1, 0
    lfs 2, 0x14(31)
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820134 # bne .L_800F5540
    lwz 3, 0x4(31)
    li 5, 0x76
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0228F20 # lfs f1, lbl_8053BEC0@sda21(r0)
    li 5, 0x77
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480000E0 # b .L_800F5540
L_800F5464:
    bl fn_800F555C
    .4byte 0x480000D8 # b .L_800F5540
L_800F546C:
    lfs 2, 0x44(31)
    .4byte 0xC0228F2C # lfs f1, lbl_8053BECC@sda21(r0)
    .4byte 0xC0028EF4 # lfs f0, lbl_8053BE94@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x44(31)
    lwz 3, 0x244(31)
    lwz 0, 0x248(31)
    add 0, 3, 0
    stw 0, 0x244(31)
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
    .4byte 0x40820084 # bne .L_800F5540
    lwz 0, 0x240(31)
    .4byte 0xC3E28EEC # lfs f31, lbl_8053BE8C@sda21(r0)
    cmpwi 0, 0x1
    .4byte 0x40810008 # ble .L_800F54D4
    .4byte 0xC3E28F30 # lfs f31, lbl_8053BED0@sda21(r0)
L_800F54D4:
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x5a
    li 5, 0x0
    bl fn_801F0E34
    fmr 1, 31
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    li 5, 0x497
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    fmr 1, 31
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    li 5, 0x498
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    li 0, 0x0
    stb 0, 0x11c(31)
L_800F5540:
    psq_l 31, 0x18(1), 0, 0
    lwz 0, 0x24(1)
    lfd 31, 0x10(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

