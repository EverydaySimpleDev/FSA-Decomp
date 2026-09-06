/*
 * TINK (vtable lbl_804A51E4) - fn_801E1AB4(this, useOwnPos). TINK's
 * REWARD-DROP function. Resolves the position to reward at: this->0xc/
 * 0x10/0x14 directly if useOwnPos, else whichever of the 3 tracked
 * targets resolves via the spatial registry. Screens the target's own
 * kind code (this->0x230, a small set of excluded values) through
 * fn_801F3668, then - if the target has no owner yet (target->0x11c==0)
 * or its kind wasn't excluded - clears this->0x230 bit 15 and spawns a
 * "RUPY" (rupee) actor via the universal dispatcher fn_801F9484, tracked
 * in this->0x2bc (the confirmed companion-slot field). Marks the spawned
 * rupee owned (companion->0x194=1) and looks up its value via
 * fn_8032D564(companion, this->0x90&0xffff), storing the result in
 * this->0x2c0 - reframing that field as "value of the pending reward"
 * rather than a generic damage/score accumulator. If useOwnPos, also
 * calls fn_8021FDB8(this) and primes the rupee's own position/velocity
 * block (companion->0x60-0x7c) with an initial launch arc from
 * lbl_8053F4C0/lbl_8053F4C4, mirroring the same 0x60-0x7c layout TINK
 * itself uses (see fn_801DE12C). Always clears the 3 tracked-target IDs
 * (0x2ac/0x2b0/0x2b4) to -1 at the end.
 */
.section extab, "a"
.balign 4
.global etb_80008960
etb_80008960:
    .4byte 0x280A0000
    .4byte 0x00000000
.size etb_80008960, 8

.section extabindex, "a"
.balign 4
.global eti_80015E44
eti_80015E44:
    .4byte fn_801E1AB4
    .4byte 0x00000244
    .4byte etb_80008960
.size eti_80015E44, 12

.text
.balign 4
.global fn_801E1AB4

fn_801E1AB4:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    clrlwi. 0, 4, 24
    stmw 27, 0x3c(1)
    mr 30, 4
    mr 29, 3
    li 31, 0x0
    .4byte 0x41820028 # beq .L_801E1AFC
    lfs 0, 0xc(29)
    li 28, 0x2
    li 31, 0x1
    stfs 0, 0x28(1)
    lfs 0, 0x10(29)
    stfs 0, 0x2c(1)
    lfs 0, 0x14(29)
    stfs 0, 0x30(1)
    .4byte 0x480000CC # b .L_801E1BC4
L_801E1AFC:
    lwz 28, 0x2ac(29)
    li 3, 0x0
    cmpwi 28, 0x0
    .4byte 0x41800010 # blt .L_801E1B18
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
L_801E1B18:
    cmplwi 3, 0x0
    .4byte 0x4082001C # bne .L_801E1B38
    lwz 28, 0x2b0(29)
    cmpwi 28, 0x0
    .4byte 0x41800010 # blt .L_801E1B38
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
L_801E1B38:
    cmplwi 3, 0x0
    .4byte 0x4082001C # bne .L_801E1B58
    lwz 28, 0x2b4(29)
    cmpwi 28, 0x0
    .4byte 0x41800010 # blt .L_801E1B58
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
L_801E1B58:
    lfs 0, 0xc(3)
    mr 27, 3
    stfs 0, 0x28(1)
    lfs 0, 0x10(3)
    stfs 0, 0x2c(1)
    lfs 0, 0x14(3)
    stfs 0, 0x30(1)
    lwz 4, 0x230(3)
    lwz 28, 0x90(3)
    cmpwi 4, 0x0
    .4byte 0x4182002C # beq .L_801E1BAC
    subi 0, 4, 0xf
    cmplwi 0, 0x1
    .4byte 0x40810020 # ble .L_801E1BAC
    subi 0, 4, 0x1
    cmplwi 0, 0x1
    .4byte 0x40810014 # ble .L_801E1BAC
    cmpwi 4, 0x9
    .4byte 0x4182000C # beq .L_801E1BAC
    cmpwi 4, 0xd
    .4byte 0x4082000C # bne .L_801E1BB4
L_801E1BAC:
    mr 3, 27
    bl fn_801F3668
L_801E1BB4:
    lbz 0, 0x11c(27)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_801E1BC4
    li 31, 0x1
L_801E1BC4:
    clrlwi. 0, 31, 24
    .4byte 0x4182011C # beq .L_801E1CE4
    lwz 0, 0x230(29)
    rlwinm 0, 0, 0, 17, 15
    stw 0, 0x230(29)
    bl SpatialRegistry_GetBase
    clrlwi 0, 28, 16
    lis 4, 0x5255
    lwz 5, 0x4(29)
    addi 4, 4, 0x5059
    addi 6, 1, 0x28
    oris 7, 0, 0x1
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    stw 3, 0x2bc(29)
    lwz 0, 0x2bc(29)
    cmpwi 0, 0x0
    .4byte 0x418000C8 # blt .L_801E1CD4
    clrlwi. 0, 30, 24
    .4byte 0x4082001C # bne .L_801E1C30
    lwz 0, 0x2b0(29)
    cmpwi 0, 0x0
    .4byte 0x41800010 # blt .L_801E1C30
    lwz 0, 0x230(29)
    ori 0, 0, 0x8000
    stw 0, 0x230(29)
L_801E1C30:
    bl SpatialRegistry_GetBase
    lwz 4, 0x2bc(29)
    bl fn_801F666C
    mr. 31, 3
    .4byte 0x41820094 # beq .L_801E1CD4
    li 0, 0x1
    stb 0, 0x194(31)
    lwz 0, 0x90(31)
    clrlwi 4, 0, 24
    bl fn_8032D564
    clrlwi. 0, 30, 24
    stw 3, 0x2c0(29)
    .4byte 0x41820074 # beq .L_801E1CD4
    mr 3, 29
    bl fn_8021FDB8
    .4byte 0xC022C520 # lfs f1, lbl_8053F4C0@sda21(r0)
    .4byte 0xC002C524 # lfs f0, lbl_8053F4C4@sda21(r0)
    stfs 1, 0x18(1)
    stfs 1, 0x1c(1)
    lwz 3, 0x18(1)
    stfs 0, 0x20(1)
    lwz 0, 0x1c(1)
    stw 3, 0x60(31)
    lwz 3, 0x20(1)
    stfs 0, 0x24(1)
    stw 0, 0x64(31)
    lwz 0, 0x24(1)
    stw 3, 0x68(31)
    stfs 1, 0x8(1)
    stfs 1, 0xc(1)
    lwz 3, 0x8(1)
    stw 0, 0x6c(31)
    lwz 0, 0xc(1)
    stfs 0, 0x10(1)
    stw 3, 0x70(31)
    lwz 3, 0x10(1)
    stfs 0, 0x14(1)
    stw 0, 0x74(31)
    lwz 0, 0x14(1)
    stw 3, 0x78(31)
    stw 0, 0x7c(31)
L_801E1CD4:
    li 0, -0x1
    stw 0, 0x2ac(29)
    stw 0, 0x2b0(29)
    stw 0, 0x2b4(29)
L_801E1CE4:
    lmw 27, 0x3c(1)
    lwz 0, 0x54(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

