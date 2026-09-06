.section extab, "a"
.balign 4
.global etb_800083B8
etb_800083B8:
    .4byte 0x000A0000
    .4byte 0x00000000
.size etb_800083B8, 8

.section extabindex, "a"
.balign 4
.global eti_800156B8
eti_800156B8:
    .4byte fn_801CE928
    .4byte 0x00000064
    .4byte etb_800083B8
.size eti_800156B8, 12

.text
.balign 4
.global fn_801CE928

# fn_801CE928 - GENERIC default for vtable offset 0x68 (see
# project_fsa_growing_area_extension.md). Checks whether the tracked
# rect's width (`0x68-0x60`) OR height (`0x6c-0x64`) exceeds a small
# threshold (`lbl_8053EFC4` - the SAME threshold constant used by the
# already-confirmed FSPO/TINB 0x5c hook `fn_801CEB78`, which checks the
# SAME rect fields). On trigger, calls `fn_801F2B7C(this->0x114, -1, 1)`
# (not further decompiled) and returns its result, else returns 0.
fn_801CE928:
    stwu 1, -0x10(1)
    mflr 0
    .4byte 0xC042C024 # lfs f2, lbl_8053EFC4@sda21(r0)
    stw 0, 0x14(1)
    li 0, 0x0
    lfs 1, 0x68(3)
    lfs 0, 0x60(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4081002C # ble .L_801CE978
    lfs 1, 0x6c(3)
    lfs 0, 0x64(3)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810018 # ble .L_801CE978
    lwz 4, 0x114(3)
    li 5, -0x1
    li 6, 0x1
    bl fn_801F2B7C
    mr 0, 3
L_801CE978:
    mr 3, 0
    lwz 0, 0x14(1)
    mtlr 0
    addi 1, 1, 0x10
    blr
