/*
 * fn_80103F9C(this): constructor/setParams for the fn_80103F28-class
 * (vtable lbl_8049CA40). Extracts a mode value (bits 28-31 of this->0x90)
 * into this->0x234 and a 5-bit index into this->0x25c. Branches on mode:
 *  - mode 0: full setup - zeroes this->0x260/0x264/0x268/0x26c and float
 *    accumulators 0x28c/0x290/0x294, then checkpoints this->0xc/0x10/0x14
 *    into THREE field groups: 0x238/0x23c/0x240, 0x244/0x248/0x24c, and
 *    0x250/0x254/0x258. This EXACTLY matches the fields fn_80103348
 *    consumes (its 3-field-group rotation loop) and fn_80103A90 mutates
 *    (0x264/0x268/0x26c counters, 0x288/0x28c/0x290/0x294 accumulators) -
 *    CORRECTING an earlier mislabeling: fn_80103348/fn_80103914/
 *    fn_80103A90 belong to THIS class (fn_80103F28's class), not the
 *    fn_8010307C-class as their banners stated. They sit between the
 *    fn_80103124 __sinit boundary and this class's own dtor/setParams,
 *    with the dtor+setParams appearing LAST in the group rather than
 *    first (an ordering the shared-base minigame family did not use).
 *  - mode 2: plays a sound cue (fn_8013CC50, ID 0x496) and stores the
 *    resulting handle into this->0x260 - explains why fn_80103F28's
 *    destructor conditionally releases this->0x260 via fn_801EE434.
 *  - mode 1 or >=3: no-op (pass-through).
 */

.section extab, "a"
.balign 4
.global etb_80005978
etb_80005978:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005978, 8

.section extabindex, "a"
.balign 4
.global eti_80011D64
eti_80011D64:
    .4byte fn_80103F9C
    .4byte 0x00000110
    .4byte etb_80005978
.size eti_80011D64, 12

.text
.balign 4
.global fn_80103F9C

fn_80103F9C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    li 3, 0x0
    stw 3, 0x230(31)
    stw 3, 0x234(31)
    stw 3, 0x260(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    stw 0, 0x234(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 5
    stw 0, 0x25c(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x1
    .4byte 0x418200B8 # beq .L_80104098
    .4byte 0x40800010 # bge .L_80103FF4
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80104000
    .4byte 0x480000A8 # b .L_80104098
L_80103FF4:
    cmpwi 0, 0x3
    .4byte 0x408000A0 # bge .L_80104098
    .4byte 0x48000070 # b .L_8010406C
L_80104000:
    stw 3, 0x288(31)
    .4byte 0xC0029230 # lfs f0, lbl_8053C1D0@sda21(r0)
    stw 3, 0x264(31)
    stw 3, 0x268(31)
    stw 3, 0x26c(31)
    stfs 0, 0x28c(31)
    stfs 0, 0x290(31)
    stfs 0, 0x294(31)
    lfs 0, 0xc(31)
    stfs 0, 0x238(31)
    lfs 0, 0x10(31)
    stfs 0, 0x23c(31)
    lfs 0, 0x14(31)
    stfs 0, 0x240(31)
    lfs 0, 0xc(31)
    stfs 0, 0x244(31)
    lfs 0, 0x10(31)
    stfs 0, 0x248(31)
    lfs 0, 0x14(31)
    stfs 0, 0x24c(31)
    lfs 0, 0xc(31)
    stfs 0, 0x250(31)
    lfs 0, 0x10(31)
    stfs 0, 0x254(31)
    lfs 0, 0x14(31)
    stfs 0, 0x258(31)
    .4byte 0x48000030 # b .L_80104098
L_8010406C:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC0229238 # lfs f1, lbl_8053C1D8@sda21(r0)
    li 5, 0x496
    li 6, 0x1
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x260(31)
L_80104098:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

