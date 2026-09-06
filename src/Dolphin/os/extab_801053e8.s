/*
 * fn_801053E8(this, target): a geometric hit-test/collision method for
 * the fn_80105368-class (survey-level, not full semantics).
 *  - Returns false immediately if target is NULL or target->0x4 doesn't
 *    match this->0x4 (a type/owner check).
 *  - Checks a per-target quick-reject flag byte (via GetRoomConfigRecord, offset
 *    +0x31df off a computed base) - if set, does a direct bounding-box
 *    test (4 float comparisons built from this->0xc/0x10 and
 *    this->0x60/0x64/0x68/0x6c) via fn_8023B0F4, and on a hit calls
 *    fn_8022DF48(target) (an accept/trigger call).
 *  - Otherwise loops up to 8 times: gets a candidate position via
 *    fn_8022E088(this, i, &out), computes a paired-single delta against
 *    this->0xc/0x10/0x14 (ps_sub), calls the confirmed fn_80093340
 *    (angle-from-vector) and the confirmed frsqrte+Newton-Raphson fast-
 *    inverse-sqrt idiom to get a distance, looks up a per-facing-angle
 *    bounding box from the SHARED ANCHOR TABLE (lbl_8052EBC0, the same
 *    table used by GNON's script bytes and other confirmed lookups) and
 *    tests the delta against it - on a hit, calls fn_8022DF48(target)
 *    and returns true.
 * Uses `ps_sub` (paired-single subtract) - a new paired-single mnemonic
 * for this project, confirmed to assemble cleanly under -mgekko with no
 * additional GNU-AS fixes needed.
 */

.section extab, "a"
.balign 4
.global etb_800059E0
etb_800059E0:
    .4byte 0x288A0000
    .4byte 0x00000000
.size etb_800059E0, 8

.section extabindex, "a"
.balign 4
.global eti_80011E00
eti_80011E00:
    .4byte fn_801053E8
    .4byte 0x0000026C
    .4byte etb_800059E0
.size eti_80011E00, 12

.text
.balign 4
.global fn_801053E8

fn_801053E8:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stmw 27, 0x3c(1)
    mr. 28, 4
    mr 27, 3
    .4byte 0x4080000C # bge .L_8010541C
    li 3, 0x0
    .4byte 0x48000218 # b .L_80105630
L_8010541C:
    mr 3, 28
    bl fn_8023DE58
    lwz 30, 0x4(27)
    cmpw 30, 3
    .4byte 0x4182000C # beq .L_80105438
    li 3, 0x0
    .4byte 0x480001FC # b .L_80105630
L_80105438:
    lfs 0, 0x60(27)
    stfs 0, 0x14(1)
    lfs 0, 0x64(27)
    stfs 0, 0x18(1)
    lfs 0, 0x68(27)
    stfs 0, 0x1c(1)
    lfs 0, 0x6c(27)
    stfs 0, 0x20(1)
    bl GetRoomConfigRecord
    addis 0, 3, 0x1
    add 3, 0, 30
    lbz 0, 0x31df(3)
    cmplwi 0, 0x0
    .4byte 0x41820080 # beq .L_801054EC
    lfs 1, 0x14(1)
    mr 3, 28
    lfs 3, 0xc(27)
    addi 4, 1, 0x14
    lfs 0, 0x1c(1)
    li 6, 0x0
    fadds 1, 1, 3
    lfs 4, 0x18(1)
    lfs 2, 0x20(1)
    fadds 3, 0, 3
    .4byte 0xC002928C # lfs f0, lbl_8053C22C@sda21(r0)
    stfs 1, 0x14(1)
    .4byte 0xC0229288 # lfs f1, lbl_8053C228@sda21(r0)
    lfs 5, 0x10(27)
    fadds 4, 4, 5
    stfs 3, 0x1c(1)
    fadds 2, 2, 5
    fsubs 0, 4, 0
    stfs 4, 0x18(1)
    stfs 2, 0x20(1)
    stfs 0, 0x18(1)
    lwz 5, 0x4(27)
    bl fn_8023B0F4
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801054E4
    mr 3, 28
    bl fn_8022DF48
    li 3, 0x1
    .4byte 0x48000150 # b .L_80105630
L_801054E4:
    li 3, 0x0
    .4byte 0x48000148 # b .L_80105630
L_801054EC:
    lis 4, lbl_80534C00@ha
    lis 3, lbl_8052EBC0@ha
    .4byte 0xC3C29288 # lfs f30, lbl_8053C228@sda21(r0)
    addi 30, 4, lbl_80534C00@l
    .4byte 0xC3E29290 # lfs f31, lbl_8053C230@sda21(r0)
    addi 31, 3, lbl_8052EBC0@l
    li 29, 0x0
L_80105508:
    mr 3, 28
    mr 4, 29
    addi 5, 1, 0x8
    bl fn_8022E088
    psq_l 1, 0x8(1), 0, 0
    mr 3, 30
    psq_l 0, 0xc(27), 0, 0
    psq_l 2, 0x10(1), 1, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x8(1), 0, 0
    psq_l 0, 0x14(27), 1, 0
    lfs 1, 0xc(1)
    ps_sub 0, 2, 0
    lfs 2, 0x8(1)
    psq_st 0, 0x10(1), 1, 0
    stfs 30, 0x10(1)
    bl fn_80093340
    lfs 3, 0x8(1)
    fmuls 2, 1, 31
    lfs 0, 0xc(1)
    fmuls 1, 3, 3
    fmuls 0, 0, 0
    fctiwz 2, 2
    fadds 4, 1, 0
    stfd 2, 0x28(1)
    fcmpo cr0, 4, 30
    lwz 0, 0x2c(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_80105580
    .4byte 0x48000028 # b .L_801055A4
L_80105580:
    frsqrte 3, 4
    .4byte 0xC0429294 # lfs f2, lbl_8053C234@sda21(r0)
    .4byte 0xC0029298 # lfs f0, lbl_8053C238@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 0, 2, 0
    fmuls 4, 4, 0
L_801055A4:
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x14(1)
    add 3, 31, 0
    stfs 30, 0x10(1)
    lfs 2, 0x4(3)
    li 0, 0x0
    lfs 1, 0x0(3)
    fmuls 2, 4, 2
    fmuls 1, 4, 1
    fcmpo cr0, 2, 0
    stfs 2, 0x8(1)
    stfs 1, 0xc(1)
    cror eq, gt, eq
    .4byte 0x40820030 # bne .L_80105608
    lfs 0, 0x18(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_80105608
    lfs 0, 0x1c(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_80105608
    lfs 0, 0x20(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_80105608
    li 0, 0x1
L_80105608:
    clrlwi. 0, 0, 24
    .4byte 0x41820014 # beq .L_80105620
    mr 3, 28
    bl fn_8022DF48
    li 3, 0x1
    .4byte 0x48000014 # b .L_80105630
L_80105620:
    addi 29, 29, 0x1
    cmpwi 29, 0x8
    .4byte 0x4180FEE0 # blt .L_80105508
    li 3, 0x0
L_80105630:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    lmw 27, 0x3c(1)
    lwz 0, 0x74(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

