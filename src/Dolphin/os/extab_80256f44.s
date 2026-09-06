.section extab, "a"
.balign 4
.global etb_8000B80C
etb_8000B80C:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_8000B80C, 8

.section extabindex, "a"
.balign 4
.global eti_80019DD4
eti_80019DD4:
    .4byte fn_80256F44
    .4byte 0x00000178
    .4byte etb_8000B80C
.size eti_80019DD4, 12

.text
.balign 4
.global fn_80256F44

# fn_80256F44(player, point, outPos, id) - the leaf predicate called by
# fn_8023AA18 (extab_8023aa18.s), the "early-return on first match"
# member of the confirmed 4-player-scan family. A richer variant of the
# fn_802573E0/fn_802574CC "candidate rect occupancy" pattern
# (extab_802573e0.s): gates on THREE not-yet-decompiled preconditions
# (GetBusyLocked must return false, Player_GetField_0x454 must return false,
# Player_IsTargetable must return true - likely "player alive/active/can-
# interact" style checks), THEN validates player->0x3b4==id and a byte
# flag at player->0xb99, and finally does the SAME clamp-into-rect +
# lerp-interpolate check as the other family members, here using rect
# player->0x5b0-0x5bc (a 5th distinct per-player candidate rect
# offset). On success stores the interpolated point into outPos.
fn_80256F44:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 6
    stw 30, 0x18(1)
    mr 30, 5
    stw 29, 0x14(1)
    mr 29, 4
    stw 28, 0x10(1)
    mr 28, 3
    bl GetBusyLocked
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80256F84
    li 3, 0x0
    .4byte 0x4800011C # b .L_8025709C
L_80256F84:
    mr 3, 28
    bl Player_GetField_0x454
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_80256F9C
    li 3, 0x0
    .4byte 0x48000104 # b .L_8025709C
L_80256F9C:
    mr 3, 28
    bl Player_IsTargetable
    clrlwi. 0, 3, 24
    .4byte 0x4082000C # bne .L_80256FB4
    li 3, 0x0
    .4byte 0x480000EC # b .L_8025709C
L_80256FB4:
    lwz 0, 0x3b4(28)
    cmpw 30, 0
    .4byte 0x4182000C # beq .L_80256FC8
    li 3, 0x0
    .4byte 0x480000D8 # b .L_8025709C
L_80256FC8:
    lbz 0, 0xb99(28)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80256FDC
    li 3, 0x0
    .4byte 0x480000C4 # b .L_8025709C
L_80256FDC:
    lfs 6, 0x5b0(28)
    lfs 4, 0x0(29)
    lfs 5, 0x5b8(28)
    fmr 0, 6
    fcmpo cr0, 6, 4
    lfs 1, 0x5b4(28)
    fmr 2, 5
    lfs 3, 0x5bc(28)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80257008
    fmr 0, 4
L_80257008:
    lfs 4, 0x4(29)
    fcmpo cr0, 1, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8025701C
    fmr 1, 4
L_8025701C:
    lfs 4, 0x8(29)
    fcmpo cr0, 2, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257030
    fmr 2, 4
L_80257030:
    lfs 4, 0xc(29)
    fcmpo cr0, 3, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257044
    fmr 3, 4
L_80257044:
    fcmpo cr0, 2, 0
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_80257064
    fcmpo cr0, 3, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257064
    li 0, 0x1
L_80257064:
    clrlwi. 0, 0, 24
    .4byte 0x41820030 # beq .L_80257098
    fsubs 0, 6, 5
    .4byte 0xC022D120 # lfs f1, lbl_805400C0@sda21(r0)
    li 3, 0x1
    fmadds 0, 1, 0, 5
    stfs 0, 0x0(31)
    lfs 2, 0x5bc(28)
    lfs 0, 0x5b4(28)
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 2
    stfs 0, 0x4(31)
    .4byte 0x48000008 # b .L_8025709C
L_80257098:
    li 3, 0x0
L_8025709C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
