/*
 * RUSA core-update cluster (vtable lbl_804A6270), part 2/7.
 *
 * fn_802110A8(this): per-frame facing/target-select logic.
 *
 * If this->0x230 bit16 is clear AND this->0x248 (state) == 0:
 *   - If this->0x2bc (attached-to-platform flag) is set: pushes a physics
 *     box (this->0xc/0x14 position) against this->0x3c via fn_800FDEA0
 *     with kind=0x200 (a "shove/carry" collision test).
 *   - Otherwise: scans all 4 players via the confirmed fn_801D0B44
 *     ("can attack player" query) and fn_8023E724 (player-info lookup),
 *     tracking the closest valid candidate in this->0x3ac (target id) with
 *     a reacquire-cooldown byte at this->0x3b0. Re-resolves the current
 *     best target through fn_801D05F8 and updates this->0x3ac/0x3b0 with
 *     -1/0x2d sentinel bookkeeping when the target changes. If a target is
 *     locked, computes a facing offset into this->0x3c/0x40 via fn_801D00B4.
 *
 * Unconditionally (regardless of the block above): if this->0x38c (a second
 * tracked actor id, likely a companion/thrown-object) is valid, computes a
 * turn-rate-limited look vector toward it using paired-single ops against
 * the max-turn-per-frame constant lbl_80539D44; once within tolerance,
 * resolves the tracked actor's position via SpatialRegistry_GetBase/fn_801F666C and
 * blends this->0x3c/0x44 into it, writing the result back into the
 * tracked actor's own position fields (0xc/0x14).
 */
.section extab, "a"
.balign 4
.global etb_8000A060
etb_8000A060:
    .4byte 0x184A0000
    .4byte 0x00000000
.size etb_8000A060, 8

.section extabindex, "a"
.balign 4
.global eti_80017BD8
eti_80017BD8:
    .4byte fn_802110A8
    .4byte 0x000002AC
    .4byte etb_8000A060
.size eti_80017BD8, 12

.text
.balign 4
.global fn_802110A8

fn_802110A8:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stw 31, 0x4c(1)
    stw 30, 0x48(1)
    stw 29, 0x44(1)
    lwz 0, 0x230(3)
    mr 31, 3
    rlwinm. 0, 0, 0, 16, 16
    .4byte 0x4182025C # beq .L_80211330
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x41820250 # beq .L_80211330
    lbz 0, 0x2bc(31)
    cmplwi 0, 0x0
    .4byte 0x41820038 # beq .L_80211124
    psq_l 2, 0xc(31), 0, 0
    addi 4, 1, 0x28
    lfs 0, 0x14(31)
    addi 3, 31, 0x2c0
    .4byte 0xC022CB74 # lfs f1, lbl_8053FB14@sda21(r0)
    addi 5, 31, 0x3c
    psq_st 2, 0x0(4), 0, 0
    li 6, 0x0
    li 7, 0x0
    li 8, 0x200
    stfs 0, 0x30(1)
    bl fn_800FDEA0
    .4byte 0x48000178 # b .L_80211298
L_80211124:
    li 29, 0x0
    mr 30, 29
L_8021112C:
    mr 3, 31
    mr 4, 30
    bl fn_801D0B44
    clrlwi. 0, 3, 24
    .4byte 0x4182008C # beq .L_802111C8
    mr 3, 30
    bl fn_8023E724
    lfs 1, 0x8(3)
    li 4, 0x0
    .4byte 0xC002CB58 # lfs f0, lbl_8053FAF8@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x4082005C # bne .L_802111B8
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x41820050 # beq .L_802111B8
    .4byte 0xC062CB60 # lfs f3, lbl_8053FB00@sda21(r0)
    lfs 2, 0x54(31)
    lfs 1, 0x0(3)
    lfs 0, 0xc(31)
    fmuls 2, 3, 2
    .4byte 0xC062CB5C # lfs f3, lbl_8053FAFC@sda21(r0)
    fsubs 4, 1, 0
    lfs 1, 0x4(3)
    lfs 0, 0x10(31)
    fmuls 3, 3, 2
    fsubs 1, 1, 0
    fmuls 2, 4, 4
    fmuls 0, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_802111B8
    li 4, 0x1
L_802111B8:
    clrlwi. 0, 4, 24
    .4byte 0x4182000C # beq .L_802111C8
    li 29, 0x1
    .4byte 0x48000010 # b .L_802111D4
L_802111C8:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF5C # blt .L_8021112C
L_802111D4:
    clrlwi. 0, 29, 24
    .4byte 0x41820018 # beq .L_802111F0
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x3ac(31)
    stb 0, 0x3b0(31)
    .4byte 0x48000144 # b .L_80211330
L_802111F0:
    lbz 3, 0x3b0(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_80211204
    subi 0, 3, 0x1
    stb 0, 0x3b0(31)
L_80211204:
    .4byte 0xC022CB58 # lfs f1, lbl_8053FAF8@sda21(r0)
    mr 3, 31
    addi 4, 31, 0xc
    bl fn_801D05F8
    lwz 0, 0x3ac(31)
    cmpw 3, 0
    .4byte 0x41820050 # beq .L_8021126C
    cmpwi 3, 0x0
    .4byte 0x40800018 # bge .L_8021123C
    li 3, -0x1
    li 0, 0x0
    stw 3, 0x3ac(31)
    stb 0, 0x3b0(31)
    .4byte 0x48000034 # b .L_8021126C
L_8021123C:
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_80211254
    stw 3, 0x3ac(31)
    li 0, 0x2d
    stb 0, 0x3b0(31)
    .4byte 0x4800001C # b .L_8021126C
L_80211254:
    lbz 0, 0x3b0(31)
    cmplwi 0, 0x0
    .4byte 0x40820010 # bne .L_8021126C
    stw 3, 0x3ac(31)
    li 0, 0x2d
    stb 0, 0x3b0(31)
L_8021126C:
    lwz 4, 0x3ac(31)
    cmpwi 4, 0x0
    .4byte 0x41800024 # blt .L_80211298
    .4byte 0xC022CB74 # lfs f1, lbl_8053FB14@sda21(r0)
    mr 3, 31
    addi 5, 1, 0x8
    bl fn_801D00B4
    lfs 0, 0x8(1)
    stfs 0, 0x3c(31)
    lfs 0, 0xc(1)
    stfs 0, 0x40(31)
L_80211298:
    lwz 0, 0x38c(31)
    cmpwi 0, 0x0
    .4byte 0x41800090 # blt .L_80211330
    psq_l 3, 0x3c(31), 0, 0
    lis 3, lbl_80539D44@ha
    lfs 31, 0x44(31)
    ps_mul 3, 3, 3
    .4byte 0xC022CB68 # lfs f1, lbl_8053FB08@sda21(r0)
    lfs 0, lbl_80539D44@l(3)
    ps_madd 2, 31, 31, 3
    fmuls 0, 1, 0
    ps_sum0 2, 2, 3, 3
    fcmpo cr0, 2, 0
    cror eq, lt, eq
    mfcr 0
    extrwi. 0, 0, 1, 2
    .4byte 0x40820058 # bne .L_80211330
    bl SpatialRegistry_GetBase
    lwz 4, 0x38c(31)
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820044 # beq .L_80211330
    lfs 0, 0x14(3)
    psq_l 1, 0xc(3), 0, 0
    stfs 0, 0x18(1)
    psq_l 3, 0x3c(31), 0, 0
    psq_l 2, 0x18(1), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 3, 1, 3
    psq_st 1, 0x10(1), 0, 0
    ps_add 0, 2, 0
    psq_st 3, 0xc(3), 0, 0
    psq_st 0, 0x18(1), 1, 0
    lfs 0, 0x18(1)
    psq_st 3, 0x10(1), 0, 0
    psq_st 3, 0x1c(1), 0, 0
    stfs 0, 0x24(1)
    stfs 0, 0x14(3)
L_80211330:
    psq_l 31, 0x58(1), 0, 0
    lwz 0, 0x64(1)
    lfd 31, 0x50(1)
    lwz 31, 0x4c(1)
    lwz 30, 0x48(1)
    lwz 29, 0x44(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

