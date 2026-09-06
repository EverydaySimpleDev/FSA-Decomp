# fn_800FDEA0(ringArray, posA, outVec2, cachedTypePtr, outAngle,
# useAlt): another ring-math cluster function - and it CROSS-CONFIRMS
# `fn_80093340` as a genuinely reusable "angle from vector" utility,
# since it's called here (twice) in this brand-new ring/chain library
# AND was already independently confirmed in the earlier WRTC/
# rupee-container investigation (`fn_800FB32C`/`fn_800FB6E0`).
#
# Calls the NEW `fn_800FE090` (immediately following, not yet landed)
# to get a reference position, computes a facing angle toward it via
# `fn_80093340`, then branches: if a cached target ID (`*cachedTypePtr`)
# still matches the CURRENT resolved chain-entry's type (the same
# `ringArray[i*4]->0x4->0x4` chase used throughout this cluster),
# reuses the just-computed direction directly. Otherwise, if `posA`'s
# X/Z both equal a specific constant (`lbl_8053BFC0`-ish, "unset"
# sentinel) AND a specific bit of the resolved slot's universal
# spawn-parameter field is clear, uses the CACHED angle (`outAngle`)
# instead of recomputing. Otherwise recomputes a SECOND angle via
# `fn_80093340` and blends it toward the cached angle by a signed
# step (clamped to `+-useAlt`). Finally converts the resulting angle
# into an XZ direction via the shared anchor table `lbl_8052EBC0`
# (scaled by the confirmed `PSVECMag`-normalized magnitude `f31`),
# writing the direction into `outVec2` and optionally the raw angle
# into `outAngle`. Needs `-mgekko`. Reads as a smoothed "turn to face
# a target, but don't snap instantly" steering helper for one chain
# segment. Caller not traced; not yet cross-identified against the
# 195-entry dispatch table.
.section extab, "a"
.balign 4
.global etb_80005868
etb_80005868:
    .4byte 0x38CA0000
    .4byte 0x00000000
.size etb_80005868, 8

.section extabindex, "a"
.balign 4
.global eti_80011BCC
eti_80011BCC:
    .4byte fn_800FDEA0
    .4byte 0x000001F0
    .4byte etb_80005868
.size eti_80011BCC, 12

.text
.balign 4
.global fn_800FDEA0

fn_800FDEA0:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stmw 25, 0x34(1)
    mr 30, 4
    mr 27, 5
    lfs 0, 0x8(30)
    addi 4, 1, 0x8
    psq_l 2, 0x0(30), 0, 0
    fmr 31, 1
    stfs 0, 0x10(1)
    mr 26, 3
    mr 25, 6
    mr 28, 7
    psq_st 2, 0x0(4), 0, 0
    mr 29, 8
    addi 5, 1, 0x14
    bl fn_800FE090
    lfs 3, 0x14(1)
    lis 4, lbl_80534C00@ha
    lfs 2, 0x0(30)
    addi 0, 4, lbl_80534C00@l
    lfs 0, 0x4(30)
    mr 30, 3
    lfs 1, 0x18(1)
    fsubs 30, 3, 2
    mr 3, 0
    fsubs 29, 1, 0
    fmr 1, 30
    fmr 2, 29
    bl fn_80093340
    .4byte 0xC0029130 # lfs f0, lbl_8053C0D0@sda21(r0)
    cmplwi 25, 0x0
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 31, 0x24(1)
    .4byte 0x41820038 # beq .L_800FDF84
    lbz 3, 0x3(26)
    lwz 0, 0x0(25)
    slwi 3, 3, 2
    add 3, 26, 3
    lwz 3, 0x4(3)
    lwz 3, 0x4(3)
    cmpw 0, 3
    .4byte 0x41820018 # beq .L_800FDF84
    stw 3, 0x0(25)
    li 3, 0x4
    stfs 30, 0x0(27)
    stfs 29, 0x4(27)
    .4byte 0x480000E4 # b .L_800FE064
L_800FDF84:
    .4byte 0xC0429118 # lfs f2, lbl_8053C0B8@sda21(r0)
    lfs 1, 0x0(27)
    fcmpu cr0, 2, 1
    .4byte 0x4082003C # bne .L_800FDFCC
    lfs 0, 0x4(27)
    fcmpu cr0, 2, 0
    .4byte 0x40820030 # bne .L_800FDFCC
    lbz 0, 0x3(26)
    slwi 0, 0, 2
    add 3, 26, 0
    lwz 3, 0x4(3)
    lwz 0, 0x90(3)
    extrwi 0, 0, 1, 29
    xori 0, 0, 0x1
    clrlwi. 0, 0, 24
    .4byte 0x4182000C # beq .L_800FDFCC
    mr 4, 31
    .4byte 0x48000064 # b .L_800FE02C
L_800FDFCC:
    lis 3, lbl_80534C00@ha
    lfs 2, 0x4(27)
    addi 3, 3, lbl_80534C00@l
    bl fn_80093340
    .4byte 0xC0029130 # lfs f0, lbl_8053C0D0@sda21(r0)
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 4, 0x24(1)
    subf 0, 4, 31
    extsh. 3, 0
    .4byte 0x4180001C # blt .L_800FE014
    extsh 0, 29
    cmpw 3, 0
    .4byte 0x40810024 # ble .L_800FE028
    add 31, 4, 29
    .4byte 0x4800001C # b .L_800FE028
    .4byte 0x48000018 # b .L_800FE028
L_800FE014:
    extsh 0, 29
    neg 0, 0
    cmpw 3, 0
    .4byte 0x40800008 # bge .L_800FE028
    subf 31, 29, 4
L_800FE028:
    mr 4, 31
L_800FE02C:
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 4, 30, 18, 28
    addi 3, 3, lbl_8052EBC0@l
    cmplwi 28, 0x0
    lfsx 0, 3, 0
    add 3, 3, 0
    fmuls 0, 31, 0
    stfs 0, 0x0(27)
    lfs 0, 0x4(3)
    fmuls 0, 31, 0
    stfs 0, 0x4(27)
    .4byte 0x41820008 # beq .L_800FE060
    sth 4, 0x0(28)
L_800FE060:
    mr 3, 30
L_800FE064:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    lmw 25, 0x34(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

