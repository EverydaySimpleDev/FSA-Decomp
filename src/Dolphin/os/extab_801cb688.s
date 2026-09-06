# fn_801CB688(this, pos, dir, flag) - sibling of fn_801CB5CC
# (extab_801cb5cc.s): the same chained-effect hit-reaction trigger, but
# firing only 2 fn_8013CC50 calls (literal IDs 0x24a/0x24b) instead of
# 3. Called by fn_801F37AC's hit-reaction path (extab_801f37ac.s) for a
# different touch/hit-type combination than fn_801CB5CC.
#
# Attempted real-C++ promotion (Phase 4): same MWCC scheduler-tie-break
# wall as fn_801BE0F4/fn_801CB5CC in this same batch. Reverted to raw
# asm immediately per standing guidance; see
# reference_fsa_mwcc_scheduling_wall_investigation.md and
# project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_80008248
etb_80008248:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008248, 8

.section extabindex, "a"
.balign 4
.global eti_80015490
eti_80015490:
    .4byte fn_801CB688
    .4byte 0x00000094
    .4byte etb_80008248
.size eti_80015490, 12

.text
.balign 4
.global fn_801CB688

fn_801CB688:
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
    li 5, 0x24a
    stw 28, 0x10(1)
    mr 28, 4
    bl fn_8013CC50
    .4byte 0xC022BFC0 # lfs f1, lbl_8053EF60@sda21(r0)
    mr 3, 31
    mr 4, 28
    mr 6, 29
    addi 7, 30, 0x1
    li 5, 0x24b
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
