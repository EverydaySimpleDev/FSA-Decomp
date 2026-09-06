/*
 * fn_801D70BC(this, posSrc, mode) (0x801D70BC-0x801D72C0, 0x204/516 bytes) -
 * "launch my FIRST recorded target" for the reusable "this+0x4c4" sub-object
 * (extab_801d6e20.s). Caches posSrc into this->0x48/0x4c/0x50 and resolves the
 * self-ID validity flag exactly like fn_801D6E20/fn_801D686C's other methods.
 * Resolves target-ID slot this->0x0[0] via the CONFIRMED SpatialRegistry_GetBase/
 * fn_801F666C pair; if valid AND `mode` in [0,4): computes a direction from
 * `fn_8023E724(mode)`'s position to the target's position, normalizes it via
 * the CONFIRMED frsqrte idiom, and rotates it by a small PRNG-jittered angle
 * (via `fn_801CD664` + the CONFIRMED shared anchor table `lbl_8052EBC0`).
 * Otherwise (mode invalid or no target) picks a fully random anchor-table
 * direction instead. Either way, scales the result by `lbl_8053F188` and
 * WRITES IT INTO THE RESOLVED TARGET'S OWN this->0x3c/0x40/0x44 fields (the
 * same velocity/state fields this sub-object itself uses) - i.e. this
 * "launches"/knocks back the target object, not `this`. Unconditionally ends
 * by setting `this`'s own state (this->0x44) to 4 - the SAME "track/snap to
 * target" state fn_801D6E20 implements. Needs -mgekko.
 */

.section extab, "a"
.balign 4
.global etb_800086C4
etb_800086C4:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_800086C4, 8

.section extabindex, "a"
.balign 4
.global eti_80015A78
eti_80015A78:
    .4byte fn_801D70BC
    .4byte 0x00000204
    .4byte etb_800086C4
.size eti_80015A78, 12

.text
.balign 4
.global fn_801D70BC

fn_801D70BC:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 30, 4
    .4byte 0xC042C1CC # lfs f2, lbl_8053F16C@sda21(r0)
    lfs 1, 0x4(4)
    mr 31, 3
    lfs 0, 0x0(4)
    mr 29, 5
    fadds 1, 2, 1
    lfs 2, 0x8(4)
    stfs 0, 0x48(3)
    stfs 1, 0x4c(3)
    stfs 2, 0x50(3)
    lwz 3, 0x40(3)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801D7130
    .4byte 0xC022C1D0 # lfs f1, lbl_8053F170@sda21(r0)
    lfs 0, 0x4(30)
    fadds 0, 1, 0
    stfs 0, 0x4c(31)
L_801D7130:
    lwz 30, 0x0(31)
    cmpwi 30, 0x0
    .4byte 0x41800154 # blt .L_801D728C
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    mr. 30, 3
    .4byte 0x41820140 # beq .L_801D728C
    cmpwi 29, 0x0
    .4byte 0x418000EC # blt .L_801D7240
    cmpwi 29, 0x4
    .4byte 0x408000E4 # bge .L_801D7240
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x4(3)
    mr 3, 29
    lfs 0, 0x10(30)
    fsubs 30, 1, 0
    bl fn_8023E724
    lfs 3, 0x0(3)
    lis 3, lbl_80539D44@ha
    lfs 0, 0xc(30)
    fmuls 2, 30, 30
    .4byte 0xC022C1B8 # lfs f1, lbl_8053F158@sda21(r0)
    fsubs 31, 3, 0
    lfs 0, lbl_80539D44@l(3)
    fmuls 0, 1, 0
    fmadds 4, 31, 31, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_801D71B8
    .4byte 0xC3E2C1D4 # lfs f31, lbl_8053F174@sda21(r0)
    .4byte 0xC3C2C1B0 # lfs f30, lbl_8053F150@sda21(r0)
    .4byte 0x4800004C # b .L_801D7200
L_801D71B8:
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801D7200
    .4byte 0xC002C1B0 # lfs f0, lbl_8053F150@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801D71D8
    .4byte 0x48000024 # b .L_801D71F8
L_801D71D8:
    frsqrte 3, 4
    .4byte 0xC042C1C0 # lfs f2, lbl_8053F160@sda21(r0)
    .4byte 0xC002C1C4 # lfs f0, lbl_8053F164@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 4, 2, 0
L_801D71F8:
    fmuls 31, 31, 4
    fmuls 30, 30, 4
L_801D7200:
    li 3, 0xe39
    bl fn_801CD664
    subi 0, 3, 0x71c
    lis 3, lbl_8052EBC0@ha
    extsh 0, 0
    neg 0, 0
    addi 4, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfsx 3, 4, 0
    lfs 2, 0x4(3)
    fmuls 1, 30, 3
    fmuls 0, 30, 2
    fmsubs 2, 31, 2, 1
    fmadds 3, 31, 3, 0
    .4byte 0x48000028 # b .L_801D7264
L_801D7240:
    lis 3, 0x1
    bl fn_801CD664
    extsh 0, 3
    lis 3, lbl_8052EBC0@ha
    addi 4, 3, lbl_8052EBC0@l
    rlwinm 0, 0, 30, 18, 28
    add 3, 4, 0
    lfsx 2, 4, 0
    lfs 3, 0x4(3)
L_801D7264:
    .4byte 0xC022C1E8 # lfs f1, lbl_8053F188@sda21(r0)
    .4byte 0xC002C1B0 # lfs f0, lbl_8053F150@sda21(r0)
    fmuls 2, 2, 1
    fmuls 3, 3, 1
    stfs 0, 0x10(1)
    stfs 2, 0x8(1)
    stfs 3, 0xc(1)
    psq_l 1, 0x8(1), 0, 0
    psq_st 1, 0x3c(30), 0, 0
    stfs 0, 0x44(30)
L_801D728C:
    li 0, 0x4
    stw 0, 0x44(31)
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 0, 0x54(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

