/*
 * fn_801D1F14 (0x801D1F14-0x801D208C, 0x178/376 bytes) - the "timed-cue lookup table"
 * component's general-purpose "what's due at time `timeOffset`" query (see
 * project_fsa_multiple_inheritance_pattern.md). This is the exact function every derived
 * actor class this session called as `fn_801D1F14(this+SubobjOffset, 0.0)` - every observed
 * call site passed a literal 0.0, i.e. "what's due right now."
 *
 * Real understanding: computes the active time-window (this->0x34) from the caller-supplied
 * `timeOffset` (f1) and this->0x28's mode (clamped against lbl_8053F040/subtracted by
 * lbl_8053F044, matching fn_801D1D60's logic but sourced from a parameter instead of the
 * stored this->0xc timestamp). Then performs the same step-list walk as fn_801D1C18/
 * fn_801D1D60: accumulate durations across the active sequence (this->0x0[this->0x8])
 * looking for the step whose cumulative-duration window contains "now," clamping the
 * winning step's value into this->0x10 (bounded by [this->0x14, this->0x18]) and its index
 * into this->0x1c.
 */

.section extab, "a"
.balign 4
.global etb_800084F8
etb_800084F8:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800084F8, 8

.section extabindex, "a"
.balign 4
.global eti_8001585C
eti_8001585C:
    .4byte fn_801D1F14
    .4byte 0x00000178
    .4byte etb_800084F8
.size eti_8001585C, 12

.text
.balign 4
.global fn_801D1F14

fn_801D1F14:
    stwu 1, -0x10(1)
    lis 0, 0x4330
    .4byte 0xC842C098 # lfd f2, lbl_8053F038@sda21(r0)
    lwz 4, 0xc(3)
    stw 0, 0x8(1)
    xoris 0, 4, 0x8000
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 2
    fcmpo cr0, 1, 0
    .4byte 0x4081000C # ble .L_801D1F48
    fmr 1, 0
    .4byte 0x48000014 # b .L_801D1F58
L_801D1F48:
    .4byte 0xC002C0A0 # lfs f0, lbl_8053F040@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801D1F58
    fmr 1, 0
L_801D1F58:
    xoris 4, 4, 0x8000
    lis 0, 0x4330
    stw 4, 0xc(1)
    .4byte 0xC842C098 # lfd f2, lbl_8053F038@sda21(r0)
    stw 0, 0x8(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 2
    fcmpu cr0, 1, 0
    .4byte 0x40820020 # bne .L_801D1F98
    lbz 0, 0x28(3)
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_801D1F90
    .4byte 0xC022C0A0 # lfs f1, lbl_8053F040@sda21(r0)
    .4byte 0x4800000C # b .L_801D1F98
L_801D1F90:
    .4byte 0xC002C0A4 # lfs f0, lbl_8053F044@sda21(r0)
    fsubs 1, 1, 0
L_801D1F98:
    stfs 1, 0x34(3)
    li 7, 0x0
    .4byte 0xC822C098 # lfd f1, lbl_8053F038@sda21(r0)
    mr 6, 7
    lwz 0, 0x8(3)
    lis 4, 0x4330
    lwz 5, 0x0(3)
    slwi 0, 0, 2
    lfs 2, 0x34(3)
    lwzx 10, 5, 0
    mr 8, 10
    .4byte 0x48000080 # b .L_801D2044
L_801D1FC8:
    xoris 0, 7, 0x8000
    lha 5, 0x2(8)
    stw 0, 0xc(1)
    add 7, 7, 5
    stw 4, 0x8(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820050 # bne .L_801D203C
    xoris 0, 7, 0x8000
    stw 4, 0x8(1)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    .4byte 0x40800034 # bge .L_801D203C
    lwz 4, 0x18(3)
    lwz 0, 0x14(3)
    cmpw 9, 4
    .4byte 0x4081000C # ble .L_801D2024
    mr 9, 4
    .4byte 0x48000010 # b .L_801D2030
L_801D2024:
    cmpw 9, 0
    .4byte 0x40800008 # bge .L_801D2030
    mr 9, 0
L_801D2030:
    stw 9, 0x10(3)
    stw 6, 0x1c(3)
    .4byte 0x4800004C # b .L_801D2084
L_801D203C:
    addi 8, 8, 0x4
    addi 6, 6, 0x1
L_801D2044:
    lha 9, 0x0(8)
    extsh. 0, 9
    .4byte 0x4080FF7C # bge .L_801D1FC8
    lwz 5, 0x18(3)
    lha 0, 0x0(10)
    lwz 4, 0x14(3)
    cmpw 0, 5
    .4byte 0x4081000C # ble .L_801D206C
    mr 0, 5
    .4byte 0x48000010 # b .L_801D2078
L_801D206C:
    cmpw 0, 4
    .4byte 0x40800008 # bge .L_801D2078
    mr 0, 4
L_801D2078:
    stw 0, 0x10(3)
    li 0, 0x0
    stw 0, 0x1c(3)
L_801D2084:
    addi 1, 1, 0x10
    blr

