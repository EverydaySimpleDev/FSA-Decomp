# NOTE: attempted real-C++ promotion of all 4 functions (38th Phase 4
# batch) - the shared 4-level guard chain matched perfectly on the
# FIRST attempt (reusing the exact fn_8023DE58 recipe: u8 not bool for
# the flag, declare-order for the default-vs-loaded local pair), but
# the `mgr[idx].field` player-pointer computation shared by all 4
# hits the SAME confirmed `lwzx`-over-`add+lwz` MWCC preference wall
# as fn_801F666C/fn_8023DE58 this session - now a THIRD independent
# confirmation. Left as raw asm; not worth further attempts on this
# specific wall without a genuinely new lever.
# Fused dtk split unit (0x8023B22C-0x8023B484, no extab/extabindex) - 4
# functions dtk cannot cherry-pick individually. All 4 fetch player
# `playerIdx`'s candidate ID from the SAME 4-player global array
# `lbl_8053AC90` used by the confirmed 4-player-scan family
# (fn_8023AE34/AA18/AC74/AD54, extab_8023ae34.s etc.), guarded by the
# same active-flag idiom (slot+0xcac). Confirmed as the ID-retrieval
# counterparts to the actor-type-query family
# (fn_801CC820/538/640, extab_801cc820.s/801cc538.s/801cc640.s), each
# of which calls exactly one of these before doing its spatial-registry
# lookup by ID.
#
# fn_8023B22C(playerIdx) - returns player->0xb18 directly (a single
# stored candidate ID, cross-referencing fn_802574CC's validity check
# on the SAME offset, extab_802573e0.s). Caller: fn_801CC538.
#
# fn_8023B2B0(playerIdx) - table-lookup form: reads player->0xb7c (a
# match-index set by fn_802576CC, extab_802573e0.s), validates it's in
# [0,3), and returns player->0xb00[idx] - the 3-entry candidate-ID
# array fn_802576CC's occupancy scan writes into and validates from.
# Caller: fn_801CC820 (the "ARRW" lookup).
#
# fn_8023B358(playerIdx) - the SAME table-lookup form using
# player->0xb80 (set by fn_802575B8) indexing into player->0xb0c[].
# Caller: fn_801CC640.
#
# fn_8023B400(playerIdx) - returns the BYTE at player->0xb78 directly
# (a flag, not an ID - no confirmed caller in this project yet; returns
# 0 rather than -1 on failure, unlike its siblings).
.text
.balign 4
.global fn_8023B22C
.global fn_8023B2B0
.global fn_8023B358
.global fn_8023B400

fn_8023B22C:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023B240
    li 3, -0x1
    blr
L_8023B240:
    .4byte 0x4082000C # bne .L_8023B24C
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023B28C
L_8023B24C:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023B25C
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023B28C
L_8023B25C:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023B26C
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023B28C
L_8023B26C:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023B288
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023B28C
L_8023B288:
    lbz 0, 0xcac(4)
L_8023B28C:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023B2A8
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    lwz 3, 0xb18(3)
    blr
L_8023B2A8:
    li 3, -0x1
    blr

fn_8023B2B0:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023B2C4
    li 3, -0x1
    blr
L_8023B2C4:
    .4byte 0x4082000C # bne .L_8023B2D0
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023B310
L_8023B2D0:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023B2E0
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023B310
L_8023B2E0:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023B2F0
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023B310
L_8023B2F0:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023B30C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023B310
L_8023B30C:
    lbz 0, 0xcac(4)
L_8023B310:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8023B320
    li 3, -0x1
    blr
L_8023B320:
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    lwz 0, 0xb7c(3)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8023B340
    cmpwi 0, 0x3
    .4byte 0x4180000C # blt .L_8023B348
L_8023B340:
    li 3, -0x1
    blr
L_8023B348:
    slwi 0, 0, 2
    add 3, 3, 0
    lwz 3, 0xb00(3)
    blr

fn_8023B358:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023B36C
    li 3, -0x1
    blr
L_8023B36C:
    .4byte 0x4082000C # bne .L_8023B378
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023B3B8
L_8023B378:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023B388
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023B3B8
L_8023B388:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023B398
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023B3B8
L_8023B398:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023B3B4
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023B3B8
L_8023B3B4:
    lbz 0, 0xcac(4)
L_8023B3B8:
    clrlwi. 0, 0, 24
    .4byte 0x4082000C # bne .L_8023B3C8
    li 3, -0x1
    blr
L_8023B3C8:
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    lwz 0, 0xb80(3)
    cmpwi 0, 0x0
    .4byte 0x4180000C # blt .L_8023B3E8
    cmpwi 0, 0x3
    .4byte 0x4180000C # blt .L_8023B3F0
L_8023B3E8:
    li 3, -0x1
    blr
L_8023B3F0:
    slwi 0, 0, 2
    add 3, 3, 0
    lwz 3, 0xb0c(3)
    blr

fn_8023B400:
    .4byte 0x80AD90D0 # lwz r5, lbl_8053AC90@sda21(r0)
    cmplwi 5, 0x0
    .4byte 0x4082000C # bne .L_8023B414
    li 3, 0x0
    blr
L_8023B414:
    .4byte 0x4082000C # bne .L_8023B420
    li 0, 0x0
    .4byte 0x48000044 # b .L_8023B460
L_8023B420:
    cmpwi 3, 0x0
    .4byte 0x4080000C # bge .L_8023B430
    li 0, 0x0
    .4byte 0x48000034 # b .L_8023B460
L_8023B430:
    cmpwi 3, 0x4
    .4byte 0x4180000C # blt .L_8023B440
    li 0, 0x0
    .4byte 0x48000024 # b .L_8023B460
L_8023B440:
    slwi 0, 3, 2
    add 4, 5, 0
    lwz 4, 0x4(4)
    cmplwi 4, 0x0
    .4byte 0x4082000C # bne .L_8023B45C
    li 0, 0x0
    .4byte 0x48000008 # b .L_8023B460
L_8023B45C:
    lbz 0, 0xcac(4)
L_8023B460:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_8023B47C
    slwi 0, 3, 2
    add 3, 5, 0
    lwz 3, 0x4(3)
    lbz 3, 0xb78(3)
    blr
L_8023B47C:
    li 3, 0x0
    blr
