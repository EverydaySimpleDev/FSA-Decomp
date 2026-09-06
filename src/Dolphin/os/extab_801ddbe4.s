.section extab, "a"
.balign 4
.global etb_800088E8
etb_800088E8:
    .4byte 0x210A0000
    .4byte 0x00000000
.size etb_800088E8, 8

.section extabindex, "a"
.balign 4
.global eti_80015D90
eti_80015D90:
    .4byte fn_801DDBE4
    .4byte 0x00000434
    .4byte etb_800088E8
.size eti_80015D90, 12

# fn_801DDBE4(this) - another large (1076-byte) per-frame method of the
# SAME fn_801D8400-family class (again calls the confirmed keystone
# fn_801D9C58(this, 5/0x13) - see fn_801DD410's banner for the class
# identification evidence), found in this same later, non-contiguous TU.
#
# Unlike fn_801DD410 (which searches the 4 PLAYER slots), this method finds
# a target via SpatialRegistry_GetBase()+fn_801F82CC(registry, this, this->0x195, const)
# (a NEW registry-lookup variant, signature not fully confirmed) and
# fn_801F666C, then reads the resolved target's own stored 4-char type code
# (target->0x1a0) and compares it against 2 SPECIFIC literal codes (not
# named here - avoiding a repeat of this project's past mislabeling
# mistakes on 4-char codes without table confirmation). Depending on which
# code matches (or neither, which skips this section), and gated by the
# object's own state/velocity checks (same bbox-remap shape as
# fn_801DD410), it either:
#   - runs an "attack" sequence via fn_801EAC54(this+0x1dc, target->0x198)
#     + fn_801F0E34 notify + fn_801CB538(this->0x4, target+0xc), or
#   - runs a DOUBLE fn_801CB538 call followed by fn_8013CC50 (spawn an
#     attached effect) for the other matched code.
# Also does a relative-position/velocity integration against the target
# (paired-single `ps_sub` against target->0x3c/0x44) feeding into the
# CONFIRMED fn_801F37AC boolean gate (same shape as fn_801DC3C4/
# fn_801DD410), and commits this class's own state via fn_801D9C58 once a
# per-frame cooldown counter (this->0x33f) expires (identical shape to
# fn_801DD410). Sets this->0x164(byte)=1 and this->0x108 as bookkeeping.
#
# New, not-yet-explored callees: fn_801F82CC, fn_801EAC54.
.text
.balign 4
.global fn_801DDBE4

fn_801DDBE4:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stfd 31, 0x60(1)
    psq_st 31, 0x68(1), 0, 0
    stfd 30, 0x50(1)
    psq_st 30, 0x58(1), 0, 0
    stfd 29, 0x40(1)
    psq_st 29, 0x48(1), 0, 0
    stfd 28, 0x30(1)
    psq_st 28, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    stw 29, 0x24(1)
    stw 28, 0x20(1)
    mr 29, 3
    li 30, 0x0
    lwz 0, 0x248(3)
    li 3, 0x0
    cmpwi 0, 0x5
    .4byte 0x41820020 # beq .L_801DDC54
    .4byte 0x40800010 # bge .L_801DDC48
    cmpwi 0, 0x4
    .4byte 0x40800010 # bge .L_801DDC50
    .4byte 0x48000010 # b .L_801DDC54
L_801DDC48:
    cmpwi 0, 0x8
    .4byte 0x40800008 # bge .L_801DDC54
L_801DDC50:
    li 3, 0x1
L_801DDC54:
    clrlwi. 0, 3, 24
    .4byte 0x41820078 # beq .L_801DDCD0
    lfs 31, 0x60(29)
    lfs 30, 0x64(29)
    lfs 29, 0x68(29)
    lfs 28, 0x6c(29)
    .4byte 0xC022C404 # lfs f1, lbl_8053F3A4@sda21(r0)
    .4byte 0xC002C408 # lfs f0, lbl_8053F3A8@sda21(r0)
    stfs 1, 0x60(29)
    .4byte 0xC022C40C # lfs f1, lbl_8053F3AC@sda21(r0)
    stfs 0, 0x64(29)
    .4byte 0xC002C410 # lfs f0, lbl_8053F3B0@sda21(r0)
    stfs 1, 0x68(29)
    stfs 0, 0x6c(29)
    bl SpatialRegistry_GetBase
    lbz 5, 0x195(29)
    mr 4, 29
    .4byte 0xC022C42C # lfs f1, lbl_8053F3CC@sda21(r0)
    bl fn_801F82CC
    cmpwi 3, 0x0
    .4byte 0x4180001C # blt .L_801DDCC0
    lwz 0, 0x198(29)
    cmpw 3, 0
    .4byte 0x41820010 # beq .L_801DDCC0
    mr 3, 29
    li 4, 0x5
    bl fn_801D9C58
L_801DDCC0:
    stfs 31, 0x60(29)
    stfs 30, 0x64(29)
    stfs 29, 0x68(29)
    stfs 28, 0x6c(29)
L_801DDCD0:
    lfs 1, 0x68(29)
    lfs 0, 0x60(29)
    .4byte 0xC042C3EC # lfs f2, lbl_8053F38C@sda21(r0)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408102F0 # ble .L_801DDFD4
    lfs 1, 0x6c(29)
    lfs 0, 0x64(29)
    fsubs 0, 1, 0
    fcmpo cr0, 0, 2
    .4byte 0x408102DC # ble .L_801DDFD4
    bl SpatialRegistry_GetBase
    lbz 5, 0x195(29)
    mr 4, 29
    .4byte 0xC022C42C # lfs f1, lbl_8053F3CC@sda21(r0)
    bl fn_801F82CC
    mr. 31, 3
    .4byte 0x418002C0 # blt .L_801DDFD4
    lwz 0, 0x198(29)
    cmpw 31, 0
    .4byte 0x418202B4 # beq .L_801DDFD4
    bl SpatialRegistry_GetBase
    mr 4, 31
    bl fn_801F666C
    mr 31, 3
    lis 3, 0x5357
    lwz 4, 0x1a0(31)
    addi 0, 3, 0x424d
    cmpw 4, 0
    .4byte 0x41820020 # beq .L_801DDD64
    .4byte 0x40800014 # bge .L_801DDD5C
    lis 3, 0x4649
    addi 0, 3, 0x5245
    cmpw 4, 0
    .4byte 0x4182000C # beq .L_801DDD64
L_801DDD5C:
    li 3, 0x0
    .4byte 0x480000A4 # b .L_801DDE04
L_801DDD64:
    lwz 0, 0x248(29)
    cmpwi 0, 0x11
    .4byte 0x4082000C # bne .L_801DDD78
    li 3, 0x1
    .4byte 0x48000090 # b .L_801DDE04
L_801DDD78:
    lfs 1, 0x40(31)
    li 3, 0x0
    .4byte 0xC002C3EC # lfs f0, lbl_8053F38C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4181007C # bgt .L_801DDE04
    cmpwi 0, 0xc
    .4byte 0x41820020 # beq .L_801DDDB0
    .4byte 0x40800010 # bge .L_801DDDA4
    cmpwi 0, 0xb
    .4byte 0x4080001C # bge .L_801DDDB8
    .4byte 0x48000064 # b .L_801DDE04
L_801DDDA4:
    cmpwi 0, 0xf
    .4byte 0x4080005C # bge .L_801DDE04
    .4byte 0x4800000C # b .L_801DDDB8
L_801DDDB0:
    li 3, 0x1
    .4byte 0x48000050 # b .L_801DDE04
L_801DDDB8:
    .4byte 0xC002C3EC # lfs f0, lbl_8053F38C@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x4080000C # bge .L_801DDDCC
    li 3, 0x1
    .4byte 0x4800003C # b .L_801DDE04
L_801DDDCC:
    lwz 0, 0x230(29)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x4182001C # beq .L_801DDDF0
    lfs 1, 0x3c(31)
    .4byte 0xC802C430 # lfd f0, lbl_8053F3D0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40800020 # bge .L_801DDE04
    li 3, 0x1
    .4byte 0x48000018 # b .L_801DDE04
L_801DDDF0:
    lfs 1, 0x3c(31)
    .4byte 0xC802C430 # lfd f0, lbl_8053F3D0@sda21(r0)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_801DDE04
    li 3, 0x1
L_801DDE04:
    clrlwi. 0, 3, 24
    .4byte 0x41820078 # beq .L_801DDE80
    lwz 28, 0x108(29)
    addi 5, 1, 0x8
    psq_l 1, 0xc(29), 0, 0
    mr 3, 29
    lfs 0, 0x14(29)
    li 6, 0x0
    stfs 0, 0x10(1)
    psq_st 1, 0x0(5), 0, 0
    psq_l 2, 0x8(5), 1, 0
    psq_l 0, 0x3c(31), 0, 0
    ps_sub 0, 1, 0
    psq_st 0, 0x0(5), 0, 0
    psq_l 0, 0x44(31), 1, 0
    ps_sub 0, 2, 0
    psq_st 0, 0x8(5), 1, 0
    lwz 4, 0x118(31)
    lwz 7, 0x168(31)
    lwz 8, 0x110(31)
    bl fn_801F37AC
    clrlwi. 0, 3, 24
    .4byte 0x41820024 # beq .L_801DDE80
    lwz 0, 0x108(29)
    cmpw 28, 0
    .4byte 0x41820018 # beq .L_801DDE80
    lwz 0, 0x248(29)
    li 30, 0x1
    cmpwi 0, 0x11
    .4byte 0x41820008 # beq .L_801DDE80
    stw 28, 0x108(29)
L_801DDE80:
    clrlwi. 0, 30, 24
    .4byte 0x418200A0 # beq .L_801DDF24
    li 0, 0x0
    lis 4, 0x4
    stw 0, 0xf8(29)
    mr 3, 29
    .4byte 0xC002C3EC # lfs f0, lbl_8053F38C@sda21(r0)
    addi 4, 4, 0x5
    li 5, 0x0
    stfs 0, 0x44(29)
    stfs 0, 0x14(29)
    bl fn_801F0E34
    mr 3, 29
    bl fn_801E62D4
    lwz 0, 0x248(29)
    cmpwi 0, 0x11
    .4byte 0x41820048 # beq .L_801DDF08
    lbz 3, 0x33f(29)
    .4byte 0x8802C228 # lbz r0, lbl_8053F1C8@sda21(r0)
    addi 3, 3, 0x1
    stb 3, 0x33f(29)
    lbz 3, 0x33f(29)
    cmplw 3, 0
    .4byte 0x4180002C # blt .L_801DDF08
    lfs 0, 0x3c(29)
    mr 3, 29
    .4byte 0xC022C424 # lfs f1, lbl_8053F3C4@sda21(r0)
    li 4, 0xf
    fmuls 0, 0, 1
    stfs 0, 0x3c(29)
    lfs 0, 0x40(29)
    fmuls 0, 0, 1
    stfs 0, 0x40(29)
    bl fn_801D9C58
L_801DDF08:
    lwz 0, 0x108(29)
    cmpwi 0, 0x0
    .4byte 0x418100BC # bgt .L_801DDFCC
    mr 3, 29
    li 4, 0x13
    bl fn_801D9C58
    .4byte 0x480000AC # b .L_801DDFCC
L_801DDF24:
    lwz 4, 0x198(31)
    addi 3, 29, 0x1dc
    bl fn_801EAC54
    clrlwi. 0, 3, 24
    .4byte 0x41820098 # beq .L_801DDFCC
    lis 4, 0x4
    mr 3, 29
    addi 4, 4, 0xd1
    li 5, 0x0
    bl fn_801F0E34
    lis 3, 0x5357
    lwz 4, 0x1a0(31)
    addi 0, 3, 0x424d
    cmpw 4, 0
    .4byte 0x4182001C # beq .L_801DDF78
    .4byte 0x4080006C # bge .L_801DDFCC
    lis 3, 0x4649
    addi 0, 3, 0x5245
    cmpw 4, 0
    .4byte 0x41820020 # beq .L_801DDF90
    .4byte 0x48000058 # b .L_801DDFCC
L_801DDF78:
    lwz 3, 0x4(29)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    bl fn_801CB538
    .4byte 0x48000040 # b .L_801DDFCC
L_801DDF90:
    lwz 3, 0x4(29)
    addi 4, 31, 0xc
    li 5, 0x0
    li 6, 0x0
    bl fn_801CB538
    lwz 3, 0x4(29)
    addi 4, 31, 0xc
    .4byte 0xC022C3E8 # lfs f1, lbl_8053F388@sda21(r0)
    li 5, 0x19d
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
L_801DDFCC:
    li 0, 0x1
    stb 0, 0x164(31)
L_801DDFD4:
    mr 3, 30
    psq_l 31, 0x68(1), 0, 0
    lfd 31, 0x60(1)
    psq_l 30, 0x58(1), 0, 0
    lfd 30, 0x50(1)
    psq_l 29, 0x48(1), 0, 0
    lfd 29, 0x40(1)
    psq_l 28, 0x38(1), 0, 0
    lfd 28, 0x30(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    lwz 0, 0x74(1)
    lwz 28, 0x20(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

