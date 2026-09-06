# fn_802146A4(this) - sibling of fn_802144F0 (extab_802144f0.s):
# triggers a PAIR of cues via the CONFIRMED fn_8013CC50 primitive
# (project_fsa_effect_playback_primitive.md), literal IDs 0x416 and
# 0x417, both positioned at this->0x34's embedded xz position plus
# the same lbl_8053FBA4 offset used by fn_802144F0. The two calls
# differ only in one boolean-ish arg (derived from this->0x34->0x524
# bit21, passed as r31/r31-1) - likely "is this the first or a
# repeat playback" distinguishing the pair.
#
# Attempted real-C++ promotion (Phase 4): matched retail exactly on
# logic (including reproducing the explicit branch-based 0/1 flag
# idiom rather than a bit-extract instruction) but hit a pure
# prologue-scheduling-order mismatch - retail computes `this->0x34`
# using the INCOMING r3 immediately after `mflr`, BEFORE any of the
# r30/r31 register-save instructions, while the equivalent C++
# source variant deferred that load until after the saves. Same class
# of issue as fn_801DAD2C/fn_802EB27C/fn_801C1224/fn_801CC730/
# fn_801CC820/fn_801D7638/fn_801DAE24/fn_802ED140 earlier this
# session. Reverted to raw asm; see
# project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_8000A170
etb_8000A170:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000A170, 8

.section extabindex, "a"
.balign 4
.global eti_80017D70
eti_80017D70:
    .4byte fn_802146A4
    .4byte 0x0000009C
    .4byte etb_8000A170
.size eti_80017D70, 12

.text
.balign 4
.global fn_802146A4

fn_802146A4:
    stwu 1, -0x10(1)
    mflr 0
    lwz 4, 0x34(3)
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    li 31, 0x0
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x524(4)
    rlwinm. 0, 0, 0, 21, 21
    .4byte 0x41820008 # beq .L_802146D4
    li 31, 0x1
L_802146D4:
    lwz 3, 0x4(4)
    addi 4, 4, 0xc
    .4byte 0xC022CC04 # lfs f1, lbl_8053FBA4@sda21(r0)
    subi 7, 31, 0x1
    li 5, 0x416
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x34(30)
    mr 7, 31
    .4byte 0xC022CC04 # lfs f1, lbl_8053FBA4@sda21(r0)
    li 5, 0x417
    addi 4, 3, 0xc
    lwz 3, 0x4(3)
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
