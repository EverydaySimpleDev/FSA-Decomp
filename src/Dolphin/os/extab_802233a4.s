.section extab, "a"
.balign 4
.global etb_8000A6D8
etb_8000A6D8:
    .4byte 0x090A0000
    .4byte 0x00000000
.size etb_8000A6D8, 8

.section extabindex, "a"
.balign 4
.global eti_80018550
eti_80018550:
    .4byte fn_802233A4
    .4byte 0x00000190
    .4byte etb_8000A6D8
.size eti_80018550, 12

.text
.balign 4
.global fn_802233A4

# fn_802233A4 - fn_80224084's own vtable-0x68 override (see
# extab_80223f90.s and project_fsa_growing_area_extension.md),
# replacing the generic `fn_801CE928`. Computes a CANDIDATE grown rect
# for `this->0x60-0x6c` by starting from base offset constants and
# adding a state/direction-dependent delta (a multi-way branch keyed by
# `this->0x248` then `this->0x98`, mirroring the direction-lookup shape
# seen elsewhere in this family). If the candidate rect's width or
# height delta exceeds the shared threshold (`lbl_8053FF1C`): saves the
# CURRENT rect values, temporarily overwrites `0x60-0x6c` with the
# candidate values, calls `fn_801F2B7C(this->0x114, -1, 1)` (the SAME
# consequence call the generic 0x68 default uses), then RESTORES the
# original rect. Net effect: never permanently changes the tracked
# rect - only uses a hypothetical "would growing this far in this
# direction be significant" test to fire the same consequence call
# fn_801F2B7C, consistent with the "test for wall/obstacle collision
# while growing" theme (project_fsa_growing_area_extension.md).
fn_802233A4:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stfd 29, 0x20(1)
    psq_st 29, 0x28(1), 0, 0
    stfd 28, 0x10(1)
    psq_st 28, 0x18(1), 0, 0
    stw 31, 0xc(1)
    mr 31, 3
    .4byte 0xC042CF68 # lfs f2, lbl_8053FF08@sda21(r0)
    .4byte 0xC082CF6C # lfs f4, lbl_8053FF0C@sda21(r0)
    li 3, 0x0
    lwz 0, 0x248(31)
    fmr 3, 2
    fmr 5, 4
    cmpwi 0, 0x5
    .4byte 0x408200AC # bne .L_802234A0
    .4byte 0xC042CF70 # lfs f2, lbl_8053FF10@sda21(r0)
    .4byte 0xC082CF74 # lfs f4, lbl_8053FF14@sda21(r0)
    lwz 0, 0x98(31)
    fmr 3, 2
    fmr 5, 4
    cmpwi 0, 0x2
    .4byte 0x4182005C # beq .L_8022346C
    .4byte 0x40800014 # bge .L_80223428
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80223434
    .4byte 0x40800030 # bge .L_80223450
    .4byte 0x4800007C # b .L_802234A0
L_80223428:
    cmpwi 0, 0x4
    .4byte 0x40800074 # bge .L_802234A0
    .4byte 0x48000058 # b .L_80223488
L_80223434:
    .4byte 0xC022CF78 # lfs f1, lbl_8053FF18@sda21(r0)
    .4byte 0xC002CF7C # lfs f0, lbl_8053FF1C@sda21(r0)
    fadds 2, 2, 1
    fadds 3, 3, 0
    fadds 4, 4, 1
    fadds 5, 5, 0
    .4byte 0x48000054 # b .L_802234A0
L_80223450:
    .4byte 0xC022CF80 # lfs f1, lbl_8053FF20@sda21(r0)
    .4byte 0xC002CF7C # lfs f0, lbl_8053FF1C@sda21(r0)
    fadds 2, 2, 1
    fadds 3, 3, 0
    fadds 4, 4, 1
    fadds 5, 5, 0
    .4byte 0x48000038 # b .L_802234A0
L_8022346C:
    .4byte 0xC022CF7C # lfs f1, lbl_8053FF1C@sda21(r0)
    .4byte 0xC002CF78 # lfs f0, lbl_8053FF18@sda21(r0)
    fadds 2, 2, 1
    fadds 3, 3, 0
    fadds 4, 4, 1
    fadds 5, 5, 0
    .4byte 0x4800001C # b .L_802234A0
L_80223488:
    .4byte 0xC022CF7C # lfs f1, lbl_8053FF1C@sda21(r0)
    .4byte 0xC002CF80 # lfs f0, lbl_8053FF20@sda21(r0)
    fadds 2, 2, 1
    fadds 3, 3, 0
    fadds 4, 4, 1
    fadds 5, 5, 0
L_802234A0:
    fsubs 0, 4, 2
    .4byte 0xC022CF7C # lfs f1, lbl_8053FF1C@sda21(r0)
    fcmpo cr0, 0, 1
    .4byte 0x40810054 # ble .L_80223500
    fsubs 0, 5, 3
    fcmpo cr0, 0, 1
    .4byte 0x40810048 # ble .L_80223500
    lfs 31, 0x60(31)
    mr 3, 31
    lfs 30, 0x64(31)
    li 5, -0x1
    lfs 29, 0x68(31)
    li 6, 0x1
    lfs 28, 0x6c(31)
    stfs 2, 0x60(31)
    stfs 3, 0x64(31)
    stfs 4, 0x68(31)
    stfs 5, 0x6c(31)
    lwz 4, 0x114(31)
    bl fn_801F2B7C
    stfs 31, 0x60(31)
    stfs 30, 0x64(31)
    stfs 29, 0x68(31)
    stfs 28, 0x6c(31)
L_80223500:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    psq_l 29, 0x28(1), 0, 0
    lfd 29, 0x20(1)
    psq_l 28, 0x18(1), 0, 0
    lfd 28, 0x10(1)
    lwz 0, 0x54(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x50
    blr
