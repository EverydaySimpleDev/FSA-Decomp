/*
 * fn_801D4C70(this) (0x801D4C70-0x801D4ED4, 0x264/612 bytes) - called by
 * fn_801D4BAC (extab_801d4bac.s) to (re)compute the velocity pair this->0x3c/0x40.
 * Switches on the shared this->0x248 state field into several distinct velocity
 * sources:
 *   - states 0/1/0x11: zero velocity (the recurring `lbl_8053F0C8` "base"
 *     constant used as a zero/neutral sentinel).
 *   - state in [0x15,0x16): direction from fn_801D01A0(this+0x5ec, &out) (new,
 *     not yet landed - an anchor/offset resolver given its address-plus-fixed-
 *     offset argument shape).
 *   - state==0x16: same via fn_801D01A0(this+0x5f4, &out) - a DIFFERENT stored
 *     offset, same helper.
 *   - else (the "actively steering" default): picks a raw target delta from one
 *     of three sources depending on a byte flag (this->0x5d1) and sub-state -
 *     either the shared anchor table `lbl_8052EBC0` (stored facing angle at
 *     this->0x5d2) directly, or a "tracked target" position via
 *     fn_8023E724() (new, SDK-shaped, not yet landed - returns a position
 *     pointer), or a fallback stored delta (this->0x5bc/0x5c0 vs this->0x5c4/0x5c8
 *     depending on sub-state) - then normalizes that delta against self position
 *     (this->0xc/0x10) using the CONFIRMED frsqrte/Newton-Raphson fast-inverse-sqrt
 *     idiom (only when the delta exceeds the base-speed constant squared),
 *     scales by a per-state rate (this->0x254, or `lbl_8053F0E0` for state 0x12),
 *     and finally smooths BOTH velocity components toward that target via
 *     fn_801F71A4(&this->0x3c/0x40, rate, max) (a generic "approach at rate,
 *     clamp to max" utility, called twice - once per axis). Needs -mgekko
 *     (psq_l/psq_st for the non-volatile FPR save/restore).
 */

.section extab, "a"
.balign 4
.global etb_800085D0
etb_800085D0:
    .4byte 0x108A0000
    .4byte 0x00000000
.size etb_800085D0, 8

.section extabindex, "a"
.balign 4
.global eti_800159A0
eti_800159A0:
    .4byte fn_801D4C70
    .4byte 0x00000264
    .4byte etb_800085D0
.size eti_800159A0, 12

.text
.balign 4
.global fn_801D4C70

fn_801D4C70:
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
    lwz 4, 0x248(3)
    cmpwi 4, 0x11
    .4byte 0x41820034 # beq .L_801D4CD4
    .4byte 0x40800018 # bge .L_801D4CBC
    cmpwi 4, 0x5
    .4byte 0x40800080 # bge .L_801D4D2C
    cmpwi 4, 0x1
    .4byte 0x40800020 # bge .L_801D4CD4
    .4byte 0x48000074 # b .L_801D4D2C
L_801D4CBC:
    cmpwi 4, 0x16
    .4byte 0x41820048 # beq .L_801D4D08
    .4byte 0x40800068 # bge .L_801D4D2C
    cmpwi 4, 0x15
    .4byte 0x40800018 # bge .L_801D4CE4
    .4byte 0x4800005C # b .L_801D4D2C
L_801D4CD4:
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    .4byte 0x480001CC # b .L_801D4EAC
L_801D4CE4:
    .4byte 0xC022C154 # lfs f1, lbl_8053F0F4@sda21(r0)
    addi 4, 30, 0x5ec
    addi 5, 1, 0x10
    bl fn_801D01A0
    lfs 0, 0x10(1)
    stfs 0, 0x3c(30)
    lfs 0, 0x14(1)
    stfs 0, 0x40(30)
    .4byte 0x480001A8 # b .L_801D4EAC
L_801D4D08:
    .4byte 0xC022C158 # lfs f1, lbl_8053F0F8@sda21(r0)
    addi 4, 30, 0x5f4
    addi 5, 1, 0x8
    bl fn_801D01A0
    lfs 0, 0x8(1)
    stfs 0, 0x3c(30)
    lfs 0, 0xc(1)
    stfs 0, 0x40(30)
    .4byte 0x48000184 # b .L_801D4EAC
L_801D4D2C:
    lbz 0, 0x5d1(30)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_801D4D6C
    lha 0, 0x5d2(30)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC042C144 # lfs f2, lbl_8053F0E4@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfsx 0, 3, 0
    add 3, 3, 0
    lfs 3, 0x4(3)
    fmuls 1, 2, 0
    fmuls 0, 2, 3
    stfs 1, 0x3c(30)
    stfs 0, 0x40(30)
    .4byte 0x48000144 # b .L_801D4EAC
L_801D4D6C:
    .4byte 0xC3C2C128 # lfs f30, lbl_8053F0C8@sda21(r0)
    cmpwi 4, 0xa
    li 31, 0x1
    fmr 31, 30
    .4byte 0x4080001C # bge .L_801D4D98
    cmpwi 4, 0x5
    .4byte 0x4182003C # beq .L_801D4DC0
    .4byte 0x40800024 # bge .L_801D4DAC
    cmpwi 4, 0x4
    .4byte 0x4080001C # bge .L_801D4DAC
    .4byte 0x4800002C # b .L_801D4DC0
L_801D4D98:
    cmpwi 4, 0x15
    .4byte 0x40800024 # bge .L_801D4DC0
    cmpwi 4, 0x12
    .4byte 0x40800010 # bge .L_801D4DB4
    .4byte 0x48000018 # b .L_801D4DC0
L_801D4DAC:
    li 31, 0x0
    .4byte 0x48000034 # b .L_801D4DE4
L_801D4DB4:
    lfs 2, 0x5c4(30)
    lfs 3, 0x5c8(30)
    .4byte 0x48000028 # b .L_801D4DE4
L_801D4DC0:
    lwz 3, 0x5b0(30)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_801D4DDC
    bl fn_8023E724
    lfs 2, 0x0(3)
    lfs 3, 0x4(3)
    .4byte 0x4800000C # b .L_801D4DE4
L_801D4DDC:
    lfs 2, 0x5bc(30)
    lfs 3, 0x5c0(30)
L_801D4DE4:
    clrlwi. 0, 31, 24
    .4byte 0x4182009C # beq .L_801D4E84
    lfs 1, 0x10(30)
    lis 3, lbl_80539D44@ha
    lfs 0, 0xc(30)
    fsubs 31, 3, 1
    .4byte 0xC022C130 # lfs f1, lbl_8053F0D0@sda21(r0)
    fsubs 30, 2, 0
    lfs 0, lbl_80539D44@l(3)
    fmuls 2, 31, 31
    fmuls 0, 1, 0
    fmadds 4, 30, 30, 2
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x41820040 # beq .L_801D4E5C
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801D4E34
    .4byte 0x48000024 # b .L_801D4E54
L_801D4E34:
    frsqrte 3, 4
    .4byte 0xC042C158 # lfs f2, lbl_8053F0F8@sda21(r0)
    .4byte 0xC002C15C # lfs f0, lbl_8053F0FC@sda21(r0)
    frsp 3, 3
    fmuls 1, 3, 3
    fmuls 2, 2, 3
    fnmsubs 0, 4, 1, 0
    fmuls 4, 2, 0
L_801D4E54:
    fmuls 30, 30, 4
    fmuls 31, 31, 4
L_801D4E5C:
    lwz 0, 0x248(30)
    cmpwi 0, 0x12
    .4byte 0x40820014 # bne .L_801D4E78
    .4byte 0xC002C140 # lfs f0, lbl_8053F0E0@sda21(r0)
    fmuls 30, 30, 0
    fmuls 31, 31, 0
    .4byte 0x48000010 # b .L_801D4E84
L_801D4E78:
    lfs 0, 0x254(30)
    fmuls 30, 30, 0
    fmuls 31, 31, 0
L_801D4E84:
    fmr 1, 30
    .4byte 0xC042C160 # lfs f2, lbl_8053F100@sda21(r0)
    .4byte 0xC062C138 # lfs f3, lbl_8053F0D8@sda21(r0)
    addi 3, 30, 0x3c
    bl fn_801F71A4
    fmr 1, 31
    .4byte 0xC042C160 # lfs f2, lbl_8053F100@sda21(r0)
    .4byte 0xC062C138 # lfs f3, lbl_8053F0D8@sda21(r0)
    addi 3, 30, 0x40
    bl fn_801F71A4
L_801D4EAC:
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

