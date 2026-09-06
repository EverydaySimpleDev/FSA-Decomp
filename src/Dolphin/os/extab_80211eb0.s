/*
 * RUSA core-update cluster (vtable lbl_804A6270), part 6/7.
 * Track A (byte-exact asm) + structural overview - heavy paired-single
 * float math per player slot.
 *
 * fn_80211EB0(this): iterates the 4 player slots. No-op entirely if
 * this->0x248 (state) == 0. For each player i:
 *   - Skips unless fn_801D0B44(this, i) ("can attack player" query,
 *     confirmed) is true.
 *   - Looks up the player's info via fn_8023E724(i) and does two gated
 *     distance checks against this->0xc/0x10/0x14: a coarse radius test
 *     scaled by this->0x54, then (state != 0) a tighter squared-distance
 *     test using the lbl_8053FB00/lbl_8053FAFC scale constants.
 *   - If both pass, checks the player isn't in an invalid/invulnerable
 *     state via fn_802373EC/fn_8023725C/fn_8023513C (chained status
 *     queries).
 *   - Builds a normalized direction+distance vector (paired-single
 *     ops, fsqrt-estimate via frsqrte) and passes it to
 *     fn_8023DFF4(i, vec) - NOT a hit-box/damage test. Confirmed (see
 *     the newly-landed companion-fairy hint-dispatch cluster,
 *     extab_8022cd48.s/extab_80230fd0.s/extab_8023dff4.s): this whole
 *     trio (fn_8023DFF4/fn_8022CD48/fn_80230FD0) shares one template
 *     body that looks up player i's companion-fairy object and, if it
 *     has a pending-hint flag set, dispatches a hint-related callee.
 *     fn_8022CD48(i) cancels/resets any hint the companion currently has
 *     queued, then fn_80230FD0(i, 0x20045) queues warning-hint 0x20045
 *     via the real dispatcher fn_8024F0E8.
 *
 * Net effect: RUSA's per-frame "am I close enough that this player's
 * companion-fairy should warn them" check (hint code 0x20045), run
 * against all 4 players independently - NOT a contact-damage handler.
 */
.section extab, "a"
.balign 4
.global etb_8000A080
etb_8000A080:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_8000A080, 8

.section extabindex, "a"
.balign 4
.global eti_80017C08
eti_80017C08:
    .4byte fn_80211EB0
    .4byte 0x000002C0
    .4byte etb_8000A080
.size eti_80017C08, 12

.text
.balign 4
.global fn_80211EB0

fn_80211EB0:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stfd 30, 0x20(1)
    psq_st 30, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lwz 0, 0x248(3)
    cmpwi 0, 0x0
    .4byte 0x41820268 # beq .L_80212148
    li 31, 0x0
L_80211EE8:
    mr 3, 30
    mr 4, 31
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x41820244 # beq .L_8021213C
    mr 3, 31
    bl fn_8023E724
    lfs 1, 0x8(3)
    li 4, 0x0
    .4byte 0xC002CB58 # lfs f0, lbl_8053FAF8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082005C # bne .L_80211F74
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x41820050 # beq .L_80211F74
    .4byte 0xC062CB60 # lfs f3, lbl_8053FB00@sda21(r0)
    lfs 2, 0x54(30)
    lfs 1, 0x0(3)
    lfs 0, 0xc(30)
    fmuls 2, 3, 2
    .4byte 0xC062CB5C # lfs f3, lbl_8053FAFC@sda21(r0)
    fsubs 4, 1, 0
    lfs 1, 0x4(3)
    lfs 0, 0x10(30)
    fmuls 3, 3, 2
    fsubs 1, 1, 0
    fmuls 2, 4, 4
    fmuls 0, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80211F74
    li 4, 0x1
L_80211F74:
    clrlwi. 0, 4, 24
    .4byte 0x418201C4 # beq .L_8021213C
    mr 3, 31
    bl fn_802373EC
    cmpwi 3, 0x1
    .4byte 0x40820024 # bne .L_80211FAC
    mr 3, 31
    bl fn_8023725C
    cmpwi 3, 0x2
    .4byte 0x40820014 # bne .L_80211FAC
    mr 3, 31
    bl fn_8023513C
    clrlwi. 0, 3, 24
    .4byte 0x40820194 # bne .L_8021213C
L_80211FAC:
    mr 3, 31
    bl fn_8023E724
    .4byte 0xC082CB58 # lfs f4, lbl_8053FAF8@sda21(r0)
    stfs 4, 0x8(1)
    stfs 4, 0xc(1)
    stfs 4, 0x10(1)
    lfs 0, 0x8(3)
    fcmpo cr0, 0, 4
    cror eq, lt, eq
    .4byte 0x40820148 # bne .L_80212118
    lwz 0, 0x248(30)
    cmpwi 0, 0x0
    .4byte 0x4182013C # beq .L_80212118
    .4byte 0xC022CB60 # lfs f1, lbl_8053FB00@sda21(r0)
    lfs 0, 0x54(30)
    .4byte 0xC042CB5C # lfs f2, lbl_8053FAFC@sda21(r0)
    fmuls 1, 1, 0
    .4byte 0xC002CB64 # lfs f0, lbl_8053FB04@sda21(r0)
    fmuls 5, 2, 1
    fcmpo cr0, 5, 0
    .4byte 0x4081011C # ble .L_80212118
    lfs 3, 0x0(3)
    lfs 2, 0xc(30)
    lfs 1, 0x4(3)
    lfs 0, 0x10(30)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    fmuls 1, 2, 2
    fmuls 0, 0, 0
    fadds 3, 1, 0
    fcmpo cr0, 3, 4
    .4byte 0x4081000C # ble .L_80212034
    frsqrte 0, 3
    fmuls 3, 0, 3
L_80212034:
    .4byte 0xC002CB64 # lfs f0, lbl_8053FB04@sda21(r0)
    fcmpo cr0, 0, 3
    .4byte 0x408000DC # bge .L_80212118
    fcmpo cr0, 3, 5
    cror eq, lt, eq
    .4byte 0x408200D0 # bne .L_80212118
    psq_l 1, 0xc(30), 0, 0
    lis 4, lbl_80539D44@ha
    psq_l 0, 0x0(3), 0, 0
    .4byte 0xC042CB58 # lfs f2, lbl_8053FAF8@sda21(r0)
    ps_sub 5, 1, 0
    .4byte 0xC022CB68 # lfs f1, lbl_8053FB08@sda21(r0)
    lfs 0, lbl_80539D44@l(4)
    psq_l 4, 0x14(30), 1, 0
    ps_mul 6, 5, 5
    psq_st 5, 0x8(1), 0, 0
    fmuls 0, 1, 0
    psq_l 1, 0x8(3), 1, 0
    ps_madd 5, 2, 2, 6
    ps_sub 1, 4, 1
    ps_sum0 5, 5, 6, 6
    psq_st 1, 0x10(1), 1, 0
    fcmpo cr0, 5, 0
    stfs 2, 0x10(1)
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_802120EC
    fcmpo cr0, 5, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_802120B0
    fmr 31, 5
    .4byte 0x48000028 # b .L_802120D4
L_802120B0:
    frsqrte 4, 5
    .4byte 0xC042CB6C # lfs f2, lbl_8053FB0C@sda21(r0)
    .4byte 0xC002CB70 # lfs f0, lbl_8053FB10@sda21(r0)
    frsp 4, 4
    fmuls 1, 4, 4
    fmuls 2, 2, 4
    fnmsubs 0, 5, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_802120D4:
    psq_l 1, 0x8(1), 0, 0
    psq_l 0, 0x10(1), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
L_802120EC:
    .4byte 0xC002CB64 # lfs f0, lbl_8053FB04@sda21(r0)
    lfs 4, 0x3a4(30)
    fsubs 0, 3, 0
    psq_l 1, 0x8(1), 0, 0
    psq_l 2, 0x10(1), 1, 0
    fsubs 30, 0, 4
    fsel 30, 30, 4, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 2, 30
    psq_st 1, 0x8(1), 0, 0
    psq_st 0, 0x10(1), 1, 0
L_80212118:
    mr 3, 31
    addi 4, 1, 0x8
    bl fn_8023DFF4
    mr 3, 31
    bl fn_8022CD48
    lis 4, 0x2
    mr 3, 31
    addi 4, 4, 0x45
    bl fn_80230FD0
L_8021213C:
    addi 31, 31, 0x1
    cmpwi 31, 0x4
    .4byte 0x4180FDA4 # blt .L_80211EE8
L_80212148:
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    psq_l 30, 0x28(1), 0, 0
    lfd 30, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 0, 0x44(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

