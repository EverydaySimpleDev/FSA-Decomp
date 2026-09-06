# fn_802E7DB8 - actor @lbl_804A9FB0: nearest-KEY0-actor search, variant A (0x2E8)
# Iterates all "KEY0"-tagged actors (SpatialRegistry_GetBase spatial-registry find +
# fn_801F78F4 tag-match, then fn_801F666C next-in-iteration), filtering on
# candidate->0x280==6 (type code) and testing candidate position against an
# expanding bounding box (this->0x60/0x64/0x68/0x6c, seeded from this->0xc/
# 0x10 position); tracks the running best-candidate pointer. Track A:
# byte-match verified, structural overview per the large/complex-function
# exception.
.section extab, "a"
.balign 4
.global etb_8000D0CC
etb_8000D0CC:
    .4byte 0x210A0000
    .4byte 0x00000000
.size etb_8000D0CC, 8

.section extabindex, "a"
.balign 4
.global eti_8001C264
eti_8001C264:
    .4byte fn_802E7DB8
    .4byte 0x000002E8
    .4byte etb_8000D0CC
.size eti_8001C264, 12

.text
.balign 4
.global fn_802E7DB8

fn_802E7DB8:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stfd 28, 0x30(1)
    psq_st 28, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    mr 31, 3
    .4byte 0xC022E2C0 # lfs f1, lbl_80541260@sda21(r0)
    lfs 3, 0x10(3)
    li 28, -0x1
    lfs 2, 0xc(3)
    lis 30, 0x4b45
    .4byte 0xC002E2C4 # lfs f0, lbl_80541264@sda21(r0)
    stfs 1, 0x60(3)
    stfs 1, 0x64(3)
    stfs 0, 0x68(3)
    stfs 0, 0x6c(3)
    lfs 31, 0x60(3)
    lfs 30, 0x64(3)
    lfs 29, 0x68(3)
    fadds 31, 31, 2
    lfs 28, 0x6c(3)
    fadds 30, 30, 3
    fadds 29, 29, 2
    fadds 28, 28, 3
L_802E7E40:
    bl SpatialRegistry_GetBase
    mr 5, 28
    addi 4, 30, 0x5930
    bl fn_801F78F4
    mr. 29, 3
    mr 28, 29
    .4byte 0x4080000C # bge .L_802E7E64
    li 3, 0x0
    .4byte 0x48000200 # b .L_802E8060
L_802E7E64:
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr. 29, 3
    .4byte 0x4182FFCC # beq .L_802E7E40
    lwz 0, 0x280(29)
    cmpwi 0, 0x6
    .4byte 0x4082FFC0 # bne .L_802E7E40
    lfs 1, 0x14(29)
    .4byte 0xC002E2C8 # lfs f0, lbl_80541268@sda21(r0)
    psq_l 2, 0xc(29), 0, 0
    fcmpu cr0, 1, 0
    stfs 1, 0x1c(1)
    psq_st 2, 0x14(1), 0, 0
    .4byte 0x4082FFA4 # bne .L_802E7E40
    lfs 0, 0x60(29)
    lfs 3, 0x14(1)
    lfs 2, 0x68(29)
    fadds 0, 0, 3
    lfs 1, 0x64(29)
    lfs 4, 0x18(1)
    fadds 2, 2, 3
    lfs 3, 0x6c(29)
    fcmpo cr0, 0, 31
    fadds 1, 1, 4
    fadds 3, 3, 4
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802E7ED8
    fmr 0, 31
L_802E7ED8:
    fcmpo cr0, 1, 30
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802E7EE8
    fmr 1, 30
L_802E7EE8:
    fcmpo cr0, 2, 29
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802E7EF8
    fmr 2, 29
L_802E7EF8:
    fcmpo cr0, 3, 28
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802E7F08
    fmr 3, 28
L_802E7F08:
    fcmpo cr0, 2, 0
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_802E7F28
    fcmpo cr0, 3, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_802E7F28
    li 0, 0x1
L_802E7F28:
    clrlwi. 0, 0, 24
    .4byte 0x4182FF14 # beq .L_802E7E40
    li 3, 0x1
    li 0, 0x14
    stw 3, 0x244(31)
    psq_l 1, 0x14(1), 0, 0
    stw 0, 0x24c(31)
    lfs 0, 0x1c(1)
    psq_st 1, 0x8(1), 0, 0
    stfs 0, 0x10(1)
    lwz 3, 0x230(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802E7F60
    bl fn_801EE434
L_802E7F60:
    lwz 3, 0x234(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802E7F70
    bl fn_801EE434
L_802E7F70:
    lwz 3, 0x238(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802E7F80
    bl fn_801EE434
L_802E7F80:
    lwz 3, 0x23c(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802E7F90
    bl fn_801EE434
L_802E7F90:
    lwz 3, 0x240(31)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802E7FA0
    bl fn_801EE434
L_802E7FA0:
    li 0, 0x0
    .4byte 0xC022E2CC # lfs f1, lbl_8054126C@sda21(r0)
    stw 0, 0x230(31)
    addi 4, 1, 0x8
    li 5, 0x85
    li 6, 0x0
    stw 0, 0x234(31)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    stw 0, 0x238(31)
    li 10, 0x1
    stw 0, 0x23c(31)
    stw 0, 0x240(31)
    lwz 3, 0x4(31)
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x8
    .4byte 0xC022E2CC # lfs f1, lbl_8054126C@sda21(r0)
    li 5, 0x86
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 3, 0x4(31)
    addi 4, 1, 0x8
    .4byte 0xC022E2CC # lfs f1, lbl_8054126C@sda21(r0)
    li 5, 0x87
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lis 4, 0x3
    mr 3, 31
    addi 4, 4, 0x69
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 29
    bl fn_802C5284
    li 0, 0x0
    mr 3, 31
    stb 0, 0x11c(29)
    bl fn_801F34DC
    li 3, 0x1
L_802E8060:
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    psq_l 28, 0x38(1), 0, 0
    lfd 28, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 0, 0x74(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

