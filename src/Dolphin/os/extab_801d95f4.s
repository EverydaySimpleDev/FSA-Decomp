/*
 * fn_801D95F4(this) -> bool (0x801D95F4-0x801D9960, 0x36C/876 bytes) - a
 * "spawn and launch a companion actor" utility for this new class (called by
 * fn_801D8B28's state==0xc case, extab_801d8b28.s). Picks an anchor-relative
 * spawn position (same dual-branch pattern keyed on this->0x230 bit 18 seen
 * throughout this class), spawns a new actor via the CONFIRMED fn_801F9484
 * universal spawn dispatcher (4-char type code `0x424F4942`, not yet decoded
 * / cross-identified against the 195-entry dispatch table), then resolves it
 * via the CONFIRMED SpatialRegistry_GetBase/fn_801F666C pair. Picks either a facing-angle
 * candidate (via fn_8023E724 + fn_80093340, gated by a computed time-of-day-
 * style check) or a random-anchor direction (via the CONFIRMED fn_801CD664 +
 * shared anchor table `lbl_8052EBC0`, the SAME idiom used in fn_801D3320's
 * class this session), normalizes it (CONFIRMED frsqrte idiom), rotates it by
 * a further small PRNG-jittered angle, and WRITES the resulting velocity into
 * the SPAWNED actor's own this->0x3c/0x40/0x44 fields - launching it, the
 * same "launch a target, not self" convention as fn_801D70BC/fn_801D72C0's
 * launcher sub-object. Returns whether a companion was actually spawned and
 * launched. Needs -mgekko.
 */

.section extab, "a"
.balign 4
.global etb_80008774
etb_80008774:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_80008774, 8

.section extabindex, "a"
.balign 4
.global eti_80015B80
eti_80015B80:
    .4byte fn_801D95F4
    .4byte 0x0000036C
    .4byte etb_80008774
.size eti_80015B80, 12

.text
.balign 4
.global fn_801D95F4

fn_801D95F4:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stmw 27, 0x4c(1)
    lwz 0, 0x230(3)
    mr 30, 3
    li 27, 0x0
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820030 # beq .L_801D9654
    .4byte 0xC062C260 # lfs f3, lbl_8053F200@sda21(r0)
    lfs 0, 0x10(30)
    lfs 2, 0xc(30)
    .4byte 0xC022C264 # lfs f1, lbl_8053F204@sda21(r0)
    fadds 3, 3, 0
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    fsubs 1, 2, 1
    stfs 3, 0x24(1)
    stfs 1, 0x20(1)
    stfs 0, 0x28(1)
    .4byte 0x4800002C # b .L_801D967C
L_801D9654:
    .4byte 0xC062C260 # lfs f3, lbl_8053F200@sda21(r0)
    lfs 0, 0x10(30)
    .4byte 0xC042C264 # lfs f2, lbl_8053F204@sda21(r0)
    lfs 1, 0xc(30)
    fadds 3, 3, 0
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    fadds 1, 2, 1
    stfs 3, 0x24(1)
    stfs 1, 0x20(1)
    stfs 0, 0x28(1)
L_801D967C:
    bl SpatialRegistry_GetBase
    lis 4, 0x424f
    lwz 5, 0x4(30)
    addi 4, 4, 0x4942
    addi 6, 1, 0x20
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr. 29, 3
    .4byte 0x41800294 # blt .L_801D9938
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x41820280 # beq .L_801D9938
    lwz 0, 0x230(30)
    li 29, -0x1
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820030 # beq .L_801D96F8
    .4byte 0xC062C260 # lfs f3, lbl_8053F200@sda21(r0)
    lfs 0, 0x10(30)
    lfs 2, 0xc(30)
    .4byte 0xC022C264 # lfs f1, lbl_8053F204@sda21(r0)
    fadds 3, 3, 0
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    fsubs 1, 2, 1
    stfs 3, 0xc(1)
    stfs 1, 0x8(1)
    stfs 0, 0x10(1)
    .4byte 0x4800002C # b .L_801D9720
L_801D96F8:
    .4byte 0xC062C260 # lfs f3, lbl_8053F200@sda21(r0)
    lfs 0, 0x10(30)
    .4byte 0xC042C264 # lfs f2, lbl_8053F204@sda21(r0)
    lfs 1, 0xc(30)
    fadds 3, 3, 0
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    fadds 1, 2, 1
    stfs 3, 0xc(1)
    stfs 1, 0x8(1)
    stfs 0, 0x10(1)
L_801D9720:
    lwz 0, 0x230(30)
    li 3, -0x2000
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820008 # beq .L_801D9734
    li 3, 0x2000
L_801D9734:
    extsh 27, 3
    mr 3, 30
    mr 5, 27
    addi 4, 1, 0x8
    bl fn_801D0338
    mr. 28, 3
    .4byte 0x41800090 # blt .L_801D97DC
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 28
    lfs 0, 0xc(1)
    fsubs 30, 1, 0
    bl fn_8023E724
    lfs 1, 0x0(3)
    lis 3, lbl_80534C00@ha
    lfs 0, 0x8(1)
    fmr 2, 30
    addi 3, 3, lbl_80534C00@l
    fsubs 1, 1, 0
    bl fn_80093340
    .4byte 0xC002C268 # lfs f0, lbl_8053F208@sda21(r0)
    lis 0, 0x4330
    stw 0, 0x38(1)
    fmuls 2, 1, 0
    .4byte 0xC862C278 # lfd f3, lbl_8053F218@sda21(r0)
    .4byte 0xC022C26C # lfs f1, lbl_8053F20C@sda21(r0)
    .4byte 0xC002C250 # lfs f0, lbl_8053F1F0@sda21(r0)
    fctiwz 2, 2
    stfd 2, 0x30(1)
    lwz 0, 0x34(1)
    subf 0, 0, 27
    extsh 0, 0
    xoris 0, 0, 0x8000
    stw 0, 0x3c(1)
    lfd 2, 0x38(1)
    fsubs 2, 2, 3
    fabs 2, 2
    fmuls 1, 1, 2
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801D97DC
    mr 29, 28
L_801D97DC:
    cmpwi 29, 0x0
    .4byte 0x418000A8 # blt .L_801D9888
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 29
    lfs 0, 0x24(1)
    fsubs 30, 1, 0
    bl fn_8023E724
    lfs 3, 0x0(3)
    lis 3, lbl_80539D44@ha
    lfs 0, 0x20(1)
    fmuls 2, 30, 30
    .4byte 0xC022C244 # lfs f1, lbl_8053F1E4@sda21(r0)
    fsubs 31, 3, 0
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    fmadds 4, 31, 31, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_801D983C
    .4byte 0xC3E2C238 # lfs f31, lbl_8053F1D8@sda21(r0)
    .4byte 0xC3C2C22C # lfs f30, lbl_8053F1CC@sda21(r0)
    .4byte 0x48000098 # b .L_801D98D0
L_801D983C:
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x4182008C # beq .L_801D98D0
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801D985C
    .4byte 0x48000024 # b .L_801D987C
L_801D985C:
    frsqrte 3, 4
    .4byte 0xC042C248 # lfs f2, lbl_8053F1E8@sda21(r0)
    .4byte 0xC002C24C # lfs f0, lbl_8053F1EC@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 4, 2, 0
L_801D987C:
    fmuls 31, 31, 4
    fmuls 30, 30, 4
    .4byte 0x4800004C # b .L_801D98D0
L_801D9888:
    lwz 0, 0x230(30)
    li 3, -0x2000
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820008 # beq .L_801D989C
    li 3, 0x2000
L_801D989C:
    neg 0, 3
    lis 3, lbl_8052EBC0@ha
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC002C238 # lfs f0, lbl_8053F1D8@sda21(r0)
    addi 4, 3, lbl_8052EBC0@l
    .4byte 0xC042C22C # lfs f2, lbl_8053F1CC@sda21(r0)
    add 3, 4, 0
    lfsx 4, 4, 0
    lfs 3, 0x4(3)
    fmuls 1, 0, 4
    fmuls 0, 0, 3
    fmsubs 31, 2, 3, 1
    fmadds 30, 2, 4, 0
L_801D98D0:
    li 3, 0xe39
    bl fn_801CD664
    subi 0, 3, 0x71c
    lis 3, lbl_8052EBC0@ha
    extsh 0, 0
    .4byte 0xC002C22C # lfs f0, lbl_8053F1CC@sda21(r0)
    neg 0, 0
    addi 4, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    .4byte 0xC022C280 # lfs f1, lbl_8053F220@sda21(r0)
    add 3, 4, 0
    lfsx 5, 4, 0
    lfs 4, 0x4(3)
    li 27, 0x1
    fmuls 3, 30, 5
    stfs 0, 0x1c(1)
    fmuls 2, 30, 4
    fmsubs 3, 31, 4, 3
    fmadds 2, 31, 5, 2
    fmuls 3, 3, 1
    fmuls 2, 2, 1
    stfs 3, 0x14(1)
    stfs 2, 0x18(1)
    psq_l 1, 0x14(1), 0, 0
    psq_st 1, 0x3c(31), 0, 0
    stfs 0, 0x44(31)
L_801D9938:
    mr 3, 27
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lmw 27, 0x4c(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

