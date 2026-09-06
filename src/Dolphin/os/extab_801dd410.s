.section extab, "a"
.balign 4
.global etb_800088E0
etb_800088E0:
    .4byte 0x290A0000
    .4byte 0x00000000
.size etb_800088E0, 8

.section extabindex, "a"
.balign 4
.global eti_80015D84
eti_80015D84:
    .4byte fn_801DD410
    .4byte 0x000007D4
    .4byte etb_800088E0
.size eti_80015D84, 12

# fn_801DD410(this) - a large (2004-byte) per-frame state-driven "attack
# nearby player" method. Calls fn_801D9C58(this, newState) multiple times
# (with newState 5 and 0x13) - the SAME confirmed keystone "enter new
# state" executor already documented for the fn_801D8400-family class
# earlier this session (fn_801D8B28/fn_801D9C58/fn_801DA504/etc) - this is
# strong evidence fn_801DD410 is ANOTHER method of THAT SAME class, found
# here in a later/non-contiguous translation unit (that class's methods
# were already known to be split across multiple TUs - see
# project_fsa_extab_bug_resolved.md).
#
# Overall shape (3 near-parallel blocks, one per broad state-range):
#  - State 4/5/8 (or a >=0xb/<0xf range, or state 0x11): first re-derives
#    this->0x60/0x64/0x68/0x6c as an alternate bounding box (constants, or
#    the object's own box in other states) and optionally mirrors it via
#    the SAME "flag bit 18 + fn_801DA904(this+0x2a8)" convention seen in
#    fn_801DD28C.
#  - If the resulting box has positive spread on both axes: loops over the
#    4 player slots using the CONFIRMED per-slot filter idiom
#    (fn_801F285C dedup + fn_80235448/fn_8023B6CC/fn_8023E724 accessors +
#    fn_801F37AC boolean gate, matching fn_801DC3C4's identical shape) to
#    decide, per player, whether they're within reach - a nested per-state
#    sub-dispatch (states 0xb/0xc/0xf/0x11 gate different axis checks).
#  - If ANY player passed: notifies via fn_801F0E34, calls fn_801E62D4
#    (new, not yet decompiled), then either commits a new state via
#    fn_801D9C58 immediately, or first runs a per-frame counter
#    (this->0x33f vs a table byte at lbl_8053F1C8) that, once expired,
#    decays this->0x3c/0x40 (velocity) by a constant and THEN commits.
#  - A separate loop variant (r27 flag) additionally calls fn_80237948 +
#    fn_801EAC20(this+0x1dc, slot) + fn_801CB538(this->0x4, position) -
#    an apparent ATTACK-TRIGGER sequence, not yet decompiled in detail.
#
# New, not-yet-explored callees this reveals: fn_801E62D4, fn_80237948,
# fn_801EAC20, fn_801CB538, fn_80235448 (a per-slot boolean, likely
# "is this slot a valid/alive player").
.text
.balign 4
.global fn_801DD410

fn_801DD410:
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
    stmw 27, 0x2c(1)
    mr 30, 3
    li 31, 0x0
    lwz 0, 0x248(3)
    li 3, 0x0
    cmpwi 0, 0x5
    .4byte 0x41820020 # beq .L_801DD474
    .4byte 0x40800010 # bge .L_801DD468
    cmpwi 0, 0x4
    .4byte 0x40800010 # bge .L_801DD470
    .4byte 0x48000010 # b .L_801DD474
L_801DD468:
    cmpwi 0, 0x8
    .4byte 0x40800008 # bge .L_801DD474
L_801DD470:
    li 3, 0x1
L_801DD474:
    clrlwi. 0, 3, 24
    .4byte 0x41820070 # beq .L_801DD4E8
    lfs 28, 0x60(30)
    mr 3, 30
    lfs 29, 0x64(30)
    li 4, 0x0
    lfs 30, 0x68(30)
    li 5, 0x0
    lfs 31, 0x6c(30)
    li 6, 0x1
    .4byte 0xC022C404 # lfs f1, lbl_8053F3A4@sda21(r0)
    li 7, -0x1
    .4byte 0xC002C408 # lfs f0, lbl_8053F3A8@sda21(r0)
    stfs 1, 0x60(30)
    .4byte 0xC022C40C # lfs f1, lbl_8053F3AC@sda21(r0)
    stfs 0, 0x64(30)
    .4byte 0xC002C410 # lfs f0, lbl_8053F3B0@sda21(r0)
    stfs 1, 0x68(30)
    stfs 0, 0x6c(30)
    bl fn_801F285C
    cmpwi 3, 0x0
    .4byte 0x41800010 # blt .L_801DD4D8
    mr 3, 30
    li 4, 0x5
    bl fn_801D9C58
L_801DD4D8:
    stfs 28, 0x60(30)
    stfs 29, 0x64(30)
    stfs 30, 0x68(30)
    stfs 31, 0x6c(30)
L_801DD4E8:
    lwz 0, 0x248(30)
    cmpwi 0, 0x11
    .4byte 0x4182001C # beq .L_801DD50C
    .4byte 0x408006B8 # bge .L_801DDBAC
    cmpwi 0, 0xf
    .4byte 0x408006B0 # bge .L_801DDBAC
    cmpwi 0, 0xb
    .4byte 0x408003F8 # bge .L_801DD8FC
    .4byte 0x480006A4 # b .L_801DDBAC
L_801DD50C:
    lfs 31, 0x60(30)
    lfs 30, 0x64(30)
    lfs 29, 0x68(30)
    lfs 28, 0x6c(30)
    .4byte 0xC002C414 # lfs f0, lbl_8053F3B4@sda21(r0)
    .4byte 0xC022C418 # lfs f1, lbl_8053F3B8@sda21(r0)
    stfs 0, 0x60(30)
    .4byte 0xC002C41C # lfs f0, lbl_8053F3BC@sda21(r0)
    stfs 1, 0x64(30)
    .4byte 0xC022C420 # lfs f1, lbl_8053F3C0@sda21(r0)
    stfs 0, 0x68(30)
    .4byte 0xC002C3EC # lfs f0, lbl_8053F38C@sda21(r0)
    stfs 1, 0x6c(30)
    lfs 2, 0x68(30)
    lfs 1, 0x60(30)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40810038 # ble .L_801DD588
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4182002C # beq .L_801DD588
    addi 3, 30, 0x2a8
    bl fn_801DA904
    clrlwi. 0, 3, 24
    .4byte 0x4182001C # beq .L_801DD588
    lfs 0, 0x68(30)
    lfs 2, 0x60(30)
    fneg 1, 0
    fneg 0, 2
    stfs 1, 0x60(30)
    stfs 0, 0x68(30)
L_801DD588:
    li 28, 0x0
L_801DD58C:
    mr 3, 30
    mr 7, 28
    addi 5, 1, 0x8
    li 4, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpw 28, 3
    .4byte 0x40820048 # bne .L_801DD5F0
    mr 3, 28
    bl fn_80235448
    clrlwi. 0, 3, 24
    .4byte 0x41820038 # beq .L_801DD5F0
    mr 3, 28
    bl fn_8023E724
    lwz 7, 0x8(1)
    mr 5, 3
    mr 3, 30
    mr 8, 28
    li 4, 0x0
    li 6, 0x0
    bl fn_801F37AC
    clrlwi. 0, 3, 24
    .4byte 0x4182000C # beq .L_801DD5F0
    li 31, 0x1
    .4byte 0x48000010 # b .L_801DD5FC
L_801DD5F0:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF94 # blt .L_801DD58C
L_801DD5FC:
    clrlwi. 0, 31, 24
    .4byte 0x41820094 # beq .L_801DD694
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0x108(30)
    mr 3, 30
    .4byte 0xC002C3EC # lfs f0, lbl_8053F38C@sda21(r0)
    addi 4, 4, 0x5
    stw 0, 0xf8(30)
    li 5, 0x0
    stfs 0, 0x44(30)
    stfs 0, 0x14(30)
    bl fn_801F0E34
    mr 3, 30
    bl fn_801E62D4
    lwz 0, 0x248(30)
    cmpwi 0, 0x11
    .4byte 0x41820048 # beq .L_801DD688
    lbz 3, 0x33f(30)
    .4byte 0x8802C228 # lbz r0, lbl_8053F1C8@sda21(r0)
    addi 3, 3, 0x1
    stb 3, 0x33f(30)
    lbz 3, 0x33f(30)
    cmplw 3, 0
    .4byte 0x4180002C # blt .L_801DD688
    lfs 0, 0x3c(30)
    mr 3, 30
    .4byte 0xC022C424 # lfs f1, lbl_8053F3C4@sda21(r0)
    li 4, 0xf
    fmuls 0, 0, 1
    stfs 0, 0x3c(30)
    lfs 0, 0x40(30)
    fmuls 0, 0, 1
    stfs 0, 0x40(30)
    bl fn_801D9C58
L_801DD688:
    mr 3, 30
    li 4, 0x13
    bl fn_801D9C58
L_801DD694:
    stfs 31, 0x60(30)
    clrlwi. 0, 31, 24
    stfs 30, 0x64(30)
    stfs 29, 0x68(30)
    stfs 28, 0x6c(30)
    .4byte 0x40820504 # bne .L_801DDBAC
    lfs 1, 0x68(30)
    lfs 0, 0x60(30)
    .4byte 0xC042C3EC # lfs f2, lbl_8053F38C@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408104EC # ble .L_801DDBAC
    lfs 1, 0x6c(30)
    lfs 0, 0x64(30)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408104D8 # ble .L_801DDBAC
    li 28, 0x0
L_801DD6DC:
    mr 3, 30
    mr 7, 28
    addi 5, 1, 0x8
    li 4, 0x0
    li 6, 0x1
    bl fn_801F285C
    cmpw 28, 3
    .4byte 0x40820154 # bne .L_801DD84C
    cmpwi 28, 0x0
    li 29, 0x0
    .4byte 0x41800104 # blt .L_801DD808
    cmpwi 28, 0x4
    .4byte 0x408000FC # bge .L_801DD808
    mr 3, 28
    bl fn_80235448
    clrlwi. 0, 3, 24
    .4byte 0x408200EC # bne .L_801DD808
    lwz 0, 0x248(30)
    cmpwi 0, 0x11
    .4byte 0x4082000C # bne .L_801DD734
    li 29, 0x1
    .4byte 0x480000D8 # b .L_801DD808
L_801DD734:
    mr 3, 28
    bl fn_8023E724
    lfs 3, 0x4(3)
    .4byte 0xC042C428 # lfs f2, lbl_8053F3C8@sda21(r0)
    lfs 1, 0x10(30)
    lfs 0, 0x64(30)
    fadds 2, 2, 3
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x408200AC # bne .L_801DD808
    lwz 0, 0x248(30)
    cmpwi 0, 0xc
    .4byte 0x41820020 # beq .L_801DD788
    .4byte 0x40800010 # bge .L_801DD77C
    cmpwi 0, 0xb
    .4byte 0x4080001C # bge .L_801DD790
    .4byte 0x48000090 # b .L_801DD808
L_801DD77C:
    cmpwi 0, 0xf
    .4byte 0x40800088 # bge .L_801DD808
    .4byte 0x4800000C # b .L_801DD790
L_801DD788:
    li 29, 0x1
    .4byte 0x4800007C # b .L_801DD808
L_801DD790:
    mr 3, 28
    bl fn_8023E724
    lfs 3, 0x4(3)
    .4byte 0xC042C428 # lfs f2, lbl_8053F3C8@sda21(r0)
    lfs 1, 0x10(30)
    lfs 0, 0x6c(30)
    fsubs 2, 3, 2
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x4081000C # ble .L_801DD7C0
    li 29, 0x1
    .4byte 0x4800004C # b .L_801DD808
L_801DD7C0:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820024 # beq .L_801DD7EC
    mr 3, 28
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(30)
    fcmpo cr0, 0, 1
    .4byte 0x40800028 # bge .L_801DD808
    li 29, 0x1
    .4byte 0x48000020 # b .L_801DD808
L_801DD7EC:
    mr 3, 28
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(30)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801DD808
    li 29, 0x1
L_801DD808:
    clrlwi. 0, 29, 24
    .4byte 0x41820040 # beq .L_801DD84C
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
    li 6, 0x0
    bl fn_801F37AC
    clrlwi. 0, 3, 24
    .4byte 0x41820008 # beq .L_801DD84C
    li 31, 0x1
L_801DD84C:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FE88 # blt .L_801DD6DC
    clrlwi. 0, 31, 24
    .4byte 0x41820350 # beq .L_801DDBAC
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0xf8(30)
    mr 3, 30
    .4byte 0xC002C3EC # lfs f0, lbl_8053F38C@sda21(r0)
    addi 4, 4, 0x5
    li 5, 0x0
    stfs 0, 0x44(30)
    stfs 0, 0x14(30)
    bl fn_801F0E34
    mr 3, 30
    bl fn_801E62D4
    lwz 0, 0x248(30)
    cmpwi 0, 0x11
    .4byte 0x41820048 # beq .L_801DD8E0
    lbz 3, 0x33f(30)
    .4byte 0x8802C228 # lbz r0, lbl_8053F1C8@sda21(r0)
    addi 3, 3, 0x1
    stb 3, 0x33f(30)
    lbz 3, 0x33f(30)
    cmplw 3, 0
    .4byte 0x4180002C # blt .L_801DD8E0
    lfs 0, 0x3c(30)
    mr 3, 30
    .4byte 0xC022C424 # lfs f1, lbl_8053F3C4@sda21(r0)
    li 4, 0xf
    fmuls 0, 0, 1
    stfs 0, 0x3c(30)
    lfs 0, 0x40(30)
    fmuls 0, 0, 1
    stfs 0, 0x40(30)
    bl fn_801D9C58
L_801DD8E0:
    lwz 0, 0x108(30)
    cmpwi 0, 0x0
    .4byte 0x418102C4 # bgt .L_801DDBAC
    mr 3, 30
    li 4, 0x13
    bl fn_801D9C58
    .4byte 0x480002B4 # b .L_801DDBAC
L_801DD8FC:
    lfs 1, 0x68(30)
    lfs 0, 0x60(30)
    .4byte 0xC042C3EC # lfs f2, lbl_8053F38C@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x4081029C # ble .L_801DDBAC
    lfs 1, 0x6c(30)
    lfs 0, 0x64(30)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x40810288 # ble .L_801DDBAC
    li 27, 0x0
    li 28, 0x0
L_801DD930:
    mr 3, 30
    mr 7, 28
    addi 4, 1, 0xc
    addi 5, 1, 0x8
    li 6, 0x1
    bl fn_801F285C
    cmpw 28, 3
    .4byte 0x408201B0 # bne .L_801DDAFC
    mr 3, 28
    bl fn_8023B6CC
    cmpwi 28, 0x0
    li 29, 0x0
    .4byte 0x41800104 # blt .L_801DDA64
    cmpwi 28, 0x4
    .4byte 0x408000FC # bge .L_801DDA64
    mr 3, 28
    bl fn_80235448
    clrlwi. 0, 3, 24
    .4byte 0x408200EC # bne .L_801DDA64
    lwz 0, 0x248(30)
    cmpwi 0, 0x11
    .4byte 0x4082000C # bne .L_801DD990
    li 29, 0x1
    .4byte 0x480000D8 # b .L_801DDA64
L_801DD990:
    mr 3, 28
    bl fn_8023E724
    lfs 3, 0x4(3)
    .4byte 0xC042C428 # lfs f2, lbl_8053F3C8@sda21(r0)
    lfs 1, 0x10(30)
    lfs 0, 0x64(30)
    fadds 2, 2, 3
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    cror eq, gt, eq
    .4byte 0x408200AC # bne .L_801DDA64
    lwz 0, 0x248(30)
    cmpwi 0, 0xc
    .4byte 0x41820020 # beq .L_801DD9E4
    .4byte 0x40800010 # bge .L_801DD9D8
    cmpwi 0, 0xb
    .4byte 0x4080001C # bge .L_801DD9EC
    .4byte 0x48000090 # b .L_801DDA64
L_801DD9D8:
    cmpwi 0, 0xf
    .4byte 0x40800088 # bge .L_801DDA64
    .4byte 0x4800000C # b .L_801DD9EC
L_801DD9E4:
    li 29, 0x1
    .4byte 0x4800007C # b .L_801DDA64
L_801DD9EC:
    mr 3, 28
    bl fn_8023E724
    lfs 3, 0x4(3)
    .4byte 0xC042C428 # lfs f2, lbl_8053F3C8@sda21(r0)
    lfs 1, 0x10(30)
    lfs 0, 0x6c(30)
    fsubs 2, 3, 2
    fadds 0, 1, 0
    fcmpo cr0, 2, 0
    .4byte 0x4081000C # ble .L_801DDA1C
    li 29, 0x1
    .4byte 0x4800004C # b .L_801DDA64
L_801DDA1C:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820024 # beq .L_801DDA48
    mr 3, 28
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(30)
    fcmpo cr0, 0, 1
    .4byte 0x40800028 # bge .L_801DDA64
    li 29, 0x1
    .4byte 0x48000020 # b .L_801DDA64
L_801DDA48:
    mr 3, 28
    bl fn_8023E724
    lfs 1, 0x0(3)
    lfs 0, 0xc(30)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_801DDA64
    li 29, 0x1
L_801DDA64:
    clrlwi. 0, 29, 24
    .4byte 0x41820038 # beq .L_801DDAA0
    mr 3, 28
    bl fn_8023E724
    lwz 7, 0x8(1)
    mr 5, 3
    mr 3, 30
    mr 8, 28
    li 4, 0x0
    li 6, 0x0
    bl fn_801F37AC
    clrlwi. 0, 3, 24
    .4byte 0x41820068 # beq .L_801DDAFC
    li 31, 0x1
    .4byte 0x48000060 # b .L_801DDAFC
L_801DDAA0:
    mr 3, 28
    addi 4, 30, 0xc
    bl fn_80237948
    lwz 0, 0x8(1)
    cmpwi 0, 0x1
    .4byte 0x40820048 # bne .L_801DDAFC
    mr 4, 28
    addi 3, 30, 0x1dc
    bl fn_801EAC20
    clrlwi. 0, 3, 24
    .4byte 0x41820034 # beq .L_801DDAFC
    lfs 2, 0xc(1)
    addi 4, 1, 0x14
    lfs 1, 0x10(1)
    li 5, 0x0
    .4byte 0xC002C3EC # lfs f0, lbl_8053F38C@sda21(r0)
    li 6, 0x0
    stfs 2, 0x14(1)
    stfs 1, 0x18(1)
    stfs 0, 0x1c(1)
    lwz 3, 0x4(30)
    bl fn_801CB538
    li 27, 0x1
L_801DDAFC:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FE2C # blt .L_801DD930
    clrlwi. 0, 27, 24
    .4byte 0x41820018 # beq .L_801DDB24
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
L_801DDB24:
    clrlwi. 0, 31, 24
    .4byte 0x41820084 # beq .L_801DDBAC
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0xf8(30)
    mr 3, 30
    .4byte 0xC002C3EC # lfs f0, lbl_8053F38C@sda21(r0)
    addi 4, 4, 0x5
    li 5, 0x0
    stfs 0, 0x44(30)
    stfs 0, 0x14(30)
    bl fn_801F0E34
    mr 3, 30
    bl fn_801E62D4
    lwz 0, 0x248(30)
    cmpwi 0, 0x11
    .4byte 0x41820048 # beq .L_801DDBAC
    lbz 3, 0x33f(30)
    .4byte 0x8802C228 # lbz r0, lbl_8053F1C8@sda21(r0)
    addi 3, 3, 0x1
    stb 3, 0x33f(30)
    lbz 3, 0x33f(30)
    cmplw 3, 0
    .4byte 0x4180002C # blt .L_801DDBAC
    lfs 0, 0x3c(30)
    mr 3, 30
    .4byte 0xC022C424 # lfs f1, lbl_8053F3C4@sda21(r0)
    li 4, 0xf
    fmuls 0, 0, 1
    stfs 0, 0x3c(30)
    lfs 0, 0x40(30)
    fmuls 0, 0, 1
    stfs 0, 0x40(30)
    bl fn_801D9C58
L_801DDBAC:
    mr 3, 31
    psq_l 31, 0x78(1), 0, 0
    lfd 31, 0x70(1)
    psq_l 30, 0x68(1), 0, 0
    lfd 30, 0x60(1)
    psq_l 29, 0x58(1), 0, 0
    lfd 29, 0x50(1)
    psq_l 28, 0x48(1), 0, 0
    lfd 28, 0x40(1)
    lmw 27, 0x2c(1)
    lwz 0, 0x84(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

