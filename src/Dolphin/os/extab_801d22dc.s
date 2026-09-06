/*
 * fn_801D22DC (0x801D22DC-0x801D2608, 0x32C/812 bytes) - "select and activate sequence" for
 * the "timed-cue lookup table" component (see project_fsa_multiple_inheritance_pattern.md).
 * This is `fn_801D22DC(this, sequenceIndex, mode, evaluateNow)`, the call every derived
 * actor class this session used (with varying literal args) to switch which attack/cue
 * sequence is active.
 *
 * Real understanding: sets this->0x8=sequenceIndex, walks the FULL step list for that
 * sequence (this->0x0[sequenceIndex]) summing every step's duration into this->0xc, then
 * (unless mode==2) subtracts 1 - a "back up to the start of the last step, not its end"
 * adjustment. Records mode into this->0x28, calls fn_800C3608(this+0x24, this->0xc) - RESOLVED
 * (see project_fsa_multiple_inheritance_pattern.md): this is the nested embedded blend-timer
 * sub-object's own "construct" method (state=2, value=this->0xc, two constant floats).
 *
 * If `evaluateNow` is falsy, stops here (the sequence is selected but not yet evaluated -
 * this->0x10/0x1c/0x20 are left as they were). If truthy, immediately computes the active
 * time-window (this->0x34) from this->0xc and mode (same clamp logic as fn_801D1D60/
 * fn_801D1F14), then performs the same step-list "what's due now" walk as fn_801D1C18,
 * clamping the result into this->0x10 (bounded by [this->0x14, this->0x18]) and this->0x1c,
 * and clears the run-guard flag this->0x20.
 */

.section extab, "a"
.balign 4
.global etb_80008528
etb_80008528:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_80008528, 8

.section extabindex, "a"
.balign 4
.global eti_800158A4
eti_800158A4:
    .4byte fn_801D22DC
    .4byte 0x0000032C
    .4byte etb_80008528
.size eti_800158A4, 12

.text
.balign 4
.global fn_801D22DC

fn_801D22DC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stfd 31, 0x20(1)
    psq_st 31, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 31, 3
    li 0, 0x0
    stw 4, 0x8(3)
    mr 29, 5
    mr 30, 6
    lwz 3, 0x8(3)
    lwz 4, 0x0(31)
    slwi 3, 3, 2
    lwzx 4, 4, 3
    stw 0, 0xc(31)
    .4byte 0x48000018 # b .L_801D233C
L_801D2328:
    lha 0, 0x2(4)
    addi 4, 4, 0x4
    lwz 3, 0xc(31)
    add 0, 3, 0
    stw 0, 0xc(31)
L_801D233C:
    lha 0, 0x0(4)
    cmpwi 0, 0x0
    .4byte 0x4080FFE4 # bge .L_801D2328
    cmpwi 29, 0x2
    .4byte 0x41820010 # beq .L_801D235C
    lwz 3, 0xc(31)
    subi 0, 3, 0x1
    stw 0, 0xc(31)
L_801D235C:
    lwz 0, 0xc(31)
    addi 3, 31, 0x24
    lfs 31, 0x34(31)
    extsh 4, 0
    bl fn_800C3608
    clrlwi. 0, 30, 24
    stb 29, 0x28(31)
    .4byte 0x4182017C # beq .L_801D24F4
    lwz 3, 0xc(31)
    lis 0, 0x4330
    stw 0, 0x8(1)
    xoris 0, 3, 0x8000
    .4byte 0xC822C098 # lfd f1, lbl_8053F038@sda21(r0)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fcmpo cr0, 31, 0
    .4byte 0x4081000C # ble .L_801D23AC
    fmr 31, 0
    .4byte 0x48000014 # b .L_801D23BC
L_801D23AC:
    .4byte 0xC002C0A0 # lfs f0, lbl_8053F040@sda21(r0)
    fcmpo cr0, 31, 0
    .4byte 0x40800008 # bge .L_801D23BC
    fmr 31, 0
L_801D23BC:
    xoris 3, 3, 0x8000
    lis 0, 0x4330
    stw 3, 0xc(1)
    .4byte 0xC822C098 # lfd f1, lbl_8053F038@sda21(r0)
    stw 0, 0x8(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fcmpu cr0, 31, 0
    .4byte 0x40820020 # bne .L_801D23FC
    lbz 0, 0x28(31)
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_801D23F4
    .4byte 0xC3E2C0A0 # lfs f31, lbl_8053F040@sda21(r0)
    .4byte 0x4800000C # b .L_801D23FC
L_801D23F4:
    .4byte 0xC002C0A4 # lfs f0, lbl_8053F044@sda21(r0)
    fsubs 31, 31, 0
L_801D23FC:
    stfs 31, 0x34(31)
    li 6, 0x0
    .4byte 0xC822C098 # lfd f1, lbl_8053F038@sda21(r0)
    mr 5, 6
    lwz 0, 0x8(31)
    lis 3, 0x4330
    lwz 4, 0x0(31)
    slwi 0, 0, 2
    lfs 2, 0x34(31)
    lwzx 9, 4, 0
    mr 7, 9
    .4byte 0x48000080 # b .L_801D24A8
L_801D242C:
    xoris 0, 6, 0x8000
    lha 4, 0x2(7)
    stw 0, 0xc(1)
    add 6, 6, 4
    stw 3, 0x8(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820050 # bne .L_801D24A0
    xoris 0, 6, 0x8000
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    .4byte 0x40800034 # bge .L_801D24A0
    lwz 3, 0x18(31)
    lwz 0, 0x14(31)
    cmpw 8, 3
    .4byte 0x4081000C # ble .L_801D2488
    mr 8, 3
    .4byte 0x48000010 # b .L_801D2494
L_801D2488:
    cmpw 8, 0
    .4byte 0x40800008 # bge .L_801D2494
    mr 8, 0
L_801D2494:
    stw 8, 0x10(31)
    stw 5, 0x1c(31)
    .4byte 0x4800004C # b .L_801D24E8
L_801D24A0:
    addi 7, 7, 0x4
    addi 5, 5, 0x1
L_801D24A8:
    lha 8, 0x0(7)
    extsh. 0, 8
    .4byte 0x4080FF7C # bge .L_801D242C
    lwz 4, 0x18(31)
    lha 0, 0x0(9)
    lwz 3, 0x14(31)
    cmpw 0, 4
    .4byte 0x4081000C # ble .L_801D24D0
    mr 0, 4
    .4byte 0x48000010 # b .L_801D24DC
L_801D24D0:
    cmpw 0, 3
    .4byte 0x40800008 # bge .L_801D24DC
    mr 0, 3
L_801D24DC:
    stw 0, 0x10(31)
    li 0, 0x0
    stw 0, 0x1c(31)
L_801D24E8:
    li 0, 0x0
    stb 0, 0x20(31)
    .4byte 0x480000F4 # b .L_801D25E4
L_801D24F4:
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
    .4byte 0x48000080 # b .L_801D259C
L_801D2520:
    xoris 0, 6, 0x8000
    lha 4, 0x2(7)
    stw 0, 0xc(1)
    add 6, 6, 4
    stw 3, 0x8(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fcmpo cr0, 0, 2
    cror eq, lt, eq
    .4byte 0x40820050 # bne .L_801D2594
    xoris 0, 6, 0x8000
    stw 3, 0x8(1)
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    fcmpo cr0, 2, 0
    .4byte 0x40800034 # bge .L_801D2594
    lwz 3, 0x18(31)
    lwz 0, 0x14(31)
    cmpw 8, 3
    .4byte 0x4081000C # ble .L_801D257C
    mr 8, 3
    .4byte 0x48000010 # b .L_801D2588
L_801D257C:
    cmpw 8, 0
    .4byte 0x40800008 # bge .L_801D2588
    mr 8, 0
L_801D2588:
    stw 8, 0x10(31)
    stw 5, 0x1c(31)
    .4byte 0x4800004C # b .L_801D25DC
L_801D2594:
    addi 7, 7, 0x4
    addi 5, 5, 0x1
L_801D259C:
    lha 8, 0x0(7)
    extsh. 0, 8
    .4byte 0x4080FF7C # bge .L_801D2520
    lwz 4, 0x18(31)
    lha 0, 0x0(9)
    lwz 3, 0x14(31)
    cmpw 0, 4
    .4byte 0x4081000C # ble .L_801D25C4
    mr 0, 4
    .4byte 0x48000010 # b .L_801D25D0
L_801D25C4:
    cmpw 0, 3
    .4byte 0x40800008 # bge .L_801D25D0
    mr 0, 3
L_801D25D0:
    stw 0, 0x10(31)
    li 0, 0x0
    stw 0, 0x1c(31)
L_801D25DC:
    li 0, 0x1
    stb 0, 0x20(31)
L_801D25E4:
    psq_l 31, 0x28(1), 0, 0
    lwz 0, 0x34(1)
    lfd 31, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

