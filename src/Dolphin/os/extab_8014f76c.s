.section extab, "a"
.balign 4
.global etb_80006E0C
etb_80006E0C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006E0C, 8

.section extabindex, "a"
.balign 4
.global eti_800138A0
eti_800138A0:
    .4byte fn_8014F76C
    .4byte 0x00000090
    .4byte etb_80006E0C
.size eti_800138A0, 12

# fn_8014F76C - HINO's ("Hinox") real vtable slot-17 override, a genuine
# per-actor virtual method (not the base Actor's default at this slot -
# HINO and SLR1 each install a DIFFERENT function here, confirmed by
# direct-DOL vtable reads). Fully traced: releases the effect/sound handle
# tracked at this->0x250 if active (looked up via the shared registry
# SpatialRegistry_GetBase/fn_801F666C, released via fn_801F0E34 with a canned "off"
# transform), then resets this->0x250 to -1. This is the EXACT same block
# inlined a second time in the destructor (fn_8014F7FC) - meaning slot 17
# is a generic "stop this handle" cleanup hook that the base actor class
# invokes at some other lifecycle point (e.g. on hit/interrupt), separate
# from teardown.
.text
.balign 4
.global fn_8014F76C

fn_8014F76C:
    stwu 1, -0x20(1)
    mflr 0
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lwz 31, 0x250(3)
    cmpwi 31, 0x0
    .4byte 0x41800058 # blt .L_8014F7E4
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_8014F7E4
    .4byte 0xC022A234 # lfs f1, lbl_8053D1D4@sda21(r0)
    lis 4, 0x4
    .4byte 0xC002A24C # lfs f0, lbl_8053D1EC@sda21(r0)
    li 0, -0x1
    stfs 1, 0xc(1)
    addi 4, 4, 0x8
    li 5, 0x0
    stfs 1, 0x8(1)
    psq_l 2, 0x8(1), 0, 0
    stfs 1, 0x10(1)
    psq_st 2, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    mr 3, 30
    stfs 0, 0x10(1)
    stw 0, 0x250(30)
    bl fn_801F0E34
L_8014F7E4:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

