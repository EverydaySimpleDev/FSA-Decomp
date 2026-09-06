/*
 * fn_801D7BA0(this) (0x801D7BA0-0x801D7DB4, 0x214/532 bytes) - another real
 * method of dtor_801D46FC's class (same TU as fn_801D7AFC, extab_801d7afc.s;
 * uses the CONFIRMED this->0xc/0x10/0x14 position and this->0x3c/0x40/0x44
 * velocity fields). A collision/bounds-response handler:
 *
 * If velocity (this->0x3c/0x44) magnitude exceeds `lbl_8053F1A0`: calls the
 * CONFIRMED "candidate-exit check" fn_801F2B7C(this->0x114, -1, 1).
 * Otherwise: looks up a per-type settings-table AABB (via the CONFIRMED
 * GetRoomConfigRecord accessor, self-type<8 gated) and tests self position
 * (this->0xc/0x10) against its 4 bounds floats; out-of-bounds clears
 * this->0x11c and exits. In-bounds AND self-ID valid: calls
 * fn_801F2740(this, -1) to get a 4-bit mask, and for each set bit i in [0,4)
 * (the FSA 4-player slot convention) computes a delta via `fn_8023E724(i)`
 * and calls fn_80238548(deltaVec, flag, this->0x114) - a per-player proximity/
 * interaction check (first-seen, not yet landed). If fn_801F2740 found no
 * bits: clears this->0x11c. Otherwise, if self-ID valid: queries the
 * CONFIRMED embedded timed-cue lookup table (fn_801D1C18(this+0x270) -
 * ANOTHER real call site) and integrates position += velocity via `ps_add`
 * (this->0xc+=0x3c, this->0x14+=0x44) - the SAME position-integration idiom
 * used throughout this class family.
 *
 * Unconditionally finishes by calling fn_8013CB44(this->0x2a8, this+0xc, 1, 2,
 * 1) and fn_8013CB44(this->0x2ac, this+0xc, 1, 2, 1) - likely updating the
 * position of 2 attached effect handles (fn_8013CB44 is a new sibling of the
 * CONFIRMED effect-handle-lifecycle family fn_8013CC50/fn_801F0E34/
 * fn_8017EAB4/fn_801EE434). Needs -mgekko. Caller not yet traced.
 */

.section extab, "a"
.balign 4
.global etb_80008704
etb_80008704:
    .4byte 0x284A0000
    .4byte 0x00000000
.size etb_80008704, 8

.section extabindex, "a"
.balign 4
.global eti_80015AD8
eti_80015AD8:
    .4byte fn_801D7BA0
    .4byte 0x00000214
    .4byte etb_80008704
.size eti_80015AD8, 12

.text
.balign 4
.global fn_801D7BA0

fn_801D7BA0:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stmw 27, 0x1c(1)
    mr 31, 3
    lis 4, lbl_80539D44@ha
    psq_l 3, 0x3c(31), 0, 0
    lfs 2, 0x44(3)
    ps_mul 3, 3, 3
    .4byte 0xC022C200 # lfs f1, lbl_8053F1A0@sda21(r0)
    lfs 0, lbl_80539D44@l(4)
    ps_madd 2, 2, 2, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    .4byte 0x40820018 # bne .L_801D7C00
    lwz 4, 0x114(31)
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    .4byte 0x4800016C # b .L_801D7D68
L_801D7C00:
    lwz 27, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 27, 0x8
    .4byte 0x4080000C # bge .L_801D7C18
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801D7C1C
L_801D7C18:
    addi 3, 3, 0xdc
L_801D7C1C:
    lfs 2, 0xc(31)
    li 0, 0x0
    lfs 0, 0x0(3)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_801D7C64
    lfs 1, 0x10(31)
    lfs 0, 0x4(3)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_801D7C64
    lfs 0, 0x8(3)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_801D7C64
    lfs 0, 0xc(3)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801D7C64
    li 0, 0x1
L_801D7C64:
    clrlwi. 0, 0, 24
    .4byte 0x40820010 # bne .L_801D7C78
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x480000F4 # b .L_801D7D68
L_801D7C78:
    lwz 3, 0x4(31)
    li 27, 0x1
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_801D7C90
    li 27, 0x3
L_801D7C90:
    mr 3, 31
    li 4, -0x1
    bl fn_801F2740
    clrlwi. 30, 3, 24
    mr 29, 3
    .4byte 0x41820078 # beq .L_801D7D1C
    li 28, 0x0
L_801D7CAC:
    li 0, 0x1
    slw 0, 0, 28
    and. 0, 30, 0
    .4byte 0x41820058 # beq .L_801D7D10
    mr 3, 28
    bl fn_8023E724
    lfs 31, 0x8(3)
    mr 3, 28
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 28
    lfs 0, 0x40(31)
    fsubs 1, 1, 31
    fsubs 31, 1, 0
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 28
    lfs 0, 0x3c(31)
    mr 6, 27
    addi 5, 1, 0x8
    fsubs 0, 1, 0
    stfs 31, 0xc(1)
    stfs 0, 0x8(1)
    lwz 4, 0x114(31)
    bl fn_80238548
L_801D7D10:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF94 # blt .L_801D7CAC
L_801D7D1C:
    clrlwi. 0, 29, 24
    .4byte 0x41820010 # beq .L_801D7D30
    li 0, 0x0
    stb 0, 0x11c(31)
    .4byte 0x4800003C # b .L_801D7D68
L_801D7D30:
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801D7D48
    addi 3, 31, 0x270
    bl fn_801D1C18
L_801D7D48:
    psq_l 1, 0xc(31), 0, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
L_801D7D68:
    lwz 3, 0x2a8(31)
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x2
    li 7, 0x1
    bl fn_8013CB44
    lwz 3, 0x2ac(31)
    addi 4, 31, 0xc
    li 5, 0x1
    li 6, 0x2
    li 7, 0x1
    bl fn_8013CB44
    psq_l 31, 0x38(1), 0, 0
    lfd 31, 0x30(1)
    lmw 27, 0x1c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

