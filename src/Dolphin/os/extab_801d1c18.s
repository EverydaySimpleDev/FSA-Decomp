/*
 * fn_801D1C18 (0x801D1C18-0x801D1D60, 0x148/328 bytes) - the "timed-cue lookup table"
 * component's per-frame re-evaluation driver (see project_fsa_multiple_inheritance_pattern.md
 * for the full field-layout and role writeup). This is the exact function every derived
 * actor class this session called as `fn_801D1C18(this+SubobjOffset)` at the tail of its own
 * update().
 *
 * Real understanding: bails if the current sequence index (this->0x8) is out of range
 * [0, this->0x4), or if the "already fired once" run-guard (this->0x20) is set (clearing it
 * instead, so the NEXT call actually runs). Otherwise walks the active sequence's step list
 * (this->0x0[this->0x8], each 4-byte step = {int16 value, int16 duration}, terminated by a
 * negative value), accumulating durations and re-using the ALREADY-COMPUTED time window
 * (this->0x34, set by a prior fn_801D1F14/fn_801D1D60/fn_801D22DC call) to find the step
 * whose cumulative-duration window contains "now." Clamps the winning step's value into
 * this->0x10 (bounded by the global [this->0x14, this->0x18] min/max precomputed at
 * fn_801D2608 registration time) and records the step's index into this->0x1c. Also calls
 * fn_800C3BD8(this+0x24) unconditionally first - RESOLVED (see
 * project_fsa_multiple_inheritance_pattern.md): this->0x24 is the start of a nested embedded
 * sub-object (a small blend/interpolation timer, own vtable lbl_8049CC34), and fn_800C3BD8
 * is that sub-object's own non-virtual "advance one frame" method (accumulates its 0x10
 * float by its 0xc float, dispatches on its own state byte at 0x4).
 */

.section extab, "a"
.balign 4
.global etb_800084E8
etb_800084E8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800084E8, 8

.section extabindex, "a"
.balign 4
.global eti_80015844
eti_80015844:
    .4byte fn_801D1C18
    .4byte 0x00000148
    .4byte etb_800084E8
.size eti_80015844, 12

.text
.balign 4
.global fn_801D1C18

fn_801D1C18:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 3, 0x8(3)
    cmpwi 3, 0x0
    .4byte 0x41800118 # blt .L_801D1D4C
    lwz 0, 0x4(31)
    cmpw 3, 0
    .4byte 0x4080010C # bge .L_801D1D4C
    lbz 0, 0x20(31)
    cmplwi 0, 0x0
    .4byte 0x41820010 # beq .L_801D1C5C
    li 0, 0x0
    stb 0, 0x20(31)
    .4byte 0x480000F4 # b .L_801D1D4C
L_801D1C5C:
    addi 3, 31, 0x24
    bl fn_800C3BD8
    lwz 0, 0x8(31)
    li 6, 0x0
    lwz 3, 0x0(31)
    mr 5, 6
    slwi 0, 0, 2
    lfs 2, 0x34(31)
    lwzx 9, 3, 0
    lis 3, 0x4330
    .4byte 0xC822C098 # lfd f1, lbl_8053F038@sda21(r0)
    mr 7, 9
    .4byte 0x48000080 # b .L_801D1D0C
L_801D1C90:
    xoris 0, 6, 0x8000
    lha 4, 0x2(7)
    stw 0, 0xc(1)
    add 6, 6, 4
    stw 3, 0x8(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820050 # bne .L_801D1D04
    xoris 0, 6, 0x8000
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    .4byte 0x40800034 # bge .L_801D1D04
    lwz 3, 0x18(31)
    lwz 0, 0x14(31)
    cmpw 8, 3
    .4byte 0x4081000C # ble .L_801D1CEC
    mr 8, 3
    .4byte 0x48000010 # b .L_801D1CF8
L_801D1CEC:
    cmpw 8, 0
    .4byte 0x40800008 # bge .L_801D1CF8
    mr 8, 0
L_801D1CF8:
    stw 8, 0x10(31)
    stw 5, 0x1c(31)
    .4byte 0x4800004C # b .L_801D1D4C
L_801D1D04:
    addi 7, 7, 0x4
    addi 5, 5, 0x1
L_801D1D0C:
    lha 8, 0x0(7)
    extsh. 0, 8
    .4byte 0x4080FF7C # bge .L_801D1C90
    lwz 4, 0x18(31)
    lha 0, 0x0(9)
    lwz 3, 0x14(31)
    cmpw 0, 4
    .4byte 0x4081000C # ble .L_801D1D34
    mr 0, 4
    .4byte 0x48000010 # b .L_801D1D40
L_801D1D34:
    cmpw 0, 3
    .4byte 0x40800008 # bge .L_801D1D40
    mr 0, 3
L_801D1D40:
    stw 0, 0x10(31)
    li 0, 0x0
    stw 0, 0x1c(31)
L_801D1D4C:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

