/*
 * fn_801D11FC (0x801D11FC-0x801D12CC, 0xD0/208 bytes) - a method of the "position-trail
 * predictor" class (own vtable lbl_804A46F4, ctor fn_801D1974, closed by __sinit fn_801D19F4;
 * see project_fsa_multiple_inheritance_pattern.md - this class is UNRELATED to the shared
 * "timed-cue lookup table" MI component despite living in the same address neighborhood).
 *
 * Real understanding: "snap this->0x33c (a facing angle, 16-bit binary-angle units) to
 * whichever of two candidates is closer to a target angle." Computes a target angle via
 * fn_80093340(this->0x264, this->0x268) (an atan2-shaped 2-arg trig call, scaled to binary-
 * angle units by lbl_8053F018), then compares |target-(current+0x5b0)| against
 * |target-(current-0x5b0)| and stores whichever offset candidate is closer back into
 * this->0x33c. The 0x5b0 constant and exact use-case (whether this is a wrap-correction or
 * a genuine two-candidate disambiguation) aren't independently confirmed beyond this
 * arithmetic shape.
 */

.section extab, "a"
.balign 4
.global etb_800084AC
etb_800084AC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800084AC, 8

.section extabindex, "a"
.balign 4
.global eti_80015808
eti_80015808:
    .4byte fn_801D11FC
    .4byte 0x000000D0
    .4byte etb_800084AC
.size eti_80015808, 12

.text
.balign 4
.global fn_801D11FC

fn_801D11FC:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    mr 31, 3
    lis 3, lbl_80534C00@ha
    lfs 1, 0x264(31)
    addi 3, 3, lbl_80534C00@l
    lfs 2, 0x268(31)
    bl fn_80093340
    .4byte 0xC002C078 # lfs f0, lbl_8053F018@sda21(r0)
    lis 3, 0x4330
    lha 5, 0x33c(31)
    fmuls 0, 1, 0
    stw 3, 0x10(1)
    addi 4, 5, 0x5b0
    subi 0, 5, 0x5b0
    extsh 5, 4
    stw 3, 0x18(1)
    fctiwz 1, 0
    extsh 3, 0
    .4byte 0xC862C080 # lfd f3, lbl_8053F020@sda21(r0)
    .4byte 0xC002C07C # lfs f0, lbl_8053F01C@sda21(r0)
    stfd 1, 0x8(1)
    lwz 0, 0xc(1)
    extsh 0, 0
    subf 4, 5, 0
    subf 0, 3, 0
    extsh 4, 4
    extsh 0, 0
    xoris 4, 4, 0x8000
    xoris 0, 0, 0x8000
    stw 4, 0x14(1)
    stw 0, 0x1c(1)
    lfd 2, 0x10(1)
    lfd 1, 0x18(1)
    fsubs 2, 2, 3
    fsubs 1, 1, 3
    fabs 2, 2
    fabs 3, 1
    fmuls 1, 0, 2
    fmuls 0, 0, 3
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801D12B4
    sth 5, 0x33c(31)
    .4byte 0x48000008 # b .L_801D12B8
L_801D12B4:
    sth 3, 0x33c(31)
L_801D12B8:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

