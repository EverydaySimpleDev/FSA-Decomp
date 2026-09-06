/*
 * fn_80105A34(this): constructor for the fn_80105368-class. Extracts multiple bitfields from this->0x90 into
 * this->0x354/0x358/0x36c/0x364/0x368/0x35c (mode/type/facing fields).
 * Loops over 4 slots (this->0x0/0x4/0x8/0xc-relative, stride 4): makes a
 * virtual call through a GLOBAL manager object (lbl_8053AAF8->0xa4,
 * vtable slot 6) with a per-slot argument from a lookup table
 * (lbl_8049CBB0, indexed by this->0x36c*16 + slot*4), storing each
 * result into this->0x2f8 per-slot - THIS is the field fn_80105654
 * checks against "type<8", confirming it's a per-player registration
 * result. Sets bounds floats (this->0x60-0x6c) from one of 3 constant
 * sets keyed on this->0x36c, then copies them into TWO more field
 * groups (0x70-0x7c, 0x80-0x8c) - matches the "3 field groups" pattern
 * from the shared-base minigame family, though this is a different,
 * unrelated class. Finally initializes the embedded "timed-cue lookup table" component
 * (see project_fsa_multiple_inheritance_pattern.md) at this->0x374 via its own real init
 * sequence: fn_801D2608(subobj, lbl_80539EC0, 1), fn_801D22DC(subobj, 0, 2, 0),
 * fn_801D1F14(subobj). CORRECTION: earlier framing called +0x374 "a genuine second base" -
 * it's an embedded MEMBER object (the shared timed-cue component), not a C++ base class;
 * the offset math is unaffected, only the relationship is corrected.
 */

.section extab, "a"
.balign 4
.global etb_800059F8
etb_800059F8:
    .4byte 0x300A0000
    .4byte 0x00000000
.size etb_800059F8, 8

.section extabindex, "a"
.balign 4
.global eti_80011E24
eti_80011E24:
    .4byte fn_80105A34
    .4byte 0x000001B8
    .4byte etb_800059F8
.size eti_80011E24, 12

.text
.balign 4
.global fn_80105A34

fn_80105A34:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 26, 0x8(1)
    mr 28, 3
    bl fn_801F5938
    lwz 0, 0x90(28)
    lis 3, lbl_8049CBB0@ha
    mr 30, 28
    li 29, 0x0
    clrlwi 0, 0, 24
    addi 27, 3, lbl_8049CBB0@l
    stw 0, 0x354(28)
    li 31, 0x0
    lis 26, 0x3f3f
    lwz 0, 0x90(28)
    extrwi 0, 0, 5, 15
    stw 0, 0x358(28)
    lwz 0, 0x90(28)
    extrwi 0, 0, 5, 10
    stw 0, 0x36c(28)
    lwz 0, 0x90(28)
    extrwi 0, 0, 5, 5
    stw 0, 0x364(28)
    lwz 0, 0x90(28)
    extrwi 0, 0, 5, 5
    stw 0, 0x368(28)
    lwz 0, 0x90(28)
    srwi 0, 0, 27
    stw 0, 0x35c(28)
L_80105AAC:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    addi 4, 26, 0x3f3f
    lwz 0, 0x36c(28)
    lwz 3, 0xa4(3)
    slwi 0, 0, 4
    lwz 12, 0x0(3)
    add 5, 27, 0
    lwzx 5, 5, 31
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    addi 29, 29, 0x1
    stw 3, 0x2f8(30)
    cmpwi 29, 0x4
    addi 31, 31, 0x4
    addi 30, 30, 0x4
    .4byte 0x4180FFC0 # blt .L_80105AAC
    lwz 0, 0x36c(28)
    cmpwi 0, 0x1
    .4byte 0x41820018 # beq .L_80105B10
    .4byte 0x40800008 # bge .L_80105B04
    .4byte 0x48000050 # b .L_80105B50
L_80105B04:
    cmpwi 0, 0x3
    .4byte 0x40800048 # bge .L_80105B50
    .4byte 0x48000020 # b .L_80105B2C
L_80105B10:
    .4byte 0xC02292B0 # lfs f1, lbl_8053C250@sda21(r0)
    .4byte 0xC00292B4 # lfs f0, lbl_8053C254@sda21(r0)
    stfs 1, 0x60(28)
    stfs 1, 0x64(28)
    stfs 0, 0x68(28)
    stfs 0, 0x6c(28)
    .4byte 0x48000040 # b .L_80105B68
L_80105B2C:
    .4byte 0xC02292B8 # lfs f1, lbl_8053C258@sda21(r0)
    .4byte 0xC00292BC # lfs f0, lbl_8053C25C@sda21(r0)
    stfs 1, 0x60(28)
    .4byte 0xC02292C0 # lfs f1, lbl_8053C260@sda21(r0)
    stfs 0, 0x64(28)
    .4byte 0xC00292C4 # lfs f0, lbl_8053C264@sda21(r0)
    stfs 1, 0x68(28)
    stfs 0, 0x6c(28)
    .4byte 0x4800001C # b .L_80105B68
L_80105B50:
    .4byte 0xC02292C8 # lfs f1, lbl_8053C268@sda21(r0)
    .4byte 0xC00292CC # lfs f0, lbl_8053C26C@sda21(r0)
    stfs 1, 0x60(28)
    stfs 1, 0x64(28)
    stfs 0, 0x68(28)
    stfs 0, 0x6c(28)
L_80105B68:
    lfs 0, 0x60(28)
    addi 3, 28, 0x374
    .4byte 0x388D8300 # li r4, lbl_80539EC0@sda21
    li 5, 0x1
    stfs 0, 0x70(28)
    lfs 0, 0x64(28)
    stfs 0, 0x74(28)
    lfs 0, 0x68(28)
    stfs 0, 0x78(28)
    lfs 0, 0x6c(28)
    stfs 0, 0x7c(28)
    lfs 0, 0x60(28)
    stfs 0, 0x80(28)
    lfs 0, 0x64(28)
    stfs 0, 0x84(28)
    lfs 0, 0x68(28)
    stfs 0, 0x88(28)
    lfs 0, 0x6c(28)
    stfs 0, 0x8c(28)
    bl fn_801D2608
    addi 3, 28, 0x374
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0xC0229288 # lfs f1, lbl_8053C228@sda21(r0)
    addi 3, 28, 0x374
    bl fn_801D1F14
    lmw 26, 0x8(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

