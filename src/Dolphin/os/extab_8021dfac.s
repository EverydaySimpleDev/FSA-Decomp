/*
 * NEW ACTOR (vtable lbl_804A6708) - fn_8021DFAC(this, newState). The
 * shared state-ENTRY handler: an 11-way jumptable (jumptable_804A67D8)
 * doing per-state setup, always committing this->0x24c=0;
 * this->0x248=newState at the end - the exact analog of TINK's
 * fn_801E1594. Landed as Track A (byte-matched) + structural overview.
 *
 * Per-state setup includes: scanning the 4-player group (Player_GetCapabilityFlagByIndex/
 * fn_8023DE58) to play a "hit reaction" SFX (fn_8013CC50) or spawn a
 * damage-number/particle effect (fn_80230CFC + fn_80230498) on every
 * player in this actor's target group; a teleport/reposition transition
 * that resolves an anchor point (from the confirmed fn_8023E724 cue, or
 * a fallback offset) into this->0x2c0/0x2c4 and commits this->0xc/0x10/
 * 0x14, while also (re)starting the two looping SFX handles from
 * fn_8021DB24 (this->0x2d0/0x2d4) with per-variant pitch/pan bytes read
 * from a lookup table (lbl_8046A7AC, indexed by this->0x2ac*3); an
 * attack-style lookup for the current target via fn_8022F514/
 * fn_8022F3DC+fn_80230CFC or the confirmed fn_801D0020+fn_801CD354
 * quadrant/permutation pair; and a duration-threshold load from
 * lbl_8053FD50, indexed by this->0x2ac, into this->0x250.
 */
.section extab, "a"
.balign 4
.global etb_8000A4AC
etb_8000A4AC:
    .4byte 0x304A0000
    .4byte 0x00000000
.size etb_8000A4AC, 8

.section extabindex, "a"
.balign 4
.global eti_8001822C
eti_8001822C:
    .4byte fn_8021DFAC
    .4byte 0x0000054C
    .4byte etb_8000A4AC
.size eti_8001822C, 12

.text
.balign 4
.global fn_8021DFAC

fn_8021DFAC:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stfd 31, 0x50(1)
    psq_st 31, 0x58(1), 0, 0
    stmw 26, 0x38(1)
    mr 31, 4
    mr 30, 3
    cmplwi 31, 0xa
    .4byte 0x41810500 # bgt .L_8021E4D0
    lis 4, jumptable_804A67D8@ha
    slwi 0, 31, 2
    addi 4, 4, jumptable_804A67D8@l
    lwzx 0, 4, 0
    mtctr 0
    bctr
    bl fn_801F3604
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x418204D8 # beq .L_8021E4D0
    lis 3, lbl_8046A78C@ha
    li 29, 0x0
    addi 26, 3, lbl_8046A78C@l
L_8021E008:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x41820090 # beq .L_8021E0A4
    lwz 28, 0x4(30)
    mr 3, 29
    bl fn_8023DE58
    cmpw 3, 28
    .4byte 0x4082007C # bne .L_8021E0A4
    mr 3, 29
    bl fn_8023E724
    lfs 31, 0x4(3)
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 27, 26
    .4byte 0xC002CDB8 # lfs f0, lbl_8053FD58@sda21(r0)
    li 28, 0x0
    stfs 1, 0x10(1)
    stfs 31, 0x14(1)
    stfs 0, 0x18(1)
L_8021E05C:
    lhz 5, 0x0(27)
    addi 4, 1, 0x10
    lwz 3, 0x4(30)
    li 6, 0x0
    .4byte 0xC022CDBC # lfs f1, lbl_8053FD5C@sda21(r0)
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    addi 28, 28, 0x1
    addi 27, 27, 0x2
    cmpwi 28, 0x4
    .4byte 0x4180FFCC # blt .L_8021E05C
    lis 4, 0x2
    mr 3, 29
    addi 4, 4, 0x63
    bl fn_80230FD0
L_8021E0A4:
    addi 29, 29, 0x1
    addi 26, 26, 0x8
    cmpwi 29, 0x4
    .4byte 0x4180FF58 # blt .L_8021E008
    .4byte 0x4800041C # b .L_8021E4D0
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x41820410 # beq .L_8021E4D0
    li 29, 0x0
L_8021E0C8:
    mr 3, 29
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x4182006C # beq .L_8021E140
    lwz 28, 0x4(30)
    mr 3, 29
    bl fn_8023DE58
    cmpw 3, 28
    .4byte 0x40820058 # bne .L_8021E140
    mr 3, 29
    bl fn_8023E724
    lfs 31, 0x4(3)
    mr 3, 29
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 29
    .4byte 0xC002CDB8 # lfs f0, lbl_8053FD58@sda21(r0)
    stfs 1, 0x28(1)
    stfs 31, 0x2c(1)
    stfs 0, 0x30(1)
    bl fn_80230CFC
    mr 5, 3
    mr 3, 29
    addi 4, 1, 0x28
    li 6, 0xff
    addi 5, 5, 0x3c
    li 7, -0x80
    li 8, -0x80
    li 9, 0x1
    bl fn_80230498
L_8021E140:
    addi 29, 29, 0x1
    cmpwi 29, 0x4
    .4byte 0x4180FF80 # blt .L_8021E0C8
    .4byte 0x48000384 # b .L_8021E4D0
    lwz 3, 0x230(30)
    rlwinm. 0, 3, 0, 13, 13
    .4byte 0x40820020 # bne .L_8021E178
    rlwinm. 0, 3, 0, 18, 18
    .4byte 0x41820018 # beq .L_8021E178
    li 3, 0x0
    bl fn_80230534
    lwz 0, 0x230(30)
    oris 0, 0, 0x4
    stw 0, 0x230(30)
L_8021E178:
    mr 3, 30
    bl fn_801F3668
    .4byte 0x48000350 # b .L_8021E4D0
    bl fn_801F3604
    .4byte 0xC002CDBC # lfs f0, lbl_8053FD5C@sda21(r0)
    li 4, 0x0
    stfs 0, 0x2bc(30)
    lwz 3, 0x2b4(30)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8021E1B0
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 14, 15
    .4byte 0x41820008 # beq .L_8021E1B0
    li 4, 0x1
L_8021E1B0:
    clrlwi. 0, 4, 24
    .4byte 0x4182001C # beq .L_8021E1D0
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x2c8(30)
    lfs 0, 0x4(3)
    stfs 0, 0x2cc(30)
    .4byte 0x48000014 # b .L_8021E1E0
L_8021E1D0:
    lfs 0, 0x24(30)
    stfs 0, 0x2c8(30)
    lfs 0, 0x28(30)
    stfs 0, 0x2cc(30)
L_8021E1E0:
    lis 3, lbl_8052EBC0@ha
    lfs 2, 0x2c8(30)
    addi 3, 3, lbl_8052EBC0@l
    lfs 1, 0x2cc(30)
    lfs 4, 0x3000(3)
    li 10, 0x0
    lfs 3, 0x2bc(30)
    lfs 5, 0x3004(3)
    fmuls 4, 4, 3
    .4byte 0xC002CDB8 # lfs f0, lbl_8053FD58@sda21(r0)
    fmuls 5, 5, 3
    stfs 2, 0x8(1)
    fadds 3, 2, 4
    stfs 1, 0xc(1)
    fadds 2, 1, 5
    stfs 3, 0x2c0(30)
    stfs 2, 0x2c4(30)
    lfs 4, 0x2c4(30)
    lfs 1, 0x2c0(30)
    stfs 3, 0x8(1)
    stfs 1, 0xc(30)
    stfs 4, 0x10(30)
    stfs 0, 0x14(30)
    lwz 0, 0x248(30)
    stfs 2, 0xc(1)
    cmpwi 0, 0x9
    lwz 3, 0x4(30)
    .4byte 0x41820008 # beq .L_8021E254
    .4byte 0x48000008 # b .L_8021E258
L_8021E254:
    li 10, 0x1
L_8021E258:
    .4byte 0xC022CDBC # lfs f1, lbl_8053FD5C@sda21(r0)
    addi 4, 30, 0xc
    li 5, 0x32c
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    bl fn_8013CC50
    stw 3, 0x2d0(30)
    li 10, 0x0
    lwz 0, 0x248(30)
    lwz 3, 0x4(30)
    cmpwi 0, 0x9
    .4byte 0x41820008 # beq .L_8021E294
    .4byte 0x48000008 # b .L_8021E298
L_8021E294:
    li 10, 0x1
L_8021E298:
    .4byte 0xC022CDBC # lfs f1, lbl_8053FD5C@sda21(r0)
    addi 4, 30, 0xc
    li 5, 0x184
    li 6, 0x0
    li 7, -0x1
    li 8, 0x0
    li 9, 0x0
    bl fn_8013CC50
    stw 3, 0x2d4(30)
    lwz 5, 0x2d0(30)
    cmplwi 5, 0x0
    .4byte 0x41820030 # beq .L_8021E2F4
    lbz 0, 0x2ac(30)
    lis 3, lbl_8046A7AC@ha
    addi 3, 3, lbl_8046A7AC@l
    mulli 4, 0, 0x3
    lbzx 0, 3, 4
    add 4, 3, 4
    lbz 3, 0x1(4)
    stb 0, 0xbc(5)
    lbz 0, 0x2(4)
    stb 3, 0xbd(5)
    stb 0, 0xbe(5)
L_8021E2F4:
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x418201D4 # beq .L_8021E4D0
    lis 4, 0x4
    mr 3, 30
    addi 4, 4, 0x73
    li 5, 0x0
    bl fn_801F0E34
    .4byte 0x480001BC # b .L_8021E4D0
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 18, 18
    .4byte 0x418201B0 # beq .L_8021E4D0
    li 28, 0x0
L_8021E328:
    mr 3, 28
    bl Player_GetCapabilityFlagByIndex
    clrlwi. 0, 3, 24
    .4byte 0x418200C0 # beq .L_8021E3F4
    lwz 29, 0x4(30)
    mr 3, 28
    bl fn_8023DE58
    cmpw 3, 29
    .4byte 0x408200AC # bne .L_8021E3F4
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 17, 17
    .4byte 0x4182000C # beq .L_8021E360
    li 29, 0x3
    .4byte 0x48000044 # b .L_8021E3A0
L_8021E360:
    mr 3, 28
    bl fn_8022F514
    clrlwi. 0, 3, 24
    .4byte 0x41820018 # beq .L_8021E384
    mr 3, 28
    bl fn_8022F3DC
    bl fn_80230CFC
    mr 29, 3
    .4byte 0x48000020 # b .L_8021E3A0
L_8021E384:
    mr 3, 30
    mr 5, 28
    addi 4, 30, 0xc
    li 6, 0x0
    bl fn_801D0020
    bl fn_801CD354
    mr 29, 3
L_8021E3A0:
    mr 3, 28
    mr 4, 29
    bl fn_80230BF4
    mr 3, 28
    bl fn_8023E724
    lfs 31, 0x4(3)
    mr 3, 28
    bl fn_8023E724
    lfs 1, 0x0(3)
    mr 3, 28
    .4byte 0xC002CDB8 # lfs f0, lbl_8053FD58@sda21(r0)
    addi 4, 1, 0x1c
    stfs 1, 0x1c(1)
    addi 5, 29, 0x3c
    li 6, 0xff
    li 7, -0x80
    stfs 31, 0x20(1)
    li 8, -0x80
    li 9, 0x1
    stfs 0, 0x24(1)
    bl fn_80230498
L_8021E3F4:
    addi 28, 28, 0x1
    cmpwi 28, 0x4
    .4byte 0x4180FF2C # blt .L_8021E328
    .4byte 0x480000D0 # b .L_8021E4D0
    .4byte 0xC002CE00 # lfs f0, lbl_8053FDA0@sda21(r0)
    li 4, 0x0
    stfs 0, 0x2bc(30)
    lwz 3, 0x2b4(30)
    cmpwi 3, 0x0
    .4byte 0x41800014 # blt .L_8021E42C
    lwz 0, 0x230(30)
    rlwinm. 0, 0, 0, 14, 15
    .4byte 0x41820008 # beq .L_8021E42C
    li 4, 0x1
L_8021E42C:
    clrlwi. 0, 4, 24
    .4byte 0x4182001C # beq .L_8021E44C
    bl fn_8023E724
    lfs 0, 0x0(3)
    stfs 0, 0x2c8(30)
    lfs 0, 0x4(3)
    stfs 0, 0x2cc(30)
    .4byte 0x48000014 # b .L_8021E45C
L_8021E44C:
    lfs 0, 0x24(30)
    stfs 0, 0x2c8(30)
    lfs 0, 0x28(30)
    stfs 0, 0x2cc(30)
L_8021E45C:
    lfs 0, 0xc(30)
    stfs 0, 0x2c0(30)
    lfs 0, 0x10(30)
    stfs 0, 0x2c4(30)
    lwz 3, 0x230(30)
    rlwinm. 0, 3, 0, 13, 13
    .4byte 0x4082005C # bne .L_8021E4D0
    rlwinm. 0, 3, 0, 18, 18
    .4byte 0x41820054 # beq .L_8021E4D0
    li 3, 0x0
    bl fn_80230534
    lwz 0, 0x230(30)
    oris 0, 0, 0x4
    stw 0, 0x230(30)
    .4byte 0x4800003C # b .L_8021E4D0
    lbz 0, 0x2ac(30)
    .4byte 0x3862CDB0 # li r3, lbl_8053FD50@sda21
    lbzx 0, 3, 0
    stw 0, 0x250(30)
    lwz 3, 0x230(30)
    rlwinm. 0, 3, 0, 13, 13
    .4byte 0x40820020 # bne .L_8021E4D0
    rlwinm. 0, 3, 0, 18, 18
    .4byte 0x41820018 # beq .L_8021E4D0
    li 3, 0x0
    bl fn_80230534
    lwz 0, 0x230(30)
    oris 0, 0, 0x4
    stw 0, 0x230(30)
L_8021E4D0:
    li 0, 0x0
    stw 0, 0x24c(30)
    stw 31, 0x248(30)
    psq_l 31, 0x58(1), 0, 0
    lfd 31, 0x50(1)
    lmw 26, 0x38(1)
    lwz 0, 0x64(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

