.section extab, "a"
.balign 4
.global etb_80006B94
etb_80006B94:
    .4byte 0x10CA0000
    .4byte 0x00000000
.size etb_80006B94, 8

.section extabindex, "a"
.balign 4
.global eti_800134EC
eti_800134EC:
    .4byte fn_8013CB44
    .4byte 0x0000010C
    .4byte etb_80006B94
.size eti_800134EC, 12

# fn_8013CB44(this, srcVec3*, gridX, gridZ, boundsFlag) - returns 0 if
# `this` is NULL. If `boundsFlag` wasn't supplied by the caller, derives it
# by comparing srcVec3->0x8 against the SAME threshold constant
# (lbl_8053CE00) fn_8013CAA4 uses. If set, applies the SAME grid-boundary
# wrap adjustment (gridX<1 -> gridX+=1,gridZ-=1) seen in fn_8013AC90/
# fn_8013B004's probe-grid sampling. Packs gridX/gridZ into the SAME
# slwi-10/slwi-7 cell-index hash, converts it to a float bias, and adds it
# to srcVec3's y/z components. Calls fn_802F5E9C(lbl_8053AB10->0x20,
# srcVec3) - THIS IS A CONFIRMED CALL SITE for the "spatial triad"
# fn_802F5E9C/745C/86CC noted as undecompiled in
# [[project_fsa_shared_effect_subsystem_crossref]]. Writes the final
# adjusted position into this->0xa4/0xa8/0xac (the SAME position fields
# fn_8013C958/fn_8013CAA4 write). Returns 1 on success.
.text
.balign 4
.global fn_8013CB44

fn_8013CB44:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stfd 30, 0x30(1)
    psq_st 30, 0x38(1), 0, 0
    stfd 29, 0x20(1)
    psq_st 29, 0x28(1), 0, 0
    stw 31, 0x1c(1)
    stw 30, 0x18(1)
    mr. 30, 3
    mr 31, 4
    li 0, 0x0
    .4byte 0x418200A0 # beq .L_8013CC1C
    clrlwi. 0, 7, 24
    .4byte 0x41820018 # beq .L_8013CB9C
    lfs 1, 0x8(31)
    .4byte 0xC0029E60 # lfs f0, lbl_8053CE00@sda21(r0)
    fcmpo cr0, 1, 0
    mfcr 0
    extrwi 7, 0, 1, 1
L_8013CB9C:
    clrlwi. 0, 7, 24
    .4byte 0x41820014 # beq .L_8013CBB4
    cmpwi 5, 0x1
    .4byte 0x4080000C # bge .L_8013CBB4
    addi 5, 5, 0x1
    subi 6, 6, 0x1
L_8013CBB4:
    slwi 3, 5, 10
    slwi 0, 6, 7
    add 3, 3, 0
    lis 0, 0x4330
    xoris 4, 3, 0x8000
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stw 4, 0xc(1)
    mr 4, 31
    .4byte 0xC8629E78 # lfd f3, lbl_8053CE18@sda21(r0)
    stw 0, 0x8(1)
    lfs 1, 0x4(31)
    lfd 2, 0x8(1)
    lfs 0, 0x8(31)
    fsubs 2, 2, 3
    lfs 31, 0x0(31)
    lwz 3, 0x20(3)
    fadds 30, 1, 2
    fadds 29, 0, 2
    bl fn_802F5E9C
    lfs 0, 0x8(31)
    li 0, 0x1
    stfs 31, 0xa4(30)
    fsubs 0, 1, 0
    stfs 30, 0xa8(30)
    fadds 29, 29, 0
    stfs 29, 0xac(30)
L_8013CC1C:
    clrlwi 3, 0, 24
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    psq_l 29, 0x28(1), 0, 0
    lfd 29, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 0, 0x54(1)
    lwz 30, 0x18(1)
    mtlr 0
    addi 1, 1, 0x50
    blr
