/*
 * fn_801D183C (0x801D183C-0x801D1974, 0x138/312 bytes) - a query method of the "position-
 * trail predictor" class, taking a radius (f1) and returning a bool.
 *
 * Real understanding: if this->0x338 (owner/target index) is in range [0,4) and
 * fn_801F320C confirms it's usable, computes the target's predicted position the same way
 * fn_801D12CC does (heading via fn_8022E114+fn_801F329C+fn_801CD150, or the raw current
 * position as a fallback) into a local point. If the given radius is nonzero, checks whether
 * this class's own position (this->0xc/0x10) is within `radius` of that predicted point
 * (squared-distance compare, no sqrt). Finally calls fn_801CF888 (the same "close enough"
 * gate used by fn_801D12CC) against the SAME predicted point; returns true only if that
 * gate also passes. Net effect: "is the predicted target position both within my given
 * radius AND close enough by the class's own internal gate."
 */

.section extab, "a"
.balign 4
.global etb_800084BC
etb_800084BC:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_800084BC, 8

.section extabindex, "a"
.balign 4
.global eti_80015820
eti_80015820:
    .4byte fn_801D183C
    .4byte 0x00000138
    .4byte etb_800084BC
.size eti_80015820, 12

.text
.balign 4
.global fn_801D183C

fn_801D183C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 29, 3
    fmr 31, 1
    lwz 4, 0x338(3)
    li 30, 0x0
    cmpwi 4, 0x0
    .4byte 0x418000DC # blt .L_801D194C
    cmpwi 4, 0x4
    .4byte 0x408000D4 # bge .L_801D194C
    bl fn_801F320C
    clrlwi. 0, 3, 24
    .4byte 0x418200C8 # beq .L_801D194C
    lwz 31, 0x338(29)
    addi 4, 1, 0x8
    mr 3, 31
    bl fn_8022E114
    mr 3, 29
    mr 4, 31
    bl fn_801F329C
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_801D18D4
    addi 3, 1, 0x8
    addi 4, 1, 0x14
    bl fn_801CD150
    lfs 2, 0x14(1)
    lfs 1, 0x18(1)
    lfs 0, 0x1c(1)
    stfs 2, 0x20(1)
    stfs 1, 0x24(1)
    stfs 0, 0x28(1)
    .4byte 0x4800001C # b .L_801D18EC
L_801D18D4:
    lfs 2, 0x8(1)
    lfs 1, 0xc(1)
    lfs 0, 0x10(1)
    stfs 2, 0x20(1)
    stfs 1, 0x24(1)
    stfs 0, 0x28(1)
L_801D18EC:
    .4byte 0xC002C088 # lfs f0, lbl_8053F028@sda21(r0)
    fcmpu cr0, 0, 31
    .4byte 0x41820038 # beq .L_801D192C
    lfs 4, 0x20(1)
    fmuls 0, 31, 31
    lfs 3, 0xc(29)
    lfs 2, 0x24(1)
    lfs 1, 0x10(29)
    fsubs 3, 4, 3
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820024 # bne .L_801D194C
L_801D192C:
    lwz 6, 0x4(29)
    mr 3, 29
    addi 4, 29, 0xc
    addi 5, 1, 0x20
    bl fn_801CF888
    clrlwi. 0, 3, 24
    .4byte 0x40820008 # bne .L_801D194C
    li 30, 0x1
L_801D194C:
    mr 3, 30
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

