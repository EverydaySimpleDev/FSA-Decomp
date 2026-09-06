/*
 * IDENTIFIED: this is ZLDA - "Princess Zelda" (see extab_80109534.s's header note; matches
 * project_fsa_zlda_actor_progress.md's "apply ambient idle drift" call in update()'s tail).
 *
 * fn_80109AE0 (0x80109AE0-0x80109D74, 0x298/664 bytes) - ZLDA's "compute a horizontal
 * separation/push vector from a found 'CIRC'-type obstacle" (this comes in as r3, an output
 * float[3]* as r4/r30). Survey-level; the exact AABB-overlap math is transcribed byte-exact
 * but not independently re-derived.
 *
 * Zero-inits *out (via lbl_8053C3E0, a 0.0f constant confirmed used as a sentinel elsewhere
 * this session). Finds a "CIRC" (0x43495243) type ID via fn_801F7A08 (the CONFIRMED
 * registry-code-to-ID lookup, same shape as fn_80108568's "SIMT" lookup), then the found
 * type's actual actor via the CONFIRMED SpatialRegistry_GetBase+fn_801F666C pair, gated on the handle's
 * this->0x11c "active" flag and matching this->0x4 (owner/type ID) against the target's.
 *
 * On match: gets each actor's bounding box via fn_801F31C4 (new, "get AABB" - called once
 * for `this`, once for the found CIRC actor), computes the X/Z overlap extents via a
 * fcmpo/cror min/max clamp sequence, and if both axes overlap, computes a 2D (X/Z, Y=0)
 * difference vector into *out, then normalizes it using the CONFIRMED frsqrte+Newton-Raphson
 * fast-inverse-sqrt idiom (with a small-magnitude special case scaled directly by
 * lbl_8053C400 instead of normalizing near-zero vectors), finally scaling the result by
 * lbl_8053C418. Returns 1 if a push vector was computed, 0 otherwise (no match, inactive
 * handle, owner mismatch, or no overlap).
 */

.section extab, "a"
.balign 4
.global etb_80005BA4
etb_80005BA4:
    .4byte 0x18CA0000
    .4byte 0x00000000
.size etb_80005BA4, 8

.section extabindex, "a"
.balign 4
.global eti_80011FF8
eti_80011FF8:
    .4byte fn_80109AE0
    .4byte 0x00000298
    .4byte etb_80005BA4
.size eti_80011FF8, 12

.text
.balign 4
.global fn_80109AE0

fn_80109AE0:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    .4byte 0xC0029440 # lfs f0, lbl_8053C3E0@sda21(r0)
    mr 30, 4
    mr 29, 3
    stfs 0, 0x8(4)
    stfs 0, 0x4(4)
    stfs 0, 0x0(4)
    bl SpatialRegistry_GetBase
    lis 4, 0x4349
    addi 4, 4, 0x5243
    bl fn_801F7A08
    mr. 31, 3
    .4byte 0x4080000C # bge .L_80109B48
    li 3, 0x0
    .4byte 0x48000200 # b .L_80109D44
L_80109B48:
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x4082000C # bne .L_80109B64
    li 3, 0x0
    .4byte 0x480001E4 # b .L_80109D44
L_80109B64:
    lbz 0, 0x11c(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_80109B78
    li 3, 0x0
    .4byte 0x480001D0 # b .L_80109D44
L_80109B78:
    lwz 3, 0x4(29)
    lwz 0, 0x4(31)
    cmpw 3, 0
    .4byte 0x4182000C # beq .L_80109B90
    li 3, 0x0
    .4byte 0x480001B8 # b .L_80109D44
L_80109B90:
    mr 3, 29
    addi 4, 1, 0x24
    bl fn_801F31C4
    mr 3, 31
    addi 4, 1, 0x14
    bl fn_801F31C4
    lfs 2, 0x14(1)
    .4byte 0xC0229470 # lfs f1, lbl_8053C410@sda21(r0)
    lfs 0, 0x18(1)
    fadds 4, 2, 1
    lfs 5, 0x24(1)
    fadds 3, 0, 1
    lfs 1, 0x1c(1)
    .4byte 0xC042944C # lfs f2, lbl_8053C3EC@sda21(r0)
    lfs 0, 0x20(1)
    fadds 1, 1, 2
    stfs 3, 0x18(1)
    fadds 0, 0, 2
    lfs 2, 0x28(1)
    fcmpo cr0, 5, 4
    stfs 4, 0x14(1)
    stfs 1, 0x1c(1)
    lfs 3, 0x2c(1)
    lfs 1, 0x30(1)
    stfs 0, 0x20(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80109C00
    fmr 5, 4
L_80109C00:
    lfs 0, 0x18(1)
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80109C14
    fmr 2, 0
L_80109C14:
    lfs 0, 0x1c(1)
    fcmpo cr0, 3, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80109C28
    fmr 3, 0
L_80109C28:
    lfs 0, 0x20(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80109C3C
    fmr 1, 0
L_80109C3C:
    fcmpo cr0, 3, 5
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_80109C5C
    fcmpo cr0, 1, 2
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_80109C5C
    li 0, 0x1
L_80109C5C:
    clrlwi. 0, 0, 24
    .4byte 0x418200E0 # beq .L_80109D40
    psq_l 0, 0xc(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 4, 0x14(31)
    psq_st 0, 0x8(1), 0, 0
    lfs 1, 0xc(29)
    lfs 0, 0x8(1)
    lfs 3, 0x10(29)
    fsubs 0, 1, 0
    lfs 1, 0xc(1)
    .4byte 0xC0429440 # lfs f2, lbl_8053C3E0@sda21(r0)
    fsubs 3, 3, 1
    stfs 4, 0x10(1)
    .4byte 0xC0229460 # lfs f1, lbl_8053C400@sda21(r0)
    stfs 0, 0x0(30)
    stfs 3, 0x4(30)
    stfs 2, 0x8(30)
    psq_l 3, 0x0(30), 0, 0
    lfs 0, lbl_80539D44@l(3)
    ps_mul 3, 3, 3
    lfs 29, 0x8(30)
    fmuls 0, 1, 0
    ps_madd 4, 29, 29, 3
    ps_sum0 4, 4, 3, 3
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820054 # beq .L_80109D1C
    fcmpo cr0, 4, 2
    cror eq, lt, eq
    .4byte 0x4082000C # bne .L_80109CE0
    fmr 31, 4
    .4byte 0x48000028 # b .L_80109D04
L_80109CE0:
    frsqrte 3, 4
    .4byte 0xC0429450 # lfs f2, lbl_8053C3F0@sda21(r0)
    .4byte 0xC0029474 # lfs f0, lbl_8053C414@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmr 31, 0
L_80109D04:
    psq_l 1, 0x0(30), 0, 0
    psq_l 0, 0x8(30), 1, 0
    ps_muls0 1, 1, 31
    ps_muls0 0, 0, 31
    psq_st 1, 0x0(30), 0, 0
    psq_st 0, 0x8(30), 1, 0
L_80109D1C:
    .4byte 0xC3C29478 # lfs f30, lbl_8053C418@sda21(r0)
    li 3, 0x1
    psq_l 1, 0x0(30), 0, 0
    psq_l 0, 0x8(30), 1, 0
    ps_muls0 1, 1, 30
    ps_muls0 0, 0, 30
    psq_st 1, 0x0(30), 0, 0
    psq_st 0, 0x8(30), 1, 0
    .4byte 0x48000008 # b .L_80109D44
L_80109D40:
    li 3, 0x0
L_80109D44:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 0, 0x84(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

