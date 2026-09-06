# fn_8022C274(playerIdx) - validity-gated proxy: looks up
# lbl_8053AC90[playerIdx] (the CONFIRMED 4-player global array,
# project_fsa_player_registry_discovery.md) via the SAME active-flag
# idiom (+0xcac) as the 4-player-scan family, and if active, delegates
# to not-yet-decompiled fn_80245FEC(player); returns false/0 if the
# index is out of range or the slot isn't active. Confirmed caller:
# fn_8025A15C's fire-status handler (extab_8025a15c.s), which uses
# this as the gate for auto-clearing its own "currently
# flinching/reacting" flag (+0xb84) - i.e. this is effectively "is the
# targeted player still in the state that justifies my reaction."
#
# Attempted real-C++ promotion (Phase 4): landed 0x18 bytes SHORT
# (0x84 vs 0x9c) - retail RECOMPUTES the player-array indexing
# (`slwi/add/lwz`) a second time right before the final call, even
# though the value is provably identical to the one just computed for
# the guard 2 instructions earlier (no intervening call/write); MWCC's
# optimizer always eliminates this as a common subexpression regardless
# of how the source re-expresses the second lookup (a second `arr[idx]`
# statement; re-reading the global fresh instead of the cached `mgr`
# local). This is the SAME "per-player capability predicate" idiom shared
# by ~17 sibling entries in this address range (fn_8022CAF8/fn_8022D75C/
# fn_8022DCD8/fn_8022F340/fn_8022F3DC/fn_8022F478/fn_8022F514/
# fn_8022F9E4/fn_80230188/fn_80234004/fn_80236228/fn_80236B50/
# fn_802373EC/fn_80237774/fn_8023A51C/fn_8023B190/fn_8023B6CC, each just
# forwarding to a different callee) - all share this exact CSE-
# elimination wall and were NOT attempted individually since the root
# cause is generic to the shape, not the specific callee. A new wall
# class: "MWCC eliminates a redundant computation retail's own build
# kept" (the opposite of the dead-register-reuse wall #1, which is about
# REGISTER allocation choices, not VALUE reuse/CSE). Deferred after 1
# attempt (root cause confirmed, not source-phrasing-fixable within this
# function alone).
.section extab, "a"
.balign 4
.global etb_8000A918
etb_8000A918:
    .4byte 0x00080000
    .4byte 0x00000000
.size etb_8000A918, 8

.section extabindex, "a"
.balign 4
.global eti_800188B0
eti_800188B0:
    .4byte fn_8022C274
    .4byte 0x0000009C
    .4byte etb_8000A918
.size eti_800188B0, 12

.text
.balign 4
.global fn_8022C274

fn_8022C274:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8022C294
    li 3, 0x0
    .4byte 0x48000070 # b .L_8022C300
L_8022C294:
    .4byte 0x4082000C # bne .L_8022C2A0
    li 0, 0x0
    .4byte 0x48000044 # b .L_8022C2E0
L_8022C2A0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8022C2B0
    li 0, 0x0
    .4byte 0x48000034 # b .L_8022C2E0
L_8022C2B0:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8022C2C0
    li 0, 0x0
    .4byte 0x48000024 # b .L_8022C2E0
L_8022C2C0:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8022C2DC
    li 0, 0x0
    .4byte 0x48000008 # b .L_8022C2E0
L_8022C2DC:
    lbz 0, 0xcac(4)
L_8022C2E0:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8022C2FC
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    bl fn_80245FEC
    .4byte 0x48000008 # b .L_8022C300
L_8022C2FC:
    li 3, 0x0
L_8022C300:
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
