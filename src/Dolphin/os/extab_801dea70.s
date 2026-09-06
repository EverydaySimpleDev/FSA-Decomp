/*
 * TINK (vtable lbl_804A51E4) main per-frame BEHAVIOR update, dispatched via
 * jumptable_804A52D4 on this->0x248 (state, 19 cases 0-0x12). Landed as
 * Track A (byte-matched) + structural overview - traced in full but too
 * large/repetitive to narrate case-by-case in a header comment.
 *
 * Recurring shape per case: read an animation-cue predicate for the
 * current cue (this->0x2a8) via fn_803865B8/fn_8037EFB4/fn_80236228/
 * fn_8038470C/fn_80384C58, or a proximity/facing check against this->0xc/
 * 0x14 and a radius derived from the confirmed room-config record
 * (GetRoomConfigRecord), and on success transition state via
 * fn_801E1594(this, newState) (values seen: 0,1,4,5,0x10,0x11,0x12).
 * Two near-identical blocks (state 0xd and state 7) additionally spawn
 * TINK's reward via fn_801E1AB4(this) and queue an animation cue through
 * fn_801F0E34 when the tracked distance closes. Unconditionally tail-calls
 * fn_801E2D88(this) before returning, regardless of which case ran.
 */
.section extab, "a"
.balign 4
.global etb_80008930
etb_80008930:
    .4byte 0x20CA0000
    .4byte 0x00000000
.size etb_80008930, 8

.section extabindex, "a"
.balign 4
.global eti_80015DFC
eti_80015DFC:
    .4byte fn_801DEA70
    .4byte 0x00000F68
    .4byte etb_80008930
.size eti_80015DFC, 12

.text
.balign 4
.global fn_801DEA70

fn_801DEA70:
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
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    mr 31, 3
    lhz 0, 0x2cc(3)
    cmplwi 0, 0x0
    .4byte 0x40820008 # bne .L_801DEAB8
    bl fn_801E0CF4
L_801DEAB8:
    bl fn_801CCF7C
    lwz 29, 0x2ac(31)
    mr 30, 3
    li 4, 0x0
    cmpwi 29, 0x0
    .4byte 0x41800014 # blt .L_801DEAE0
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr 4, 3
L_801DEAE0:
    cmplwi 4, 0x0
    .4byte 0x40820020 # bne .L_801DEB04
    lwz 29, 0x2b0(31)
    cmpwi 29, 0x0
    .4byte 0x41800014 # blt .L_801DEB04
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr 4, 3
L_801DEB04:
    cmplwi 4, 0x0
    .4byte 0x40820020 # bne .L_801DEB28
    lwz 29, 0x2b4(31)
    cmpwi 29, 0x0
    .4byte 0x41800014 # blt .L_801DEB28
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    mr 4, 3
L_801DEB28:
    lwz 0, 0x248(31)
    cmplwi 0, 0x12
    .4byte 0x41810E68 # bgt .L_801DF998
    lis 3, jumptable_804A52D4@ha
    slwi 0, 0, 2
    addi 3, 3, jumptable_804A52D4@l
    lwzx 0, 3, 0
    mtctr 0
    bctr
    clrlwi. 0, 30, 24
    .4byte 0x40820E48 # bne .L_801DF998
    lhz 3, 0x2cc(31)
    cmplwi 3, 0x0
    .4byte 0x41820010 # beq .L_801DEB6C
    subi 0, 3, 0x1
    sth 0, 0x2cc(31)
    .4byte 0x48000E30 # b .L_801DF998
L_801DEB6C:
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x0
    .4byte 0x41800020 # blt .L_801DEB94
    lwz 0, 0x230(31)
    mr 3, 31
    li 4, 0x1
    oris 0, 0, 0x12
    stw 0, 0x230(31)
    bl fn_801E1594
    .4byte 0x48000E08 # b .L_801DF998
L_801DEB94:
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 13, 13
    .4byte 0x40820DFC # bne .L_801DF998
    lwz 29, 0x2ac(31)
    cmpwi 29, 0x0
    .4byte 0x41800018 # blt .L_801DEBC0
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x40820024 # bne .L_801DEBE0
L_801DEBC0:
    lwz 29, 0x2b0(31)
    cmpwi 29, 0x0
    .4byte 0x41800DD0 # blt .L_801DF998
    bl SpatialRegistry_GetBase
    mr 4, 29
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820DBC # beq .L_801DF998
L_801DEBE0:
    lwz 3, 0x4(31)
    li 4, 0x0
    bl fn_801E3250
    clrlwi. 0, 3, 24
    .4byte 0x40820DA8 # bne .L_801DF998
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000D98 # b .L_801DF998
    lwz 3, 0x230(31)
    rlwinm. 0, 3, 0, 14, 14
    .4byte 0x41820154 # beq .L_801DED60
    rlwinm. 0, 3, 0, 17, 17
    .4byte 0x40820D84 # bne .L_801DF998
    lwz 28, 0x2a8(31)
    cmpwi 28, 0x0
    .4byte 0x41800D78 # blt .L_801DF998
    li 29, 0x0
    mr 3, 28
    mr 30, 29
    bl fn_802375B0
    cmpwi 3, 0x0
    .4byte 0x40820018 # bne .L_801DEC50
    mr 3, 28
    bl fn_801CCFE4
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801DEC50
    li 30, 0x1
L_801DEC50:
    clrlwi. 0, 30, 24
    .4byte 0x41820018 # beq .L_801DEC6C
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138A30
    cmpw 28, 3
    .4byte 0x40800008 # bge .L_801DEC6C
    li 29, 0x1
L_801DEC6C:
    clrlwi. 0, 29, 24
    .4byte 0x41820D28 # beq .L_801DF998
    lwz 29, 0x4(31)
    lwz 3, 0x2a8(31)
    bl fn_8023DE58
    cmpw 3, 29
    .4byte 0x40820D14 # bne .L_801DF998
    lwz 3, 0x2a8(31)
    bl fn_8023E724
    lfs 2, 0x0(3)
    lfs 1, 0xc(31)
    .4byte 0xC002C4F8 # lfs f0, lbl_8053F498@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800CF0 # bge .L_801DF998
    lwz 3, 0x2a8(31)
    bl fn_8023E724
    lfs 2, 0x4(3)
    lfs 1, 0x10(31)
    .4byte 0xC002C4F8 # lfs f0, lbl_8053F498@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800CCC # bge .L_801DF998
    lwz 3, 0x2a8(31)
    li 6, 0x0
    lwz 4, 0x4(31)
    li 7, 0x0
    lwz 5, 0x198(31)
    bl fn_8022FE80
    lwz 3, 0x198(31)
    bl fn_8022FD8C
    lwz 0, 0x2a8(31)
    cmpw 0, 3
    .4byte 0x40820CA0 # bne .L_801DF998
    mr 3, 0
    bl fn_802308E0
    clrlwi. 0, 3, 24
    .4byte 0x41820C90 # beq .L_801DF998
    .4byte 0xC002C4E0 # lfs f0, lbl_8053F480@sda21(r0)
    addi 7, 1, 0x8
    li 4, 0xf0
    li 8, 0x4
    stfs 0, 0x8(1)
    stfs 0, 0xc(1)
    stfs 0, 0x10(1)
    lwz 3, 0x2a8(31)
    lwz 5, 0x198(31)
    lwz 6, 0x4(31)
    bl fn_8038AD24
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801DED50
    mr 3, 31
    li 4, 0xf
    bl fn_801E1594
    .4byte 0x48000C4C # b .L_801DF998
L_801DED50:
    lwz 3, 0x2a8(31)
    li 4, 0x0
    bl fn_8023061C
    .4byte 0x48000C3C # b .L_801DF998
L_801DED60:
    lwz 0, 0x2bc(31)
    cmpwi 0, 0x0
    .4byte 0x40800C30 # bge .L_801DF998
    rlwinm. 0, 3, 0, 17, 17
    .4byte 0x40820C28 # bne .L_801DF998
    cmplwi 4, 0x0
    .4byte 0x41820C20 # beq .L_801DF998
    lfs 3, 0xc(4)
    lfs 0, 0xc(31)
    lfs 2, 0x10(4)
    lfs 1, 0x10(31)
    fsubs 3, 3, 0
    .4byte 0xC002C4FC # lfs f0, lbl_8053F49C@sda21(r0)
    fsubs 1, 2, 1
    fmuls 2, 3, 3
    fmuls 1, 1, 1
    fadds 1, 2, 1
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x40820BEC # bne .L_801DF998
    mr 3, 31
    li 4, 0x2
    bl fn_801E1594
    .4byte 0x48000BDC # b .L_801DF998
    lwz 0, 0x230(31)
    .4byte 0xC3E2C4F8 # lfs f31, lbl_8053F498@sda21(r0)
    rlwinm. 0, 0, 0, 14, 14
    .4byte 0x4182000C # beq .L_801DEDD8
    .4byte 0xC3E2C500 # lfs f31, lbl_8053F4A0@sda21(r0)
    .4byte 0x48000050 # b .L_801DEE24
L_801DEDD8:
    lwz 28, 0x2ac(31)
    cmpwi 28, 0x0
    .4byte 0x41800020 # blt .L_801DEE00
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801DEE00
    .4byte 0xC3E2C500 # lfs f31, lbl_8053F4A0@sda21(r0)
    .4byte 0x48000028 # b .L_801DEE24
L_801DEE00:
    lwz 28, 0x2b0(31)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_801DEE24
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801DEE24
    .4byte 0xC3E2C500 # lfs f31, lbl_8053F4A0@sda21(r0)
L_801DEE24:
    lfs 0, 0x14(31)
    fcmpo cr0, 0, 31
    cror eq, lt, eq
    .4byte 0x40820B68 # bne .L_801DF998
    stfs 31, 0x14(31)
    mr 3, 31
    li 4, 0x3
    bl fn_801E1594
    .4byte 0x48000B54 # b .L_801DF998
    mr 3, 31
    bl fn_801E002C
    .4byte 0x48000B48 # b .L_801DF998
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820B34 # bne .L_801DF998
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000B20 # b .L_801DF998
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810B14 # ble .L_801DF998
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820B04 # beq .L_801DF998
    lwz 3, 0x98(31)
    bl fn_801CD354
    stw 3, 0x98(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    lfs 1, 0x14(31)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801DEECC
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000AD0 # b .L_801DF998
L_801DEECC:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x48000AC0 # b .L_801DF998
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810AB4 # ble .L_801DF998
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820AA4 # beq .L_801DF998
    lwz 3, 0x98(31)
    bl fn_801CD354
    stw 3, 0x98(31)
    lwz 4, 0x2d0(31)
    cmpwi 4, 0x0
    .4byte 0x41800018 # blt .L_801DEF24
    mr 3, 31
    bl fn_801E1594
    li 0, -0x1
    stw 0, 0x2d0(31)
    .4byte 0x48000A78 # b .L_801DF998
L_801DEF24:
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000A68 # b .L_801DF998
    mr 3, 31
    bl fn_801DF9D8
    .4byte 0x48000A5C # b .L_801DF998
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810A50 # ble .L_801DF998
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820A40 # beq .L_801DF998
    mr 3, 31
    li 4, 0x9
    bl fn_801E1594
    .4byte 0x48000A30 # b .L_801DF998
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x40810A24 # ble .L_801DF998
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820A14 # beq .L_801DF998
    mr 3, 31
    li 4, 0xa
    bl fn_801E1594
    .4byte 0x48000A04 # b .L_801DF998
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x408109F8 # ble .L_801DF998
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418209E8 # beq .L_801DF998
    mr 3, 31
    bl fn_801D0DD4
    clrlwi. 0, 3, 24
    .4byte 0x418209D8 # beq .L_801DF998
    mr 3, 31
    bl fn_801E2F40
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801DEFE4
    mr 3, 31
    li 4, 0xe
    bl fn_801E1594
    .4byte 0x480009B8 # b .L_801DF998
L_801DEFE4:
    mr 3, 31
    li 4, 0xb
    bl fn_801E1594
    .4byte 0x480009A8 # b .L_801DF998
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x4081099C # ble .L_801DF998
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x4182098C # beq .L_801DF998
    mr 3, 31
    li 4, 0xc
    bl fn_801E1594
    .4byte 0x4800097C # b .L_801DF998
    clrlwi. 0, 30, 24
    .4byte 0x40820974 # bne .L_801DF998
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x41820964 # beq .L_801DF998
    lwz 3, 0x24c(31)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x41800014 # blt .L_801DF058
    mr 3, 31
    li 4, 0xd
    bl fn_801E1594
    .4byte 0x48000944 # b .L_801DF998
L_801DF058:
    .4byte 0xC022C4E0 # lfs f1, lbl_8053F480@sda21(r0)
    mr 3, 31
    addi 4, 31, 0xc
    bl fn_801D05F8
    mr. 5, 3
    .4byte 0x4180092C # blt .L_801DF998
    mr 3, 31
    addi 4, 31, 0xc
    li 6, 0x0
    bl fn_801D0020
    lwz 0, 0x98(31)
    cmpw 3, 0
    .4byte 0x41820910 # beq .L_801DF998
    stw 3, 0x98(31)
    addi 3, 31, 0x270
    li 5, 0x0
    li 6, 0x0
    lwz 4, 0x98(31)
    addi 4, 4, 0x8
    bl fn_801D22DC
    .4byte 0x480008F0 # b .L_801DF998
    lwz 0, 0x24c(31)
    cmpwi 0, 0x1
    .4byte 0x408108E4 # ble .L_801DF998
    addi 3, 31, 0x270
    bl fn_801D21F0
    clrlwi. 0, 3, 24
    .4byte 0x418208D4 # beq .L_801DF998
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2c8(31)
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_801DF0F4
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801DF0F8
L_801DF0F4:
    addi 3, 3, 0xdc
L_801DF0F8:
    .4byte 0xC042C504 # lfs f2, lbl_8053F4A4@sda21(r0)
    li 30, 0x0
    lfs 1, 0x8(3)
    lfs 0, 0x0(3)
    fadds 30, 2, 1
    lfs 29, 0xc(31)
    fsubs 31, 0, 2
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_801DF12C
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801DF130
L_801DF12C:
    addi 3, 3, 0xdc
L_801DF130:
    lfs 1, 0x0(3)
    lfs 0, 0x8(3)
    .4byte 0xC042C508 # lfs f2, lbl_8053F4A8@sda21(r0)
    fadds 0, 1, 0
    fmuls 0, 2, 0
    fcmpo cr0, 29, 0
    .4byte 0x40800008 # bge .L_801DF150
    li 30, 0x1
L_801DF150:
    clrlwi. 0, 30, 24
    .4byte 0x41820018 # beq .L_801DF16C
    lfs 0, 0xc(31)
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_801DF16C
    stfs 30, 0x2c4(31)
    .4byte 0x48000008 # b .L_801DF170
L_801DF16C:
    stfs 31, 0x2c4(31)
L_801DF170:
    lwz 0, 0x248(31)
    cmpwi 0, 0xd
    .4byte 0x41820014 # beq .L_801DF18C
    .4byte 0x408000E4 # bge .L_801DF260
    cmpwi 0, 0x7
    .4byte 0x41820064 # beq .L_801DF1E8
    .4byte 0x480000D8 # b .L_801DF260
L_801DF18C:
    lfs 1, 0xc(31)
    lfs 0, 0x2c4(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801DF1A8
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_801DF1B0
L_801DF1A8:
    li 0, 0x1
    stw 0, 0x98(31)
L_801DF1B0:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801DF1D8
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x480007C4 # b .L_801DF998
L_801DF1D8:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x480007B4 # b .L_801DF998
L_801DF1E8:
    lwz 0, 0x98(31)
    li 3, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801DF224
    .4byte 0x40800044 # bge .L_801DF23C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801DF208
    .4byte 0x48000038 # b .L_801DF23C
L_801DF208:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 30, 0
    .4byte 0x40800024 # bge .L_801DF23C
    li 3, 0x1
    .4byte 0x4800001C # b .L_801DF23C
L_801DF224:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 30
    .4byte 0x40800008 # bge .L_801DF23C
    li 3, 0x1
L_801DF23C:
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801DF24C
    stfs 30, 0x2c4(31)
    .4byte 0x48000008 # b .L_801DF250
L_801DF24C:
    stfs 31, 0x2c4(31)
L_801DF250:
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x4800073C # b .L_801DF998
L_801DF260:
    lwz 0, 0x98(31)
    li 3, 0x0
    lfs 2, 0x2c4(31)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801DF2A0
    .4byte 0x40800044 # bge .L_801DF2B8
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801DF284
    .4byte 0x48000038 # b .L_801DF2B8
L_801DF284:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800024 # bge .L_801DF2B8
    li 3, 0x1
    .4byte 0x4800001C # b .L_801DF2B8
L_801DF2A0:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_801DF2B8
    li 3, 0x1
L_801DF2B8:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801DF2D0
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x480006CC # b .L_801DF998
L_801DF2D0:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801DF2F8
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x480006A4 # b .L_801DF998
L_801DF2F8:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x48000694 # b .L_801DF998
    .4byte 0xC022C4E0 # lfs f1, lbl_8053F480@sda21(r0)
    lfs 0, 0x54(31)
    fcmpu cr0, 1, 0
    .4byte 0x41820024 # beq .L_801DF338
    .4byte 0xC042C510 # lfs f2, lbl_8053F4B0@sda21(r0)
    addi 3, 31, 0x54
    bl fn_801CD950
    lfs 0, 0x54(31)
    stfs 0, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0x5c(31)
    .4byte 0x48000664 # b .L_801DF998
L_801DF338:
    mr 3, 31
    li 4, 0x0
    bl fn_801E1594
    .4byte 0x48000654 # b .L_801DF998
    lwz 3, 0x2a8(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820644 # beq .L_801DF998
    lwz 3, 0x2a8(31)
    bl fn_8037EFB4
    cmpwi 3, 0x0
    .4byte 0x4082005C # bne .L_801DF3C0
    lwz 3, 0x2a8(31)
    bl fn_80236228
    cmpwi 3, 0x14
    .4byte 0x40800028 # bge .L_801DF39C
    lwz 3, 0x2a8(31)
    li 4, 0xf1
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x41820610 # beq .L_801DF998
    mr 3, 31
    li 4, 0x11
    bl fn_801E1594
    .4byte 0x48000600 # b .L_801DF998
L_801DF39C:
    lwz 3, 0x2a8(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x418205EC # beq .L_801DF998
    mr 3, 31
    li 4, 0x12
    bl fn_801E1594
    .4byte 0x480005DC # b .L_801DF998
L_801DF3C0:
    lwz 3, 0x2a8(31)
    li 4, 0xf2
    bl fn_8038470C
    clrlwi. 0, 3, 24
    .4byte 0x418205C8 # beq .L_801DF998
    mr 3, 31
    li 4, 0x10
    bl fn_801E1594
    .4byte 0x480005B8 # b .L_801DF998
    lwz 3, 0x2a8(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x418205A8 # beq .L_801DF998
    lwz 3, 0x2a8(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x41820594 # beq .L_801DF998
    lwz 3, 0x2a8(31)
    li 4, 0x0
    bl fn_8023061C
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2c8(31)
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_801DF440
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801DF444
L_801DF440:
    addi 3, 3, 0xdc
L_801DF444:
    .4byte 0xC042C504 # lfs f2, lbl_8053F4A4@sda21(r0)
    li 30, 0x0
    lfs 1, 0x8(3)
    lfs 0, 0x0(3)
    fadds 31, 2, 1
    lfs 29, 0xc(31)
    fsubs 30, 0, 2
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_801DF478
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801DF47C
L_801DF478:
    addi 3, 3, 0xdc
L_801DF47C:
    lfs 1, 0x0(3)
    lfs 0, 0x8(3)
    .4byte 0xC042C508 # lfs f2, lbl_8053F4A8@sda21(r0)
    fadds 0, 1, 0
    fmuls 0, 2, 0
    fcmpo cr0, 29, 0
    .4byte 0x40800008 # bge .L_801DF49C
    li 30, 0x1
L_801DF49C:
    clrlwi. 0, 30, 24
    .4byte 0x41820018 # beq .L_801DF4B8
    lfs 0, 0xc(31)
    fcmpo cr0, 30, 0
    .4byte 0x4080000C # bge .L_801DF4B8
    stfs 31, 0x2c4(31)
    .4byte 0x48000008 # b .L_801DF4BC
L_801DF4B8:
    stfs 30, 0x2c4(31)
L_801DF4BC:
    lwz 0, 0x248(31)
    cmpwi 0, 0xd
    .4byte 0x41820014 # beq .L_801DF4D8
    .4byte 0x408000E4 # bge .L_801DF5AC
    cmpwi 0, 0x7
    .4byte 0x41820064 # beq .L_801DF534
    .4byte 0x480000D8 # b .L_801DF5AC
L_801DF4D8:
    lfs 1, 0xc(31)
    lfs 0, 0x2c4(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801DF4F4
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_801DF4FC
L_801DF4F4:
    li 0, 0x1
    stw 0, 0x98(31)
L_801DF4FC:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801DF524
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000478 # b .L_801DF998
L_801DF524:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x48000468 # b .L_801DF998
L_801DF534:
    lwz 0, 0x98(31)
    li 3, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801DF570
    .4byte 0x40800044 # bge .L_801DF588
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801DF554
    .4byte 0x48000038 # b .L_801DF588
L_801DF554:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 31, 0
    .4byte 0x40800024 # bge .L_801DF588
    li 3, 0x1
    .4byte 0x4800001C # b .L_801DF588
L_801DF570:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 31
    .4byte 0x40800008 # bge .L_801DF588
    li 3, 0x1
L_801DF588:
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801DF598
    stfs 31, 0x2c4(31)
    .4byte 0x48000008 # b .L_801DF59C
L_801DF598:
    stfs 30, 0x2c4(31)
L_801DF59C:
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x480003F0 # b .L_801DF998
L_801DF5AC:
    lwz 0, 0x98(31)
    li 3, 0x0
    lfs 2, 0x2c4(31)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801DF5EC
    .4byte 0x40800044 # bge .L_801DF604
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801DF5D0
    .4byte 0x48000038 # b .L_801DF604
L_801DF5D0:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800024 # bge .L_801DF604
    li 3, 0x1
    .4byte 0x4800001C # b .L_801DF604
L_801DF5EC:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_801DF604
    li 3, 0x1
L_801DF604:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801DF61C
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x48000380 # b .L_801DF998
L_801DF61C:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801DF644
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000358 # b .L_801DF998
L_801DF644:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x48000348 # b .L_801DF998
    lwz 3, 0x2a8(31)
    bl fn_803865B8
    clrlwi. 0, 3, 24
    .4byte 0x41820338 # beq .L_801DF998
    lwz 3, 0x2a8(31)
    lwz 4, 0x198(31)
    bl fn_80384C58
    clrlwi. 0, 3, 24
    .4byte 0x41820324 # beq .L_801DF998
    mr 3, 31
    li 4, 0x12
    bl fn_801E1594
    .4byte 0x48000314 # b .L_801DF998
    lwz 0, 0x230(31)
    .4byte 0xC3C2C4F8 # lfs f30, lbl_8053F498@sda21(r0)
    rlwinm. 0, 0, 0, 14, 14
    .4byte 0x4182000C # beq .L_801DF6A0
    .4byte 0xC3C2C500 # lfs f30, lbl_8053F4A0@sda21(r0)
    .4byte 0x48000050 # b .L_801DF6EC
L_801DF6A0:
    lwz 28, 0x2ac(31)
    cmpwi 28, 0x0
    .4byte 0x41800020 # blt .L_801DF6C8
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_801DF6C8
    .4byte 0xC3C2C500 # lfs f30, lbl_8053F4A0@sda21(r0)
    .4byte 0x48000028 # b .L_801DF6EC
L_801DF6C8:
    lwz 28, 0x2b0(31)
    cmpwi 28, 0x0
    .4byte 0x4180001C # blt .L_801DF6EC
    bl SpatialRegistry_GetBase
    mr 4, 28
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x41820008 # beq .L_801DF6EC
    .4byte 0xC3C2C500 # lfs f30, lbl_8053F4A0@sda21(r0)
L_801DF6EC:
    lfs 0, 0x14(31)
    fcmpo cr0, 0, 30
    cror eq, lt, eq
    .4byte 0x408202A0 # bne .L_801DF998
    stfs 30, 0x14(31)
    li 4, 0x180
    lwz 3, 0x2a8(31)
    bl fn_80237524
    lwz 3, 0x2a8(31)
    li 4, -0x14
    bl fn_8023619C
    lwz 3, 0x2a8(31)
    li 4, 0x0
    bl fn_8023061C
    lwz 0, 0x230(31)
    mr 3, 31
    li 4, 0x1
    rlwinm 0, 0, 0, 12, 10
    stw 0, 0x230(31)
    lwz 0, 0x230(31)
    oris 0, 0, 0x8
    stw 0, 0x230(31)
    bl fn_801E1AB4
    lis 4, 0x5
    mr 3, 31
    addi 4, 4, 0x1b
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2c8(31)
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_801DF788
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801DF78C
L_801DF788:
    addi 3, 3, 0xdc
L_801DF78C:
    .4byte 0xC042C504 # lfs f2, lbl_8053F4A4@sda21(r0)
    li 30, 0x0
    lfs 1, 0x8(3)
    lfs 0, 0x0(3)
    fadds 31, 2, 1
    lfs 29, 0xc(31)
    fsubs 30, 0, 2
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_801DF7C0
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801DF7C4
L_801DF7C0:
    addi 3, 3, 0xdc
L_801DF7C4:
    lfs 1, 0x0(3)
    lfs 0, 0x8(3)
    .4byte 0xC042C508 # lfs f2, lbl_8053F4A8@sda21(r0)
    fadds 0, 1, 0
    fmuls 0, 2, 0
    fcmpo cr0, 29, 0
    .4byte 0x40800008 # bge .L_801DF7E4
    li 30, 0x1
L_801DF7E4:
    clrlwi. 0, 30, 24
    .4byte 0x41820018 # beq .L_801DF800
    lfs 0, 0xc(31)
    fcmpo cr0, 30, 0
    .4byte 0x4080000C # bge .L_801DF800
    stfs 31, 0x2c4(31)
    .4byte 0x48000008 # b .L_801DF804
L_801DF800:
    stfs 30, 0x2c4(31)
L_801DF804:
    lwz 0, 0x248(31)
    cmpwi 0, 0xd
    .4byte 0x41820014 # beq .L_801DF820
    .4byte 0x408000E4 # bge .L_801DF8F4
    cmpwi 0, 0x7
    .4byte 0x41820064 # beq .L_801DF87C
    .4byte 0x480000D8 # b .L_801DF8F4
L_801DF820:
    lfs 1, 0xc(31)
    lfs 0, 0x2c4(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801DF83C
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_801DF844
L_801DF83C:
    li 0, 0x1
    stw 0, 0x98(31)
L_801DF844:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801DF86C
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000130 # b .L_801DF998
L_801DF86C:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x48000120 # b .L_801DF998
L_801DF87C:
    lwz 0, 0x98(31)
    li 3, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801DF8B8
    .4byte 0x40800044 # bge .L_801DF8D0
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801DF89C
    .4byte 0x48000038 # b .L_801DF8D0
L_801DF89C:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 31, 0
    .4byte 0x40800024 # bge .L_801DF8D0
    li 3, 0x1
    .4byte 0x4800001C # b .L_801DF8D0
L_801DF8B8:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 31
    .4byte 0x40800008 # bge .L_801DF8D0
    li 3, 0x1
L_801DF8D0:
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801DF8E0
    stfs 31, 0x2c4(31)
    .4byte 0x48000008 # b .L_801DF8E4
L_801DF8E0:
    stfs 30, 0x2c4(31)
L_801DF8E4:
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x480000A8 # b .L_801DF998
L_801DF8F4:
    lwz 0, 0x98(31)
    li 3, 0x0
    lfs 2, 0x2c4(31)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801DF934
    .4byte 0x40800044 # bge .L_801DF94C
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801DF918
    .4byte 0x48000038 # b .L_801DF94C
L_801DF918:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800024 # bge .L_801DF94C
    li 3, 0x1
    .4byte 0x4800001C # b .L_801DF94C
L_801DF934:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_801DF94C
    li 3, 0x1
L_801DF94C:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801DF964
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x48000038 # b .L_801DF998
L_801DF964:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801DF98C
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000010 # b .L_801DF998
L_801DF98C:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
L_801DF998:
    mr 3, 31
    bl fn_801E2D88
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    psq_l 30, 0x48(1), 0, 0
    lfd 30, 0x40(1)
    psq_l 29, 0x38(1), 0, 0
    lfd 29, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 0, 0x64(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

