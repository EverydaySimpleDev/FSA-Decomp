/*
 * UNIVERSAL BASE-ACTOR DEFAULT: "notify nearby fast-moving player" hook.
 * Gated on a Y-position threshold and this actor's own velocity
 * (this->0x60-0x6c) exceeding a minimum speed, builds a swept
 * axis-aligned box from position+velocity, then loops the 4 players
 * checking group membership and AABB overlap against each player's own
 * movement-swept box; on the first overlap, triggers the confirmed
 * fn_802397B4 notify effect (the same call TINK's fn_801E2EE4 uses).
 */
.section extab, "a"
.balign 4
.global etb_80008EE4
etb_80008EE4:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80008EE4, 8

.section extabindex, "a"
.balign 4
.global eti_80016630
eti_80016630:
    .4byte fn_801F5790
    .4byte 0x000001A0
    .4byte etb_80008EE4
.size eti_80016630, 12

.text
.balign 4
.global fn_801F5790

fn_801F5790:
    stwu 1, -0x30(1)
    mflr 0
    .4byte 0xC002C810 # lfs f0, lbl_8053F7B0@sda21(r0)
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    mr 29, 3
    lfs 4, 0x14(3)
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820158 # bne .L_801F5914
    lfs 3, 0x68(29)
    lfs 7, 0x60(29)
    .4byte 0xC022C7A0 # lfs f1, lbl_8053F740@sda21(r0)
    fsubs 0, 3, 7
    fcmpo cr0, 0, 1
    .4byte 0x40810140 # ble .L_801F5914
    lfs 2, 0x6c(29)
    lfs 5, 0x64(29)
    fsubs 0, 2, 5
    fcmpo cr0, 0, 1
    .4byte 0x4081012C # ble .L_801F5914
    lfs 0, 0x10(29)
    li 30, 0x0
    lfs 6, 0xc(29)
    fadds 1, 2, 0
    fadds 0, 5, 0
    fadds 2, 3, 6
    fsubs 3, 1, 4
    fadds 1, 7, 6
    fsubs 0, 0, 4
    stfs 2, 0x10(1)
    stfs 1, 0x8(1)
    stfs 0, 0xc(1)
    stfs 3, 0x14(1)
L_801F5820:
    mr 3, 30
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200DC # beq .L_801F5908
    lwz 31, 0x4(29)
    mr 3, 30
    bl fn_8023DE58
    cmpw 31, 3
    .4byte 0x408200C8 # bne .L_801F5908
    mr 3, 30
    bl fn_8023E724
    lfs 3, 0x0(3)
    .4byte 0xC002C850 # lfs f0, lbl_8053F7F0@sda21(r0)
    .4byte 0xC022C848 # lfs f1, lbl_8053F7E8@sda21(r0)
    fadds 2, 0, 3
    lfs 4, 0x4(3)
    .4byte 0xC002C84C # lfs f0, lbl_8053F7EC@sda21(r0)
    fadds 3, 1, 3
    lfs 8, 0x8(1)
    fadds 1, 1, 4
    fadds 0, 0, 4
    lfs 5, 0x8(3)
    fcmpo cr0, 8, 2
    lfs 4, 0xc(1)
    fsubs 1, 1, 5
    lfs 6, 0x10(1)
    fsubs 0, 0, 5
    lfs 7, 0x14(1)
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801F589C
    fmr 8, 2
L_801F589C:
    fcmpo cr0, 4, 0
    cror eq, lt, eq
    .4byte 0x40820008 # bne .L_801F58AC
    fmr 4, 0
L_801F58AC:
    fcmpo cr0, 6, 3
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F58BC
    fmr 6, 3
L_801F58BC:
    fcmpo cr0, 7, 1
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F58CC
    fmr 7, 1
L_801F58CC:
    fcmpo cr0, 6, 8
    li 0, 0x0
    cror eq, gt, eq
    .4byte 0x40820014 # bne .L_801F58EC
    fcmpo cr0, 7, 4
    cror eq, gt, eq
    .4byte 0x40820008 # bne .L_801F58EC
    li 0, 0x1
L_801F58EC:
    clrlwi. 0, 0, 24
    .4byte 0x41820018 # beq .L_801F5908
    lwz 4, 0x4(29)
    addi 3, 1, 0x8
    lwz 5, 0x198(29)
    bl fn_802397B4
    .4byte 0x48000010 # b .L_801F5914
L_801F5908:
    addi 30, 30, 0x1
    cmpwi 30, 0x4
    .4byte 0x4180FF10 # blt .L_801F5820
L_801F5914:
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

