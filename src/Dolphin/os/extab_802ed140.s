# fn_802ED140 - STPN: "ITMS" registry-notify helper (0xAC)
# Iterates a spatial-registry actor array (SpatialRegistry_GetBase), checking each
# entry's FourCC field at +0x1a0 for "ITMS" and calling fn_802AC09C on
# matches; afterward notifies via fn_80134FBC(lbl_8053AAF8, 0) and
# fn_80458658(lbl_8053AF80, 0). Same logic (with arg 1 instead of 0) is
# duplicated inline in the destructor (fn_802ED1F4) and update()
# (fn_802ED2BC) below.
#
# Attempted real-C++ promotion (Phase 4): matched retail's logic exactly,
# including correctly identifying `lbl_8053AAF8`/`lbl_8053AF80` as global
# POINTER VARIABLES that need to be LOADED (not array symbols whose
# address is taken - `extern void* lbl_X;` passed by value, not
# `extern void* lbl_X[];` passed by decay), but hit a pure register-
# allocation-only prologue-ordering mismatch for the loop counter/offset
# pair (r29/r30 role assignment) that 2 source variants (combined
# for-loop init; separate declarations in each order) could not
# reproduce exactly. Same class of issue as the rest of this batch.
# Reverted to raw asm; see project_fsa_phase4_resumed_session2.md.
.section extab, "a"
.balign 4
.global etb_8000D204
etb_8000D204:
    .4byte 0x20080000
    .4byte 0x00000000
.size etb_8000D204, 8

.section extabindex, "a"
.balign 4
.global eti_8001C420
eti_8001C420:
    .4byte fn_802ED140
    .4byte 0x000000AC
    .4byte etb_8000D204
.size eti_8001C420, 12

.text
.balign 4
.global fn_802ED140

fn_802ED140:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    stw 28, 0x10(1)
    mr 28, 3
    bl SpatialRegistry_GetBase
    lwz 31, 0x1008(3)
    li 29, 0x0
    li 30, 0x0
    .4byte 0x48000034 # b .L_802ED1A4
L_802ED174:
    bl SpatialRegistry_GetBase
    addi 0, 30, 0x8
    lwzx 3, 3, 0
    cmplwi 3, 0x0
    .4byte 0x41820018 # beq .L_802ED19C
    lwz 4, 0x1a0(3)
    subis 0, 4, 0x4954
    cmplwi 0, 0x4d53
    .4byte 0x40820008 # bne .L_802ED19C
    bl fn_802AC09C
L_802ED19C:
    addi 30, 30, 0x4
    addi 29, 29, 0x1
L_802ED1A4:
    cmpw 29, 31
    .4byte 0x4180FFCC # blt .L_802ED174
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 4, 0x0
    bl fn_80134FBC
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x0
    bl fn_80458658
    li 0, 0x0
    stb 0, 0x11c(28)
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 29, 0x14(1)
    lwz 28, 0x10(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

