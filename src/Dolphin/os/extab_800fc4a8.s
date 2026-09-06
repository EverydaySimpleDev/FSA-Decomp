# fn_800FC4A8: state 2 of `jumptable_8049C6F0` - a combined "wobble +
# swing" idle animation, likely the state `fn_800FC128`'s pendulum
# transitions into. Shares the same "wait for owner ready" first-tick
# gate, command-slot/throttle boilerplate, and CONFIRMED
# `fn_801F3D94` gate seen in every other jumptable state.
#
# Countdown `this->0x234` drives a spin-rate field `this->0x2b0` that
# ramps up then down (clamped 0x40-0x400), feeding a phase accumulator
# `this->0x2a8` (clamped 0-1) that's passed through a NEW
# `fn_801F1184` (a ratio-in/value-out call, plausibly an easing
# curve) whose result is stored into a field on the callee's OWN
# return value (unusual - `stfs f31, 0x48(r3)`, where `r3` is
# `fn_801F1184`'s return, not `this`). On expiry, re-randomizes its
# own countdown via the CONFIRMED global PRNG and RE-ENTERS the SAME
# state (`this->0x230=2`) - a self-looping idle animation with a fresh
# random duration each cycle.
#
# Unconditionally advances the slow arc-swing angle `this->0x260`
# (same idiom as `fn_800FC128`, converted to `this->0x14` via the
# shared anchor table). At a specific countdown value (0x15e/350),
# rolls the PRNG to pick a random sub-variant (0-4) written into the
# shared event-opcode field `this->0x27c` (2, 4, 5, or 6) - directly
# feeding `fn_800FA6B0`'s dispatch. Depending on which third of the
# countdown range it's in, grows or shrinks a "shimmy" offset
# (`this->0x23c/0x240`) via a NEW per-step delta table
# `lbl_8049C5FC` (indexed by the just-picked sub-variant), advancing
# a second angle `this->0x262` in some ranges; the shimmy offset is
# then combined with that angle (via the shared anchor table again)
# into the final `this->0xc/0x10` X/Z position - i.e. the swing (Y)
# and shimmy (XZ) motions are independent and additive. Needs
# `-mgekko`. Not yet cross-identified against the 195-entry dispatch
# table.
.section extab, "a"
.balign 4
.global etb_80005818
etb_80005818:
    .4byte 0x084A0000
    .4byte 0x00000000
.size etb_80005818, 8

.section extabindex, "a"
.balign 4
.global eti_80011B54
eti_80011B54:
    .4byte fn_800FC4A8
    .4byte 0x000004DC
    .4byte etb_80005818
.size eti_80011B54, 12

.text
.balign 4
.global fn_800FC4A8

fn_800FC4A8:
    stwu 1, -0x40(1)
    mflr 0
    stw 0, 0x44(1)
    stfd 31, 0x30(1)
    psq_st 31, 0x38(1), 0, 0
    stw 31, 0x2c(1)
    mr 31, 3
    lbz 0, 0x2ac(3)
    cmplwi 0, 0x0
    .4byte 0x40820040 # bne .L_800FC50C
    li 0, 0x4
    lis 4, 0x4
    stw 0, 0xb0(31)
    li 5, 0x1
    li 6, 0x0
    li 0, 0x8
    stw 5, 0x27c(31)
    addi 4, 4, 0x5
    li 5, 0x0
    stw 6, 0x234(31)
    stw 0, 0x230(31)
    bl fn_801F0E34
    li 0, 0x1
    stb 0, 0x2ad(31)
    .4byte 0x48000008 # b .L_800FC510
L_800FC50C:
    li 0, 0x0
L_800FC510:
    clrlwi. 0, 0, 24
    .4byte 0x40820454 # bne .L_800FC968
    lbz 3, 0x256(31)
    cmplwi 3, 0x0
    .4byte 0x4182000C # beq .L_800FC52C
    subi 0, 3, 0x1
    stb 0, 0x256(31)
L_800FC52C:
    lbz 0, 0x278(31)
    cmplwi 0, 0x3
    .4byte 0x4182000C # beq .L_800FC540
    cmplwi 0, 0x6
    .4byte 0x40820010 # bne .L_800FC54C
L_800FC540:
    li 0, 0x10
    stw 0, 0xb0(31)
    .4byte 0x4800000C # b .L_800FC554
L_800FC54C:
    li 0, 0x4
    stw 0, 0xb0(31)
L_800FC554:
    lwz 3, 0x268(31)
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_800FC588
    addi 3, 3, 0x2000
    lis 0, 0x2
    stw 3, 0x268(31)
    lwz 3, 0x268(31)
    cmplw 3, 0
    .4byte 0x4081000C # ble .L_800FC580
    li 0, 0x0
    stw 0, 0x268(31)
L_800FC580:
    li 0, 0x1
    .4byte 0x48000008 # b .L_800FC58C
L_800FC588:
    li 0, 0x0
L_800FC58C:
    clrlwi 0, 0, 24
    cmplwi 0, 0x1
    .4byte 0x40820014 # bne .L_800FC5A8
    mr 3, 31
    li 4, 0x1
    bl fn_801F3D94
    .4byte 0x480003C4 # b .L_800FC968
L_800FC5A8:
    lwz 0, 0x234(31)
    cmpwi 0, 0x12c
    .4byte 0x4081004C # ble .L_800FC5FC
    lhz 3, 0x2b0(31)
    addi 0, 3, 0x4
    sth 0, 0x2b0(31)
    lhz 0, 0x2b0(31)
    cmplwi 0, 0x400
    .4byte 0x4081000C # ble .L_800FC5D4
    li 0, 0x400
    sth 0, 0x2b0(31)
L_800FC5D4:
    lfs 2, 0x2a8(31)
    .4byte 0xC02290F8 # lfs f1, lbl_8053C098@sda21(r0)
    .4byte 0xC0029050 # lfs f0, lbl_8053BFF0@sda21(r0)
    fadds 1, 2, 1
    stfs 1, 0x2a8(31)
    lfs 1, 0x2a8(31)
    fcmpo cr0, 1, 0
    .4byte 0x40810058 # ble .L_800FC648
    stfs 0, 0x2a8(31)
    .4byte 0x48000050 # b .L_800FC648
L_800FC5FC:
    cmpwi 0, 0x64
    .4byte 0x40800048 # bge .L_800FC648
    lhz 3, 0x2b0(31)
    subi 0, 3, 0x10
    sth 0, 0x2b0(31)
    lhz 0, 0x2b0(31)
    cmplwi 0, 0x40
    .4byte 0x4080000C # bge .L_800FC624
    li 0, 0x40
    sth 0, 0x2b0(31)
L_800FC624:
    lfs 2, 0x2a8(31)
    .4byte 0xC02290FC # lfs f1, lbl_8053C09C@sda21(r0)
    .4byte 0xC002902C # lfs f0, lbl_8053BFCC@sda21(r0)
    fsubs 1, 2, 1
    stfs 1, 0x2a8(31)
    lfs 1, 0x2a8(31)
    fcmpo cr0, 1, 0
    .4byte 0x40800008 # bge .L_800FC648
    stfs 0, 0x2a8(31)
L_800FC648:
    lhz 5, 0x2ae(31)
    lis 0, 0x4330
    lhz 4, 0x2b0(31)
    mr 3, 31
    stw 0, 0x10(1)
    add 0, 5, 4
    .4byte 0xC8429038 # lfd f2, lbl_8053BFD8@sda21(r0)
    sth 0, 0x2ae(31)
    .4byte 0xC0029100 # lfs f0, lbl_8053C0A0@sda21(r0)
    lhz 4, 0x2b0(31)
    subi 0, 4, 0x40
    xoris 0, 0, 0x8000
    stw 0, 0x14(1)
    lfd 1, 0x10(1)
    fsubs 1, 1, 2
    fdivs 31, 1, 0
    bl fn_801F1184
    stfs 31, 0x48(3)
    lis 4, 0x4
    mr 3, 31
    li 5, 0x0
    addi 4, 4, 0x2f
    bl fn_801F0E34
    lwz 3, 0x234(31)
    subi 0, 3, 0x1
    stw 0, 0x234(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x0
    .4byte 0x41810090 # bgt .L_800FC748
    li 0, 0x2
    lis 3, 0x19
    stw 0, 0x230(31)
    lis 0, 0x4330
    addi 3, 3, 0x660d
    .4byte 0xC002902C # lfs f0, lbl_8053BFCC@sda21(r0)
    .4byte 0x80AD8F38 # lwz r5, lbl_8053AAF8@sda21(r0)
    .4byte 0xC06290D8 # lfs f3, lbl_8053C078@sda21(r0)
    lwz 4, 0xb4(5)
    stw 0, 0x18(1)
    mullw 3, 4, 3
    .4byte 0xC8229038 # lfd f1, lbl_8053BFD8@sda21(r0)
    .4byte 0xC0829104 # lfs f4, lbl_8053C0A4@sda21(r0)
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(5)
    lwz 0, 0xb4(5)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 0, 2, 0
    fmuls 0, 3, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 0, 0x14(1)
    xoris 0, 0, 0x8000
    stw 0, 0x1c(1)
    lfd 0, 0x18(1)
    fsubs 0, 0, 1
    fadds 0, 4, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    stw 0, 0x234(31)
L_800FC748:
    lhz 4, 0x260(31)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    .4byte 0xC0429054 # lfs f2, lbl_8053BFF4@sda21(r0)
    addi 0, 4, 0x200
    sth 0, 0x260(31)
    lhz 0, 0x260(31)
    lfs 0, 0x25c(31)
    rlwinm 0, 0, 30, 18, 28
    lfsx 1, 3, 0
    fmadds 0, 2, 1, 0
    stfs 0, 0x14(31)
    lwz 0, 0x234(31)
    cmpwi 0, 0x15e
    .4byte 0x408200B0 # bne .L_800FC830
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002902C # lfs f0, lbl_8053BFCC@sda21(r0)
    lwz 3, 0xb4(4)
    .4byte 0xC0429000 # lfs f2, lbl_8053BFA0@sda21(r0)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x20(1)
    lwz 0, 0x24(1)
    stw 0, 0x264(31)
    lwz 0, 0x264(31)
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_800FC81C
    .4byte 0x40800014 # bge .L_800FC7F8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_800FC804
    .4byte 0x40800020 # bge .L_800FC810
    .4byte 0x4800003C # b .L_800FC830
L_800FC7F8:
    cmpwi 0, 0x4
    .4byte 0x40800034 # bge .L_800FC830
    .4byte 0x48000028 # b .L_800FC828
L_800FC804:
    li 0, 0x5
    stw 0, 0x27c(31)
    .4byte 0x48000024 # b .L_800FC830
L_800FC810:
    li 0, 0x6
    stw 0, 0x27c(31)
    .4byte 0x48000018 # b .L_800FC830
L_800FC81C:
    li 0, 0x4
    stw 0, 0x27c(31)
    .4byte 0x4800000C # b .L_800FC830
L_800FC828:
    li 0, 0x5
    stw 0, 0x27c(31)
L_800FC830:
    lwz 0, 0x234(31)
    cmpwi 0, 0x12c
    .4byte 0x4181004C # bgt .L_800FC884
    cmpwi 0, 0xc8
    .4byte 0x40810044 # ble .L_800FC884
    lwz 0, 0x264(31)
    lis 3, lbl_8049C5FC@ha
    addi 3, 3, lbl_8049C5FC@l
    lfs 1, 0x23c(31)
    slwi 0, 0, 3
    lfsx 0, 3, 0
    fadds 0, 1, 0
    stfs 0, 0x23c(31)
    lwz 0, 0x264(31)
    lfs 1, 0x240(31)
    slwi 0, 0, 3
    add 3, 3, 0
    lfs 0, 0x4(3)
    fadds 0, 1, 0
    stfs 0, 0x240(31)
    .4byte 0x4800006C # b .L_800FC8EC
L_800FC884:
    cmpwi 0, 0xc8
    .4byte 0x41810058 # bgt .L_800FC8E0
    cmpwi 0, 0x64
    .4byte 0x40810050 # ble .L_800FC8E0
    lwz 0, 0x264(31)
    lis 3, lbl_8049C5FC@ha
    addi 3, 3, lbl_8049C5FC@l
    lfs 1, 0x23c(31)
    slwi 0, 0, 3
    lfsx 0, 3, 0
    fsubs 0, 1, 0
    stfs 0, 0x23c(31)
    lwz 0, 0x264(31)
    lfs 1, 0x240(31)
    slwi 0, 0, 3
    add 3, 3, 0
    lfs 0, 0x4(3)
    fsubs 0, 1, 0
    stfs 0, 0x240(31)
    lhz 3, 0x262(31)
    addi 0, 3, 0xb0
    sth 0, 0x262(31)
    .4byte 0x48000010 # b .L_800FC8EC
L_800FC8E0:
    lhz 3, 0x262(31)
    addi 0, 3, 0xb0
    sth 0, 0x262(31)
L_800FC8EC:
    lhz 0, 0x262(31)
    lis 3, lbl_8052EBC0@ha
    addi 5, 3, lbl_8052EBC0@l
    .4byte 0xC06290D8 # lfs f3, lbl_8053C078@sda21(r0)
    rlwinm 0, 0, 30, 18, 28
    lfs 0, 0x23c(31)
    lfsx 1, 5, 0
    mr 3, 31
    .4byte 0xC04290A8 # lfs f2, lbl_8053C048@sda21(r0)
    li 4, 0x1
    fmadds 0, 3, 1, 0
    stfs 0, 0xc(31)
    lhz 0, 0x262(31)
    lfs 0, 0x240(31)
    rlwinm 0, 0, 30, 18, 28
    add 5, 5, 0
    lfs 1, 0x4(5)
    fmadds 0, 2, 1, 0
    fsubs 0, 0, 2
    stfs 0, 0x10(31)
    bl fn_801F3D94
    lwz 0, 0x234(31)
    cmpwi 0, 0x244
    .4byte 0x40820010 # bne .L_800FC958
    li 0, 0x0
    stw 0, 0x27c(31)
    .4byte 0x48000014 # b .L_800FC968
L_800FC958:
    cmpwi 0, 0x32
    .4byte 0x4082000C # bne .L_800FC968
    li 0, 0x1
    stw 0, 0x27c(31)
L_800FC968:
    psq_l 31, 0x38(1), 0, 0
    lwz 0, 0x44(1)
    lfd 31, 0x30(1)
    lwz 31, 0x2c(1)
    mtlr 0
    addi 1, 1, 0x40
    blr

