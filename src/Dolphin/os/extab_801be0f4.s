# fn_801BE0F4(this) - BMST's OWN override of vtable slot 0x24 (the
# "onRecoverFromHit" hook fired by the shared knockback/hitstun
# function fn_801F3D94 on hitstun expiry - see
# project_fsa_stal_wizr_full_depth.md). Every other lbl_804A4808-
# lineage actor landed this session (ROPE/ZORA/FALL) inherits the
# GENERIC version of this hook (fn_801F4F28) unmodified - BMST is the
# FIRST confirmed override.
#
# Fires the CONFIRMED sound/effect "create" primitive (fn_8013CC50,
# see project_fsa_effect_playback_primitive.md) THREE TIMES in a row
# at this segment's position (this+0xc) with sequential effect codes
# 0x70/0x71/0x72, then calls the inherited generic hook (fn_801F4F28)
# at the end. Reads as a "shed/break apart" visual burst when a body
# segment gets hit and recovers - a genuinely new, actor-specific
# hit-reaction behavior fitting a destructible Moldorm segment.
#
# Attempted real-C++ promotion (Phase 4): the call arguments/param
# mapping to fn_8013CC50 are fully correct (confirmed - this EXACT
# argument-order signature is already used successfully in
# Yasi_TerrainImpactResponse_802DF508.cpp), but this is 3 UNCONDITIONAL
# straight-line calls with no intervening branches, giving MWCC's list
# scheduler a wide window to hoist independent constant loads (li/lfs)
# ahead of the register-save prologue in a way that doesn't match
# retail's specific choice - the classic MWCC scheduler tie-break wall
# (see reference_fsa_mwcc_scheduling_wall_investigation.md: DEFINITIVE,
# no fix found after an 8-lever exhaustive test). Reverted to raw asm
# immediately per that standing guidance (no further attempts).
.section extab, "a"
.balign 4
.global etb_80007EB4
etb_80007EB4:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007EB4, 8

.section extabindex, "a"
.balign 4
.global eti_80014F8C
eti_80014F8C:
    .4byte fn_801BE0F4
    .4byte 0x000000A8
    .4byte etb_80007EB4
.size eti_80014F8C, 12

.text
.balign 4
.global fn_801BE0F4

fn_801BE0F4:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC022BD00 # lfs f1, lbl_8053ECA0@sda21(r0)
    li 5, 0x70
    stw 0, 0x14(1)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    stw 31, 0xc(1)
    mr 31, 3
    addi 4, 31, 0xc
    li 9, 0x0
    lwz 3, 0x4(3)
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022BD00 # lfs f1, lbl_8053ECA0@sda21(r0)
    li 5, 0x71
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022BD00 # lfs f1, lbl_8053ECA0@sda21(r0)
    li 5, 0x72
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    mr 3, 31
    bl fn_801F4F28
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

