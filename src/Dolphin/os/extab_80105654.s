/*
 * fn_80105654(this): another method of the fn_80105368-class (see project_fsa_multiple_inheritance_pattern.md - this class
 * embeds the "timed-cue lookup table" shared component; "multiple-inheritance" was this
 * session's earlier, since-refined label for that embedding). Calls fn_801F5778 (unidentified init
 * call), sets this->0x325=-1 (a sentinel byte, matching the "no handle"
 * convention seen elsewhere), copies this->0xc/0x10/0x14 into a stack
 * position and, if this->0x36c==2, nudges its Y by a constant
 * (lbl_8053C23C). Then, using this->0x4 as a type index (0-7, read
 * from a per-type array at this+this->0x4*4, field +0x2f8) and only
 * when this->0x4<8, calls **fn_802F745C**(registry, &stackPos,
 * this+0x308) via the shared registry (lbl_8053AB10->0x20) - this is
 * ONE OF THE "SPATIAL TRIAD" functions (fn_802F5E9C/745C/86CC) flagged
 * in project_fsa_shared_effect_subsystem_crossref.md as not yet
 * decompiled. This call site confirms fn_802F745C takes (registry,
 * position, outParams) and is invoked per-type (type<8) - a spatial
 * anchor/AABB registration call, consistent with its "spatial" naming.
 */

.section extab, "a"
.balign 4
.global etb_800059E8
etb_800059E8:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_800059E8, 8

.section extabindex, "a"
.balign 4
.global eti_80011E0C
eti_80011E0C:
    .4byte fn_80105654
    .4byte 0x00000090
    .4byte etb_800059E8
.size eti_80011E0C, 12

.text
.balign 4
.global fn_80105654

fn_80105654:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    mr 31, 3
    bl fn_801F5778
    li 0, -0x1
    stb 0, 0x325(31)
    lwz 3, 0x390(31)
    psq_l 1, 0xc(31), 0, 0
    lfs 0, 0x14(31)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 0, 0x36c(31)
    cmpwi 0, 0x2
    .4byte 0x40820014 # bne .L_801056A4
    lfs 1, 0xc(1)
    .4byte 0xC002929C # lfs f0, lbl_8053C23C@sda21(r0)
    fsubs 0, 1, 0
    stfs 0, 0xc(1)
L_801056A4:
    lwz 0, 0x4(31)
    slwi 3, 3, 2
    add 3, 31, 3
    cmpwi 0, 0x8
    lwz 5, 0x2f8(3)
    .4byte 0x40800018 # bge .L_801056D0
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    addi 4, 1, 0x8
    addi 6, 31, 0x308
    lwz 3, 0x20(3)
    bl fn_802F745C
L_801056D0:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

