/*
 * FIRE (burning status-effect actor) cluster, part 3/9.
 *
 * fn_802BACE4(this): returns 0 immediately if this->0x264 (mode) != 0.
 * Otherwise translates the interaction box (this->0x60/64/68/6c by
 * position) and iterates every actor tagged "ICEB" (0x49434542, a NEW
 * confirmed FourCC - "Ice Block") via the confirmed fn_801F78F4
 * find-next-of-type iterator (see
 * [[reference_fsa_spatial_registry_system]]), checking owner match and
 * a box-overlap test against each ICEB's own translated box. Returns 1
 * if any overlaps. Net effect: "is there a nearby ice block?" - a fire/
 * ice environmental interaction check consumed by the core update()
 * (part 4/9 and part 6/9) to suppress fire behavior near ice.
 */
.section extab, "a"
.balign 4
.global etb_8000C8AC
etb_8000C8AC:
    .4byte 0x190A0000
    .4byte 0x00000000
.size etb_8000C8AC, 8

.section extabindex, "a"
.balign 4
.global eti_8001B67C
eti_8001B67C:
    .4byte fn_802BACE4
    .4byte 0x00000194
    .4byte etb_8000C8AC
.size eti_8001B67C, 12

.text
.balign 4
.global fn_802BACE4

fn_802BACE4:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stfd 28, 0x20(1)
    psq_st 28, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    stw 29, 0x14(1)
    mr 29, 3
    lwz 0, 0x264(3)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_802BAD34
    li 3, 0x0
    .4byte 0x4800010C # b .L_802BAE3C
L_802BAD34:
    lfs 31, 0x60(29)
    li 30, -0x1
    lfs 0, 0xc(29)
    lis 31, 0x4943
    lfs 29, 0x68(29)
    lfs 30, 0x64(29)
    fadds 31, 31, 0
    lfs 1, 0x10(29)
    fadds 29, 29, 0
    lfs 28, 0x6c(29)
    fadds 30, 30, 1
    fadds 28, 28, 1
L_802BAD64:
    bl SpatialRegistry_GetBase
    mr 5, 30
    addi 4, 31, 0x4542
    bl fn_801F78F4
    mr. 30, 3
    .4byte 0x4080000C # bge .L_802BAD84
    li 3, 0x0
    .4byte 0x480000BC # b .L_802BAE3C
L_802BAD84:
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182FFD0 # beq .L_802BAD64
    lwz 4, 0x4(29)
    lwz 0, 0x4(3)
    cmpw 4, 0
    .4byte 0x4082FFC0 # bne .L_802BAD64
    lfs 0, 0x60(3)
    lfs 3, 0xc(3)
    lfs 2, 0x68(3)
    fadds 0, 0, 3
    lfs 1, 0x64(3)
    lfs 4, 0x10(3)
    fadds 2, 2, 3
    lfs 3, 0x6c(3)
    fcmpo cr0, 0, 31
    fadds 1, 1, 4
    fadds 3, 3, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802BADE0
    fmr 0, 31
L_802BADE0:
    fcmpo cr0, 1, 30
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802BADF0
    fmr 1, 30
L_802BADF0:
    fcmpo cr0, 2, 29
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802BAE00
    fmr 2, 29
L_802BAE00:
    fcmpo cr0, 3, 28
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802BAE10
    fmr 3, 28
L_802BAE10:
    fcmpo cr0, 2, 0
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_802BAE30
    fcmpo cr0, 3, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802BAE30
    li 0, 0x1
L_802BAE30:
    clrlwi. 0, 0, 24
    .4byte 0x4182FF30 # beq .L_802BAD64
    li 3, 0x1
L_802BAE3C:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    psq_l 28, 0x28(1), 0, 0
    lfd 28, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x64(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

