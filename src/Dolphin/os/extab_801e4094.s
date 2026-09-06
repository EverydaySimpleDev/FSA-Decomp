/*
 * Cutscene/camera-cue actor (vtable lbl_804A4958) - fn_801E4094(this).
 * Landed as Track A (byte-matched) + structural overview: a "got hit by
 * a nearby HBMB-type actor" reaction, gated by the same state-range/
 * flag/velocity checks as its siblings. Expands a search box via
 * fn_801F82CC, resolves a colliding actor via the spatial registry,
 * confirms its type code is **"HBMB"** (0x48424D42, the confirmed
 * spatial-registry-family actor from [[reference_fsa_spatial_registry_system]])
 * and it isn't self, applies knockback via the confirmed fn_801F37AC
 * (mode 2), marks the target hit (->0x164=1), resets several timer/
 * position fields, queues animation cue 0x405, and calls several
 * unconfirmed helpers outside this gap (fn_801E4D54, fn_80217A74,
 * fn_801F3128, fn_801D6D38, fn_801D5D84) to re-arm the cue on a repeat-
 * hit counter (this->0x5cd vs 0x5cc).
 */
.section extab, "a"
.balign 4
.global etb_80008A28
etb_80008A28:
    .4byte 0x190A0000
    .4byte 0x00000000
.size etb_80008A28, 8

.section extabindex, "a"
.balign 4
.global eti_80015F70
eti_80015F70:
    .4byte fn_801E4094
    .4byte 0x000002B4
    .4byte etb_80008A28
.size eti_80015F70, 12

.text
.balign 4
.global fn_801E4094

fn_801E4094:
    stwu 1, -0x80(1)
    mflr 0
    stw 0, 0x84(1)
    stfd 31, 0x70(1)
    psq_st 31, 0x78(1), 0, 0
    stfd 30, 0x60(1)
    psq_st 30, 0x68(1), 0, 0
    stfd 29, 0x50(1)
    psq_st 29, 0x58(1), 0, 0
    stfd 28, 0x40(1)
    psq_st 28, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    mr 30, 3
    li 31, 0x0
    lwz 0, 0x248(3)
    li 3, 0x1
    cmpwi 0, 0x9
    .4byte 0x4080001C # bge .L_801E40FC
    cmpwi 0, 0x5
    .4byte 0x4182002C # beq .L_801E4114
    .4byte 0x40800024 # bge .L_801E4110
    cmpwi 0, 0x0
    .4byte 0x4080001C # bge .L_801E4110
    .4byte 0x4800001C # b .L_801E4114
L_801E40FC:
    cmpwi 0, 0x1b
    .4byte 0x40800014 # bge .L_801E4114
    cmpwi 0, 0x15
    .4byte 0x40800008 # bge .L_801E4110
    .4byte 0x48000008 # b .L_801E4114
L_801E4110:
    li 3, 0x0
L_801E4114:
    clrlwi. 0, 3, 24
    .4byte 0x418201F0 # beq .L_801E4308
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x408201E4 # bne .L_801E4308
    lfs 29, 0x68(30)
    lfs 31, 0x60(30)
    .4byte 0xC022C590 # lfs f1, lbl_8053F530@sda21(r0)
    fsubs 0, 29, 31
    fcmpo cr0, 0, 1
    .4byte 0x408101CC # ble .L_801E4308
    lfs 28, 0x6c(30)
    lfs 30, 0x64(30)
    fsubs 0, 28, 30
    fcmpo cr0, 0, 1
    .4byte 0x408101B8 # ble .L_801E4308
    lfs 0, 0x60(30)
    .4byte 0xC022C5AC # lfs f1, lbl_8053F54C@sda21(r0)
    fmuls 0, 0, 1
    stfs 0, 0x60(30)
    lfs 0, 0x64(30)
    fmuls 0, 0, 1
    stfs 0, 0x64(30)
    lfs 0, 0x68(30)
    fmuls 0, 0, 1
    stfs 0, 0x68(30)
    lfs 0, 0x6c(30)
    fmuls 0, 0, 1
    stfs 0, 0x6c(30)
    bl SpatialRegistry_GetBase
    lbz 5, 0x195(30)
    mr 4, 30
    .4byte 0xC022C5B0 # lfs f1, lbl_8053F550@sda21(r0)
    bl fn_801F82CC
    stfs 31, 0x60(30)
    mr. 29, 3
    stfs 30, 0x64(30)
    stfs 29, 0x68(30)
    stfs 28, 0x6c(30)
    .4byte 0x41800158 # blt .L_801E4308
    lwz 0, 0x198(30)
    cmpw 29, 0
    .4byte 0x4182014C # beq .L_801E4308
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr. 29, 3
    .4byte 0x41820138 # beq .L_801E4308
    lwz 3, 0x1a0(29)
    subis 0, 3, 0x4842
    cmplwi 0, 0x4d42
    .4byte 0x40820128 # bne .L_801E4308
    lhz 0, 0x94(29)
    cmplwi 0, 0x1
    .4byte 0x4082011C # bne .L_801E4308
    psq_l 1, 0xc(30), 0, 0
    addi 5, 1, 0x18
    lfs 0, 0x14(30)
    mr 3, 30
    li 4, 0x0
    li 6, 0x2
    stfs 0, 0x20(1)
    psq_st 1, 0x0(5), 0, 0
    psq_l 2, 0x8(5), 1, 0
    psq_l 0, 0x3c(29), 0, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x0(5), 0, 0
    psq_l 0, 0x44(29), 1, 0
    ps_sub 0, 2, 0
    psq_st 0, 0x8(5), 1, 0
    lwz 7, 0x168(29)
    lwz 8, 0x110(29)
    bl fn_801F37AC
    clrlwi. 0, 3, 24
    mr 31, 3
    .4byte 0x418200C8 # beq .L_801E4308
    li 0, 0x1
    li 4, 0x0
    stb 0, 0x164(29)
    li 0, 0xb4
    .4byte 0xC002C590 # lfs f0, lbl_8053F530@sda21(r0)
    mr 3, 30
    stw 4, 0xf8(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    stw 0, 0xd8(30)
    stw 0, 0xdc(30)
    stfs 0, 0x254(30)
    bl fn_801D63D0
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x5
    li 5, 0x0
    bl fn_801F0E34
    mr 3, 30
    bl fn_801E4D54
    addi 3, 30, 0x448
    bl fn_80217A74
    mr 3, 30
    addi 4, 1, 0x10
    bl fn_801F3128
    lfs 1, 0x10(29)
    addi 3, 30, 0x52c
    lfs 0, 0x14(29)
    addi 4, 1, 0x8
    lfs 3, 0x14(1)
    fsubs 2, 1, 0
    lfs 1, 0x10(1)
    lfs 0, 0xc(29)
    fsubs 2, 3, 2
    fsubs 0, 1, 0
    stfs 2, 0xc(1)
    stfs 0, 0x8(1)
    bl fn_801D6D38
    lbz 3, 0x5cd(30)
    addi 0, 3, 0x1
    stb 0, 0x5cd(30)
    lbz 3, 0x5cd(30)
    lbz 0, 0x5cc(30)
    cmpw 3, 0
    .4byte 0x41800010 # blt .L_801E4308
    mr 3, 30
    li 4, 0x6
    bl fn_801D5D84
L_801E4308:
    mr 3, 31
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    psq_l 28, 0x48(1), 0, 0
    lfd 28, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 0, 0x84(1)
    lwz 29, 0x34(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

