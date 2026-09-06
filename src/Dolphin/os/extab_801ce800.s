.section extab, "a"
.balign 4
.global etb_800083B0
etb_800083B0:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_800083B0, 8

.section extabindex, "a"
.balign 4
.global eti_800156AC
eti_800156AC:
    .4byte fn_801CE800
    .4byte 0x00000114
    .4byte etb_800083B0
.size eti_800156AC, 12

.text
.balign 4
.global fn_801CE800

# fn_801CE800(this) - "detect large movement, trigger repositioning."
# NOT confirmed SLK2-specific (field layout matches a generic
# moving-platform/room-transition helper, not SLK2's own fields).
# Checks whether this->0x88-0x80 or this->0x8c-0x84 (a stored-vs-current
# position pair) exceeds epsilon lbl_8053EFC4; if either does, computes
# a rotated point via not-yet-seen fn_802265FC (sibling of the trivial
# wrapper fn_802265DC, extab_802265dc.s) and dispatches on its returned
# mode (0-3). Most modes just set a "handled" flag; mode 2 additionally
# checks an angle via not-yet-seen fn_801CCD34 against threshold
# lbl_8053EFDC, re-derives this->0x10/0x14/0x44, and ORs bit 0x8 into
# this->0x230.
fn_801CE800:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022C024 # lfs f1, lbl_8053EFC4@sda21(r0)
    stw 0, 0x24(1)
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr 30, 3
    lfs 2, 0x88(3)
    lfs 0, 0x80(3)
    fsubs 0, 2, 0
    fcmpo cr0, 0, 1
    .4byte 0x408100D0 # ble .L_801CE8FC
    lfs 3, 0x8c(30)
    lfs 0, 0x84(30)
    fsubs 0, 3, 0
    fcmpo cr0, 0, 1
    .4byte 0x408100BC # ble .L_801CE8FC
    lfs 2, 0x10(30)
    addi 3, 1, 0x10
    lfs 1, 0x14(30)
    li 31, 0x0
    lfs 0, 0xc(30)
    fsubs 1, 2, 1
    stfs 0, 0x10(1)
    fadds 0, 3, 1
    stfs 0, 0x14(1)
    lwz 4, 0x4(30)
    bl fn_802265FC
    clrlwi 0, 3, 16
    cmpwi 0, 0x1
    .4byte 0x4182003C # beq .L_801CE8B4
    .4byte 0x40800010 # bge .L_801CE88C
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801CE898
    .4byte 0x4800002C # b .L_801CE8B4
L_801CE88C:
    cmpwi 0, 0x3
    .4byte 0x40800024 # bge .L_801CE8B4
    .4byte 0x48000024 # b .L_801CE8B8
L_801CE898:
    lfs 1, 0x14(30)
    .4byte 0xC002C024 # lfs f0, lbl_8053EFC4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820010 # bne .L_801CE8B8
    li 31, 0x1
    .4byte 0x48000008 # b .L_801CE8B8
L_801CE8B4:
    li 31, 0x1
L_801CE8B8:
    clrlwi. 0, 31, 24
    .4byte 0x41820040 # beq .L_801CE8FC
    addi 3, 1, 0x10
    addi 4, 1, 0x8
    bl fn_801CCD34
    lfs 2, 0xc(1)
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
L_801CE8FC:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x20
    blr
