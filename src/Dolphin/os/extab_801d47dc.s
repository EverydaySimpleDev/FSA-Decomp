/*
 * fn_801D47DC(this) (0x801D47DC-0x801D4A84, 0x2A8/680 bytes) - a per-state "trigger
 * cutscene/camera cue" dispatcher for dtor_801D46FC's class (extab_801d46fc.s).
 *
 * Uses the CONFIRMED GetRoomConfigRecord(this) settings accessor, again with the recurring
 * "self type (this->0x4) < 8" gate (seen throughout this class family) to pick a
 * sub-row at settings+0xcc vs settings+0xdc. Computes a clamped position delta
 * (this->0x10 - this->0x14, blended against constants `lbl_8053F0C8/CC` and the
 * settings row's own +0x4 float via an `fsel` min/max clamp) into a small local
 * position buffer (r1+0x38/0x3c/0x40).
 *
 * Switches on the SAME state field (this->0x248) every sibling method in this class
 * uses, via a real compiler jumptable (`jumptable_804A49FC`) for states 0-0x1a, else
 * falls to a default handler. Each case repeatedly calls fn_8030C210(managerPtr,
 * posPtr) - an SDK-shaped call (same `0x8030xxxx` address family as fn_803075AC/
 * fn_80307830 seen in fn_801D3CBC/fn_801D3DAC, real signature not yet traced) against
 * the SAME recurring "current manager" global `lbl_8053AB10` at various sub-offsets
 * (+0x20/+0x24/+0x30), then sets one-shot latch bytes/floats deep inside whatever
 * `lbl_8053AB10`'s sub-objects are (offsets in the 0x170-0x21x and 0x7f0-0x85x ranges) -
 * consistent with a HUD/camera-cue manager being told "play this cue at this position,
 * once." Individual per-state semantics (what each of the ~5 distinct case bodies
 * actually triggers) are not yet identified.
 */

.section extab, "a"
.balign 4
.global etb_800085B8
etb_800085B8:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800085B8, 8

.section extabindex, "a"
.balign 4
.global eti_8001597C
eti_8001597C:
    .4byte fn_801D47DC
    .4byte 0x000002A8
    .4byte etb_800085B8
.size eti_8001597C, 12

.text
.balign 4
.global fn_801D47DC

fn_801D47DC:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    mr 30, 3
    lwz 31, 0x4(3)
    bl GetRoomConfigRecord
    cmpwi 31, 0x8
    .4byte 0x4080000C # bge .L_801D480C
    addi 31, 3, 0xcc
    .4byte 0x48000008 # b .L_801D4810
L_801D480C:
    addi 31, 3, 0xdc
L_801D4810:
    lfs 2, 0x10(30)
    lfs 1, 0x14(30)
    lfs 0, 0xc(30)
    fsubs 1, 2, 1
    .4byte 0xC062C128 # lfs f3, lbl_8053F0C8@sda21(r0)
    stfs 0, 0x38(1)
    .4byte 0xC002C12C # lfs f0, lbl_8053F0CC@sda21(r0)
    stfs 1, 0x3c(1)
    stfs 3, 0x40(1)
    lfs 2, 0x4(31)
    fadds 4, 0, 2
    fsubs 0, 4, 1
    fsel 0, 0, 4, 1
    stfs 0, 0x3c(1)
    lwz 0, 0x248(30)
    cmplwi 0, 0x1a
    .4byte 0x418101F0 # bgt .L_801D4A40
    lis 3, jumptable_804A49FC@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A49FC@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    .4byte 0xC022C130 # lfs f1, lbl_8053F0D0@sda21(r0)
    addi 4, 1, 0x2c
    lfs 0, 0x0(31)
    fadds 2, 1, 2
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    fadds 0, 1, 0
    stfs 3, 0x34(1)
    stfs 2, 0x30(1)
    stfs 0, 0x2c(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0xC042C130 # lfs f2, lbl_8053F0D0@sda21(r0)
    addi 4, 1, 0x20
    lfs 0, 0x4(31)
    lfs 1, 0x8(31)
    fadds 3, 2, 0
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    fsubs 1, 1, 2
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0x28(1)
    stfs 1, 0x20(1)
    stfs 3, 0x24(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    lfs 0, 0xc(31)
    addi 4, 1, 0x14
    .4byte 0xC042C130 # lfs f2, lbl_8053F0D0@sda21(r0)
    lfs 1, 0x0(31)
    fsubs 3, 0, 2
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    fadds 1, 2, 1
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0x1c(1)
    stfs 1, 0x14(1)
    stfs 3, 0x18(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    lfs 0, 0xc(31)
    addi 4, 1, 0x8
    .4byte 0xC042C130 # lfs f2, lbl_8053F0D0@sda21(r0)
    lfs 1, 0x8(31)
    fsubs 3, 0, 2
    .4byte 0xC002C128 # lfs f0, lbl_8053F0C8@sda21(r0)
    fsubs 1, 1, 2
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stfs 0, 0x10(1)
    stfs 1, 0x8(1)
    stfs 3, 0xc(1)
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x48000138 # b .L_801D4A6C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x30(3)
    lbz 0, 0x284(3)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_801D495C
    li 0, 0x1
    .4byte 0xC002C134 # lfs f0, lbl_8053F0D4@sda21(r0)
    stb 0, 0x284(3)
    stfs 0, 0x28c(3)
L_801D495C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x40820100 # bne .L_801D4A6C
    li 0, 0x1
    li 3, 0x4
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    lfs 0, 0x38(1)
    stfs 0, 0x7fc(4)
    lfs 0, 0x3c(1)
    stfs 0, 0x800(4)
    lfs 0, 0x40(1)
    stfs 0, 0x804(4)
    stb 0, 0x7f6(4)
    .4byte 0x480000CC # b .L_801D4A6C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x840(3)
    cmplwi 0, 0x0
    .4byte 0x40820038 # bne .L_801D49EC
    li 0, 0x1
    .4byte 0xC022C138 # lfs f1, lbl_8053F0D8@sda21(r0)
    stb 0, 0x840(3)
    .4byte 0xC002C13C # lfs f0, lbl_8053F0DC@sda21(r0)
    lfs 2, 0x38(1)
    stfs 2, 0x84c(3)
    stfs 2, 0x844(3)
    lfs 2, 0x3c(1)
    stfs 2, 0x850(3)
    stfs 2, 0x848(3)
    stfs 1, 0x854(3)
    stfs 0, 0x1d4(3)
    stfs 0, 0x1d8(3)
L_801D49EC:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x20(3)
    stb 0, 0x216(3)
    .4byte 0x48000070 # b .L_801D4A6C
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 4, 0x24(3)
    lbz 0, 0x7f5(4)
    cmplwi 0, 0x0
    .4byte 0x4082001C # bne .L_801D4A2C
    li 0, 0x1
    li 3, -0x1
    stb 0, 0x7f4(4)
    li 0, 0x0
    stw 3, 0x7f8(4)
    stb 0, 0x7f6(4)
L_801D4A2C:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    li 0, 0x1
    lwz 3, 0x20(3)
    stb 0, 0x216(3)
    .4byte 0x48000030 # b .L_801D4A6C
L_801D4A40:
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x38
    lwz 3, 0x24(3)
    bl fn_8030C210
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    lbz 0, 0x179(3)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801D4A6C
    li 0, 0x1
    stb 0, 0x178(3)
L_801D4A6C:
    lwz 0, 0x54(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

