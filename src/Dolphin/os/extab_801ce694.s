.section extab, "a"
.balign 4
.global etb_800083A8
etb_800083A8:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800083A8, 8

.section extabindex, "a"
.balign 4
.global eti_800156A0
eti_800156A0:
    .4byte fn_801CE694
    .4byte 0x0000016C
    .4byte etb_800083A8
.size eti_800156A0, 12

.text
.balign 4
.global fn_801CE694

# fn_801CE694 - GENERIC default for vtable offset 0x80 (see
# project_fsa_growing_area_extension.md for the whole "growing area"
# subsystem this belongs to). If flag bit 26 of `this->0x230` is
# clear: queries a spatial helper `fn_8022461C(this->0x4, &this->0xc)`
# (an edge/wall probe, not further decompiled); if it returns code 2
# (a specific edge-hit result), snaps `this->0x10/0x14` back by a fixed
# step (bouncing off whatever was hit). Then checks the SAME second
# rect (`0x80-0x8c`) the 0x64 slot (`fn_801CE98C`) checks; if it has
# grown past threshold, computes a candidate settle point and queries
# `fn_802265FC(pointPtr, this->0x4)`, branches on the returned code to
# decide whether to call `fn_801CCD34` (a "compute final settle
# position" helper) - if so, writes the settled X/Z into
# `this->0x10/0x14` AND the growth scalar `this->0x44`, then sets flag
# bit 0x8 in `this->0x230`. If bit 26 WAS set initially, just resets
# `0x14`/`0x44` to the threshold constant and sets the same flag bit.
# Reads as "has this growing area's edge hit a wall/obstacle - if so,
# bounce back and/or settle at a final resting position."
fn_801CE694:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 26, 26
    .4byte 0x4082011C # bne .L_801CE7D0
    lwz 4, 0x4(30)
    addi 3, 30, 0xc
    bl fn_8022461C
    clrlwi 0, 3, 16
    cmplwi 0, 0x2
    .4byte 0x40820104 # bne .L_801CE7D0
    lfs 0, 0x14(30)
    lfs 1, 0x10(30)
    fneg 0, 0
    .4byte 0xC042C024 # lfs f2, lbl_8053EFC4@sda21(r0)
    fadds 0, 1, 0
    stfs 0, 0x10(30)
    stfs 2, 0x14(30)
    lfs 1, 0x88(30)
    lfs 0, 0x80(30)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100EC # ble .L_801CE7E8
    lfs 3, 0x8c(30)
    lfs 0, 0x84(30)
    fsubs 0, 3, 0
    fcmpo cr0, 0, 2
    .4byte 0x408100D8 # ble .L_801CE7E8
    lfs 2, 0x10(30)
    addi 3, 1, 0x8
    lfs 1, 0x14(30)
    li 31, 0x0
    lfs 0, 0xc(30)
    fsubs 1, 2, 1
    stfs 0, 0x8(1)
    fadds 0, 3, 1
    stfs 0, 0xc(1)
    lwz 4, 0x4(30)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmpwi 0, 0x1
    .4byte 0x4182003C # beq .L_801CE784
    .4byte 0x40800010 # bge .L_801CE75C
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801CE768
    .4byte 0x4800002C # b .L_801CE784
L_801CE75C:
    cmpwi 0, 0x3
    .4byte 0x40800024 # bge .L_801CE784
    .4byte 0x48000024 # b .L_801CE788
L_801CE768:
    lfs 1, 0x14(30)
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_801CE788
    li 31, 0x1
    .4byte 0x48000008 # b .L_801CE788
L_801CE784:
    li 31, 0x1
L_801CE788:
    clrlwi. 0, 31, 24
    .4byte 0x4182005C # beq .L_801CE7E8
    addi 3, 1, 0x8
    addi 4, 1, 0x10
    bl fn_801CCD34
    lfs 2, 0x14(1)
    .4byte 0xC002C03C # lfs f0, lbl_8053EFDC@sda21(r0)
    lfs 1, 0x8c(30)
    fsubs 2, 2, 0
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x10(30)
    stfs 0, 0x14(30)
    stfs 0, 0x44(30)
    lwz 0, 0x230(30)
    ori 0, 0, 0x8
    stw 0, 0x230(30)
    .4byte 0x4800001C # b .L_801CE7E8
L_801CE7D0:
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    stfs 0, 0x14(30)
    stfs 0, 0x44(30)
    lwz 0, 0x230(30)
    ori 0, 0, 0x8
    stw 0, 0x230(30)
L_801CE7E8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
