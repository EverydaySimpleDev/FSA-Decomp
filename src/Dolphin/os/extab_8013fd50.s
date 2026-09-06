.section extab, "a"
.balign 4
.global etb_80006C34
etb_80006C34:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_80006C34, 8

.section extabindex, "a"
.balign 4
.global eti_800135DC
eti_800135DC:
    .4byte fn_8013FD50
    .4byte 0x00000BD0
    .4byte etb_80006C34
.size eti_800135DC, 12

# fn_8013FD50(this) - OKTA (Octorok)'s real update(). Large (756
# instructions) - read extensively and genuinely understood at the
# architectural level; the deeper per-state branches of the main
# dispatch (`this->0x230`, states 0-3) are survey-level, consistent with
# this project's practice for its largest functions.
#
# 1. **Ambient-light sample**: for type 1, calls the CONFIRMED
#    `fn_8030C210(lbl_8053AB10->0x24, &this->0xc)` (same as WIZR's update,
#    [[project_fsa_stal_wizr_full_depth]]) plus a position-jitter via the
#    CONFIRMED `fn_801F71A4`.
# 2. **"Pop up / dive" scale animation** (type 1 only, gated on a
#    countdown `this->0x108` toward 48/0x30): computes a smooth
#    scale-factor curve (`this->0x260/264/268/26c`) via a division-based
#    ease function - reads as Octorok's classic "surface from hiding,
#    then submerge" water-diving behavior, distinct from the default
#    (always-visible/land) type.
# 3. **Frozen/think gates**: the SAME `fn_801F3D94` (shared knockback-
#    physics/stun check) and `fn_801F305C` ("should I think this frame?")
#    early-outs seen in STAL/WIZR's updates, each with a type-1-specific
#    variant that keeps the dive animation progressing even while
#    stunned/idle.
# 4. **Timer decrements**: 6 countdown fields (`this->0x234-0x248`)
#    decremented with a floor of 0, matching the standard pattern.
# 5. **Random-direction-change AI** (main state 1, PRNG-gated): steps the
#    CONFIRMED global PRNG and, based on the roll, picks one of 2 NEW
#    velocity/direction values (`this->0x27c/280/284` + `this->0x98`) -
#    the classic Octorok "periodically changes movement direction"
#    wander behavior, structurally similar to STAL's own random-walk AI
#    ([[project_fsa_stal_wizr_full_depth]]) but simpler (2-way choice
#    here vs. STAL's 4-way table lookup).
.text
.balign 4
.global fn_8013FD50

fn_8013FD50:
    stwu 1, -0x80(1)
    mflr 0
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    stw 0, 0x84(1)
    li 0, 0x0
    stw 31, 0x7c(1)
    mr 31, 3
    addi 4, 31, 0xc
    li 3, -0x1
    stw 30, 0x78(1)
    psq_l 2, 0x0(4), 0, 0
    lfs 1, 0x14(31)
    psq_st 2, 0x44(1), 0, 0
    stw 3, 0x28(1)
    stfs 0, 0x24(1)
    sth 0, 0x8(1)
    lwz 0, 0x90(31)
    stfs 1, 0x4c(1)
    cmplwi 0, 0x2
    .4byte 0x40820010 # bne .L_8013FDAC
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    lwz 3, 0x24(3)
    bl fn_8030C210
L_8013FDAC:
    lfs 1, 0x264(31)
    addi 3, 31, 0x260
    .4byte 0xC0429E90 # lfs f2, lbl_8053CE30@sda21(r0)
    lfs 3, 0x26c(31)
    bl fn_801F71A4
    lwz 3, 0x90(31)
    li 4, 0x1
    cmplwi 3, 0x1
    .4byte 0x40820014 # bne .L_8013FDE0
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x40810008 # ble .L_8013FDE0
    li 4, 0x0
L_8013FDE0:
    cmplwi 3, 0x1
    .4byte 0x408200F8 # bne .L_8013FEDC
    lwz 3, 0x108(31)
    lis 0, 0x4330
    stw 0, 0x50(1)
    subfic 3, 3, 0x30
    .4byte 0xC8A29ED8 # lfd f5, lbl_8053CE78@sda21(r0)
    xoris 3, 3, 0x8000
    .4byte 0xC0429E98 # lfs f2, lbl_8053CE38@sda21(r0)
    stw 3, 0x54(1)
    .4byte 0xC0C29E94 # lfs f6, lbl_8053CE34@sda21(r0)
    lfd 0, 0x50(1)
    stw 0, 0x58(1)
    fsubs 4, 0, 5
    .4byte 0xC0229EA0 # lfs f1, lbl_8053CE40@sda21(r0)
    .4byte 0xC0629E9C # lfs f3, lbl_8053CE3C@sda21(r0)
    .4byte 0xC0029E8C # lfs f0, lbl_8053CE2C@sda21(r0)
    fdivs 2, 4, 2
    fadds 2, 6, 2
    stfs 2, 0x268(31)
    lwz 0, 0x108(31)
    subfic 0, 0, 0x30
    xoris 0, 0, 0x8000
    stw 0, 0x5c(1)
    lfd 2, 0x58(1)
    fsubs 2, 2, 5
    fdivs 1, 2, 1
    fadds 2, 3, 1
    fneg 1, 2
    stfs 1, 0x60(31)
    stfs 1, 0x64(31)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    lfs 1, 0x268(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810008 # ble .L_8013FE74
    stfs 0, 0x268(31)
L_8013FE74:
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x41820060 # beq .L_8013FEDC
    lfs 0, 0x268(31)
    stfs 0, 0x264(31)
    lwz 0, 0xd8(31)
    cmpwi 0, 0x0
    .4byte 0x40820044 # bne .L_8013FED4
    lwz 0, 0x248(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_8013FEC8
    li 0, 0x4
    stw 0, 0x248(31)
    lwz 3, 0x108(31)
    addi 0, 3, 0x1
    stw 0, 0x108(31)
    lwz 0, 0x108(31)
    cmpwi 0, 0x30
    .4byte 0x4081000C # ble .L_8013FEC8
    li 0, 0x30
    stw 0, 0x108(31)
L_8013FEC8:
    .4byte 0xC0029EA4 # lfs f0, lbl_8053CE44@sda21(r0)
    stfs 0, 0x26c(31)
    .4byte 0x4800000C # b .L_8013FEDC
L_8013FED4:
    .4byte 0xC0029EA8 # lfs f0, lbl_8053CE48@sda21(r0)
    stfs 0, 0x26c(31)
L_8013FEDC:
    mr 3, 31
    clrlwi 4, 4, 24
    bl fn_801F3D94
    cmpwi 3, 0x0
    .4byte 0x4182004C # beq .L_8013FF38
    lwz 0, 0x90(31)
    cmplwi 0, 0x1
    .4byte 0x4082002C # bne .L_8013FF24
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x40810020 # ble .L_8013FF24
    li 0, 0x4
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    stw 0, 0x248(31)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    .4byte 0x48000018 # b .L_8013FF38
L_8013FF24:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x480009D4 # b .L_80140908
L_8013FF38:
    mr 3, 31
    bl fn_801F305C
    clrlwi. 0, 3, 24
    .4byte 0x4182005C # beq .L_8013FFA0
    lwz 0, 0x90(31)
    cmplwi 0, 0x1
    .4byte 0x4082003C # bne .L_8013FF8C
    lwz 0, 0x108(31)
    cmpwi 0, 0x0
    .4byte 0x40810030 # ble .L_8013FF8C
    li 0, 0x4
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    stw 0, 0x248(31)
    .4byte 0xC0229EAC # lfs f1, lbl_8053CE4C@sda21(r0)
    stfs 0, 0x44(31)
    stfs 0, 0x40(31)
    stfs 0, 0x3c(31)
    lfs 0, 0x268(31)
    fmuls 0, 1, 0
    stfs 0, 0x260(31)
    .4byte 0x48000018 # b .L_8013FFA0
L_8013FF8C:
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    .4byte 0x4800096C # b .L_80140908
L_8013FFA0:
    lwz 3, 0x234(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8013FFB4
    subi 0, 3, 0x1
    stw 0, 0x234(31)
L_8013FFB4:
    lwz 3, 0x238(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8013FFC8
    subi 0, 3, 0x1
    stw 0, 0x238(31)
L_8013FFC8:
    lwz 3, 0x23c(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8013FFDC
    subi 0, 3, 0x1
    stw 0, 0x23c(31)
L_8013FFDC:
    lwz 3, 0x240(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_8013FFF0
    subi 0, 3, 0x1
    stw 0, 0x240(31)
L_8013FFF0:
    lwz 3, 0x244(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80140004
    subi 0, 3, 0x1
    stw 0, 0x244(31)
L_80140004:
    lwz 3, 0x248(31)
    cmpwi 3, 0x0
    .4byte 0x4081000C # ble .L_80140018
    subi 0, 3, 0x1
    stw 0, 0x248(31)
L_80140018:
    lfs 1, 0x27c(31)
    addi 3, 31, 0x3c
    .4byte 0xC0429EB0 # lfs f2, lbl_8053CE50@sda21(r0)
    .4byte 0xC0629E8C # lfs f3, lbl_8053CE2C@sda21(r0)
    bl fn_801F71A4
    lfs 1, 0x280(31)
    addi 3, 31, 0x40
    .4byte 0xC0429EB0 # lfs f2, lbl_8053CE50@sda21(r0)
    .4byte 0xC0629E8C # lfs f3, lbl_8053CE2C@sda21(r0)
    bl fn_801F71A4
    psq_l 1, 0xc(31), 0, 0
    mr 3, 31
    psq_l 0, 0x3c(31), 0, 0
    li 4, -0x64
    li 5, -0x1
    li 6, 0x1
    ps_add 0, 1, 0
    psq_st 0, 0xc(31), 0, 0
    psq_l 1, 0x14(31), 1, 0
    psq_l 0, 0x44(31), 1, 0
    ps_add 0, 1, 0
    psq_st 0, 0x14(31), 1, 0
    bl fn_801F2B7C
    mr 3, 31
    li 4, 0x0
    li 5, 0x0
    bl fn_801F2618
    lwz 0, 0x230(31)
    cmpwi 0, 0x1
    .4byte 0x41820408 # beq .L_80140494
    .4byte 0x40800010 # bge .L_801400A0
    cmpwi 0, 0x0
    .4byte 0x40800014 # bge .L_801400AC
    .4byte 0x4800086C # b .L_80140908
L_801400A0:
    cmpwi 0, 0x3
    .4byte 0x40800864 # bge .L_80140908
    .4byte 0x48000448 # b .L_801404F0
L_801400AC:
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_801400C0
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x40820194 # bne .L_80140250
L_801400C0:
    .4byte 0xC0629E88 # lfs f3, lbl_8053CE28@sda21(r0)
    stfs 3, 0x3c(31)
    stfs 3, 0x40(31)
    stfs 3, 0x44(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x41820114 # beq .L_801401EC
    lwz 0, 0x98(31)
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x40820088 # bne .L_8014016C
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0229E8C # lfs f1, lbl_8053CE2C@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0029EA8 # lfs f0, lbl_8053CE48@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x20(1)
    lfs 2, 0x20(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800020 # bge .L_8014014C
    lfs 0, 0x25c(31)
    li 0, 0x2
    stfs 3, 0x27c(31)
    stfs 0, 0x280(31)
    stfs 3, 0x284(31)
    stw 0, 0x98(31)
    .4byte 0x480000A4 # b .L_801401EC
L_8014014C:
    lfs 0, 0x25c(31)
    li 0, 0x3
    fneg 0, 0
    stfs 3, 0x27c(31)
    stfs 0, 0x280(31)
    stfs 3, 0x284(31)
    stw 0, 0x98(31)
    .4byte 0x48000084 # b .L_801401EC
L_8014016C:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0229E8C # lfs f1, lbl_8053CE2C@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0029EA8 # lfs f0, lbl_8053CE48@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x1c(1)
    lfs 2, 0x1c(1)
    fsubs 1, 2, 1
    fcmpo cr0, 1, 0
    .4byte 0x40800020 # bge .L_801401D0
    lfs 0, 0x25c(31)
    li 0, 0x0
    stfs 0, 0x27c(31)
    stfs 3, 0x280(31)
    stfs 3, 0x284(31)
    stw 0, 0x98(31)
    .4byte 0x48000020 # b .L_801401EC
L_801401D0:
    lfs 0, 0x25c(31)
    li 0, 0x1
    fneg 0, 0
    stfs 0, 0x27c(31)
    stfs 3, 0x280(31)
    stfs 3, 0x284(31)
    stw 0, 0x98(31)
L_801401EC:
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x4082005C # bne .L_80140250
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0029E8C # lfs f0, lbl_8053CE2C@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0429EB4 # lfs f2, lbl_8053CE54@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x18(1)
    lfs 1, 0x18(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 3, 0x5c(1)
    addi 0, 3, 0x32
    stw 0, 0x234(31)
L_80140250:
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80140264
    cmplwi 0, 0x3
    .4byte 0x40820040 # bne .L_801402A0
L_80140264:
    lwz 4, 0x198(31)
    mr 3, 31
    addi 6, 1, 0x28
    li 5, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 3, 0x28(1)
    lwz 0, 0x98(31)
    cmpw 3, 0
    .4byte 0x4082000C # bne .L_801402A0
    li 0, 0x0
    stw 0, 0x238(31)
L_801402A0:
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x408200E8 # bne .L_80140390
    lwz 4, 0x198(31)
    mr 3, 31
    addi 5, 1, 0x8
    addi 6, 1, 0x28
    addi 7, 1, 0x24
    li 8, 0x0
    li 9, 0x0
    li 10, 0x0
    bl fn_801EEC98
    lwz 0, 0x28(1)
    cmpwi 0, -0x1
    .4byte 0x4182008C # beq .L_80140364
    stw 0, 0x98(31)
    .4byte 0xC0029EB8 # lfs f0, lbl_8053CE58@sda21(r0)
    lfs 1, 0x24(1)
    fcmpo cr0, 1, 0
    .4byte 0x40800068 # bge .L_80140354
    lhz 4, 0x8(1)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0229EBC # lfs f1, lbl_8053CE5C@sda21(r0)
    addis 4, 4, 0x1
    addi 0, 4, -0x8000
    sth 0, 0x8(1)
    clrlwi 4, 0, 16
    lwz 0, 0x274(31)
    clrlwi 0, 0, 28
    mulli 0, 0, 0x444
    subfic 0, 0, 0x2000
    add 4, 4, 0
    rlwinm 0, 4, 30, 18, 28
    sth 4, 0x8(1)
    lfsx 0, 3, 0
    fmuls 0, 1, 0
    stfs 0, 0x27c(31)
    lhz 0, 0x8(1)
    rlwinm 0, 0, 30, 18, 28
    add 3, 3, 0
    lfs 0, 0x4(3)
    fmuls 0, 1, 0
    stfs 0, 0x280(31)
    .4byte 0x48000014 # b .L_80140364
L_80140354:
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    stfs 0, 0x284(31)
    stfs 0, 0x280(31)
    stfs 0, 0x27c(31)
L_80140364:
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0x270(31)
    lwz 4, 0x4(4)
    lwz 4, 0x34(4)
    divw 0, 4, 3
    mullw 0, 0, 3
    subf. 0, 0, 4
    .4byte 0x40820010 # bne .L_80140390
    li 0, 0x0
    stw 0, 0x238(31)
    stw 0, 0x23c(31)
L_80140390:
    lwz 0, 0x90(31)
    cmplwi 0, 0x3
    .4byte 0x41820570 # beq .L_80140908
    lwz 0, 0x238(31)
    cmpwi 0, 0x0
    .4byte 0x40820564 # bne .L_80140908
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x40820558 # bne .L_80140908
    li 3, 0x0
    stw 3, 0x24c(31)
    stw 3, 0x250(31)
    stw 3, 0x254(31)
    stw 3, 0x258(31)
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820038 # beq .L_80140408
    .4byte 0x40800014 # bge .L_801403E8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801403F4
    .4byte 0x40800020 # bge .L_80140400
    .4byte 0x48000038 # b .L_8014041C
L_801403E8:
    cmpwi 0, 0x4
    .4byte 0x40800030 # bge .L_8014041C
    .4byte 0x48000024 # b .L_80140414
L_801403F4:
    li 0, 0x2
    stw 0, 0x254(31)
    .4byte 0x48000020 # b .L_8014041C
L_80140400:
    stw 3, 0x254(31)
    .4byte 0x48000018 # b .L_8014041C
L_80140408:
    li 0, 0x1
    stw 0, 0x254(31)
    .4byte 0x4800000C # b .L_8014041C
L_80140414:
    li 0, 0x3
    stw 0, 0x254(31)
L_8014041C:
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    li 0, 0x8
    stfs 0, 0x27c(31)
    stfs 0, 0x280(31)
    stfs 0, 0x284(31)
    stw 0, 0x23c(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x40820014 # bne .L_80140450
    li 3, 0x3
    li 0, 0x14
    stw 3, 0x250(31)
    stw 0, 0x23c(31)
L_80140450:
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_80140464
    cmplwi 0, 0x1
    .4byte 0x40820028 # bne .L_80140488
L_80140464:
    .4byte 0xC0429EAC # lfs f2, lbl_8053CE4C@sda21(r0)
    li 0, 0x1
    lfs 1, 0x268(31)
    .4byte 0xC0029EB0 # lfs f0, lbl_8053CE50@sda21(r0)
    fmuls 1, 2, 1
    stfs 1, 0x264(31)
    stfs 0, 0x26c(31)
    stw 0, 0x230(31)
    .4byte 0x48000484 # b .L_80140908
L_80140488:
    li 0, 0x2
    stw 0, 0x230(31)
    .4byte 0x48000478 # b .L_80140908
L_80140494:
    lfs 2, 0x260(31)
    lfs 1, 0x264(31)
    .4byte 0xC0029EC0 # lfs f0, lbl_8053CE60@sda21(r0)
    fsubs 1, 2, 1
    fabs 1, 1
    frsp 1, 1
    fcmpo cr0, 1, 0
    .4byte 0x41810458 # bgt .L_80140908
    lwz 4, 0x250(31)
    li 3, 0x0
    li 0, 0x2
    addi 4, 4, 0x1
    stw 4, 0x250(31)
    lwz 4, 0x24c(31)
    addi 4, 4, 0x1
    stw 4, 0x24c(31)
    stw 3, 0x244(31)
    stw 3, 0x258(31)
    lfs 0, 0x268(31)
    stfs 0, 0x264(31)
    lfs 0, 0x268(31)
    stfs 0, 0x260(31)
    stw 0, 0x230(31)
L_801404F0:
    lwz 0, 0x244(31)
    cmpwi 0, 0x0
    .4byte 0x4082002C # bne .L_80140524
    li 0, 0x4
    stw 0, 0x244(31)
    lwz 3, 0x258(31)
    addi 0, 3, 0x1
    stw 0, 0x258(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x5
    .4byte 0x4081000C # ble .L_80140524
    li 0, 0x0
    stw 0, 0x258(31)
L_80140524:
    lwz 0, 0x23c(31)
    cmpwi 0, 0x0
    .4byte 0x408203DC # bne .L_80140908
    li 0, 0x8
    stw 0, 0x23c(31)
    lwz 0, 0x24c(31)
    cmpwi 0, 0x0
    .4byte 0x408201B0 # bne .L_801406F0
    lwz 3, 0x250(31)
    addi 0, 3, 0x1
    stw 0, 0x250(31)
    lwz 3, 0x24c(31)
    addi 0, 3, 0x1
    stw 0, 0x24c(31)
    lwz 0, 0x250(31)
    cmpwi 0, 0x4
    .4byte 0x408103A4 # ble .L_80140908
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820058 # beq .L_801405C8
    .4byte 0x40800014 # bge .L_80140588
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80140594
    .4byte 0x4080002C # bge .L_801405AC
    .4byte 0x48000074 # b .L_801405F8
L_80140588:
    cmpwi 0, 0x4
    .4byte 0x4080006C # bge .L_801405F8
    .4byte 0x48000050 # b .L_801405E0
L_80140594:
    lfs 1, 0x25c(31)
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    stfs 1, 0x27c(31)
    stfs 0, 0x280(31)
    stfs 0, 0x284(31)
    .4byte 0x48000050 # b .L_801405F8
L_801405AC:
    lfs 1, 0x25c(31)
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    fneg 1, 1
    stfs 1, 0x27c(31)
    stfs 0, 0x280(31)
    stfs 0, 0x284(31)
    .4byte 0x48000034 # b .L_801405F8
L_801405C8:
    lfs 1, 0x25c(31)
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    stfs 0, 0x27c(31)
    stfs 1, 0x280(31)
    stfs 0, 0x284(31)
    .4byte 0x4800001C # b .L_801405F8
L_801405E0:
    lfs 1, 0x25c(31)
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    fneg 1, 1
    stfs 0, 0x27c(31)
    stfs 1, 0x280(31)
    stfs 0, 0x284(31)
L_801405F8:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    lis 0, 0x4330
    .4byte 0xC0629E8C # lfs f3, lbl_8053CE2C@sda21(r0)
    lwz 5, 0xb4(6)
    addi 4, 3, 0x660d
    .4byte 0xC0829EB4 # lfs f4, lbl_8053CE54@sda21(r0)
    mullw 3, 5, 4
    stw 0, 0x60(1)
    .4byte 0xC8229ED8 # lfd f1, lbl_8053CE78@sda21(r0)
    .4byte 0xC8429EC8 # lfd f2, lbl_8053CE68@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(6)
    lwz 0, 0xb4(6)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x14(1)
    lfs 0, 0x14(1)
    fsubs 0, 0, 3
    fmuls 0, 4, 0
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 3, 0x5c(1)
    addi 0, 3, 0x32
    stw 0, 0x234(31)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    lwz 0, 0xb4(5)
    mullw 3, 0, 4
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x10(1)
    lfs 0, 0x10(1)
    fsubs 0, 0, 3
    fmuls 0, 4, 0
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 3, 0x54(1)
    addi 0, 3, 0x64
    stw 0, 0x238(31)
    lwz 0, 0x238(31)
    xoris 0, 0, 0x8000
    stw 0, 0x64(1)
    lfd 0, 0x60(1)
    fsub 0, 0, 1
    fmul 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x68(1)
    lwz 0, 0x6c(1)
    stw 0, 0x23c(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4082000C # bne .L_801406E4
    li 0, 0x2710
    stw 0, 0x238(31)
L_801406E4:
    li 0, 0x0
    stw 0, 0x230(31)
    .4byte 0x4800021C # b .L_80140908
L_801406F0:
    lwz 0, 0x90(31)
    cmplwi 0, 0x2
    .4byte 0x4182001C # beq .L_80140714
    lwz 0, 0x254(31)
    lis 3, lbl_8049F1F8@ha
    addi 3, 3, lbl_8049F1F8@l
    slwi 0, 0, 2
    lwzx 0, 3, 0
    stw 0, 0x98(31)
L_80140714:
    lwz 0, 0x98(31)
    cmpwi 0, 0x2
    .4byte 0x41820054 # beq .L_80140770
    .4byte 0x40800014 # bge .L_80140734
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_80140740
    .4byte 0x4080002C # bge .L_80140758
    .4byte 0x4800006C # b .L_8014079C
L_80140734:
    cmpwi 0, 0x4
    .4byte 0x40800064 # bge .L_8014079C
    .4byte 0x4800004C # b .L_80140788
L_80140740:
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    .4byte 0xC0229ED0 # lfs f1, lbl_8053CE70@sda21(r0)
    stfs 0, 0x3c(1)
    stfs 1, 0x38(1)
    stfs 0, 0x40(1)
    .4byte 0x48000048 # b .L_8014079C
L_80140758:
    .4byte 0xC0029E88 # lfs f0, lbl_8053CE28@sda21(r0)
    .4byte 0xC0229ED4 # lfs f1, lbl_8053CE74@sda21(r0)
    stfs 0, 0x3c(1)
    stfs 1, 0x38(1)
    stfs 0, 0x40(1)
    .4byte 0x48000030 # b .L_8014079C
L_80140770:
    .4byte 0xC0229E88 # lfs f1, lbl_8053CE28@sda21(r0)
    .4byte 0xC0029ED0 # lfs f0, lbl_8053CE70@sda21(r0)
    stfs 1, 0x38(1)
    stfs 0, 0x3c(1)
    stfs 1, 0x40(1)
    .4byte 0x48000018 # b .L_8014079C
L_80140788:
    .4byte 0xC0229E88 # lfs f1, lbl_8053CE28@sda21(r0)
    .4byte 0xC0029ED4 # lfs f0, lbl_8053CE74@sda21(r0)
    stfs 1, 0x38(1)
    stfs 0, 0x3c(1)
    stfs 1, 0x40(1)
L_8014079C:
    lwz 3, 0x254(31)
    addi 0, 3, 0x1
    stw 0, 0x254(31)
    lwz 0, 0x254(31)
    clrlwi 0, 0, 30
    stw 0, 0x254(31)
    lwz 0, 0x90(31)
    cmplwi 0, 0x0
    .4byte 0x4082000C # bne .L_801407C8
    li 0, 0x14
    stw 0, 0x23c(31)
L_801407C8:
    lfs 3, 0xc(31)
    lis 5, lbl_8049F1A0@ha
    lis 4, 0x4
    mr 3, 31
    stfs 3, 0x2c(1)
    addi 7, 5, lbl_8049F1A0@l
    addi 4, 4, 0xa
    li 5, 0x0
    lfs 2, 0x10(31)
    stfs 2, 0x30(1)
    lfs 0, 0x14(31)
    stfs 0, 0x34(1)
    lwz 0, 0x98(31)
    slwi 0, 0, 3
    add 6, 7, 0
    lfsx 1, 7, 0
    lfs 0, 0x4(6)
    fadds 1, 3, 1
    fadds 0, 2, 0
    stfs 1, 0x2c(1)
    stfs 0, 0x30(1)
    bl fn_801F0E34
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC0029E8C # lfs f0, lbl_8053CE2C@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0429EB4 # lfs f2, lbl_8053CE54@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 1, 0xc(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x68(1)
    lwz 0, 0x6c(1)
    cmpwi 0, 0x0
    .4byte 0x41820008 # beq .L_8014087C
    .4byte 0x4800002C # b .L_801408A4
L_8014087C:
    bl SpatialRegistry_GetBase
    lis 4, 0x5255
    lis 7, 0x2
    lwz 5, 0x4(31)
    addi 4, 4, 0x5059
    addi 6, 1, 0x2c
    addi 7, 7, 0x2
    bl fn_801F8544
    mr 30, 3
    .4byte 0x4800002C # b .L_801408CC
L_801408A4:
    bl SpatialRegistry_GetBase
    lis 4, 0x4f4b
    lwz 5, 0x4(31)
    addi 4, 4, 0x544d
    addi 6, 1, 0x2c
    li 7, 0x0
    li 8, -0x1
    li 9, -0x1
    bl fn_801F9484
    mr 30, 3
L_801408CC:
    cmpwi 30, 0x0
    .4byte 0x41800030 # blt .L_80140900
    bl SpatialRegistry_GetBase
    mr 4, 30
    bl fn_801F666C
    cmplwi 3, 0x0
    .4byte 0x4182001C # beq .L_80140900
    psq_l 1, 0x38(1), 0, 0
    lfs 0, 0x40(1)
    psq_st 1, 0x3c(3), 0, 0
    stfs 0, 0x44(3)
    lwz 0, 0x98(31)
    stw 0, 0x98(3)
L_80140900:
    li 0, 0x0
    stw 0, 0x24c(31)
L_80140908:
    lwz 0, 0x84(1)
    lwz 31, 0x7c(1)
    lwz 30, 0x78(1)
    mtlr 0
    addi 1, 1, 0x80
    blr

