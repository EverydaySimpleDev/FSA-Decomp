/*
 * NEW ACTOR (vtable lbl_804A5A30) - fn_80206CA8(this). Landed as Track A
 * (byte-matched) + structural overview.
 *
 * Gated by a "moved far" delta box (this->0x60-0x6c) and the confirmed
 * fn_802064E0 room-membership check: for state 2, zeroes the velocity
 * fields (0x60-0x6c) via fn_801F2740 (returning a bitmask of which
 * components were non-zero), then for each of up to 4 set bits spawns a
 * directional fragment/effect via fn_801F329C, an offset point computed
 * via the confirmed fn_801CD0D0 cross-room rebasing or a direct copy,
 * a per-variant preset from the confirmed lbl_8046A238 table, an effect
 * trigger via fn_80238548, and (for non-state-5) a rail/history append
 * via fn_801D2978 before transitioning via the confirmed
 * fn_80205E0C(this, 5). For other states, instead triggers a notify
 * effect via the confirmed fn_802397B4 (same call TINK uses in
 * fn_801E2EE4). Reads as a "shatter into up to 4 directional fragments"
 * mechanic.
 */
.section extab, "a"
.balign 4
.global etb_80009CB4
etb_80009CB4:
    .4byte 0x210A0000
    .4byte 0x00000000
.size etb_80009CB4, 8

.section extabindex, "a"
.balign 4
.global eti_80017674
eti_80017674:
    .4byte fn_80206CA8
    .4byte 0x00000254
    .4byte etb_80009CB4
.size eti_80017674, 12

.text
.balign 4
.global fn_80206CA8

fn_80206CA8:
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
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    stw 28, 0x40(1)
    mr 30, 3
    li 31, 0x0
    lbz 0, 0xc4(3)
    cmplwi 0, 0x0
    .4byte 0x408201C4 # bne .L_80206EB8
    lfs 1, 0x68(30)
    lfs 0, 0x60(30)
    .4byte 0xC042C90C # lfs f2, lbl_8053F8AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408101AC # ble .L_80206EB8
    lfs 1, 0x6c(30)
    lfs 0, 0x64(30)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810198 # ble .L_80206EB8
    bl fn_802064E0
    clrlwi. 0, 3, 24
    .4byte 0x4082018C # bne .L_80206EB8
    lwz 0, 0x248(30)
    cmpwi 0, 0x5
    .4byte 0x40800014 # bge .L_80206D4C
    cmpwi 0, 0x2
    .4byte 0x41820018 # beq .L_80206D58
    .4byte 0x40800174 # bge .L_80206EB8
    .4byte 0x48000154 # b .L_80206E9C
L_80206D4C:
    cmpwi 0, 0x9
    .4byte 0x41820168 # beq .L_80206EB8
    .4byte 0x48000148 # b .L_80206E9C
L_80206D58:
    lfs 31, 0x60(30)
    mr 3, 30
    lfs 30, 0x64(30)
    li 4, -0x1
    lfs 29, 0x68(30)
    lfs 28, 0x6c(30)
    .4byte 0xC002C910 # lfs f0, lbl_8053F8B0@sda21(r0)
    .4byte 0xC022C914 # lfs f1, lbl_8053F8B4@sda21(r0)
    stfs 0, 0x60(30)
    .4byte 0xC002C918 # lfs f0, lbl_8053F8B8@sda21(r0)
    stfs 1, 0x64(30)
    stfs 0, 0x68(30)
    stfs 0, 0x6c(30)
    bl fn_801F2740
    stfs 31, 0x60(30)
    clrlwi. 0, 3, 24
    mr 31, 3
    stfs 30, 0x64(30)
    stfs 29, 0x68(30)
    stfs 28, 0x6c(30)
    .4byte 0x41820110 # beq .L_80206EB8
    mr 3, 30
    addi 4, 1, 0x10
    bl fn_801F3128
    li 28, 0x0
    clrlwi 29, 31, 24
L_80206DC0:
    li 0, 0x1
    slw 0, 0, 28
    and. 0, 29, 0
    .4byte 0x418200C0 # beq .L_80206E8C
    mr 3, 30
    mr 4, 28
    bl fn_801F329C
    clrlwi. 0, 3, 24
    .4byte 0x4182003C # beq .L_80206E1C
    lfs 2, 0x10(1)
    addi 3, 1, 0x18
    lfs 1, 0x14(1)
    addi 4, 1, 0x34
    .4byte 0xC002C90C # lfs f0, lbl_8053F8AC@sda21(r0)
    stfs 2, 0x18(1)
    stfs 1, 0x1c(1)
    stfs 0, 0x20(1)
    bl fn_801CD0D0
    lfs 1, 0x34(1)
    lfs 0, 0x38(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    .4byte 0x48000014 # b .L_80206E2C
L_80206E1C:
    lfs 1, 0x10(1)
    lfs 0, 0x14(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
L_80206E2C:
    lwz 4, 0x350(30)
    lis 3, lbl_8046A238@ha
    addi 0, 3, lbl_8046A238@l
    mr 3, 28
    mulli 6, 4, 0x14
    addi 5, 1, 0x8
    li 4, 0x0
    add 6, 0, 6
    lwz 6, 0x8(6)
    bl fn_80238548
    lwz 0, 0x248(30)
    cmpwi 0, 0x5
    .4byte 0x41820030 # beq .L_80206E8C
    mr 3, 28
    bl fn_8023E724
    .4byte 0xC022C908 # lfs f1, lbl_8053F8A8@sda21(r0)
    mr 5, 3
    addi 3, 30, 0x35c
    addi 4, 1, 0x8
    li 6, 0x18
    bl fn_801D2978
    mr 3, 30
    li 4, 0x5
    bl fn_80205E0C
L_80206E8C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF2C # blt .L_80206DC0
    .4byte 0x48000020 # b .L_80206EB8
L_80206E9C:
    mr 3, 30
    addi 4, 1, 0x24
    bl fn_801F31C4
    lwz 4, 0x4(30)
    addi 3, 1, 0x24
    lwz 5, 0x198(30)
    bl fn_802397B4
L_80206EB8:
    mr 3, 31
    psq_l 31, 0x88(1), 0, 0
    lfd 31, 0x80(1)
    psq_l 30, 0x78(1), 0, 0
    lfd 30, 0x70(1)
    psq_l 29, 0x68(1), 0, 0
    lfd 29, 0x60(1)
    psq_l 28, 0x58(1), 0, 0
    lfd 28, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    lwz 0, 0x94(1)
    lwz 28, 0x40(1)
    mtlr 0
    addi 1, 1, 0x90
    blr

