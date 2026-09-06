/*
 * WARP-portal-actor cluster, part 11/12. Track A (byte-exact asm) +
 * structural overview - byte-for-byte-near-identical sibling of
 * fn_801EE8F4 (part 12/12), another instance of this project's confirmed
 * templated/duplicated-codegen pattern.
 *
 * fn_801EE558(this, outDir, outDist, playerIdx): if playerIdx!=0, checks
 * only player (playerIdx-1); if 0, loops all 4 players. For each
 * candidate: gates through Player_GetCapabilityFlagByIndex(idx), then an owner/room match
 * check via the confirmed fn_8023DE58 (returns player's 0x3b4 field)
 * against this->0x4 (or the sentinel 8), then a chain of eligibility
 * gates that must ALL pass: fn_80230188(idx), fn_8022F478(idx),
 * fn_80236B50(idx), fn_8022D534(idx) - all unconfirmed themselves, but
 * shaped like "can this player currently use a warp portal" checks.
 *
 * For each player that passes every gate, computes the delta from a
 * per-player 0xc-byte position-history slot at this->0x1ac+idx*0xc
 * (matching the confirmed cross-actor "per-player remembered position"
 * convention, see project_fsa_slk2_helper_backlog_batch3.md) to this
 * actor's own position, and keeps the CLOSEST match across the loop
 * (squared-distance compare).
 *
 * After the loop: if outDir is provided, writes the normalized direction
 * to the closest eligible player (or zero-vector if distance ~0) into
 * *outDir; if outDist is provided, writes the (non-negative-sqrt)
 * distance into *outDist. Net effect: "find the nearest eligible player
 * who could step into this portal, and report direction+distance."
 */
.section extab, "a"
.balign 4
.global etb_80008D5C
etb_80008D5C:
    .4byte 0x410A0000
    .4byte 0x00000000
.size etb_80008D5C, 8

.section extabindex, "a"
.balign 4
.global eti_800163E4
eti_800163E4:
    .4byte fn_801EE558
    .4byte 0x0000039C
    .4byte etb_80008D5C
.size eti_800163E4, 12

.text
.balign 4
.global fn_801EE558

fn_801EE558:
    stwu 1, -0x90(1)
    mflr 0
    stw 0, 0x94(1)
    stfd 31, 0x80(1)
    psq_st 31, 0x88(1), 0, 0
    stfd 30, 0x70(1)
    psq_st 30, 0x78(1), 0, 0
    stfd 29, 0x60(1)
    psq_st 29, 0x68(1), 0, 0
    stfd 28, 0x50(1)
    psq_st 28, 0x58(1), 0, 0
    stmw 24, 0x30(1)
    .4byte 0xC022C7A0 # lfs f1, lbl_8053F740@sda21(r0)
    mr 26, 3
    .4byte 0xC002C7A4 # lfs f0, lbl_8053F744@sda21(r0)
    mr 27, 4
    stfs 1, 0x20(1)
    mr 28, 5
    lfs 3, 0x10(3)
    mr 29, 6
    stfs 0, 0x24(1)
    li 31, 0x1
    lfs 2, 0x14(3)
    li 30, 0x0
    psq_l 5, 0x20(1), 0, 0
    lfs 4, 0xc(3)
    fsubs 0, 3, 2
    ps_mul 5, 5, 5
    stfs 3, 0x18(1)
    stfs 4, 0x14(1)
    ps_madd 3, 1, 1, 5
    stfs 2, 0x1c(1)
    ps_sum0 3, 3, 5, 5
    stfs 1, 0x28(1)
    stfs 0, 0x18(1)
    fmr 28, 3
    .4byte 0x48000148 # b .L_801EE730
L_801EE5EC:
    cmpwi 29, 0x0
    .4byte 0x41820008 # beq .L_801EE5F8
    subi 30, 29, 0x1
L_801EE5F8:
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820120 # beq .L_801EE724
    lwz 25, 0x4(26)
    mr 3, 30
    li 24, 0x0
    bl fn_8023DE58
    cmpw 3, 25
    .4byte 0x41820030 # beq .L_801EE64C
    mr 3, 30
    li 25, 0x0
    bl fn_8023DE58
    cmpwi 3, 0x8
    .4byte 0x40800014 # bge .L_801EE644
    lwz 0, 0x4(26)
    cmpwi 0, 0x8
    .4byte 0x40820008 # bne .L_801EE644
    li 25, 0x1
L_801EE644:
    clrlwi. 0, 25, 24
    .4byte 0x41820008 # beq .L_801EE650
L_801EE64C:
    li 24, 0x1
L_801EE650:
    clrlwi. 0, 24, 24
    .4byte 0x418200D0 # beq .L_801EE724
    mr 3, 30
    bl fn_8022F478
    clrlwi. 0, 3, 24
    .4byte 0x408200C0 # bne .L_801EE724
    mr 3, 30
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x408200B0 # bne .L_801EE724
    mr 3, 30
    bl fn_8022D534
    clrlwi. 0, 3, 24
    .4byte 0x408200A0 # bne .L_801EE724
    mulli 3, 30, 0xc
    psq_l 2, 0x14(1), 0, 0
    psq_l 0, 0x1c(1), 1, 0
    clrlwi. 0, 31, 24
    addi 3, 3, 0x1ac
    add 3, 26, 3
    psq_l 3, 0x0(3), 0, 0
    psq_l 1, 0x8(3), 1, 0
    ps_sub 2, 3, 2
    ps_sub 0, 1, 0
    psq_st 2, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
    .4byte 0x41820038 # beq .L_801EE6F0
    ps_mul 4, 2, 2
    lfs 31, 0x10(1)
    lfs 2, 0x8(1)
    li 31, 0x0
    lfs 1, 0xc(1)
    ps_madd 3, 31, 31, 4
    lfs 0, 0x10(1)
    stfs 2, 0x20(1)
    ps_sum0 3, 3, 4, 4
    stfs 1, 0x24(1)
    fmr 28, 3
    stfs 0, 0x28(1)
    .4byte 0x48000038 # b .L_801EE724
L_801EE6F0:
    ps_mul 1, 2, 2
    lfs 30, 0x10(1)
    ps_madd 0, 30, 30, 1
    ps_sum0 0, 0, 1, 1
    fcmpo cr0, 0, 28
    .4byte 0x40800020 # bge .L_801EE724
    lfs 2, 0x8(1)
    fmr 28, 0
    lfs 1, 0xc(1)
    lfs 0, 0x10(1)
    stfs 2, 0x20(1)
    stfs 1, 0x24(1)
    stfs 0, 0x28(1)
L_801EE724:
    cmpwi 29, 0x0
    .4byte 0x40820010 # bne .L_801EE738
    addi 30, 30, 0x1
L_801EE730:
    cmpwi 30, 0x4
    .4byte 0x4180FEB8 # blt .L_801EE5EC
L_801EE738:
    cmplwi 27, 0x0
    .4byte 0x4182013C # beq .L_801EE878
    .4byte 0xC042C7A0 # lfs f2, lbl_8053F740@sda21(r0)
    cmplwi 28, 0x0
    stfs 2, 0x28(1)
    .4byte 0x4182009C # beq .L_801EE7E8
    psq_l 3, 0x20(1), 0, 0
    lis 3, lbl_80539D44@ha
    .4byte 0xC022C7A8 # lfs f1, lbl_8053F748@sda21(r0)
    ps_mul 3, 3, 3
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    ps_madd 4, 2, 2, 3
    ps_sum0 4, 4, 3, 3
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_801EE78C
    stfs 2, 0x8(27)
    stfs 2, 0x4(27)
    stfs 2, 0x0(27)
    .4byte 0x48000058 # b .L_801EE7E0
L_801EE78C:
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801EE7A0
    fmr 29, 4
    .4byte 0x48000028 # b .L_801EE7C4
L_801EE7A0:
    frsqrte 3, 4
    .4byte 0xC042C7AC # lfs f2, lbl_8053F74C@sda21(r0)
    .4byte 0xC002C7B0 # lfs f0, lbl_8053F750@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 29, 0
L_801EE7C4:
    psq_l 1, 0x20(1), 0, 0
    fmuls 2, 29, 4
    psq_l 0, 0x28(1), 1, 0
    ps_muls0 1, 1, 29
    ps_muls0 0, 0, 29
    psq_st 1, 0x0(27), 0, 0
    psq_st 0, 0x8(27), 1, 0
L_801EE7E0:
    stfs 2, 0x0(28)
    .4byte 0x480000DC # b .L_801EE8C0
L_801EE7E8:
    psq_l 3, 0x20(1), 0, 0
    lis 3, lbl_80539D44@ha
    .4byte 0xC022C7A8 # lfs f1, lbl_8053F748@sda21(r0)
    ps_mul 3, 3, 3
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    ps_madd 4, 2, 2, 3
    ps_sum0 4, 4, 3, 3
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820014 # bne .L_801EE824
    stfs 2, 0x8(27)
    stfs 2, 0x4(27)
    stfs 2, 0x0(27)
    .4byte 0x480000A0 # b .L_801EE8C0
L_801EE824:
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801EE838
    fmr 29, 4
    .4byte 0x48000028 # b .L_801EE85C
L_801EE838:
    frsqrte 3, 4
    .4byte 0xC042C7AC # lfs f2, lbl_8053F74C@sda21(r0)
    .4byte 0xC002C7B0 # lfs f0, lbl_8053F750@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 29, 0
L_801EE85C:
    psq_l 1, 0x20(1), 0, 0
    psq_l 0, 0x28(1), 1, 0
    ps_muls0 1, 1, 29
    ps_muls0 0, 0, 29
    psq_st 1, 0x0(27), 0, 0
    psq_st 0, 0x8(27), 1, 0
    .4byte 0x4800004C # b .L_801EE8C0
L_801EE878:
    cmplwi 28, 0x0
    .4byte 0x41820044 # beq .L_801EE8C0
    .4byte 0xC002C7A0 # lfs f0, lbl_8053F740@sda21(r0)
    fcmpo cr0, 28, 0
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_801EE898
    fmr 0, 28
    .4byte 0x48000028 # b .L_801EE8BC
L_801EE898:
    frsqrte 3, 28
    .4byte 0xC042C7AC # lfs f2, lbl_8053F74C@sda21(r0)
    .4byte 0xC002C7B0 # lfs f0, lbl_8053F750@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 28, 1, 0
    fmuls 0, 2, 0
    fmuls 0, 28, 0
L_801EE8BC:
    stfs 0, 0x0(28)
L_801EE8C0:
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    lmw 24, 0x30(1)
    lwz 0, 0x94(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

