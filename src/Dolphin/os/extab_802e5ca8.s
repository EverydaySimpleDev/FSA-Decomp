# fn_802E5CA8 - BGMN: main per-frame update() (0x990, largest piece)
# State-machine driver dispatched on this->0x240. One path scans all 4
# players (via the lbl_8053AAF8 active-player bitmask + fn_8023DE58/
# fn_8023E724 player-validity/position family), testing each player's
# position against a bounding box derived from this->0x60/0x64/0x68/0x6c,
# tracking the nearest/target player index at this->0x258; then resolves
# the target player pointer via fn_8022EA0C (falls back to player index 0
# when no per-room single-player flag is set) and re-validates it via
# fn_8023DE58. Further state branches (not fully hand-traced) reuse
# SpatialRegistry_GetBase/fn_80230188/fn_802D7970 and end via fn_80138B7C (boss-defeat/
# despawn notifier, from GOMA) on a terminal state. Track A: byte-match
# verified, structural overview per the large/complex-function exception.
.section extab, "a"
.balign 4
.global etb_8000D014
etb_8000D014:
    .4byte 0x390A0000
    .4byte 0x00000000
.size etb_8000D014, 8

.section extabindex, "a"
.balign 4
.global eti_8001C168
eti_8001C168:
    .4byte fn_802E5CA8
    .4byte 0x00000990
    .4byte etb_8000D014
.size eti_8001C168, 12

.text
.balign 4
.global fn_802E5CA8

fn_802E5CA8:
    stwu 1, -0xd0(1)
    mflr 0
    stw 0, 0xd4(1)
    stfd 31, 0xc0(1)
    psq_st 31, 0xc8(1), 0, 0
    stfd 30, 0xb0(1)
    psq_st 30, 0xb8(1), 0, 0
    stfd 29, 0xa0(1)
    psq_st 29, 0xa8(1), 0, 0
    stfd 28, 0x90(1)
    psq_st 28, 0x98(1), 0, 0
    stmw 25, 0x74(1)
    mr 27, 3
    lis 3, 0x1
    lfs 1, 0x10(27)
    li 4, -0x1
    lfs 30, 0x64(27)
    subi 0, 3, 0x1
    lfs 28, 0x6c(27)
    lfs 0, 0xc(27)
    fadds 30, 30, 1
    lfs 31, 0x60(27)
    fadds 28, 28, 1
    lfs 29, 0x68(27)
    fadds 31, 31, 0
    stw 4, 0x258(27)
    fadds 29, 29, 0
    stw 4, 0x25c(27)
    sth 0, 0x94(27)
    lwz 0, 0x240(27)
    cmpwi 0, 0x2
    .4byte 0x4182016C # beq .L_802E5E90
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x408200D0 # bne .L_802E5E04
    li 26, 0x0
L_802E5D3C:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    li 0, 0x1
    slw 0, 0, 26
    lbz 3, 0x82(3)
    clrlwi 0, 0, 24
    and 3, 3, 0
    neg 0, 3
    or 0, 0, 3
    srwi 0, 0, 31
    cmplwi 0, 0x1
    .4byte 0x4082007C # bne .L_802E5DE0
    mr 3, 26
    bl fn_8023DE58
    lwz 0, 0x4(27)
    cmpw 0, 3
    .4byte 0x40820068 # bne .L_802E5DE0
    mr 3, 26
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    li 0, 0x0
    lfs 0, 0x8(3)
    psq_st 1, 0x50(1), 0, 0
    lfs 1, 0x50(1)
    stfs 0, 0x58(1)
    fcmpo cr0, 1, 31
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_802E5DCC
    lfs 0, 0x54(1)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_802E5DCC
    fcmpo cr0, 1, 29
    .4byte 0x40800010 # bge .L_802E5DCC
    fcmpo cr0, 0, 28
    .4byte 0x40800008 # bge .L_802E5DCC
    li 0, 0x1
L_802E5DCC:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_802E5DE0
    stw 26, 0x258(27)
    sth 26, 0x94(27)
    .4byte 0x48000010 # b .L_802E5DEC
L_802E5DE0:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF54 # blt .L_802E5D3C
L_802E5DEC:
    lwz 3, 0x258(27)
    cmpwi 3, 0x0
    .4byte 0x418001A0 # blt .L_802E5F94
    bl fn_8022EA0C
    stw 3, 0x25c(27)
    .4byte 0x48000194 # b .L_802E5F94
L_802E5E04:
    li 3, 0x0
    bl fn_8022EA0C
    stw 3, 0x25c(27)
    lwz 3, 0x25c(27)
    bl fn_8023DE58
    lwz 0, 0x4(27)
    cmpw 0, 3
    .4byte 0x40820174 # bne .L_802E5F94
    lwz 3, 0x25c(27)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    li 0, 0x0
    lfs 0, 0x8(3)
    psq_st 1, 0x44(1), 0, 0
    lfs 1, 0x44(1)
    stfs 0, 0x4c(1)
    fcmpo cr0, 1, 31
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_802E5E74
    lfs 0, 0x48(1)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_802E5E74
    fcmpo cr0, 1, 29
    .4byte 0x40800010 # bge .L_802E5E74
    fcmpo cr0, 0, 28
    .4byte 0x40800008 # bge .L_802E5E74
    li 0, 0x1
L_802E5E74:
    clrlwi. 0, 0, 24
    .4byte 0x4182011C # beq .L_802E5F94
    lwz 0, 0x25c(27)
    stw 0, 0x258(27)
    lwz 0, 0x25c(27)
    sth 0, 0x94(27)
    .4byte 0x48000108 # b .L_802E5F94
L_802E5E90:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x408200C8 # bne .L_802E5F64
    li 26, 0x0
L_802E5EA4:
    mr 3, 26
    bl fn_8023DE58
    lwz 0, 0x4(27)
    cmpw 0, 3
    .4byte 0x40820068 # bne .L_802E5F1C
    mr 3, 26
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    li 0, 0x0
    lfs 0, 0x8(3)
    psq_st 1, 0x38(1), 0, 0
    lfs 1, 0x38(1)
    stfs 0, 0x40(1)
    fcmpo cr0, 1, 31
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_802E5F08
    lfs 0, 0x3c(1)
    fcmpo cr0, 0, 30
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_802E5F08
    fcmpo cr0, 1, 29
    .4byte 0x40800010 # bge .L_802E5F08
    fcmpo cr0, 0, 28
    .4byte 0x40800008 # bge .L_802E5F08
    li 0, 0x1
L_802E5F08:
    clrlwi. 0, 0, 24
    .4byte 0x41820010 # beq .L_802E5F1C
    stw 26, 0x258(27)
    sth 26, 0x94(27)
    .4byte 0x48000010 # b .L_802E5F28
L_802E5F1C:
    addi 26, 26, 0x1
    cmpwi 26, 0x4
    .4byte 0x4180FF80 # blt .L_802E5EA4
L_802E5F28:
    lwz 3, 0x258(27)
    cmpwi 3, 0x0
    .4byte 0x41800064 # blt .L_802E5F94
    bl fn_8022EA0C
    stw 3, 0x25c(27)
    lwz 3, 0x25c(27)
    bl fn_8023DE58
    lwz 0, 0x4(27)
    cmpw 0, 3
    .4byte 0x40820048 # bne .L_802E5F94
    lwz 0, 0x25c(27)
    stw 0, 0x258(27)
    lwz 0, 0x25c(27)
    sth 0, 0x94(27)
    .4byte 0x48000034 # b .L_802E5F94
L_802E5F64:
    li 3, 0x0
    bl fn_8022EA0C
    stw 3, 0x25c(27)
    lwz 3, 0x25c(27)
    bl fn_8023DE58
    lwz 0, 0x4(27)
    cmpw 0, 3
    .4byte 0x40820014 # bne .L_802E5F94
    lwz 0, 0x25c(27)
    stw 0, 0x258(27)
    lwz 0, 0x25c(27)
    sth 0, 0x94(27)
L_802E5F94:
    lwz 3, 0x25c(27)
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_802E5FAC
    bl fn_8023DE58
    stw 3, 0x254(27)
    .4byte 0x4800000C # b .L_802E5FB4
L_802E5FAC:
    li 0, -0x1
    stw 0, 0x254(27)
L_802E5FB4:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7e(3)
    cmplwi 0, 0x1
    .4byte 0x408201F0 # bne .L_802E61B0
    lwz 0, 0x258(27)
    cmpwi 0, 0x0
    .4byte 0x408001A8 # bge .L_802E6174
    lwz 3, 0x25c(27)
    cmpwi 3, 0x0
    .4byte 0x4180001C # blt .L_802E5FF4
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802E5FF4
    lwz 0, 0x24c(27)
    stw 0, 0x258(27)
    .4byte 0x48000184 # b .L_802E6174
L_802E5FF4:
    bl SpatialRegistry_GetBase
    li 28, 0x0
    lwz 31, 0x1008(3)
    mr 29, 28
    .4byte 0x48000168 # b .L_802E616C
L_802E6008:
    bl SpatialRegistry_GetBase
    addi 0, 29, 0x8
    lwzx 6, 3, 0
    cmplwi 6, 0x0
    .4byte 0x4182014C # beq .L_802E6164
    lwz 3, 0x1a0(6)
    subis 0, 3, 0x4247
    cmplwi 0, 0x4d4e
    .4byte 0x4082013C # bne .L_802E6164
    lwz 7, 0x90(6)
    lwz 0, 0x234(27)
    clrlwi 3, 7, 25
    lwz 30, 0x4(6)
    cmplw 3, 0
    .4byte 0x40820124 # bne .L_802E6164
    extrwi 3, 7, 5, 5
    lis 4, 0x4330
    addi 0, 3, 0x1
    extrwi 3, 7, 5, 10
    xoris 5, 0, 0x8000
    psq_l 4, 0xc(6), 0, 0
    addi 0, 3, 0x1
    stw 5, 0x64(1)
    xoris 0, 0, 0x8000
    lfs 5, 0x14(6)
    stw 4, 0x60(1)
    extrwi 26, 7, 5, 15
    .4byte 0xC842E290 # lfd f2, lbl_80541230@sda21(r0)
    li 25, 0x0
    lfd 0, 0x60(1)
    stw 0, 0x6c(1)
    fsubs 1, 0, 2
    .4byte 0xC062E288 # lfs f3, lbl_80541228@sda21(r0)
    stw 4, 0x68(1)
    lfd 0, 0x68(1)
    fmuls 6, 3, 1
    psq_st 4, 0x2c(1), 0, 0
    fsubs 0, 0, 2
    fneg 1, 6
    lfs 4, 0x30(1)
    lfs 2, 0x2c(1)
    fmuls 3, 3, 0
    stfs 5, 0x34(1)
    stfs 1, 0x60(27)
    fneg 0, 3
    stfs 0, 0x64(27)
    stfs 6, 0x68(27)
    stfs 3, 0x6c(27)
    lfs 28, 0x60(27)
    lfs 29, 0x64(27)
    lfs 30, 0x68(27)
    fadds 28, 28, 2
    lfs 31, 0x6c(27)
    fadds 29, 29, 4
    fadds 30, 30, 2
    fadds 31, 31, 4
L_802E60E8:
    mr 3, 25
    bl fn_8023DE58
    cmpw 30, 3
    .4byte 0x40820064 # bne .L_802E6158
    cmplwi 26, 0x2
    .4byte 0x41820508 # beq .L_802E6604
    mr 3, 25
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    li 0, 0x0
    lfs 0, 0x8(3)
    psq_st 1, 0x20(1), 0, 0
    lfs 1, 0x20(1)
    stfs 0, 0x28(1)
    fcmpo cr0, 1, 28
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_802E6150
    lfs 0, 0x24(1)
    fcmpo cr0, 0, 29
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_802E6150
    fcmpo cr0, 1, 30
    .4byte 0x40800010 # bge .L_802E6150
    fcmpo cr0, 0, 31
    .4byte 0x40800008 # bge .L_802E6150
    li 0, 0x1
L_802E6150:
    clrlwi. 0, 0, 24
    .4byte 0x408204B0 # bne .L_802E6604
L_802E6158:
    addi 25, 25, 0x1
    cmpwi 25, 0x4
    .4byte 0x4180FF88 # blt .L_802E60E8
L_802E6164:
    addi 29, 29, 0x4
    addi 28, 28, 0x1
L_802E616C:
    cmpw 28, 31
    .4byte 0x4180FE98 # blt .L_802E6008
L_802E6174:
    lwz 3, 0x258(27)
    cmpwi 3, 0x0
    .4byte 0x4180001C # blt .L_802E6198
    bl fn_8023DE58
    lwz 0, 0x4(27)
    cmpw 0, 3
    .4byte 0x4182000C # beq .L_802E6198
    li 0, -0x1
    stw 0, 0x258(27)
L_802E6198:
    lwz 0, 0x250(27)
    cmpwi 0, 0x0
    .4byte 0x41820254 # beq .L_802E63F4
    li 0, -0x1
    stw 0, 0x258(27)
    .4byte 0x48000248 # b .L_802E63F4
L_802E61B0:
    lwz 3, 0x254(27)
    lwz 0, 0x4(27)
    cmpw 3, 0
    .4byte 0x418200A4 # beq .L_802E6260
    li 25, 0x1
    bl SpatialRegistry_GetBase
    li 29, 0x0
    lwz 28, 0x1008(3)
    mr 26, 29
    .4byte 0x48000078 # b .L_802E624C
L_802E61D8:
    bl SpatialRegistry_GetBase
    addi 0, 26, 0x8
    lwzx 4, 3, 0
    cmplwi 4, 0x0
    .4byte 0x4182005C # beq .L_802E6244
    lwz 0, 0x198(27)
    cmpw 29, 0
    .4byte 0x41820050 # beq .L_802E6244
    lwz 3, 0x1a0(4)
    subis 0, 3, 0x4247
    cmplwi 0, 0x4d4e
    .4byte 0x40820040 # bne .L_802E6244
    lwz 3, 0x254(27)
    lwz 0, 0x4(4)
    cmpw 3, 0
    .4byte 0x40820030 # bne .L_802E6244
    lhz 0, 0x94(4)
    cmplwi 0, 0xffff
    .4byte 0x4182000C # beq .L_802E622C
    li 25, 0x0
    .4byte 0x4800001C # b .L_802E6244
L_802E622C:
    lwz 0, 0x90(4)
    lwz 3, 0x234(27)
    clrlwi 0, 0, 25
    cmplw 3, 0
    .4byte 0x40820008 # bne .L_802E6244
    li 25, 0x0
L_802E6244:
    addi 26, 26, 0x4
    addi 29, 29, 0x1
L_802E624C:
    cmpw 29, 28
    .4byte 0x4180FF88 # blt .L_802E61D8
    cmpwi 25, 0x0
    .4byte 0x4082019C # bne .L_802E63F4
    .4byte 0x480003A8 # b .L_802E6604
L_802E6260:
    lwz 0, 0x258(27)
    cmpwi 0, 0x0
    .4byte 0x4080018C # bge .L_802E63F4
    lwz 3, 0x25c(27)
    bl fn_80230188
    clrlwi. 0, 3, 24
    .4byte 0x41820010 # beq .L_802E6288
    lwz 0, 0x24c(27)
    stw 0, 0x258(27)
    .4byte 0x48000170 # b .L_802E63F4
L_802E6288:
    lwz 3, 0x25c(27)
    bl fn_8023E724
    psq_l 1, 0x0(3), 0, 0
    lfs 0, 0x8(3)
    psq_st 1, 0x14(1), 0, 0
    stfs 0, 0x1c(1)
    bl SpatialRegistry_GetBase
    li 31, 0x0
    lwz 30, 0x1008(3)
    mr 29, 31
    .4byte 0x4800013C # b .L_802E63EC
L_802E62B4:
    bl SpatialRegistry_GetBase
    addi 0, 29, 0x8
    lwzx 6, 3, 0
    cmplwi 6, 0x0
    .4byte 0x41820120 # beq .L_802E63E4
    lwz 3, 0x1a0(6)
    subis 0, 3, 0x4247
    cmplwi 0, 0x4d4e
    .4byte 0x40820110 # bne .L_802E63E4
    lwz 3, 0x254(27)
    lwz 0, 0x4(6)
    cmpw 3, 0
    .4byte 0x40820100 # bne .L_802E63E4
    lwz 5, 0x90(6)
    extrwi 0, 5, 5, 15
    cmplwi 0, 0x2
    .4byte 0x41820310 # beq .L_802E6604
    lwz 0, 0x234(27)
    clrlwi 3, 5, 25
    cmplw 3, 0
    .4byte 0x408200E0 # bne .L_802E63E4
    extrwi 3, 5, 5, 5
    lis 4, 0x4330
    addi 0, 3, 0x1
    extrwi 3, 5, 5, 10
    xoris 5, 0, 0x8000
    psq_l 4, 0xc(6), 0, 0
    addi 0, 3, 0x1
    stw 5, 0x6c(1)
    xoris 3, 0, 0x8000
    lfs 5, 0x14(6)
    stw 4, 0x68(1)
    li 0, 0x0
    .4byte 0xC842E290 # lfd f2, lbl_80541230@sda21(r0)
    lfd 0, 0x68(1)
    stw 3, 0x64(1)
    fsubs 1, 0, 2
    .4byte 0xC062E288 # lfs f3, lbl_80541228@sda21(r0)
    stw 4, 0x60(1)
    lfs 7, 0x14(1)
    lfd 0, 0x60(1)
    fmuls 6, 3, 1
    psq_st 4, 0x8(1), 0, 0
    fsubs 0, 0, 2
    fneg 1, 6
    lfs 2, 0x8(1)
    lfs 4, 0xc(1)
    fmuls 3, 3, 0
    stfs 5, 0x10(1)
    stfs 1, 0x60(27)
    fneg 0, 3
    stfs 0, 0x64(27)
    stfs 6, 0x68(27)
    stfs 3, 0x6c(27)
    lfs 0, 0x60(27)
    lfs 1, 0x64(27)
    fadds 0, 0, 2
    lfs 3, 0x68(27)
    lfs 5, 0x6c(27)
    fadds 1, 1, 4
    fadds 3, 3, 2
    fcmpo cr0, 7, 0
    fadds 5, 5, 4
    cror eq, gt, eq
    .4byte 0x40820028 # bne .L_802E63DC
    lfs 0, 0x18(1)
    fcmpo cr0, 0, 1
    cror eq, gt, eq
    .4byte 0x40820018 # bne .L_802E63DC
    fcmpo cr0, 7, 3
    .4byte 0x40800010 # bge .L_802E63DC
    fcmpo cr0, 0, 5
    .4byte 0x40800008 # bge .L_802E63DC
    li 0, 0x1
L_802E63DC:
    clrlwi. 0, 0, 24
    .4byte 0x40820224 # bne .L_802E6604
L_802E63E4:
    addi 29, 29, 0x4
    addi 31, 31, 0x1
L_802E63EC:
    cmpw 31, 30
    .4byte 0x4180FEC4 # blt .L_802E62B4
L_802E63F4:
    lwz 0, 0x230(27)
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    cmpwi 0, 0x1
    lwz 28, 0x60(3)
    .4byte 0x41820188 # beq .L_802E658C
    .4byte 0x408001FC # bge .L_802E6604
    cmpwi 0, 0x0
    .4byte 0x40800008 # bge .L_802E6418
    .4byte 0x480001F0 # b .L_802E6604
L_802E6418:
    lwz 0, 0x240(27)
    li 25, 0x0
    cmpwi 0, 0x0
    .4byte 0x41820014 # beq .L_802E6438
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802E6438
    cmpwi 0, 0x4
    .4byte 0x40820040 # bne .L_802E6474
L_802E6438:
    lwz 0, 0x258(27)
    cmpwi 0, 0x0
    .4byte 0x4080002C # bge .L_802E646C
    lwz 0, 0x90(27)
    srwi. 0, 0, 27
    .4byte 0x41820020 # beq .L_802E646C
    mr 3, 27
    lwz 12, 0x0(27)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_802E6484
L_802E646C:
    li 25, 0x1
    .4byte 0x48000014 # b .L_802E6484
L_802E6474:
    lwz 0, 0x258(27)
    cmpwi 0, 0x0
    .4byte 0x41800008 # blt .L_802E6484
    li 25, 0x1
L_802E6484:
    clrlwi 0, 25, 24
    cmplwi 0, 0x1
    .4byte 0x40820178 # bne .L_802E6604
    bl GetRoomConfigRecord
    addis 3, 3, 0x1
    lbz 0, 0x31f4(3)
    cmplwi 0, 0x0
    .4byte 0x40820164 # bne .L_802E6604
    lwz 0, 0x240(27)
    cmpwi 0, 0x4
    .4byte 0x4182001C # beq .L_802E64C8
    .4byte 0x41820154 # beq .L_802E6604
    subis 0, 28, 0x100
    cmplwi 0, 0x21
    .4byte 0x41820148 # beq .L_802E6604
    cmplwi 0, 0x19
    .4byte 0x41820140 # beq .L_802E6604
L_802E64C8:
    lwz 0, 0x234(27)
    cmpwi 0, 0x11
    .4byte 0x41820074 # beq .L_802E6544
    cmpwi 0, 0x14
    .4byte 0x4182000C # beq .L_802E64E4
    cmpwi 0, 0x1e
    .4byte 0x40820020 # bne .L_802E6500
L_802E64E4:
    lis 3, lbl_8046F1C8@ha
    slwi 0, 0, 2
    addi 4, 3, lbl_8046F1C8@l
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwzx 4, 4, 0
    bl fn_80458F04
    .4byte 0x48000024 # b .L_802E6520
L_802E6500:
    lis 3, lbl_8046F1C8@ha
    slwi 0, 0, 2
    addi 4, 3, lbl_8046F1C8@l
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    lwzx 4, 4, 0
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_802E6520:
    lwz 26, 0x234(27)
    cmpwi 26, 0x11
    .4byte 0x4180000C # blt .L_802E6534
    cmpwi 26, 0x26
    .4byte 0x40820020 # bne .L_802E6550
L_802E6534:
    bl GetRoomConfigRecord
    mr 4, 26
    bl fn_802D7970
    .4byte 0x48000010 # b .L_802E6550
L_802E6544:
    .4byte 0x806D93C0 # lwz r3, lbl_8053AF80@sda21(r0)
    li 4, 0x3c
    bl fn_80458F9C
L_802E6550:
    lwz 0, 0x240(27)
    cmpwi 0, 0x3
    .4byte 0x4182000C # beq .L_802E6564
    cmpwi 0, 0x4
    .4byte 0x40820010 # bne .L_802E6570
L_802E6564:
    li 0, 0x0
    stb 0, 0x11c(27)
    .4byte 0x48000098 # b .L_802E6604
L_802E6570:
    li 0, 0x1
    stw 0, 0x230(27)
    lwz 0, 0x258(27)
    cmpwi 0, 0x0
    .4byte 0x41800084 # blt .L_802E6604
    stw 0, 0x24c(27)
    .4byte 0x4800007C # b .L_802E6604
L_802E658C:
    lwz 0, 0x240(27)
    cmpwi 0, 0x0
    .4byte 0x4182002C # beq .L_802E65C0
    lwz 0, 0x258(27)
    cmpwi 0, 0x0
    .4byte 0x40800020 # bge .L_802E65C0
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    bl fn_80138B7C
    li 3, 0x0
    li 0, -0x1
    stw 3, 0x230(27)
    stw 0, 0x24c(27)
    .4byte 0x48000048 # b .L_802E6604
L_802E65C0:
    lwz 0, 0x234(27)
    cmpwi 0, 0x11
    .4byte 0x4182003C # beq .L_802E6604
    lis 4, lbl_8046F1C8@ha
    slwi 0, 0, 2
    addi 4, 4, lbl_8046F1C8@l
    lwzx 4, 4, 0
    cmplw 28, 4
    .4byte 0x41820024 # beq .L_802E6604
    subis 0, 28, 0x100
    cmplwi 0, 0x21
    .4byte 0x41820018 # beq .L_802E6604
    cmplwi 0, 0x19
    .4byte 0x41820010 # beq .L_802E6604
    li 5, 0x0
    li 6, 0x0
    bl fn_80458FF0
L_802E6604:
    psq_l 31, 0xc8(1), 0, 0
    lfd 31, 0xc0(1)
    psq_l 30, 0xb8(1), 0, 0
    lfd 30, 0xb0(1)
    psq_l 29, 0xa8(1), 0, 0
    lfd 29, 0xa0(1)
    psq_l 28, 0x98(1), 0, 0
    lfd 28, 0x90(1)
    lmw 25, 0x74(1)
    lwz 0, 0xd4(1)
    mtlr 0
    addi 1, 1, 0xd0
    blr

