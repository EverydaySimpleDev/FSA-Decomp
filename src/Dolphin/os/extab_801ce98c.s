.section extab, "a"
.balign 4
.global etb_800083C0
etb_800083C0:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800083C0, 8

.section extabindex, "a"
.balign 4
.global eti_800156C4
eti_800156C4:
    .4byte fn_801CE98C
    .4byte 0x0000006C
    .4byte etb_800083C0
.size eti_800156C4, 12

.text
.balign 4
.global fn_801CE98C

# fn_801CE98C - GENERIC default for vtable offset 0x64 (see
# project_fsa_growing_area_extension.md). Unless flag bit 19 of
# `this->0x230` is set (a disable gate), checks a SECOND tracked rect
# (`0x80-0x8c`, distinct from the 0x60-0x6c rect checked by the 0x68
# slot) against the same threshold constant. On trigger, calls
# `fn_801F2618(this->0x264, 0)` (not further decompiled) and returns
# `this`, else returns 0.
fn_801CE98C:
    stwu 1, -0x10(1)
    mflr 0
    li 4, 0x0
    stw 0, 0x14(1)
    lwz 0, 0x230(3)
    rlwinm. 0, 0, 0, 19, 19
    .4byte 0x40820040 # bne .L_801CE9E4
    lfs 1, 0x88(3)
    lfs 0, 0x80(3)
    .4byte 0xC042C024 # lfs f2, lbl_8053EFC4@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810028 # ble .L_801CE9E4
    lfs 1, 0x8c(3)
    lfs 0, 0x84(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810014 # ble .L_801CE9E4
    addi 4, 3, 0x264
    li 5, 0x0
    bl fn_801F2618
    mr 4, 3
L_801CE9E4:
    lwz 0, 0x14(1)
    mr 3, 4
    mtlr 0
    addi 1, 1, 0x10
    blr
