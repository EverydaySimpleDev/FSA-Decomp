# fn_802E80A0 - actor @lbl_804A9FB0: nearest-KEY0-actor search, variant B (0x33C)
# Same "KEY0"-tag iteration as fn_802E7DB8, but selects by true squared-
# distance (fast inverse-sqrt Newton-Raphson refinement) rather than a
# bounding box, filtering on candidate->0x280==6 and candidate->0x240!=0;
# tracks the nearest candidate found so far. Track A: byte-match verified,
# structural overview per the large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000D0D4
etb_8000D0D4:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_8000D0D4, 8

.section extabindex, "a"
.balign 4
.global eti_8001C270
eti_8001C270:
    .4byte fn_802E80A0
    .4byte 0x0000033C
    .4byte etb_8000D0D4
.size eti_8001C270, 12

.text
.balign 4
.global fn_802E80A0

fn_802E80A0:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stmw 27, 0x2c(1)
    mr 29, 3
    li 31, -0x1
    li 30, -0x1
    li 27, -0x1
    lis 28, 0x4b45
L_802E80C4:
    bl SpatialRegistry_GetBase
    mr 5, 27
    addi 4, 28, 0x5930
    bl fn_801F78F4
    mr. 27, 3
    .4byte 0x41800178 # blt .L_802E8250
    bl SpatialRegistry_GetBase
    mr 4, 27
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182FFD8 # beq .L_802E80C4
    lwz 0, 0x280(3)
    cmpwi 0, 0x6
    .4byte 0x4082FFCC # bne .L_802E80C4
    lwz 0, 0x240(3)
    cmpwi 0, 0x0
    .4byte 0x4182FFC0 # beq .L_802E80C4
    psq_l 2, 0xc(3), 0, 0
    lfs 1, 0x14(3)
    .4byte 0xC002E2C8 # lfs f0, lbl_80541268@sda21(r0)
    psq_st 2, 0xc(1), 0, 0
    stfs 1, 0x14(1)
    lfs 2, 0x10(1)
    lfs 1, 0x10(29)
    lfs 3, 0xc(1)
    fsubs 4, 2, 1
    lfs 1, 0xc(29)
    fsubs 2, 3, 1
    fmuls 1, 4, 4
    fmadds 4, 2, 2, 1
    fcmpo cr0, 4, 0
    .4byte 0x4081004C # ble .L_802E818C
    frsqrte 1, 4
    .4byte 0xC862E2D0 # lfd f3, lbl_80541270@sda21(r0)
    .4byte 0xC842E2D8 # lfd f2, lbl_80541278@sda21(r0)
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 1, 1, 0
    fmul 0, 1, 1
    fmul 1, 3, 1
    fnmsub 0, 4, 0, 2
    fmul 0, 1, 0
    fmul 4, 4, 0
    frsp 4, 4
    .4byte 0x48000088 # b .L_802E8210
L_802E818C:
    .4byte 0xC802E2E0 # lfd f0, lbl_80541280@sda21(r0)
    fcmpo cr0, 4, 0
    .4byte 0x40800010 # bge .L_802E81A4
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
    .4byte 0x48000070 # b .L_802E8210
L_802E81A4:
    stfs 4, 0x8(1)
    lis 0, 0x7f80
    lwz 4, 0x8(1)
    rlwinm 3, 4, 0, 1, 8
    cmpw 3, 0
    .4byte 0x41820014 # beq .L_802E81CC
    .4byte 0x40800040 # bge .L_802E81FC
    cmpwi 3, 0x0
    .4byte 0x41820020 # beq .L_802E81E4
    .4byte 0x48000034 # b .L_802E81FC
L_802E81CC:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_802E81DC
    li 0, 0x1
    .4byte 0x48000028 # b .L_802E8200
L_802E81DC:
    li 0, 0x2
    .4byte 0x48000020 # b .L_802E8200
L_802E81E4:
    clrlwi. 0, 4, 9
    .4byte 0x4182000C # beq .L_802E81F4
    li 0, 0x5
    .4byte 0x48000010 # b .L_802E8200
L_802E81F4:
    li 0, 0x3
    .4byte 0x48000008 # b .L_802E8200
L_802E81FC:
    li 0, 0x4
L_802E8200:
    cmpwi 0, 0x1
    .4byte 0x4082000C # bne .L_802E8210
    lis 3, lbl_80539D38@ha
    lfs 4, lbl_80539D38@l(3)
L_802E8210:
    fctiwz 0, 4
    stfd 0, 0x18(1)
    lwz 0, 0x1c(1)
    cmpwi 0, 0x40
    .4byte 0x40810008 # ble .L_802E8228
    li 0, 0x40
L_802E8228:
    cmpwi 30, 0x0
    .4byte 0x40800010 # bge .L_802E823C
    mr 30, 0
    mr 31, 27
    .4byte 0x4BFFFE8C # b .L_802E80C4
L_802E823C:
    cmpw 0, 30
    .4byte 0x4080FE84 # bge .L_802E80C4
    mr 30, 0
    mr 31, 27
    .4byte 0x4BFFFE78 # b .L_802E80C4
L_802E8250:
    cmpwi 31, 0x0
    .4byte 0x41800174 # blt .L_802E83C8
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr 31, 3
    subfic 0, 30, 0x40
    psq_l 1, 0xc(31), 0, 0
    addi 4, 1, 0xc
    lfs 0, 0x14(3)
    slwi 27, 0, 2
    psq_st 1, 0x0(4), 0, 0
    stfs 0, 0x14(1)
    lwz 0, 0x238(29)
    cmplwi 0, 0x0
    .4byte 0x4082002C # bne .L_802E82B8
    lwz 3, 0x4(29)
    li 5, 0x314
    .4byte 0xC022E2CC # lfs f1, lbl_8054126C@sda21(r0)
    li 6, 0x0
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x238(29)
L_802E82B8:
    lwz 0, 0x23c(29)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802E82F0
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022E2CC # lfs f1, lbl_8054126C@sda21(r0)
    li 5, 0x312
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x23c(29)
L_802E82F0:
    lwz 0, 0x240(29)
    cmplwi 0, 0x0
    .4byte 0x40820030 # bne .L_802E8328
    lwz 3, 0x4(29)
    addi 4, 29, 0xc
    .4byte 0xC022E2CC # lfs f1, lbl_8054126C@sda21(r0)
    li 5, 0x313
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x240(29)
L_802E8328:
    lwz 3, 0x238(29)
    cmplwi 3, 0x0
    .4byte 0x41820078 # beq .L_802E83A8
    lbz 0, 0xc4(31)
    cmplwi 0, 0x0
    .4byte 0x41820040 # beq .L_802E837C
    lwz 3, 0xc8(31)
    bl fn_8023E7B0
    lfs 0, 0x0(3)
    addi 4, 1, 0xc
    li 5, -0x1
    li 6, 0x3
    stfs 0, 0xc(1)
    li 7, 0x1
    lfs 0, 0x4(3)
    stfs 0, 0x10(1)
    lfs 0, 0x8(3)
    stfs 0, 0x14(1)
    lwz 3, 0x238(29)
    bl fn_8013CB44
    .4byte 0x48000028 # b .L_802E83A0
L_802E837C:
    lfs 1, 0x14(1)
    addi 4, 1, 0xc
    .4byte 0xC002E2E8 # lfs f0, lbl_80541288@sda21(r0)
    li 5, 0x0
    li 6, 0x0
    li 7, 0x1
    fadds 0, 1, 0
    stfs 0, 0x14(1)
    bl fn_8013CB44
L_802E83A0:
    lwz 3, 0x238(29)
    stb 27, 0xbb(3)
L_802E83A8:
    lwz 3, 0x23c(29)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802E83B8
    stb 27, 0xbb(3)
L_802E83B8:
    lwz 3, 0x240(29)
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_802E83C8
    stb 27, 0xbb(3)
L_802E83C8:
    lmw 27, 0x2c(1)
    lwz 0, 0x44(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

