.section extab, "a"
.balign 4
.global etb_80008C98
etb_80008C98:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80008C98, 8

.section extabindex, "a"
.balign 4
.global eti_800162DC
eti_800162DC:
    .4byte fn_801EBC84
    .4byte 0x000000E8
    .4byte etb_80008C98
.size eti_800162DC, 12

.text
.balign 4
.global fn_801EBC84

# fn_801EBC84(this) - HRMN's real draw(). On first call (this->0x138
# still 0, a lazy-init handle), calls the CONFIRMED render primitive
# fn_801EF830 once using a dedicated model table (lbl_80469CC8) -
# almost certainly seeding this->0x138 with a resource handle for
# reuse afterward (mirrors the same lazy-init idiom seen in
# project_fsa_door_key0_full_depth.md).
#
# When not owned by a real player (this->0x4 < 8 is false... actually
# the branch skips the effect when this->0x4>=8): fires a sound/effect
# via the resource manager's vtable slot 0x18 (the "PEFF"-family call,
# see project_fsa_core_systems_gap.md) and draws via the CONFIRMED
# spatial-triad helper fn_802F86CC using the camera manager's ambient
# light-probe grid - the SAME pattern OKTA/TINK use for their normal
# (non-captured) draw path.
#
# Always calls fn_801ED828(this+0x2b6) (new, not yet decompiled) - a
# per-frame "tick" method for the embedded u16-reset sub-object the
# constructor installs at that exact offset (Hrmn_ResetToZero, see
# extab_801ed144.s) - confirming that embedded field is actively
# driven every draw, not just initialized once. When the draw mode
# (this->0x248) falls in [7,0x10]: calls fn_80215ECC(this+0x2b8) (new)
# - likewise a method for the embedded "per-slot-array initializer"
# sub-object (fn_80216178) from the constructor.
fn_801EBC84:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    stw 30, 0x8(1)
    mr 30, 3
    lwz 0, 0x138(3)
    cmplwi 0, 0x0
    .4byte 0x40820028 # bne .L_801EBCCC
    lis 4, lbl_80469CC8@ha
    lwz 3, 0x4(30)
    addi 7, 4, lbl_80469CC8@l
    li 5, 0x0
    addi 4, 30, 0xc
    li 6, 0x0
    li 8, 0x0
    li 9, 0x0
    bl fn_801EF830
L_801EBCCC:
    lwz 0, 0x4(30)
    lwz 3, 0x280(30)
    cmpwi 0, 0x8
    addi 31, 3, 0x319
    .4byte 0x40800050 # bge .L_801EBD2C
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80469CD8@ha
    addi 5, 3, lbl_80469CD8@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022C718 # lfs f1, lbl_8053F6B8@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 31
    fmr 2, 1
    li 7, 0x0
    lwz 3, 0x20(4)
    addi 4, 30, 0xc
    bl fn_802F86CC
L_801EBD2C:
    addi 3, 30, 0x2b6
    bl fn_801ED828
    lwz 0, 0x248(30)
    cmpwi 0, 0x11
    .4byte 0x40800018 # bge .L_801EBD54
    cmpwi 0, 0x7
    .4byte 0x40800008 # bge .L_801EBD4C
    .4byte 0x4800000C # b .L_801EBD54
L_801EBD4C:
    addi 3, 30, 0x2b8
    bl fn_80215ECC
L_801EBD54:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    lwz 30, 0x8(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

