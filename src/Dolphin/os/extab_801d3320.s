/*
 * fn_801D3320 (0x801D3320-0x801D3A98, 0x778/1912 bytes) - the FIRST function of a
 * brand-new class/file, landed immediately after "ClassX"'s closing __sinit
 * (fn_801D30FC, see project_fsa_multiple_inheritance_pattern.md). No constructor/
 * vtable-store has been seen yet, so this class's identity is still open, but this
 * single function is a big, fully-traced "seek a same-type ring-peer and drift
 * toward/away from it" update() - and it CROSS-CONFIRMS the "ring/chain adjacency"
 * library already found at oscluster_800fd498.c (see project_fsa_extab_bug_resolved.md):
 *
 *   - this->0x358 is THIS actor's own embedded ring-position sub-object (its own
 *     accessor GetCurrentSlotPtr resolves it to the shared ring array).
 *   - this->0x4 is self's own type/ID, used as the `targetType` filter to the
 *     CONFIRMED fn_800FD894(ringArray, targetType, outBuffer, maxCount) - "find every
 *     ring slot of MY OWN type" (same-type peers).
 *   - the sentinel-0xFF convention documented for the ring library ("use my own
 *     index, ringArray->0x3") is confirmed again here: after selecting a target
 *     peer, its ring index is stored into ringArray->0x3 (bounds-checked against
 *     ringArray->0x2, the ring's own SIZE), then fn_800FE294(out, ringArray, 0xFF)
 *     is called to fetch THAT slot's position - not "self".
 *
 * Two selection modes, gated by bit 6 of this->0x230:
 *   - SET: enumerate same-type peers, drop any ring-ADJACENT one via the CONFIRMED
 *     fn_800FD5E8 ("returns 0 if adjacent, 1 otherwise" - skipped here when it
 *     returns 0), apply two more generic exclusion gates (fn_801CCBD0/fn_801CCB1C,
 *     both `(posPtr, selfID) -> bool`, structurally identical in shape to the
 *     already-confirmed fn_801F2A10/fn_801F2B7C candidate-exit checks used by
 *     ClassX's own update), then pick the FARTHEST valid survivor by squared
 *     distance from self (this->0xc/0x10).
 *   - CLEAR: enumerate same-type peers (no adjacency filter this time), apply the
 *     SAME two exclusion gates, collect every survivor, then pick ONE AT RANDOM via
 *     fn_801CD664(validCount) (a PRNG-index picker - this whole function later
 *     manipulates lbl_8053AAF8->0xb4 directly, the CONFIRMED global "Numerical
 *     Recipes" LCG, see reference_fsa_global_prng.md).
 *
 * After caching the chosen peer's position into this->0x32c/0x330/0x334: if exactly
 * one valid candidate existed, done immediately. Otherwise checks whether THIS actor
 * is the "active" one for the interaction (fn_801C976C(this) -> byte, resolved back
 * through the ring via fn_800FE25C and compared against self ID) and whether that
 * resolved id is among the valid-candidate set; if so, runs a speed-clamped
 * drift-toward-target position integration (PSVECMag + the CONFIRMED frsqrte/
 * Newton-Raphson fast-inverse-sqrt idiom, blended by a PRNG-drawn factor), gates a
 * transform call via fn_801CF888/fn_800FD4C0, and finally commits the new position
 * via fn_801CAEF4 only if it still passes the exclusion gates - otherwise keeps the
 * already-cached target position. Needs -mgekko (psq_l/psq_st/ps_add/ps_mul/ps_sub/
 * ps_madd/ps_muls0/ps_sum0/frsqrte throughout). Not yet cross-identified against the
 * 195-entry actor dispatch table; caller not traced.
 */

.section extab, "a"
.balign 4
.global etb_80008580
etb_80008580:
    .4byte 0x410A0000
    .4byte 0x00000000
.size etb_80008580, 8

.section extabindex, "a"
.balign 4
.global eti_80015928
eti_80015928:
    .4byte fn_801D3320
    .4byte 0x00000778
    .4byte etb_80008580
.size eti_80015928, 12

.text
.balign 4
.global fn_801D3320

fn_801D3320:
    stwu 1, -0x180(1)
    mflr 0
    stw 0, 0x184(1)
    stfd 31, 0x170(1)
    psq_st 31, 0x178(1), 0, 0
    stfd 30, 0x160(1)
    psq_st 30, 0x168(1), 0, 0
    stfd 29, 0x150(1)
    psq_st 29, 0x158(1), 0, 0
    stfd 28, 0x140(1)
    psq_st 28, 0x148(1), 0, 0
    stmw 24, 0x120(1)
    lwz 0, 0x230(3)
    mr 29, 3
    rlwinm. 0, 0, 0, 6, 6
    .4byte 0x4182014C # beq .L_801D34A8
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lwz 4, 0x4(29)
    addi 5, 1, 0xb4
    li 6, 0x30
    bl fn_800FD894
    li 30, 0x0
    .4byte 0xC382C0E0 # lfs f28, lbl_8053F080@sda21(r0)
    mr 28, 30
    addi 26, 1, 0xb4
    clrlwi 31, 3, 24
    .4byte 0x480000C4 # b .L_801D3450
L_801D3390:
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 4, 0x0(26)
    bl fn_800FD5E8
    clrlwi. 0, 3, 24
    .4byte 0x418200A4 # beq .L_801D3448
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 5, 0x0(26)
    mr 4, 3
    addi 3, 1, 0x24
    bl fn_800FE294
    lfs 2, 0x24(1)
    addi 3, 1, 0x18
    lfs 1, 0x28(1)
    li 27, 0x1
    lfs 0, 0x2c(1)
    stfs 2, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    lwz 24, 0x4(29)
    mr 4, 24
    bl fn_801CCBD0
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_801D3408
    mr 4, 24
    addi 3, 1, 0x18
    bl fn_801CCB1C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801D340C
L_801D3408:
    li 27, 0x0
L_801D340C:
    clrlwi. 0, 27, 24
    .4byte 0x41820038 # beq .L_801D3448
    lfs 3, 0x18(1)
    lfs 2, 0xc(29)
    lfs 1, 0x1c(1)
    lfs 0, 0x10(29)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    fmuls 1, 2, 2
    fmuls 0, 0, 0
    fadds 0, 1, 0
    fcmpo cr0, 0, 28
    .4byte 0x4081000C # ble .L_801D3448
    fmr 28, 0
    lbz 30, 0x0(26)
L_801D3448:
    addi 26, 26, 0x1
    addi 28, 28, 0x1
L_801D3450:
    cmpw 28, 31
    .4byte 0x4180FF3C # blt .L_801D3390
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    clrlwi 4, 30, 24
    cmplw 4, 0
    .4byte 0x40800008 # bge .L_801D3474
    stb 4, 0x3(3)
L_801D3474:
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    mr 4, 3
    addi 3, 1, 0x48
    li 5, 0xff
    bl fn_800FE294
    lfs 0, 0x48(1)
    stfs 0, 0x32c(29)
    lfs 0, 0x4c(1)
    stfs 0, 0x330(29)
    lfs 0, 0x50(1)
    stfs 0, 0x334(29)
    .4byte 0x480005C0 # b .L_801D3A64
L_801D34A8:
    addi 31, 1, 0xe4
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lwz 4, 0x4(29)
    addi 5, 1, 0x84
    li 6, 0x30
    bl fn_800FD894
    li 30, 0x0
    addi 25, 1, 0x84
    mr 28, 30
    clrlwi 24, 3, 24
    .4byte 0x48000070 # b .L_801D3544
L_801D34D8:
    lwz 26, 0x4(29)
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 5, 0x0(25)
    mr 4, 3
    addi 3, 1, 0xc
    bl fn_800FE294
    mr 4, 26
    addi 3, 1, 0xc
    li 27, 0x1
    bl fn_801CCBD0
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_801D3520
    mr 4, 26
    addi 3, 1, 0xc
    bl fn_801CCB1C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801D3524
L_801D3520:
    li 27, 0x0
L_801D3524:
    clrlwi. 0, 27, 24
    .4byte 0x41820014 # beq .L_801D353C
    lbz 0, 0x0(25)
    addi 30, 30, 0x1
    stb 0, 0x0(31)
    addi 31, 31, 0x1
L_801D353C:
    addi 25, 25, 0x1
    addi 28, 28, 0x1
L_801D3544:
    cmpw 28, 24
    .4byte 0x4180FF90 # blt .L_801D34D8
    clrlwi 24, 30, 24
    mr 3, 24
    bl fn_801CD664
    addi 4, 1, 0xe4
    lbzx 28, 4, 3
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    clrlwi 31, 28, 24
    cmplw 31, 0
    .4byte 0x40800008 # bge .L_801D357C
    stb 31, 0x3(3)
L_801D357C:
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    mr 4, 3
    addi 3, 1, 0x3c
    li 5, 0xff
    bl fn_800FE294
    lfs 0, 0x3c(1)
    clrlwi 0, 30, 24
    cmplwi 0, 0x1
    stfs 0, 0x32c(29)
    lfs 0, 0x40(1)
    stfs 0, 0x330(29)
    lfs 0, 0x44(1)
    stfs 0, 0x334(29)
    .4byte 0x418204B0 # beq .L_801D3A64
    mr 3, 29
    bl fn_801C976C
    lwz 26, 0x4(29)
    mr 28, 3
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    clrlwi 30, 28, 24
    mr 4, 30
    bl fn_800FE25C
    cmpw 26, 3
    .4byte 0x40820484 # bne .L_801D3A64
    addi 5, 1, 0xe4
    mr 3, 30
    li 4, 0x0
    mtctr 24
    cmpwi 24, 0x0
    .4byte 0x40810020 # ble .L_801D3618
L_801D35FC:
    lbz 0, 0x0(5)
    cmplw 3, 0
    .4byte 0x4082000C # bne .L_801D3610
    li 4, 0x1
    .4byte 0x4800000C # b .L_801D3618
L_801D3610:
    addi 5, 5, 0x1
    .4byte 0x4200FFE8 # bdnz .L_801D35FC
L_801D3618:
    clrlwi. 0, 4, 24
    .4byte 0x41820448 # beq .L_801D3A64
    psq_l 1, 0x32c(29), 0, 0
    addi 3, 29, 0x358
    lfs 0, 0x334(29)
    psq_st 1, 0x78(1), 0, 0
    stfs 0, 0x80(1)
    bl GetCurrentSlotPtr
    mr 4, 3
    mr 5, 30
    addi 3, 1, 0x30
    bl fn_800FE294
    psq_l 1, 0x30(1), 0, 0
    addi 3, 29, 0x358
    lfs 0, 0x38(1)
    psq_st 1, 0x6c(1), 0, 0
    stfs 0, 0x74(1)
    bl GetCurrentSlotPtr
    mr 4, 31
    mr 5, 30
    bl fn_800FD4C0
    clrlwi. 0, 3, 24
    .4byte 0x41820020 # beq .L_801D3690
    lwz 6, 0x4(29)
    mr 3, 29
    addi 4, 1, 0x78
    addi 5, 1, 0x6c
    bl fn_801CF888
    clrlwi. 0, 3, 24
    .4byte 0x408203D8 # bne .L_801D3A64
L_801D3690:
    psq_l 1, 0x6c(1), 0, 0
    lis 3, lbl_80539D44@ha
    psq_l 2, 0x78(1), 0, 0
    lfs 0, 0x74(1)
    ps_sub 5, 1, 2
    psq_st 1, 0x60(1), 0, 0
    .4byte 0xC042C0E4 # lfs f2, lbl_8053F084@sda21(r0)
    stfs 0, 0x68(1)
    ps_mul 7, 5, 5
    psq_l 3, 0x80(1), 1, 0
    psq_l 4, 0x68(1), 1, 0
    .4byte 0xC022C0E8 # lfs f1, lbl_8053F088@sda21(r0)
    ps_madd 6, 2, 2, 7
    lfs 0, lbl_80539D44@l(3)
    ps_sub 3, 4, 3
    psq_st 5, 0x60(1), 0, 0
    fmuls 0, 1, 0
    ps_sum0 6, 6, 7, 7
    psq_st 3, 0x68(1), 1, 0
    fcmpo cr0, 6, 0
    stfs 2, 0x68(1)
    cror eq, lt, eq
    .4byte 0x4182037C # beq .L_801D3A64
    psq_st 5, 0x54(1), 0, 0
    lis 3, 0x19
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    addi 0, 3, 0x660d
    stfs 2, 0x5c(1)
    addi 3, 29, 0x358
    .4byte 0xC002C0EC # lfs f0, lbl_8053F08C@sda21(r0)
    lwz 4, 0xb4(5)
    mullw 4, 4, 0
    addis 4, 4, 0x3c6f
    subi 0, 4, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    psq_l 3, 0x60(1), 0, 0
    srwi 0, 0, 9
    psq_l 2, 0x68(1), 1, 0
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 28, 1, 0
    ps_muls0 1, 3, 28
    ps_muls0 0, 2, 28
    psq_st 1, 0x60(1), 0, 0
    psq_st 0, 0x68(1), 1, 0
    bl GetCurrentSlotPtr
    mr 4, 31
    bl fn_800FD5E8
    mr 28, 3
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    mr 4, 30
    bl fn_800FD5E8
    clrlwi. 0, 28, 24
    mr 31, 3
    .4byte 0x418200DC # beq .L_801D3850
    psq_l 2, 0x60(1), 0, 0
    lfs 31, 0x68(1)
    ps_mul 2, 2, 2
    .4byte 0xC002C0F0 # lfs f0, lbl_8053F090@sda21(r0)
    ps_madd 1, 31, 31, 2
    ps_sum0 1, 1, 2, 2
    fcmpo cr0, 1, 0
    .4byte 0x4080019C # bge .L_801D3930
    lfs 1, 0x54(1)
    lis 3, lbl_80539D44@ha
    lfs 0, 0x58(1)
    stfs 1, 0x60(1)
    lfs 2, 0x5c(1)
    stfs 0, 0x64(1)
    .4byte 0xC022C0E8 # lfs f1, lbl_8053F088@sda21(r0)
    psq_l 3, 0x60(1), 0, 0
    lfs 0, lbl_80539D44@l(3)
    ps_mul 3, 3, 3
    stfs 2, 0x68(1)
    fmuls 0, 1, 0
    ps_madd 4, 2, 2, 3
    ps_sum0 4, 4, 3, 3
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_801D3830
    .4byte 0xC002C0E4 # lfs f0, lbl_8053F084@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801D37F4
    fmr 30, 4
    .4byte 0x48000028 # b .L_801D3818
L_801D37F4:
    frsqrte 3, 4
    .4byte 0xC042C0F4 # lfs f2, lbl_8053F094@sda21(r0)
    .4byte 0xC002C0F8 # lfs f0, lbl_8053F098@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 30, 0
L_801D3818:
    psq_l 1, 0x60(1), 0, 0
    psq_l 0, 0x68(1), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x60(1), 0, 0
    psq_st 0, 0x68(1), 1, 0
L_801D3830:
    .4byte 0xC3A2C0E8 # lfs f29, lbl_8053F088@sda21(r0)
    psq_l 1, 0x60(1), 0, 0
    psq_l 0, 0x68(1), 1, 0
    ps_muls0 1, 1, 29
    ps_muls0 0, 0, 29
    psq_st 1, 0x60(1), 0, 0
    psq_st 0, 0x68(1), 1, 0
    .4byte 0x480000E4 # b .L_801D3930
L_801D3850:
    clrlwi. 0, 31, 24
    .4byte 0x418200DC # beq .L_801D3930
    addi 3, 1, 0x54
    bl PSVECMag
    fmr 28, 1
    addi 3, 1, 0x60
    bl PSVECMag
    .4byte 0xC042C0E8 # lfs f2, lbl_8053F088@sda21(r0)
    fsubs 0, 28, 2
    fcmpo cr0, 1, 0
    .4byte 0x408100B8 # ble .L_801D3930
    lfs 1, 0x54(1)
    lis 3, lbl_80539D44@ha
    lfs 0, 0x58(1)
    stfs 1, 0x60(1)
    lfs 1, 0x5c(1)
    stfs 0, 0x64(1)
    lfs 0, lbl_80539D44@l(3)
    psq_l 3, 0x60(1), 0, 0
    fmuls 0, 2, 0
    stfs 1, 0x68(1)
    ps_mul 3, 3, 3
    ps_madd 4, 1, 1, 3
    ps_sum0 4, 4, 3, 3
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820058 # beq .L_801D3910
    .4byte 0xC002C0E4 # lfs f0, lbl_8053F084@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801D38D4
    fmr 29, 4
    .4byte 0x48000028 # b .L_801D38F8
L_801D38D4:
    frsqrte 3, 4
    .4byte 0xC042C0F4 # lfs f2, lbl_8053F094@sda21(r0)
    .4byte 0xC002C0F8 # lfs f0, lbl_8053F098@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 29, 0
L_801D38F8:
    psq_l 1, 0x60(1), 0, 0
    psq_l 0, 0x68(1), 1, 0
    ps_muls0 1, 1, 29
    ps_muls0 0, 0, 29
    psq_st 1, 0x60(1), 0, 0
    psq_st 0, 0x68(1), 1, 0
L_801D3910:
    .4byte 0xC002C0E8 # lfs f0, lbl_8053F088@sda21(r0)
    psq_l 1, 0x60(1), 0, 0
    fsubs 30, 28, 0
    psq_l 0, 0x68(1), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x60(1), 0, 0
    psq_st 0, 0x68(1), 1, 0
L_801D3930:
    addi 3, 29, 0x32c
    psq_l 0, 0x60(1), 0, 0
    psq_l 1, 0x0(3), 0, 0
    li 27, 0x1
    ps_add 0, 1, 0
    psq_st 0, 0x0(3), 0, 0
    psq_l 1, 0x8(3), 1, 0
    psq_l 0, 0x68(1), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x8(3), 1, 0
    lwz 24, 0x4(29)
    mr 4, 24
    bl fn_801CCBD0
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_801D3980
    mr 4, 24
    addi 3, 29, 0x32c
    bl fn_801CCB1C
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801D3984
L_801D3980:
    li 27, 0x0
L_801D3984:
    clrlwi. 0, 27, 24
    .4byte 0x4182001C # beq .L_801D39A4
    lwz 5, 0x4(29)
    mr 3, 29
    addi 4, 29, 0x32c
    bl fn_801CAEF4
    clrlwi. 0, 3, 24
    .4byte 0x418200C4 # beq .L_801D3A64
L_801D39A4:
    clrlwi. 0, 31, 24
    .4byte 0x41820020 # beq .L_801D39C8
    lfs 0, 0x78(1)
    stfs 0, 0x32c(29)
    lfs 0, 0x7c(1)
    stfs 0, 0x330(29)
    lfs 0, 0x80(1)
    stfs 0, 0x334(29)
    .4byte 0x480000A0 # b .L_801D3A64
L_801D39C8:
    clrlwi. 0, 28, 24
    .4byte 0x41820038 # beq .L_801D3A04
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 30, 0
    .4byte 0x40800008 # bge .L_801D39E8
    stb 30, 0x3(3)
L_801D39E8:
    lfs 0, 0x6c(1)
    stfs 0, 0x32c(29)
    lfs 0, 0x70(1)
    stfs 0, 0x330(29)
    lfs 0, 0x74(1)
    stfs 0, 0x334(29)
    .4byte 0x48000064 # b .L_801D3A64
L_801D3A04:
    lfs 0, 0x78(1)
    mr 3, 29
    addi 4, 29, 0x32c
    stfs 0, 0x32c(29)
    lfs 0, 0x7c(1)
    stfs 0, 0x330(29)
    lfs 0, 0x80(1)
    stfs 0, 0x334(29)
    lwz 5, 0x4(29)
    bl fn_801CAEF4
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_801D3A64
    addi 3, 29, 0x358
    bl GetCurrentSlotPtr
    lbz 0, 0x2(3)
    cmplw 30, 0
    .4byte 0x40800008 # bge .L_801D3A4C
    stb 30, 0x3(3)
L_801D3A4C:
    lfs 0, 0x6c(1)
    stfs 0, 0x32c(29)
    lfs 0, 0x70(1)
    stfs 0, 0x330(29)
    lfs 0, 0x74(1)
    stfs 0, 0x334(29)
L_801D3A64:
    psq_l 31, 0x178(1), 0, 0
    lfd 31, 0x170(1)
    psq_l 30, 0x168(1), 0, 0
    lfd 30, 0x160(1)
    psq_l 29, 0x158(1), 0, 0
    lfd 29, 0x150(1)
    psq_l 28, 0x148(1), 0, 0
    lfd 28, 0x140(1)
    lmw 24, 0x120(1)
    lwz 0, 0x184(1)
    mtlr 0
    addi 1, 1, 0x180
    blr

