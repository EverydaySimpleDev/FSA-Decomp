/*
 * TINK (vtable lbl_804A51E4). Called from within fn_801DEA70's own body -
 * a timer-gated variant of the same state-behavior tick: does nothing
 * (falls straight to the epilogue) until the frame counter this->0x24c
 * reaches threshold this->0x250. Once elapsed, branches on this->0x230
 * bit 14: if clear, drops the current animation cue (this->0x2a8=-1,
 * also gated on bit 18) and - if no cue remains - falls into a shared
 * proximity/state-transition tail structurally identical to the repeated
 * state-0xd/state-7 blocks in fn_801DEA70/fn_801E002C/fn_801DF9D8 itself
 * (distance-to-target checks via the confirmed room-config record
 * GetRoomConfigRecord, ending in fn_801E1594 transitions to states 1/4/5/6);
 * if a cue remains, re-resolves it via fn_8023E724 and runs the same
 * kind of transition check against it directly. If bit 14 was set,
 * instead checks the second argument (r4) and bit 18 together before
 * falling into the same shared proximity tail. Landed as Track A
 * (byte-matched) + structural overview given its size and repetition.
 */
.section extab, "a"
.balign 4
.global etb_80008938
etb_80008938:
    .4byte 0x18CA0000
    .4byte 0x00000000
.size etb_80008938, 8

.section extabindex, "a"
.balign 4
.global eti_80015E08
eti_80015E08:
    .4byte fn_801DF9D8
    .4byte 0x00000654
    .4byte etb_80008938
.size eti_80015E08, 12

.text
.balign 4
.global fn_801DF9D8

fn_801DF9D8:
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
    stw 29, 0x14(1)
    mr 31, 3
    lwz 3, 0x24c(3)
    lwz 0, 0x250(31)
    cmpw 3, 0
    .4byte 0x418005E0 # blt .L_801DFFF8
    lwz 3, 0x230(31)
    rlwinm. 0, 3, 0, 14, 14
    .4byte 0x418202FC # beq .L_801DFD20
    li 3, -0x1
    stw 3, 0x2a8(31)
    lwz 0, 0x230(31)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x40820008 # bne .L_801DFA40
    stw 3, 0x2a8(31)
L_801DFA40:
    lwz 0, 0x2a8(31)
    cmpwi 0, 0x0
    .4byte 0x41800098 # blt .L_801DFAE0
    lwz 0, 0x230(31)
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
    lwz 3, 0x2a8(31)
    bl fn_8023E724
    lwz 0, 0x98(31)
    li 4, 0x0
    lfs 2, 0x0(3)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801DFAA0
    .4byte 0x40800044 # bge .L_801DFAB8
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801DFA84
    .4byte 0x48000038 # b .L_801DFAB8
L_801DFA84:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800024 # bge .L_801DFAB8
    li 4, 0x1
    .4byte 0x4800001C # b .L_801DFAB8
L_801DFAA0:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_801DFAB8
    li 4, 0x1
L_801DFAB8:
    clrlwi. 0, 4, 24
    .4byte 0x41820014 # beq .L_801DFAD0
    mr 3, 31
    li 4, 0x6
    bl fn_801E1594
    .4byte 0x4800052C # b .L_801DFFF8
L_801DFAD0:
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x4800051C # b .L_801DFFF8
L_801DFAE0:
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2c8(31)
    lwz 30, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 30, 0x8
    .4byte 0x4080000C # bge .L_801DFB0C
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801DFB10
L_801DFB0C:
    addi 3, 3, 0xdc
L_801DFB10:
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
    .4byte 0x4080000C # bge .L_801DFB44
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801DFB48
L_801DFB44:
    addi 3, 3, 0xdc
L_801DFB48:
    lfs 1, 0x0(3)
    lfs 0, 0x8(3)
    .4byte 0xC042C508 # lfs f2, lbl_8053F4A8@sda21(r0)
    fadds 0, 1, 0
    fmuls 0, 2, 0
    fcmpo cr0, 29, 0
    .4byte 0x40800008 # bge .L_801DFB68
    li 30, 0x1
L_801DFB68:
    clrlwi. 0, 30, 24
    .4byte 0x41820018 # beq .L_801DFB84
    lfs 0, 0xc(31)
    fcmpo cr0, 31, 0
    .4byte 0x4080000C # bge .L_801DFB84
    stfs 30, 0x2c4(31)
    .4byte 0x48000008 # b .L_801DFB88
L_801DFB84:
    stfs 31, 0x2c4(31)
L_801DFB88:
    lwz 0, 0x248(31)
    cmpwi 0, 0xd
    .4byte 0x41820014 # beq .L_801DFBA4
    .4byte 0x408000E4 # bge .L_801DFC78
    cmpwi 0, 0x7
    .4byte 0x41820064 # beq .L_801DFC00
    .4byte 0x480000D8 # b .L_801DFC78
L_801DFBA4:
    lfs 1, 0xc(31)
    lfs 0, 0x2c4(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801DFBC0
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_801DFBC8
L_801DFBC0:
    li 0, 0x1
    stw 0, 0x98(31)
L_801DFBC8:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801DFBF0
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x4800040C # b .L_801DFFF8
L_801DFBF0:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x480003FC # b .L_801DFFF8
L_801DFC00:
    lwz 0, 0x98(31)
    li 3, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801DFC3C
    .4byte 0x40800044 # bge .L_801DFC54
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801DFC20
    .4byte 0x48000038 # b .L_801DFC54
L_801DFC20:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 30, 0
    .4byte 0x40800024 # bge .L_801DFC54
    li 3, 0x1
    .4byte 0x4800001C # b .L_801DFC54
L_801DFC3C:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 30
    .4byte 0x40800008 # bge .L_801DFC54
    li 3, 0x1
L_801DFC54:
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801DFC64
    stfs 30, 0x2c4(31)
    .4byte 0x48000008 # b .L_801DFC68
L_801DFC64:
    stfs 31, 0x2c4(31)
L_801DFC68:
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x48000384 # b .L_801DFFF8
L_801DFC78:
    lwz 0, 0x98(31)
    li 3, 0x0
    lfs 2, 0x2c4(31)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801DFCB8
    .4byte 0x40800044 # bge .L_801DFCD0
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801DFC9C
    .4byte 0x48000038 # b .L_801DFCD0
L_801DFC9C:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800024 # bge .L_801DFCD0
    li 3, 0x1
    .4byte 0x4800001C # b .L_801DFCD0
L_801DFCB8:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_801DFCD0
    li 3, 0x1
L_801DFCD0:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801DFCE8
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x48000314 # b .L_801DFFF8
L_801DFCE8:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801DFD10
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x480002EC # b .L_801DFFF8
L_801DFD10:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x480002DC # b .L_801DFFF8
L_801DFD20:
    rlwinm. 0, 3, 0, 18, 18
    .4byte 0x40820098 # bne .L_801DFDBC
    cmplwi 4, 0x0
    .4byte 0x41820090 # beq .L_801DFDBC
    lwz 0, 0x230(31)
    li 3, 0x0
    ori 0, 0, 0x2000
    stw 0, 0x230(31)
    lwz 0, 0x98(31)
    lfs 2, 0xc(4)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801DFD7C
    .4byte 0x40800044 # bge .L_801DFD94
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801DFD60
    .4byte 0x48000038 # b .L_801DFD94
L_801DFD60:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800024 # bge .L_801DFD94
    li 3, 0x1
    .4byte 0x4800001C # b .L_801DFD94
L_801DFD7C:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_801DFD94
    li 3, 0x1
L_801DFD94:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801DFDAC
    mr 3, 31
    li 4, 0x6
    bl fn_801E1594
    .4byte 0x48000250 # b .L_801DFFF8
L_801DFDAC:
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000240 # b .L_801DFFF8
L_801DFDBC:
    lwz 0, 0x230(31)
    ori 0, 0, 0x4000
    stw 0, 0x230(31)
    lfs 0, 0x10(31)
    stfs 0, 0x2c8(31)
    lwz 29, 0x4(31)
    bl GetRoomConfigRecord
    cmpwi 29, 0x8
    .4byte 0x4080000C # bge .L_801DFDE8
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801DFDEC
L_801DFDE8:
    addi 3, 3, 0xdc
L_801DFDEC:
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
    .4byte 0x4080000C # bge .L_801DFE20
    addi 3, 3, 0xcc
    .4byte 0x48000008 # b .L_801DFE24
L_801DFE20:
    addi 3, 3, 0xdc
L_801DFE24:
    lfs 1, 0x0(3)
    lfs 0, 0x8(3)
    .4byte 0xC042C508 # lfs f2, lbl_8053F4A8@sda21(r0)
    fadds 0, 1, 0
    fmuls 0, 2, 0
    fcmpo cr0, 29, 0
    .4byte 0x40800008 # bge .L_801DFE44
    li 30, 0x1
L_801DFE44:
    clrlwi. 0, 30, 24
    .4byte 0x41820018 # beq .L_801DFE60
    lfs 0, 0xc(31)
    fcmpo cr0, 30, 0
    .4byte 0x4080000C # bge .L_801DFE60
    stfs 31, 0x2c4(31)
    .4byte 0x48000008 # b .L_801DFE64
L_801DFE60:
    stfs 30, 0x2c4(31)
L_801DFE64:
    lwz 0, 0x248(31)
    cmpwi 0, 0xd
    .4byte 0x41820014 # beq .L_801DFE80
    .4byte 0x408000E4 # bge .L_801DFF54
    cmpwi 0, 0x7
    .4byte 0x41820064 # beq .L_801DFEDC
    .4byte 0x480000D8 # b .L_801DFF54
L_801DFE80:
    lfs 1, 0xc(31)
    lfs 0, 0x2c4(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800010 # bge .L_801DFE9C
    li 0, 0x0
    stw 0, 0x98(31)
    .4byte 0x4800000C # b .L_801DFEA4
L_801DFE9C:
    li 0, 0x1
    stw 0, 0x98(31)
L_801DFEA4:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801DFECC
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000130 # b .L_801DFFF8
L_801DFECC:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
    .4byte 0x48000120 # b .L_801DFFF8
L_801DFEDC:
    lwz 0, 0x98(31)
    li 3, 0x0
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801DFF18
    .4byte 0x40800044 # bge .L_801DFF30
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801DFEFC
    .4byte 0x48000038 # b .L_801DFF30
L_801DFEFC:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 31, 0
    .4byte 0x40800024 # bge .L_801DFF30
    li 3, 0x1
    .4byte 0x4800001C # b .L_801DFF30
L_801DFF18:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 31
    .4byte 0x40800008 # bge .L_801DFF30
    li 3, 0x1
L_801DFF30:
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801DFF40
    stfs 31, 0x2c4(31)
    .4byte 0x48000008 # b .L_801DFF44
L_801DFF40:
    stfs 30, 0x2c4(31)
L_801DFF44:
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x480000A8 # b .L_801DFFF8
L_801DFF54:
    lwz 0, 0x98(31)
    li 3, 0x0
    lfs 2, 0x2c4(31)
    cmpwi 0, 0x1
    .4byte 0x41820030 # beq .L_801DFF94
    .4byte 0x40800044 # bge .L_801DFFAC
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_801DFF78
    .4byte 0x48000038 # b .L_801DFFAC
L_801DFF78:
    lfs 1, 0xc(31)
    .4byte 0xC002C50C # lfs f0, lbl_8053F4AC@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x40800024 # bge .L_801DFFAC
    li 3, 0x1
    .4byte 0x4800001C # b .L_801DFFAC
L_801DFF94:
    .4byte 0xC022C50C # lfs f1, lbl_8053F4AC@sda21(r0)
    lfs 0, 0xc(31)
    fadds 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40800008 # bge .L_801DFFAC
    li 3, 0x1
L_801DFFAC:
    clrlwi. 0, 3, 24
    .4byte 0x41820014 # beq .L_801DFFC4
    mr 3, 31
    li 4, 0x5
    bl fn_801E1594
    .4byte 0x48000038 # b .L_801DFFF8
L_801DFFC4:
    lfs 1, 0x14(31)
    .4byte 0xC002C504 # lfs f0, lbl_8053F4A4@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_801DFFEC
    stfs 0, 0x14(31)
    mr 3, 31
    li 4, 0x1
    bl fn_801E1594
    .4byte 0x48000010 # b .L_801DFFF8
L_801DFFEC:
    mr 3, 31
    li 4, 0x4
    bl fn_801E1594
L_801DFFF8:
    psq_l 31, 0x48(1), 0, 0
    lfd 31, 0x40(1)
    psq_l 30, 0x38(1), 0, 0
    lfd 30, 0x30(1)
    psq_l 29, 0x28(1), 0, 0
    lfd 29, 0x20(1)
    lwz 31, 0x1c(1)
    lwz 30, 0x18(1)
    lwz 0, 0x54(1)
    lwz 29, 0x14(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

