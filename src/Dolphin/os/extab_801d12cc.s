/*
 * fn_801D12CC (0x801D12CC-0x801D183C, 0x570/1392 bytes) - the main per-frame driver for the
 * "position-trail predictor" class (see project_fsa_multiple_inheritance_pattern.md).
 * Survey-level; the exact interpolation math is transcribed byte-exact but not fully
 * re-derived symbolically.
 *
 * Real understanding of the overall shape: if this->0x338 (an owner/target index) is valid
 * and fn_801D0B44(target) confirms it's usable, computes the target's current heading
 * (fn_8022E114+fn_801F329C+fn_801CD150, the confirmed rotate-toward/angle-delta primitives)
 * to get a candidate future-position estimate, otherwise falls back to the target's raw
 * current position. Uses fn_802265FC to classify the target's animation/state ID into a
 * "trackable" range (0x27-0x2c) - if not trackable, resets this->0x2a8 (the ring-buffer
 * sample count) to 0 and bails.
 *
 * Otherwise, calls fn_801CF888 (an unidentified "close enough" distance-gate check) against
 * the previous sample; if the target has moved enough, pushes the new sample into the
 * 16-slot ring buffer at this->0x2ac (each slot 8 bytes: {x, z} floats), shifting older
 * samples down when full (a classic circular/shift buffer, capacity matches the 16-element,
 * 8-byte-stride container constructed by __construct_array in this class's ctor fn_801D1974).
 * Also computes a "confidence" gate via fn_8023E578/fn_8023E724 (the CONFIRMED position-
 * getter family) comparing predicted vs. actual displacement against this->0x40 (a per-frame
 * delta from the caller's own velocity, passed via f2 in some call shapes - not confirmed).
 *
 * Tail: writes the oldest/most relevant buffered sample into this->0x32c/0x330 (position)
 * and 0x334 (an associated scalar, possibly speed or confidence) - the cached "predicted
 * position" the class's other accessor methods (fn_801D183C) read back.
 */

.section extab, "a"
.balign 4
.global etb_800084B4
etb_800084B4:
    .4byte 0x208A0000
    .4byte 0x00000000
.size etb_800084B4, 8

.section extabindex, "a"
.balign 4
.global eti_80015814
eti_80015814:
    .4byte fn_801D12CC
    .4byte 0x00000570
    .4byte etb_800084B4
.size eti_80015814, 12

.text
.balign 4
.global fn_801D12CC

fn_801D12CC:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stw 31, 0x5c(1)
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    stw 28, 0x50(1)
    mr 29, 3
    li 31, 0x0
    lwz 4, 0x338(3)
    cmpwi 4, 0x0
    .4byte 0x418004F0 # blt .L_801D17F8
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x418204E4 # beq .L_801D17F8
    lwz 30, 0x338(29)
    addi 4, 1, 0x18
    mr 3, 30
    bl fn_8022E114
    mr 3, 29
    mr 4, 30
    bl fn_801F329C
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_801D1364
    addi 3, 1, 0x18
    addi 4, 1, 0x24
    bl fn_801CD150
    lfs 2, 0x24(1)
    lfs 1, 0x28(1)
    lfs 0, 0x2c(1)
    stfs 2, 0x3c(1)
    stfs 1, 0x40(1)
    stfs 0, 0x44(1)
    .4byte 0x4800001C # b .L_801D137C
L_801D1364:
    lfs 2, 0x18(1)
    lfs 1, 0x1c(1)
    lfs 0, 0x20(1)
    stfs 2, 0x3c(1)
    stfs 1, 0x40(1)
    stfs 0, 0x44(1)
L_801D137C:
    lfs 2, 0x3c(1)
    mr 3, 29
    lfs 1, 0x40(1)
    addi 5, 1, 0x30
    .4byte 0xC002C088 # lfs f0, lbl_8053F028@sda21(r0)
    stfs 2, 0x30(1)
    stfs 1, 0x34(1)
    stfs 0, 0x38(1)
    lwz 12, 0x0(29)
    lwz 4, 0x4(29)
    lwz 12, 0x4c(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_801D13E8
    lwz 4, 0x4(29)
    addi 3, 1, 0x3c
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmpwi 0, 0x2c
    .4byte 0x4080000C # bge .L_801D13D8
    cmpwi 0, 0x27
    .4byte 0x40800014 # bge .L_801D13E8
L_801D13D8:
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x2a8(29)
    .4byte 0x48000428 # b .L_801D180C
L_801D13E8:
    lwz 6, 0x4(29)
    mr 3, 29
    addi 4, 29, 0xc
    addi 5, 1, 0x3c
    li 31, 0x1
    bl fn_801CF888
    clrlwi. 0, 3, 24
    .4byte 0x40820028 # bne .L_801D142C
    li 0, 0x0
    .4byte 0xC002C088 # lfs f0, lbl_8053F028@sda21(r0)
    stw 0, 0x2a8(29)
    lfs 2, 0x40(1)
    lfs 1, 0x3c(1)
    stfs 1, 0x32c(29)
    stfs 2, 0x330(29)
    stfs 0, 0x334(29)
    .4byte 0x480003D0 # b .L_801D17F8
L_801D142C:
    lwz 3, 0x2a8(29)
    cmpwi 3, 0x1
    .4byte 0x418001A8 # blt .L_801D15DC
    lfs 3, 0x32c(29)
    lfs 1, 0xc(29)
    lfs 2, 0x330(29)
    lfs 0, 0x10(29)
    fsubs 4, 3, 1
    .4byte 0xC022C08C # lfs f1, lbl_8053F02C@sda21(r0)
    fsubs 3, 2, 0
    lfs 0, 0x258(29)
    fmuls 2, 4, 4
    fadds 0, 1, 0
    fmuls 1, 3, 3
    fmuls 0, 0, 0
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820168 # bne .L_801D15DC
    cmpwi 3, 0x1
    .4byte 0x41800160 # blt .L_801D15DC
    subic. 4, 3, 0x1
    li 3, 0x0
    .4byte 0x40810150 # ble .L_801D15D8
    cmpwi 4, 0x8
    subi 6, 4, 0x8
    .4byte 0x40810104 # ble .L_801D1598
    addi 0, 6, 0x7
    addi 5, 29, 0x2a8
    srwi 0, 0, 3
    mtctr 0
    cmpwi 6, 0x0
    .4byte 0x408100EC # ble .L_801D1598
L_801D14B0:
    addi 0, 3, 0x1
    addi 6, 3, 0x2
    slwi 7, 0, 3
    add 7, 29, 7
    slwi 11, 6, 3
    lfs 0, 0x2ac(7)
    addi 0, 3, 0x3
    slwi 10, 0, 3
    add 12, 29, 11
    stfs 0, 0x4(5)
    addi 6, 3, 0x4
    slwi 9, 6, 3
    add 11, 29, 10
    lfs 0, 0x2b0(7)
    addi 0, 3, 0x5
    slwi 8, 0, 3
    add 10, 29, 9
    stfs 0, 0x8(5)
    addi 0, 3, 0x6
    slwi 7, 0, 3
    add 9, 29, 8
    lfs 0, 0x2ac(12)
    addi 6, 3, 0x7
    addi 0, 3, 0x8
    add 8, 29, 7
    stfs 0, 0xc(5)
    slwi 6, 6, 3
    add 7, 29, 6
    slwi 0, 0, 3
    lfs 0, 0x2b0(12)
    add 6, 29, 0
    addi 3, 3, 0x8
    stfs 0, 0x10(5)
    lfs 0, 0x2ac(11)
    stfs 0, 0x14(5)
    lfs 0, 0x2b0(11)
    stfs 0, 0x18(5)
    lfs 0, 0x2ac(10)
    stfs 0, 0x1c(5)
    lfs 0, 0x2b0(10)
    stfs 0, 0x20(5)
    lfs 0, 0x2ac(9)
    stfs 0, 0x24(5)
    lfs 0, 0x2b0(9)
    stfs 0, 0x28(5)
    lfs 0, 0x2ac(8)
    stfs 0, 0x2c(5)
    lfs 0, 0x2b0(8)
    stfs 0, 0x30(5)
    lfs 0, 0x2ac(7)
    stfs 0, 0x34(5)
    lfs 0, 0x2b0(7)
    stfs 0, 0x38(5)
    lfs 0, 0x2ac(6)
    stfs 0, 0x3c(5)
    lfs 0, 0x2b0(6)
    stfsu 0, 0x40(5)
    .4byte 0x4200FF1C # bdnz .L_801D14B0
L_801D1598:
    slwi 5, 3, 3
    subf 0, 3, 4
    add 6, 29, 5
    mtctr 0
    cmpw 3, 4
    addi 6, 6, 0x2a8
    .4byte 0x40800028 # bge .L_801D15D8
L_801D15B4:
    addi 0, 3, 0x1
    addi 3, 3, 0x1
    slwi 0, 0, 3
    add 5, 29, 0
    lfs 0, 0x2ac(5)
    stfs 0, 0x4(6)
    lfs 0, 0x2b0(5)
    stfsu 0, 0x8(6)
    .4byte 0x4200FFE0 # bdnz .L_801D15B4
L_801D15D8:
    stw 4, 0x2a8(29)
L_801D15DC:
    lwz 3, 0x2a8(29)
    li 28, 0x0
    li 30, 0x0
    cmpwi 3, 0x0
    .4byte 0x4082000C # bne .L_801D15F8
    li 30, 0x1
    .4byte 0x480000E8 # b .L_801D16DC
L_801D15F8:
    subi 0, 3, 0x1
    cmpw 3, 0
    .4byte 0x41810008 # bgt .L_801D1608
    li 0, 0x0
L_801D1608:
    slwi 0, 0, 3
    mr 3, 29
    add 6, 29, 0
    addi 4, 1, 0x10
    lfs 0, 0x2ac(6)
    addi 5, 1, 0x3c
    stfs 0, 0x10(1)
    lfs 0, 0x2b0(6)
    stfs 0, 0x14(1)
    lwz 6, 0x4(29)
    bl fn_801CF888
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801D1644
    li 30, 0x1
    .4byte 0x4800009C # b .L_801D16DC
L_801D1644:
    lfs 1, 0x40(1)
    lfs 0, 0x14(1)
    lfs 2, 0x3c(1)
    fsubs 3, 1, 0
    lfs 1, 0x10(1)
    .4byte 0xC002C090 # lfs f0, lbl_8053F030@sda21(r0)
    fsubs 2, 2, 1
    fmuls 1, 3, 3
    fmadds 1, 2, 2, 1
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x4082006C # bne .L_801D16DC
    lwz 3, 0x2a8(29)
    li 28, 0x1
    cmpwi 3, 0x2
    .4byte 0x4180005C # blt .L_801D16DC
    subi 0, 3, 0x2
    cmpw 3, 0
    .4byte 0x41810008 # bgt .L_801D1694
    li 0, 0x0
L_801D1694:
    slwi 0, 0, 3
    mr 3, 29
    add 6, 29, 0
    addi 4, 1, 0x8
    lfs 0, 0x2ac(6)
    addi 5, 1, 0x3c
    stfs 0, 0x8(1)
    lfs 0, 0x2b0(6)
    stfs 0, 0xc(1)
    lwz 6, 0x4(29)
    bl fn_801CF888
    clrlwi. 0, 3, 24
    .4byte 0x40820018 # bne .L_801D16DC
    lwz 3, 0x2a8(29)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_801D16DC
    subi 0, 3, 0x1
    stw 0, 0x2a8(29)
L_801D16DC:
    clrlwi. 0, 28, 24
    .4byte 0x4082000C # bne .L_801D16EC
    clrlwi. 0, 30, 24
    .4byte 0x418200D4 # beq .L_801D17BC
L_801D16EC:
    lwz 3, 0x2a8(29)
    cmpwi 3, 0x10
    .4byte 0x41800014 # blt .L_801D1708
    li 0, 0x0
    li 3, 0x0
    stw 0, 0x2a8(29)
    .4byte 0x48000108 # b .L_801D180C
L_801D1708:
    clrlwi. 0, 30, 24
    .4byte 0x41820084 # beq .L_801D1790
    lwz 0, 0x24c(29)
    cmpwi 0, 0x2
    .4byte 0x40810078 # ble .L_801D1790
    lwz 3, 0x338(29)
    bl fn_8023E578
    lfs 31, 0x4(3)
    lwz 3, 0x338(29)
    bl fn_8023E724
    lfs 1, 0x4(3)
    lfs 0, 0x40(1)
    fsubs 1, 1, 31
    lwz 3, 0x338(29)
    fsubs 30, 0, 1
    bl fn_8023E578
    lfs 31, 0x0(3)
    lwz 3, 0x338(29)
    bl fn_8023E724
    lfs 0, 0x0(3)
    lwz 0, 0x2a8(29)
    fsubs 1, 0, 31
    lfs 0, 0x3c(1)
    cmpwi 0, 0x10
    fsubs 0, 0, 1
    .4byte 0x40800050 # bge .L_801D17BC
    slwi 0, 0, 3
    add 3, 29, 0
    stfs 0, 0x2ac(3)
    stfs 30, 0x2b0(3)
    lwz 3, 0x2a8(29)
    addi 0, 3, 0x1
    stw 0, 0x2a8(29)
    .4byte 0x48000030 # b .L_801D17BC
L_801D1790:
    cmpwi 3, 0x10
    .4byte 0x40800028 # bge .L_801D17BC
    slwi 0, 3, 3
    lfs 0, 0x3c(1)
    add 3, 29, 0
    stfs 0, 0x2ac(3)
    lfs 0, 0x40(1)
    stfs 0, 0x2b0(3)
    lwz 3, 0x2a8(29)
    addi 0, 3, 0x1
    stw 0, 0x2a8(29)
L_801D17BC:
    lwz 3, 0x2a8(29)
    li 0, 0x0
    cmpwi 3, 0x0
    slwi 0, 0, 3
    cmpwi 3, 0x0
    add 3, 29, 0
    li 0, 0x0
    lfs 2, 0x2b0(3)
    slwi 0, 0, 3
    .4byte 0xC002C088 # lfs f0, lbl_8053F028@sda21(r0)
    add 3, 29, 0
    lfs 1, 0x2ac(3)
    stfs 1, 0x32c(29)
    stfs 2, 0x330(29)
    stfs 0, 0x334(29)
L_801D17F8:
    clrlwi. 0, 31, 24
    .4byte 0x4082000C # bne .L_801D1808
    li 0, 0x0
    stw 0, 0x2a8(29)
L_801D1808:
    mr 3, 31
L_801D180C:
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    lwz 0, 0x84(1)
    lwz 28, 0x50(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

