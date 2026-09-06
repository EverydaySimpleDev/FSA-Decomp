.section extab, "a"
.balign 4
.global etb_80008B6C
etb_80008B6C:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80008B6C, 8

.section extabindex, "a"
.balign 4
.global eti_80016138
eti_80016138:
    .4byte fn_801E7C88
    .4byte 0x00000134
    .4byte etb_80008B6C
.size eti_80016138, 12

.text
.balign 4
.global fn_801E7C88

# fn_801E7C88(this) - FSPO's real setParams (see
# project_fsa_fspo_fsob_actor_progress.md). Chains the confirmed shared
# base setParams `fn_801D0ED0`. If bit 8 of `this->0x90` is set: reads a
# 2-bit direction/orientation field (bits 9-10) and looks up an X/Z
# offset pair via `fn_80210B34`/`fn_80210AF8` (not further decompiled -
# presumably a per-direction offset table, analogous to other actors'
# direction-offset lookups), adds it onto the base spawn position
# (`this->0x24/0x28/0x2c`, set by the shared base setParams), then
# copies that computed position into BOTH the live position
# (`this->0xc/0x10/0x14`) and a second position slot
# (`this->0x18/0x1c/0x20`) - i.e. "current" and "anchor/target"
# positions both start at the offset spawn point.
#
# Unconditionally: initializes 3 stacked rect blocks (`0x60-0x8c`) from
# fixed constants (all corners equal - a zero-size rect at spawn),
# clears `this->0xb0`, and sets flag bit 0x100 in `this->0x230`.
#
# Then decodes `this->0x90` further: a "sub-slot" field via a
# find-first-set/conditional-zero bit trick (a 5-bit field kept only if
# a separate low-24-bit field is zero, else forced to 0), calls the
# SAME prep helper IPOT's 0x10-hook uses (`fn_801E9AFC`), computes
# `this + this->0xf0*0x78` (the SAME embedded 0x78-byte-stride
# per-instance array pattern seen on IPOT), and calls a richer sibling
# of IPOT's registration call - `fn_801EA75C(entryPtr, topByte,
# subSlotOrZero, low24Field, ownerID=this->0x4, &this->0xc)` - not
# further decompiled, but clearly the same family of "register this
# instance's variant+position into a per-instance sub-record array"
# calls as IPOT/IBBM.
#
# Finally clears `this->0x11c` (the confirmed "hidden" visibility flag
# also used by NAVI's fn_801F3668) - FSPO starts INVISIBLE, consistent
# with its no-op update (`fn_801E7C84`) and generic no-op draw: this
# looks like a pure logical marker/anchor actor, not something
# rendered or animated on its own.
fn_801E7C88:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stmw 27, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    lwz 3, 0x90(31)
    extrwi. 0, 3, 1, 8
    .4byte 0x41820050 # beq .L_801E7CF8
    extrwi 27, 3, 2, 9
    mr 3, 27
    bl fn_80210B34
    lfs 0, 0x24(31)
    mr 3, 27
    fadds 0, 0, 1
    stfs 0, 0x24(31)
    bl fn_80210AF8
    lfs 0, 0x28(31)
    fadds 0, 0, 1
    stfs 0, 0x28(31)
    psq_l 1, 0x24(31), 0, 0
    lfs 0, 0x2c(31)
    psq_st 1, 0xc(31), 0, 0
    stfs 0, 0x14(31)
    psq_l 1, 0x24(31), 0, 0
    lfs 0, 0x2c(31)
    psq_st 1, 0x18(31), 0, 0
    stfs 0, 0x20(31)
L_801E7CF8:
    .4byte 0xC042C650 # lfs f2, lbl_8053F5F0@sda21(r0)
    li 0, 0x0
    .4byte 0xC022C654 # lfs f1, lbl_8053F5F4@sda21(r0)
    stfs 2, 0x60(31)
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stw 0, 0xb0(31)
    lwz 0, 0x230(31)
    ori 0, 0, 0x100
    stw 0, 0x230(31)
    lwz 4, 0x90(31)
    lwz 27, 0x4(31)
    clrlwi 30, 4, 24
    extrwi 0, 4, 5, 11
    cntlzw 3, 30
    srwi 29, 4, 24
    extrwi 3, 3, 1, 26
    neg 3, 3
    and 28, 0, 3
    bl fn_801E9AFC
    lbz 0, 0xf0(3)
    clrlwi 5, 28, 24
    mr 4, 29
    mr 6, 30
    mulli 0, 0, 0x78
    mr 7, 27
    addi 8, 31, 0xc
    add 3, 3, 0
    bl fn_801EA75C
    li 0, 0x0
    stb 0, 0x11c(31)
    lmw 27, 0xc(1)
    lwz 0, 0x24(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
