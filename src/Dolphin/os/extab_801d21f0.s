/*
 * fn_801D21F0 (0x801D21F0-0x801D2264, 0x74/116 bytes) - a boolean "is my window elapsed"
 * query for the "timed-cue lookup table" component (see
 * project_fsa_multiple_inheritance_pattern.md). This is the exact function confirmed used
 * by derived actor classes to gate state transitions (e.g. the state-3 check in fn_8010B8B0).
 *
 * Real understanding: returns true immediately if this->0x29's bit 0 is set. Else, if
 * this->0x28 (mode) is nonzero, returns false. Else checks whether enough time has elapsed
 * since this->0xc, using this->0x34 plus a constant (lbl_8053F048) as the threshold - the
 * same timestamp-delta idiom used throughout this component.
 */

.section extab, "a"
.balign 4
.global etb_80008510
etb_80008510:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_80008510, 8

.section extabindex, "a"
.balign 4
.global eti_80015880
eti_80015880:
    .4byte fn_801D21F0
    .4byte 0x00000074
    .4byte etb_80008510
.size eti_80015880, 12

.text
.balign 4
.global fn_801D21F0

fn_801D21F0:
    lbz 0, 0x29(3)
    li 5, 0x0
    stwu 1, -0x10(1)
    clrlwi. 0, 0, 31
    .4byte 0x40820054 # bne .L_801D2254
    lbz 0, 0x28(3)
    cmplwi 0, 0x0
    .4byte 0x4082004C # bne .L_801D2258
    .4byte 0xC022C0A0 # lfs f1, lbl_8053F040@sda21(r0)
    lfs 0, 0x30(3)
    fcmpu cr0, 1, 0
    .4byte 0x4082003C # bne .L_801D2258
    lwz 4, 0xc(3)
    lis 0, 0x4330
    stw 0, 0x8(1)
    xoris 0, 4, 0x8000
    .4byte 0xC842C098 # lfd f2, lbl_8053F038@sda21(r0)
    stw 0, 0xc(1)
    .4byte 0xC002C0A8 # lfs f0, lbl_8053F048@sda21(r0)
    lfd 1, 0x8(1)
    lfs 3, 0x34(3)
    fsubs 1, 1, 2
    fsubs 0, 1, 0
    fcmpo cr0, 3, 0
    .4byte 0x40810008 # ble .L_801D2258
L_801D2254:
    li 5, 0x1
L_801D2258:
    mr 3, 5
    addi 1, 1, 0x10
    blr

