/*
 * fn_801D4ED4(this) (0x801D4ED4-0x801D5180, 0x2AC/684 bytes) - dtor_801D46FC's
 * class's REAL per-frame update() (its main game-logic driver). Ties together
 * everything landed so far for this class:
 *
 * - Facing/orbit: decrements a byte counter (this->0x5d1); at 0, calls
 *   fn_80217CD8(this+0x448) (the same non-destructor sub-object method
 *   fn_801D4A84 calls) and steps this->0x14 via the SAME shared anchor table
 *   `lbl_8052EBC0` lookup (this->0x5d2 angle) that fn_801D4BAC uses.
 * - Dispatches on this->0x248 through a SECOND real compiler jumptable
 *   (`jumptable_804A4A68`, distinct from fn_801D47DC's `jumptable_804A49FC`)
 *   for states 0-0x1a, whose cases conditionally copy this->0x20/0x23c into
 *   this->0x14/0x44 (bit 0 of this->0x230 gated) or set this->0x14 to a fixed
 *   constant.
 * - Default/no-jumptable-match path: steps a raw target delta (this->0x5bc/
 *   0x5c0) up/down by a fixed constant `lbl_8053F10C` based on a sub-state
 *   byte (this->0x5b8, 0-4), THEN makes a REAL VIRTUAL CALL through this
 *   object's own vtable slot 0x4c/4=19 with a 3-float param block (delta X/Z
 *   + the recurring "base" constant `lbl_8053F0C8`) - a "can I move this way"
 *   query whose true result overwrites this->0x5bc/0x5c0 with a corrected
 *   direction (f31/f30). On false, a timeout counter (this->0x5b4, cap 0x3c =
 *   60 frames) eventually calls fn_801CD580(this->0x5b8) to pick a NEW
 *   sub-state and resets the timer.
 * - If bit 2 of this->0x230 is clear: calls fn_801CE32C(this) (not yet
 *   landed).
 * - Final position clamp on this->0x14: floored at `lbl_8053F0EC` for
 *   state==1; otherwise, if the CONFIRMED fn_801CD2F8(this->0x4) self-ID
 *   check is false, range-clamped between `lbl_8053F108`/`lbl_8053F110`.
 * - Advances THREE identical embedded sub-objects (this+0x52c/0x540/0x554,
 *   each 0x14 bytes apart - a small fixed-size array) via fn_801E4A18(subPtr)
 *   (not yet landed) - likely 3 parallel animation/timer sub-components.
 *
 * Needs -mgekko (psq_l/psq_st for non-volatile FPR save/restore).
 */

.section extab, "a"
.balign 4
.global etb_800085D8
etb_800085D8:
    .4byte 0x188A0000
    .4byte 0x00000000
.size etb_800085D8, 8

.section extabindex, "a"
.balign 4
.global eti_800159AC
eti_800159AC:
    .4byte fn_801D4ED4
    .4byte 0x000002AC
    .4byte etb_800085D8
.size eti_800159AC, 12

.text
.balign 4
.global fn_801D4ED4

fn_801D4ED4:
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
    mr 30, 3
    li 31, 0x0
    lbz 3, 0x5d1(3)
    cmplwi 3, 0x0
    .4byte 0x41820050 # beq .L_801D4F5C
    subi 0, 3, 0x1
    stb 0, 0x5d1(30)
    lbz 0, 0x5d1(30)
    cmplwi 0, 0x0
    .4byte 0x4082003C # bne .L_801D4F5C
    addi 3, 30, 0x448
    bl fn_80217CD8
    lha 0, 0x5d2(30)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC042C164 # lfs f2, lbl_8053F104@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    add 3, 3, 0
    lfs 3, 0x4(3)
    fmuls 1, 2, 0
    fmuls 0, 2, 3
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
L_801D4F5C:
    lwz 0, 0x248(30)
    cmplwi 0, 0x1a
    .4byte 0x4181004C # bgt .L_801D4FB0
    lis 3, jumptable_804A4A68@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A4A68@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    lwz 0, 0x230(30)
    clrlwi. 0, 0, 31
    .4byte 0x41820014 # beq .L_801D4F9C
    lfs 0, 0x20(30)
    stfs 0, 0x14(30)
    lfs 0, 0x23c(30)
    stfs 0, 0x44(30)
L_801D4F9C:
    li 31, 0x1
    .4byte 0x48000128 # b .L_801D50C8
    .4byte 0xC002C168 # lfs f0, lbl_8053F108@sda21(r0)
    stfs 0, 0x14(30)
    .4byte 0x4800011C # b .L_801D50C8
L_801D4FB0:
    lwz 0, 0x5b8(30)
    lfs 31, 0x5bc(30)
    cmpwi 0, 0x2
    lfs 30, 0x5c0(30)
    .4byte 0x4182004C # beq .L_801D500C
    .4byte 0x40800014 # bge .L_801D4FD8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801D4FE4
    .4byte 0x40800028 # bge .L_801D4FF8
    .4byte 0x4800005C # b .L_801D5030
L_801D4FD8:
    cmpwi 0, 0x4
    .4byte 0x40800054 # bge .L_801D5030
    .4byte 0x48000040 # b .L_801D5020
L_801D4FE4:
    lfs 1, 0x5bc(30)
    .4byte 0xC002C16C # lfs f0, lbl_8053F10C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x5bc(30)
    .4byte 0x4800003C # b .L_801D5030
L_801D4FF8:
    lfs 1, 0x5bc(30)
    .4byte 0xC002C16C # lfs f0, lbl_8053F10C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x5bc(30)
    .4byte 0x48000028 # b .L_801D5030
L_801D500C:
    lfs 1, 0x5c0(30)
    .4byte 0xC002C16C # lfs f0, lbl_8053F10C@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x5c0(30)
    .4byte 0x48000014 # b .L_801D5030
L_801D5020:
    lfs 1, 0x5c0(30)
    .4byte 0xC002C16C # lfs f0, lbl_8053F10C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0x5c0(30)
L_801D5030:
    lfs 2, 0x5c0(30)
    mr 3, 30
    lfs 1, 0x5bc(30)
    addi 5, 1, 0x8
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    li 29, 0x0
    stfs 1, 0x8(1)
    stfs 2, 0xc(1)
    stfs 0, 0x10(1)
    lwz 12, 0x0(30)
    lwz 4, 0x4(30)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801D5080
    stfs 31, 0x5bc(30)
    li 29, 0x1
    stfs 30, 0x5c0(30)
    .4byte 0x48000020 # b .L_801D509C
L_801D5080:
    lwz 3, 0x5b4(30)
    addi 0, 3, 0x1
    stw 0, 0x5b4(30)
    lwz 0, 0x5b4(30)
    cmpwi 0, 0x3c
    .4byte 0x41800008 # blt .L_801D509C
    li 29, 0x1
L_801D509C:
    clrlwi. 0, 29, 24
    .4byte 0x41820018 # beq .L_801D50B8
    lwz 3, 0x5b8(30)
    bl fn_801CD580
    stw 3, 0x5b8(30)
    li 0, 0x0
    stw 0, 0x5b4(30)
L_801D50B8:
    lwz 0, 0x230(30)
    clrlwi. 0, 0, 29
    .4byte 0x40820008 # bne .L_801D50C8
    li 31, 0x1
L_801D50C8:
    clrlwi. 0, 31, 24
    .4byte 0x4182000C # beq .L_801D50D8
    mr 3, 30
    bl fn_801CE32C
L_801D50D8:
    lwz 0, 0x248(30)
    cmpwi 0, 0x1
    .4byte 0x41820008 # beq .L_801D50E8
    .4byte 0x4800001C # b .L_801D5100
L_801D50E8:
    lfs 1, 0x14(30)
    .4byte 0xC002C14C # lfs f0, lbl_8053F0EC@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800048 # bge .L_801D513C
    stfs 0, 0x14(30)
    .4byte 0x48000040 # b .L_801D513C
L_801D5100:
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x40820030 # bne .L_801D513C
    lfs 1, 0x14(30)
    .4byte 0xC002C168 # lfs f0, lbl_8053F108@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801D5128
    fmr 1, 0
    .4byte 0x48000014 # b .L_801D5138
L_801D5128:
    .4byte 0xC002C170 # lfs f0, lbl_8053F110@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801D5138
    fmr 1, 0
L_801D5138:
    stfs 1, 0x14(30)
L_801D513C:
    addi 3, 30, 0x52c
    bl fn_801E4A18
    addi 3, 30, 0x540
    bl fn_801E4A18
    addi 3, 30, 0x554
    bl fn_801E4A18
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

