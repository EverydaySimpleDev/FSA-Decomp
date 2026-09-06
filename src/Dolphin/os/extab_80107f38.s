/*
 * fn_80107F38 (0x80107F38-0x801080B4, 0x180/384 bytes) - a "setup(this, params)" method of the
 * fn_80107360-class (this->0x274/0x26c/0x230 fields all match fn_80107660's usage). Not the
 * constructor itself: no vtable-pointer store here, so this runs on an already-constructed
 * object, unpacking bitfields from a packed param word at this->0x90 (already set by an
 * earlier, not-yet-landed constructor):
 *   - bits [28:32) -> if ==1, forces this->0x274 = 1 (an initial-state override).
 *   - bits [4:28) (extrwi 4,24) -> this->0x27c (the direction/ease flag fn_80107660 reads).
 *   - bits [19:24) (extrwi 5,19) -> a temp used only to compute this->0x280 = (that value as a
 *     float via the classic 0x4330.... integer-to-float trick) - this->0x27c.
 *   - bit [15:16) (extrwi 1,15) -> this->0x26a (a 0/1 flag byte).
 * Then initializes a whole float block (this->0x60-0x8c: 4 easing keyframe floats copied from
 * lbl_8053C2F8/C300/C304-ish constants into 0x60-0x6c, mirrored into 0x70-0x7c, then 4 more
 * floats at 0x80-0x8c all set to the SAME constant lbl_8053C2C0) plus this->0x108=0 and
 * this->0xb0 = the extracted state-override value.
 *
 * Calls fn_801D2608(this+0x230, 0, 2, 0), fn_801D22DC(this+0x230, ...), and
 * fn_801D1F14(this+0x230, ...) - the EXACT SAME "timed-cue lookup table" component init
 * sequence confirmed for fn_80105368's constructor (there targeting this+0x374) - see
 * project_fsa_multiple_inheritance_pattern.md. This is the SAME embedded shared component,
 * just at a smaller offset (+0x230) because this derived class has fewer of its own fields
 * ahead of it - an embedded member, not a C++ base class (correcting the earlier "multiple-
 * inheritance"/"base type" framing). Then copies this->0xc/0x10/0x14 (position) into this->0x288/0x28c/
 * 0x290 (a "remembered spawn position" snapshot), and finally re-runs the confirmed slot-15-
 * then-slot-13 virtual contract once, setting this->0x269 (the "already played" flag fn_80107660
 * checks before playing its sound cue) if slot 13 succeeds - i.e. this setup function can itself
 * pre-empt fn_80107660's first-frame sound cue.
 */

.section extab, "a"
.balign 4
.global etb_80005AD8
etb_80005AD8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005AD8, 8

.section extabindex, "a"
.balign 4
.global eti_80011F20
eti_80011F20:
    .4byte fn_80107F38
    .4byte 0x00000180
    .4byte etb_80005AD8
.size eti_80011F20, 12

.text
.balign 4
.global fn_80107F38

fn_80107F38:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    lwz 0, 0x90(3)
    clrlwi 0, 0, 28
    cmplwi 0, 0x1
    .4byte 0x4082000C # bne .L_80107F64
    li 0, 0x1
    stw 0, 0x274(31)
L_80107F64:
    lwz 3, 0x90(31)
    lis 0, 0x4330
    stw 0, 0x8(1)
    extrwi 0, 3, 4, 24
    .4byte 0xC8229360 # lfd f1, lbl_8053C300@sda21(r0)
    stw 0, 0x27c(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 19
    stw 0, 0xc(1)
    lfd 0, 0x8(1)
    fsubs 0, 0, 1
    stfs 0, 0x280(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 1, 15
    cmplwi 0, 0x1
    .4byte 0x40820010 # bne .L_80107FB0
    li 0, 0x1
    stb 0, 0x26a(31)
    .4byte 0x4800000C # b .L_80107FB8
L_80107FB0:
    li 0, 0x0
    stb 0, 0x26a(31)
L_80107FB8:
    .4byte 0xC002936C # lfs f0, lbl_8053C30C@sda21(r0)
    lis 3, 0x5
    .4byte 0xC0429358 # lfs f2, lbl_8053C2F8@sda21(r0)
    li 6, 0x0
    stfs 0, 0x60(31)
    addi 0, 3, 0x303
    .4byte 0xC0229370 # lfs f1, lbl_8053C310@sda21(r0)
    addi 3, 31, 0x230
    stfs 0, 0x64(31)
    .4byte 0x388D8310 # li r4, lbl_80539ED0@sda21
    .4byte 0xC0029320 # lfs f0, lbl_8053C2C0@sda21(r0)
    li 5, 0x1
    stfs 2, 0x68(31)
    stfs 1, 0x6c(31)
    lfs 1, 0x60(31)
    stfs 1, 0x70(31)
    lfs 1, 0x64(31)
    stfs 1, 0x74(31)
    lfs 1, 0x68(31)
    stfs 1, 0x78(31)
    lfs 1, 0x6c(31)
    stfs 1, 0x7c(31)
    stfs 0, 0x80(31)
    stfs 0, 0x84(31)
    stfs 0, 0x88(31)
    stfs 0, 0x8c(31)
    stw 6, 0x108(31)
    stw 0, 0xb0(31)
    bl fn_801D2608
    addi 3, 31, 0x230
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229320 # lfs f1, lbl_8053C2C0@sda21(r0)
    addi 3, 31, 0x230
    bl fn_801D1F14
    lfs 0, 0xc(31)
    mr 3, 31
    stfs 0, 0x288(31)
    lfs 0, 0x10(31)
    stfs 0, 0x28c(31)
    lfs 0, 0x14(31)
    stfs 0, 0x290(31)
    lwz 12, 0x0(31)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x41820028 # beq .L_801080A4
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801080A4
    li 0, 0x1
    stb 0, 0x269(31)
L_801080A4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

