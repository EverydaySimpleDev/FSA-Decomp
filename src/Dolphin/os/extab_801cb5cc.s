# fn_801CB5CC(this, pos, dir, flag) - a chained 3-effect hit-reaction
# trigger, sibling of fn_801CB688 (extab_801cb688.s). Fires 3 sequential
# CONFIRMED fn_8013CC50 calls at (pos,dir) with literal IDs 0xff/0x100/
# 0x101, all sharing the same pitch constant lbl_8053EF60 and
# `flag+1`. Called by fn_801F37AC's general hit-reaction path
# (extab_801f37ac.s) when the touch/hit-type combination doesn't match
# the more specific branches.
#
# Attempted real-C++ promotion (Phase 4): call args/mapping fully
# correct (fn_8013CC50(this, pos, id, dir, flag+1, 0, 0, 1, const) x3),
# but same MWCC scheduler-tie-break wall as fn_801BE0F4 in this same
# batch (3 unconditional straight-line calls give the scheduler too
# much freedom to hoist constants differently than retail chose).
# Reverted to raw asm immediately per standing guidance; see
# reference_fsa_mwcc_scheduling_wall_investigation.md and
# project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_80008240
etb_80008240:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008240, 8

.section extabindex, "a"
.balign 4
.global eti_80015484
eti_80015484:
    .4byte fn_801CB5CC
    .4byte 0x000000BC
    .4byte etb_80008240
.size eti_80015484, 12

.text
.balign 4
.global fn_801CB5CC

fn_801CB5CC:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022BFC0 # lfs f1, lbl_8053EF60@sda21(r0)
    li 8, 0x0
    stw 0, 0x24(1)
    li 9, 0x0
    li 10, 0x1
    stw 31, 0x1c(1)
    mr 31, 3
    stw 30, 0x18(1)
    mr 30, 6
    addi 7, 30, 0x1
    stw 29, 0x14(1)
    mr 29, 5
    mr 6, 29
    li 5, 0xff
    stw 28, 0x10(1)
    mr 28, 4
    bl fn_8013CC50
    .4byte 0xC022BFC0 # lfs f1, lbl_8053EF60@sda21(r0)
    mr 3, 31
    mr 4, 28
    mr 6, 29
    addi 7, 30, 0x1
    li 5, 0x100
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    .4byte 0xC022BFC0 # lfs f1, lbl_8053EF60@sda21(r0)
    mr 3, 31
    mr 4, 28
    mr 6, 29
    addi 7, 30, 0x1
    li 5, 0x101
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
