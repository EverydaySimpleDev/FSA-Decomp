/*
 * Cutscene/camera-cue actor (vtable lbl_804A4958) - fn_801E3B2C(this,
 * arg2). Landed as Track A (byte-matched) + structural overview: the
 * main "did a player trigger my cue" detector, gated by the same
 * state-range/flag/velocity-delta checks as its siblings in this
 * cluster.
 *
 * Two independent detection paths: (1) when a global "special day" flag
 * is off, scans the 4 players for group membership plus several
 * unconfirmed capability predicates (fn_80236B50/fn_80230188/
 * fn_8022D75C) and a facing/aim-angle + box-overlap test, then on match
 * computes a heading via the confirmed atan2 candidate fn_80093340 and
 * commits it into this->0x5d1/0x5d2, queuing a cue via fn_80217A74 +
 * animation cue 0x462; (2) otherwise, scans the 4 players via the
 * confirmed fn_801F285C hit-scan and applies a push via the confirmed
 * fn_801F37AC (mode 2), and on a successful push toward a facing
 * player, sets flag bit 0 and resets several timer/position fields
 * before queuing cue 0x5 and re-arming via the unconfirmed
 * fn_801D5D84/fn_801D7638/fn_801D76B4 (all outside this gap, likely a
 * letterbox/camera-lock trio given their paired open/close-style call
 * shape).
 */
.section extab, "a"
.balign 4
.global etb_80008A20
etb_80008A20:
    .4byte 0x204A0000
    .4byte 0x00000000
.size etb_80008A20, 8

.section extabindex, "a"
.balign 4
.global eti_80015F64
eti_80015F64:
    .4byte fn_801E3B2C
    .4byte 0x00000568
    .4byte etb_80008A20
.size eti_80015F64, 12

.text
.balign 4
.global fn_801E3B2C

fn_801E3B2C:
    stwu 1, -0x50(1)
    mflr 0
    stw 0, 0x54(1)
    stfd 31, 0x40(1)
    psq_st 31, 0x48(1), 0, 0
    stw 31, 0x3c(1)
    stw 30, 0x38(1)
    stw 29, 0x34(1)
    stw 28, 0x30(1)
    mr 30, 3
    li 31, 0x0
    lwz 3, 0x248(3)
    li 0, 0x1
    cmpwi 3, 0x9
    .4byte 0x4080001C # bge .L_801E3B80
    cmpwi 3, 0x5
    .4byte 0x4182002C # beq .L_801E3B98
    .4byte 0x40800024 # bge .L_801E3B94
    cmpwi 3, 0x0
    .4byte 0x4080001C # bge .L_801E3B94
    .4byte 0x4800001C # b .L_801E3B98
L_801E3B80:
    cmpwi 3, 0x1b
    .4byte 0x40800014 # bge .L_801E3B98
    cmpwi 3, 0x15
    .4byte 0x40800008 # bge .L_801E3B94
    .4byte 0x48000008 # b .L_801E3B98
L_801E3B94:
    li 0, 0x0
L_801E3B98:
    clrlwi. 0, 0, 24
    .4byte 0x418204CC # beq .L_801E4068
    cmpwi 3, 0x13
    .4byte 0x418204C4 # beq .L_801E4068
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x418204B8 # beq .L_801E4068
    lfs 1, 0x68(30)
    lfs 0, 0x60(30)
    .4byte 0xC042C590 # lfs f2, lbl_8053F530@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408104A0 # ble .L_801E4068
    lfs 1, 0x6c(30)
    lfs 0, 0x64(30)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4081048C # ble .L_801E4068
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x418201E4 # beq .L_801E3DD0
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x408201D4 # bne .L_801E3DD0
    lwz 0, 0x248(30)
    cmpwi 0, 0xb
    .4byte 0x418201C8 # beq .L_801E3DD0
    lbz 0, 0x5d1(30)
    cmplwi 0, 0x0
    .4byte 0x408201BC # bne .L_801E3DD0
    mr 3, 30
    addi 4, 1, 0xc
    bl fn_801F31C4
    lfs 0, 0xc(1)
    li 29, 0x0
    .4byte 0xC082C5A0 # lfs f4, lbl_8053F540@sda21(r0)
    lfs 2, 0x10(1)
    lfs 1, 0x14(1)
    fsubs 3, 0, 4
    lfs 0, 0x18(1)
    fsubs 2, 2, 4
    fadds 1, 1, 4
    fadds 0, 0, 4
    stfs 3, 0xc(1)
    stfs 2, 0x10(1)
    stfs 1, 0x14(1)
    stfs 0, 0x18(1)
L_801E3C5C:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182015C # beq .L_801E3DC4
    mr 3, 29
    bl fn_80236B50
    clrlwi. 0, 3, 24
    .4byte 0x4082014C # bne .L_801E3DC4
    mr 3, 29
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x4082013C # bne .L_801E3DC4
    mr 3, 29
    bl fn_8022D75C
    clrlwi. 0, 3, 24
    .4byte 0x4082012C # bne .L_801E3DC4
    lwz 28, 0x4(30)
    mr 3, 29
    bl fn_8023DE58
    cmpw 3, 28
    .4byte 0x40820118 # bne .L_801E3DC4
    mr 3, 29
    bl fn_80235448
    clrlwi. 0, 3, 24
    .4byte 0x41820108 # beq .L_801E3DC4
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x8(3)
    .4byte 0xC002C5A4 # lfs f0, lbl_8053F544@sda21(r0)
    fcmpo cr0, 1, 0
    cror eq, lt, eq
    .4byte 0x408200EC # bne .L_801E3DC4
    mr 3, 29
    bl fn_8023E578
    lfs 31, 0x8(3)
    mr 3, 29
    bl fn_8023E724
    lfs 0, 0x8(3)
    fcmpo cr0, 0, 31
    .4byte 0x408000CC # bge .L_801E3DC4
    mr 3, 29
    bl fn_8023E724
    lfs 2, 0x0(3)
    li 0, 0x0
    lfs 0, 0xc(1)
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x40820034 # bne .L_801E3D4C
    lfs 1, 0x4(3)
    lfs 0, 0x10(1)
    fcmpo cr0, 1, 0
    cror eq, gt, eq
    .4byte 0x40820020 # bne .L_801E3D4C
    lfs 0, 0x14(1)
    fcmpo cr0, 2, 0
    .4byte 0x40800014 # bge .L_801E3D4C
    lfs 0, 0x18(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801E3D4C
    li 0, 0x1
L_801E3D4C:
    clrlwi. 0, 0, 24
    .4byte 0x41820074 # beq .L_801E3DC4
    mr 3, 29
    bl fn_8023E724
    lis 4, lbl_80534C00@ha
    lfs 3, 0x10(30)
    lfs 2, 0x4(3)
    addi 0, 4, lbl_80534C00@l
    lfs 0, 0x0(3)
    mr 3, 0
    lfs 1, 0xc(30)
    fsubs 2, 3, 2
    .4byte 0x8802C124 # lbz r0, lbl_8053F0C4@sda21(r0)
    fsubs 1, 1, 0
    stb 0, 0x5d1(30)
    bl fn_80093340
    .4byte 0xC002C5A8 # lfs f0, lbl_8053F548@sda21(r0)
    addi 3, 30, 0x448
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    sth 0, 0x5d2(30)
    bl fn_80217A74
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x62
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x48000010 # b .L_801E3DD0
L_801E3DC4:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FE90 # blt .L_801E3C5C
L_801E3DD0:
    lwz 3, 0x4(30)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x418200FC # beq .L_801E3ED8
    li 28, 0x0
L_801E3DE4:
    mr 3, 30
    mr 7, 28
    addi 5, 1, 0x8
    li 4, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpw 28, 3
    .4byte 0x40820064 # bne .L_801E3E64
    mr 3, 28
    bl fn_8023E724
    mr 29, 3
    mr 3, 28
    bl fn_8023B6CC
    lwz 7, 0x8(1)
    mr 4, 3
    mr 3, 30
    mr 5, 29
    mr 8, 28
    li 6, 0x2
    bl fn_801F37AC
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_801E3E64
    mr 3, 28
    li 31, 0x1
    bl fn_80235448
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_801E3E64
    lwz 0, 0x230(30)
    mr 3, 30
    oris 0, 0, 0x1
    stw 0, 0x230(30)
    bl fn_801D63D0
L_801E3E64:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF78 # blt .L_801E3DE4
    clrlwi. 0, 31, 24
    .4byte 0x418201F4 # beq .L_801E4068
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0xf8(30)
    mr 3, 30
    addi 4, 4, 0x5
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x508(30)
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_801E3EB0
    addi 3, 30, 0x4c4
    bl fn_801D7638
    addi 3, 30, 0x4c4
    bl fn_801D76B4
L_801E3EB0:
    lwz 3, 0x108(30)
    .4byte 0x8002C120 # lwz r0, lbl_8053F0C0@sda21(r0)
    cmpw 3, 0
    .4byte 0x418101AC # bgt .L_801E4068
    lwz 3, 0x230(30)
    li 0, 0xa
    ori 3, 3, 0x8000
    stw 3, 0x230(30)
    stw 0, 0x108(30)
    .4byte 0x48000194 # b .L_801E4068
L_801E3ED8:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x0
    .4byte 0x41820018 # beq .L_801E3EFC
    lwz 0, 0x248(30)
    cmpwi 0, 0xb
    .4byte 0x4182000C # beq .L_801E3EFC
    li 3, 0x0
    .4byte 0x48000174 # b .L_801E406C
L_801E3EFC:
    lwz 0, 0x248(30)
    cmpwi 0, 0x9
    .4byte 0x41820164 # beq .L_801E4068
    li 28, 0x0
L_801E3F0C:
    mr 3, 30
    mr 7, 28
    addi 5, 1, 0x8
    li 4, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpw 28, 3
    .4byte 0x40820134 # bne .L_801E405C
    mr 3, 28
    bl fn_80235448
    clrlwi. 0, 3, 24
    .4byte 0x41820124 # beq .L_801E405C
    mr 3, 28
    bl fn_8023E724
    mr 29, 3
    mr 3, 28
    bl fn_8023B6CC
    lwz 7, 0x8(1)
    mr 4, 3
    mr 3, 30
    mr 5, 29
    mr 8, 28
    li 6, 0x2
    bl fn_801F37AC
    clrlwi. 0, 3, 24
    .4byte 0x418200EC # beq .L_801E405C
    lwz 4, 0x230(30)
    li 0, 0x0
    .4byte 0xC002C590 # lfs f0, lbl_8053F530@sda21(r0)
    addi 3, 30, 0x52c
    oris 4, 4, 0x1
    stw 4, 0x230(30)
    stw 0, 0xf8(30)
    stfs 0, 0x3c(30)
    stfs 0, 0x40(30)
    stfs 0, 0x44(30)
    stfs 0, 0x254(30)
    bl fn_801D6D08
    addi 3, 30, 0x448
    bl fn_80217A74
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x5
    li 5, 0x0
    bl fn_801F0E34
    lwz 0, 0x108(30)
    cmpwi 0, 0x0
    .4byte 0x41810030 # bgt .L_801E3FF8
    li 0, 0x10
    mr 3, 30
    stw 0, 0xd8(30)
    li 4, 0x18
    stw 0, 0xdc(30)
    bl fn_801D5D84
    addi 3, 30, 0x4c4
    bl fn_801D7638
    addi 3, 30, 0x4c4
    bl fn_801D76B4
    .4byte 0x48000060 # b .L_801E4054
L_801E3FF8:
    li 0, 0xb4
    mr 3, 30
    stw 0, 0xd8(30)
    stw 0, 0xdc(30)
    bl fn_801D63D0
    lwz 0, 0x508(30)
    cmpwi 0, 0x4
    .4byte 0x41820014 # beq .L_801E4028
    addi 3, 30, 0x4c4
    bl fn_801D7638
    addi 3, 30, 0x4c4
    bl fn_801D76B4
L_801E4028:
    lwz 3, 0x108(30)
    .4byte 0x8002C120 # lwz r0, lbl_8053F0C0@sda21(r0)
    cmpw 3, 0
    .4byte 0x41810014 # bgt .L_801E4048
    mr 3, 30
    li 4, 0xa
    bl fn_801D5D84
    .4byte 0x48000010 # b .L_801E4054
L_801E4048:
    lwz 0, 0x230(30)
    ori 0, 0, 0x8000
    stw 0, 0x230(30)
L_801E4054:
    li 31, 0x1
    .4byte 0x48000010 # b .L_801E4068
L_801E405C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FEA8 # blt .L_801E3F0C
L_801E4068:
    mr 3, 31
L_801E406C:
    psq_l 31, 0x48(1), 0, 0
    lwz 0, 0x54(1)
    lfd 31, 0x40(1)
    lwz 31, 0x3c(1)
    lwz 30, 0x38(1)
    lwz 29, 0x34(1)
    lwz 28, 0x30(1)
    mtlr 0
    addi 1, 1, 0x50
    blr

