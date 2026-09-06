# Fused dtk split unit (0x802573E0-0x802577E0, no extab/extabindex) - 4
# functions dtk cannot cherry-pick individually. All 4 are per-player
# "candidate rect occupancy" checks, the leaf predicates called by the
# 4-player-scan family (fn_8023AE34/AA18/AC74/AD54, extab_8023ae34.s
# etc.) via fn_8023AA18/AC74/AD54's calls (fn_802573E0 itself has no
# confirmed caller found yet, but is structurally identical). Each
# validates a per-player "candidate" slot, clamps `point` into a stored
# rectangle, and on containment computes an interpolated point (lerp
# factor lbl_805400C0) into outPos, returning true.
#
# fn_802573E0(player, point, id) - single-slot form: validates
# player->0xb38>=0 AND player->0xb6c==id, tests point against rect
# player->0x590-0x59c.
#
# fn_802574CC(player, point, id) - identical single-slot form using
# player->0xb18 (validity)/0xb58 (id match) and rect player->0x540-0x54c.
# Confirmed caller: fn_8023AC74 (extab_8023ac74.s).
#
# fn_802575B8(player, point, outPos, id) - 3-SLOT array form: loops
# i=0..2 over parallel arrays player->0xb0c[i] (validity) and
# player->0xb4c[i] (id), each slot paired with its own rect at
# player->0x510+i*0x10. On the first matching+containing slot, records
# the winning index into player->0xb80 and returns true; if no slot
# matches, sets player->0xb80=-1. Confirmed cross-reference: the
# already-landed fn_8023B358 (extab_8023b22c.s) later reads
# player->0xb80 as an index into player->0xb0c[] to retrieve "the
# candidate's ID" - i.e. 0xb0c[] doubles as both a validity flag
# (>=0 check here) and the stored ID value itself.
#
# fn_802576CC(player, point, outPos, id) - the SAME 3-slot-array form
# using player->0xb00[]/0xb40[]/rect@0x4e0+i*0x10, recording into
# player->0xb7c. Confirmed caller: fn_8023AE34 (extab_8023ae34.s).
# Cross-references fn_8023B2B0's read of player->0xb7c into 0xb00[].
.text
.balign 4
.global fn_802573E0
.global fn_802574CC
.global fn_802575B8
.global fn_802576CC

fn_802573E0:
    lwz 0, 0xb38(3)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802573F4
    li 3, 0x0
    blr
L_802573F4:
    lwz 0, 0xb6c(3)
    cmpw 0, 5
    .4byte 0x4182000C # beq .L_80257408
    li 3, 0x0
    blr
L_80257408:
    lfs 6, 0x590(3)
    lfs 4, 0x0(4)
    lfs 5, 0x598(3)
    fmr 0, 6
    fcmpo cr0, 6, 4
    lfs 1, 0x594(3)
    fmr 2, 5
    lfs 3, 0x59c(3)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80257434
    fmr 0, 4
L_80257434:
    lfs 4, 0x4(4)
    fcmpo cr0, 1, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80257448
    fmr 1, 4
L_80257448:
    lfs 4, 0x8(4)
    fcmpo cr0, 2, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8025745C
    fmr 2, 4
L_8025745C:
    lfs 4, 0xc(4)
    fcmpo cr0, 3, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257470
    fmr 3, 4
L_80257470:
    fcmpo cr0, 2, 0
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_80257490
    fcmpo cr0, 3, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257490
    li 0, 0x1
L_80257490:
    clrlwi. 0, 0, 24
    .4byte 0x41820030 # beq .L_802574C4
    fsubs 0, 6, 5
    .4byte 0xC022D120 # lfs f1, lbl_805400C0@sda21(r0)
    fmadds 0, 1, 0, 5
    stfs 0, 0x0(6)
    lfs 2, 0x59c(3)
    lfs 0, 0x594(3)
    li 3, 0x1
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 2
    stfs 0, 0x4(6)
    blr
L_802574C4:
    li 3, 0x0
    blr

fn_802574CC:
    lwz 0, 0xb18(3)
    cmpwi 0, 0x0
    .4byte 0x4080000C # bge .L_802574E0
    li 3, 0x0
    blr
L_802574E0:
    lwz 0, 0xb58(3)
    cmpw 0, 5
    .4byte 0x4182000C # beq .L_802574F4
    li 3, 0x0
    blr
L_802574F4:
    lfs 6, 0x540(3)
    lfs 4, 0x0(4)
    lfs 5, 0x548(3)
    fmr 0, 6
    fcmpo cr0, 6, 4
    lfs 1, 0x544(3)
    fmr 2, 5
    lfs 3, 0x54c(3)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80257520
    fmr 0, 4
L_80257520:
    lfs 4, 0x4(4)
    fcmpo cr0, 1, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80257534
    fmr 1, 4
L_80257534:
    lfs 4, 0x8(4)
    fcmpo cr0, 2, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257548
    fmr 2, 4
L_80257548:
    lfs 4, 0xc(4)
    fcmpo cr0, 3, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8025755C
    fmr 3, 4
L_8025755C:
    fcmpo cr0, 2, 0
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_8025757C
    fcmpo cr0, 3, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_8025757C
    li 0, 0x1
L_8025757C:
    clrlwi. 0, 0, 24
    .4byte 0x41820030 # beq .L_802575B0
    fsubs 0, 6, 5
    .4byte 0xC022D120 # lfs f1, lbl_805400C0@sda21(r0)
    fmadds 0, 1, 0, 5
    stfs 0, 0x0(6)
    lfs 2, 0x54c(3)
    lfs 0, 0x544(3)
    li 3, 0x1
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 2
    stfs 0, 0x4(6)
    blr
L_802575B0:
    li 3, 0x0
    blr

fn_802575B8:
    mr 9, 3
    li 0, 0x3
    li 8, 0x0
    mr 7, 9
    mtctr 0
L_802575CC:
    lwz 0, 0xb0c(3)
    cmpwi 0, 0x0
    .4byte 0x418000D8 # blt .L_802576AC
    lwz 0, 0xb4c(3)
    cmpw 0, 5
    .4byte 0x408200CC # bne .L_802576AC
    lfs 0, 0x510(7)
    lfs 4, 0x0(4)
    lfs 1, 0x514(7)
    fcmpo cr0, 0, 4
    lfs 2, 0x518(7)
    lfs 3, 0x51c(7)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80257608
    fmr 0, 4
L_80257608:
    lfs 4, 0x4(4)
    fcmpo cr0, 1, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8025761C
    fmr 1, 4
L_8025761C:
    lfs 4, 0x8(4)
    fcmpo cr0, 2, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257630
    fmr 2, 4
L_80257630:
    lfs 4, 0xc(4)
    fcmpo cr0, 3, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257644
    fmr 3, 4
L_80257644:
    fcmpo cr0, 2, 0
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_80257664
    fcmpo cr0, 3, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257664
    li 0, 0x1
L_80257664:
    clrlwi. 0, 0, 24
    .4byte 0x41820044 # beq .L_802576AC
    slwi 0, 8, 4
    .4byte 0xC022D120 # lfs f1, lbl_805400C0@sda21(r0)
    add 4, 9, 0
    li 3, 0x1
    lfs 2, 0x518(4)
    lfs 0, 0x510(4)
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 2
    stfs 0, 0x0(6)
    lfs 2, 0x51c(4)
    lfs 0, 0x514(4)
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 2
    stfs 0, 0x4(6)
    stw 8, 0xb80(9)
    blr
L_802576AC:
    addi 3, 3, 0x4
    addi 7, 7, 0x10
    addi 8, 8, 0x1
    .4byte 0x4200FF14 # bdnz .L_802575CC
    li 0, -0x1
    li 3, 0x0
    stw 0, 0xb80(9)
    blr

fn_802576CC:
    mr 9, 3
    li 0, 0x3
    li 8, 0x0
    mr 7, 9
    mtctr 0
L_802576E0:
    lwz 0, 0xb00(3)
    cmpwi 0, 0x0
    .4byte 0x418000D8 # blt .L_802577C0
    lwz 0, 0xb40(3)
    cmpw 0, 5
    .4byte 0x408200CC # bne .L_802577C0
    lfs 0, 0x4e0(7)
    lfs 4, 0x0(4)
    lfs 1, 0x4e4(7)
    fcmpo cr0, 0, 4
    lfs 2, 0x4e8(7)
    lfs 3, 0x4ec(7)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_8025771C
    fmr 0, 4
L_8025771C:
    lfs 4, 0x4(4)
    fcmpo cr0, 1, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80257730
    fmr 1, 4
L_80257730:
    lfs 4, 0x8(4)
    fcmpo cr0, 2, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257744
    fmr 2, 4
L_80257744:
    lfs 4, 0xc(4)
    fcmpo cr0, 3, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257758
    fmr 3, 4
L_80257758:
    fcmpo cr0, 2, 0
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_80257778
    fcmpo cr0, 3, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80257778
    li 0, 0x1
L_80257778:
    clrlwi. 0, 0, 24
    .4byte 0x41820044 # beq .L_802577C0
    slwi 0, 8, 4
    .4byte 0xC022D120 # lfs f1, lbl_805400C0@sda21(r0)
    add 4, 9, 0
    li 3, 0x1
    lfs 2, 0x4e8(4)
    lfs 0, 0x4e0(4)
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 2
    stfs 0, 0x0(6)
    lfs 2, 0x4ec(4)
    lfs 0, 0x4e4(4)
    fsubs 0, 0, 2
    fmadds 0, 1, 0, 2
    stfs 0, 0x4(6)
    stw 8, 0xb7c(9)
    blr
L_802577C0:
    addi 3, 3, 0x4
    addi 7, 7, 0x10
    addi 8, 8, 0x1
    .4byte 0x4200FF14 # bdnz .L_802576E0
    li 0, -0x1
    li 3, 0x0
    stw 0, 0xb7c(9)
    blr
