.section extab, "a"
.balign 4
.global etb_80008128
etb_80008128:
    .4byte 0x200A0000
    .4byte 0x00000000
.size etb_80008128, 8

.section extabindex, "a"
.balign 4
.global eti_800152E0
eti_800152E0:
    .4byte fn_801C5EBC
    .4byte 0x000003A4
    .4byte etb_80008128
.size eti_800152E0, 12

.text
.balign 4
.global fn_801C5EBC

# fn_801C5EBC(this, roomID, mode) - the "steer while traveling toward
# my RAIL waypoint" continuation `fn_801C5B08` (extab_801c5b08.s) calls
# every frame the actor hasn't yet arrived. Part of the SLK2
# rail-riding behavior (project_fsa_slk2_is_the_rail_cart.md).
#
# Reads the current level-config record and the CONFIRMED per-room
# `+0x31df` flag:
#
# - If SET: when `mode == 0` and a boundary/position test
#   (`fn_801CC9F8`) passes, reads a generic actor field `this->0x98`
#   (a -1/0/1 "preferred turn direction" sign, likely inherited from
#   the base Actor class) and snaps the facing angle (`this->0x33c`)
#   a quarter-turn (`+-0x4000`, 90 degrees in BAM units) left or
#   right accordingly. Otherwise (or when `mode != 0`) calls
#   `fn_801D11FC` - the CONFIRMED facing-angle maintenance helper
#   already documented as part of the position-trail-predictor base
#   (extab_801d1974.s) - to just ease toward the existing target angle.
# - If CLEAR: runs a PRNG-driven "how long until I re-evaluate"
#   countdown (`this->0x595` vs a random threshold in `this->0x596`,
#   re-rolled via `fn_801CD664(0x15)` on expiry). On expiry, indexes
#   `this->0x1ac + mode*0xc` - CORRECTED (see the CONFIRMED
#   `fn_801D05F8`, extab_801d05f8.s): this is NOT a generic local
#   patrol table, it's a PER-PLAYER array (4 slots) of each player's
#   remembered position, and `mode` here is really a PLAYER INDEX
#   (selected elsewhere, e.g. by `fn_801D05F8`'s "which player is
#   closest and eligible" selection). So this branch is really
#   "steer toward the position I last recorded for my currently
#   tracked player." Depending on the CONFIRMED `fn_801CC9F8`
#   (extab_801cc9f8.s - "is this position safe ground in all 4
#   directions") and two calls to `fn_801CFA70` (not decompiled - "is
#   the path to this player's position clear/valid," given the
#   argument shape), either snaps a quarter-turn immediately or
#   computes a real steering angle toward the tracked player's
#   position via `fn_80093340` (the CONFIRMED math utility used
#   elsewhere for angle/vector math), applies PRNG-jitter
#   (`fn_801CD664(0x4001)`), and finally eases the facing angle toward
#   it via `fn_801CD930(&this->0x33c, targetAngle, 0xaaa)` (not
#   decompiled, but the argument shape - an angle pointer, a target,
#   and a fixed rate constant `0xaaa` - matches the project's general
#   "ease toward angle at a capped turn rate" idiom).
#
# `fn_801CFA70`, `fn_801CD930`, `fn_801CD664` remain undecompiled -
# real open threads, but the overall "steer toward either a room-
# boundary-avoidance heading or my currently-tracked player's
# remembered position, depending on a per-room flag" shape is
# confirmed with real evidence.

fn_801C5EBC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 3
    stw 29, 0x24(1)
    mr 29, 5
    stw 28, 0x20(1)
    mr 28, 4
    lwz 31, 0x4(3)
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    clrlwi. 0, 29, 24
    add 3, 3, 31
    lbz 31, 0x31df(3)
    .4byte 0x418200C8 # beq .L_801C5FC4
    li 0, 0x0
    cmplwi 31, 0x0
    stb 0, 0x595(30)
    .4byte 0x418200AC # beq .L_801C5FB8
    lwz 4, 0x4(30)
    addi 3, 30, 0xc
    bl fn_801CC9F8
    clrlwi. 0, 3, 24
    .4byte 0x40820098 # bne .L_801C5FB8
    lwz 0, 0x98(30)
    cmpwi 0, 0x1
    .4byte 0x41820020 # beq .L_801C5F4C
    .4byte 0x40800028 # bge .L_801C5F58
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801C5F40
    .4byte 0x4800001C # b .L_801C5F58
L_801C5F40:
    li 0, -0x4000
    sth 0, 0x33c(30)
    .4byte 0x480002F8 # b .L_801C6240
L_801C5F4C:
    li 0, 0x4000
    sth 0, 0x33c(30)
    .4byte 0x480002EC # b .L_801C6240
L_801C5F58:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC022BEC8 # lfs f1, lbl_8053EE68@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC002BED0 # lfs f0, lbl_8053EE70@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 2, 0x10(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801C5FAC
    li 0, 0x4000
    sth 0, 0x33c(30)
    .4byte 0x48000298 # b .L_801C6240
L_801C5FAC:
    li 0, -0x4000
    sth 0, 0x33c(30)
    .4byte 0x4800028C # b .L_801C6240
L_801C5FB8:
    mr 3, 30
    bl fn_801D11FC
    .4byte 0x48000280 # b .L_801C6240
L_801C5FC4:
    lbz 3, 0x595(30)
    addi 0, 3, 0x1
    stb 0, 0x595(30)
    lbz 3, 0x595(30)
    lbz 0, 0x596(30)
    cmplw 3, 0
    .4byte 0x41800264 # blt .L_801C6240
    li 0, 0x0
    li 3, 0x15
    stb 0, 0x595(30)
    bl fn_801CD664
    mulli 4, 28, 0xc
    addi 0, 3, 0x14
    cmplwi 31, 0x0
    stb 0, 0x596(30)
    addi 31, 4, 0x1ac
    add 31, 30, 31
    .4byte 0x418201B4 # beq .L_801C61BC
    lwz 4, 0x4(30)
    addi 3, 30, 0xc
    bl fn_801CC9F8
    clrlwi. 0, 3, 24
    .4byte 0x408201A0 # bne .L_801C61BC
    lha 3, 0x33c(30)
    lis 0, 0x4330
    stw 0, 0x18(1)
    addi 0, 3, 0x4000
    .4byte 0xC862BEE8 # lfd f3, lbl_8053EE88@sda21(r0)
    extsh 0, 0
    .4byte 0xC022BED8 # lfs f1, lbl_8053EE78@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC002BEE0 # lfs f0, lbl_8053EE80@sda21(r0)
    stw 0, 0x1c(1)
    lfd 2, 0x18(1)
    fsubs 2, 2, 3
    fabs 2, 2
    fmuls 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_801C608C
    lwz 6, 0x4(30)
    mr 3, 30
    mr 5, 31
    addi 4, 30, 0xc
    bl fn_801CFA70
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_801C608C
    li 0, -0x4000
    sth 0, 0x33c(30)
    .4byte 0x480001B8 # b .L_801C6240
L_801C608C:
    lha 3, 0x33c(30)
    lis 0, 0x4330
    stw 0, 0x18(1)
    subi 0, 3, 0x4000
    .4byte 0xC862BEE8 # lfd f3, lbl_8053EE88@sda21(r0)
    extsh 0, 0
    .4byte 0xC022BED8 # lfs f1, lbl_8053EE78@sda21(r0)
    xoris 0, 0, 0x8000
    .4byte 0xC002BEE0 # lfs f0, lbl_8053EE80@sda21(r0)
    stw 0, 0x1c(1)
    lfd 2, 0x18(1)
    fsubs 2, 2, 3
    fabs 2, 2
    fmuls 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800030 # bge .L_801C60F8
    lwz 6, 0x4(30)
    mr 3, 30
    mr 5, 31
    addi 4, 30, 0xc
    bl fn_801CFA70
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_801C60F8
    li 0, 0x4000
    sth 0, 0x33c(30)
    .4byte 0x4800014C # b .L_801C6240
L_801C60F8:
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 4, 3, 0x660d
    .4byte 0xC042BEC8 # lfs f2, lbl_8053EE68@sda21(r0)
    lwz 0, 0xb4(5)
    .4byte 0xC002BEDC # lfs f0, lbl_8053EE7C@sda21(r0)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800058 # bge .L_801C6194
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC002BED0 # lfs f0, lbl_8053EE70@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 1, 1, 2
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801C6188
    li 0, 0x4000
    sth 0, 0x33c(30)
    .4byte 0x480000BC # b .L_801C6240
L_801C6188:
    li 0, -0x4000
    sth 0, 0x33c(30)
    .4byte 0x480000B0 # b .L_801C6240
L_801C6194:
    lfs 1, 0xc(30)
    lfs 0, 0x0(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801C61B0
    li 0, -0x4000
    sth 0, 0x33c(30)
    .4byte 0x48000094 # b .L_801C6240
L_801C61B0:
    li 0, 0x4000
    sth 0, 0x33c(30)
    .4byte 0x48000088 # b .L_801C6240
L_801C61BC:
    lfs 2, 0x10(30)
    lis 3, lbl_80539D44@ha
    lfs 0, 0x4(31)
    lfs 1, 0xc(30)
    fsubs 2, 2, 0
    lfs 0, 0x0(31)
    .4byte 0xC062BEF0 # lfs f3, lbl_8053EE90@sda21(r0)
    fsubs 1, 1, 0
    lfs 0, lbl_80539D44@l(3)
    fmuls 4, 2, 2
    fmuls 0, 3, 0
    lha 31, 0x33c(30)
    fmadds 3, 1, 1, 4
    fcmpo cr0, 3, 0
    cror eq, lt, eq
    .4byte 0x41820024 # beq .L_801C621C
    lis 3, lbl_80534C00@ha
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC002BEF4 # lfs f0, lbl_8053EE94@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x18(1)
    lwz 31, 0x1c(1)
L_801C621C:
    li 3, 0x4001
    bl fn_801CD664
    subi 0, 3, 0x2000
    addi 3, 30, 0x33c
    add 0, 31, 0
    li 5, 0xaaa
    extsh 31, 0
    mr 4, 31
    bl fn_801CD930
L_801C6240:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

