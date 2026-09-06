.section extab, "a"
.balign 4
.global etb_8000A1A0
etb_8000A1A0:
    .4byte 0x08CA0000
    .4byte 0x00000000
.size etb_8000A1A0, 8

.section extabindex, "a"
.balign 4
.global eti_80017DB8
eti_80017DB8:
    .4byte fn_80214E50
    .4byte 0x0000014C
    .4byte etb_8000A1A0
.size eti_80017DB8, 12

.text
.balign 4
.global fn_80214E50

# fn_80214E50(this) - positional effect trigger, sibling of the batch2
# pair fn_802144F0/fn_802146A4 (extab_802144f0.s/extab_802146a4.s).
# Skips entirely if this->0x0 (a handle slot) is already set. Otherwise
# computes an offset position from this->0x34's embedded sub-object
# (0xc/0x10 paired-single position + fixed constants lbl_8053FBD4/FBC0),
# packs a pair of 16-bit values into a double via the classic
# int-to-float exponent-bias trick (lis r0,0x4330 + xoris), calls the
# CONFIRMED spatial effect subsystem fn_802F5E9C
# (project_fsa_shared_effect_subsystem_crossref.md) to derive a
# secondary offset, then triggers effect ID 0x33b via the CONFIRMED
# fn_8013CC50 lifecycle primitive at the combined position. Stores the
# returned handle into this->0x0 and, if non-null, ORs bit 0x40 into
# the handle's 0xf4 field (a flag on the underlying handle object -
# meaning not confirmed, but consistent with a "looping/attached" flag
# given the one-shot "skip if this->0x0 already set" guard above it).
fn_80214E50:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stfd 30, 0x40(1)
    psq_st 30, 0x48(1), 0, 0
    stfd 29, 0x30(1)
    psq_st 29, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    mr 31, 3
    lwz 0, 0x0(3)
    cmplwi 0, 0x0
    .4byte 0x408200EC # bne .L_80214F70
    lwz 3, 0x34(31)
    li 4, 0x0
    .4byte 0xC022CC34 # lfs f1, lbl_8053FBD4@sda21(r0)
    li 0, 0x1
    psq_l 2, 0xc(3), 0, 0
    lfs 3, 0x14(3)
    .4byte 0xC002CC20 # lfs f0, lbl_8053FBC0@sda21(r0)
    psq_st 2, 0x8(1), 0, 0
    fcmpo cr0, 3, 0
    lfs 0, 0xc(1)
    stfs 3, 0x10(1)
    fadds 0, 0, 1
    stfs 0, 0xc(1)
    .4byte 0x4081000C # ble .L_80214EC8
    mr 4, 0
    li 0, 0x0
L_80214EC8:
    slwi 3, 4, 10
    slwi 0, 0, 7
    add 3, 3, 0
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stw 4, 0x1c(1)
    addi 4, 1, 0x8
    .4byte 0xC842CC28 # lfd f2, lbl_8053FBC8@sda21(r0)
    stw 0, 0x18(1)
    lfs 0, 0xc(1)
    lfd 1, 0x18(1)
    lfs 31, 0x8(1)
    fsubs 1, 1, 2
    lwz 3, 0x20(3)
    fadds 30, 0, 1
    fadds 29, 3, 1
    bl fn_802F5E9C
    lfs 0, 0x10(1)
    addi 4, 1, 0x8
    addi 9, 31, 0x4
    li 5, 0x33b
    fsubs 0, 1, 0
    stfs 31, 0x8(31)
    .4byte 0xC022CC04 # lfs f1, lbl_8053FBA4@sda21(r0)
    li 6, 0x0
    stfs 30, 0xc(31)
    li 7, 0x1
    fadds 29, 29, 0
    li 8, 0x0
    li 10, 0x1
    stfs 29, 0x10(31)
    lwz 3, 0x34(31)
    lwz 3, 0x4(3)
    bl fn_8013CC50
    stw 3, 0x0(31)
    lwz 3, 0x0(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_80214F70
    lwz 0, 0xf4(3)
    ori 0, 0, 0x40
    stw 0, 0xf4(3)
L_80214F70:
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    lwz 0, 0x64(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x60
    blr
