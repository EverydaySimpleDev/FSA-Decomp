/*
 * FARY actor cluster, part 3/5 - setParams(). Track A (byte-exact asm)
 * + structural overview.
 *
 * fn_80161290(this): sets up default interaction-box constants
 * (this->0x60/64/68/6c) and resets all of update()'s (part 2/5) working
 * counters and direction floats. Unpacks the raw spawn parameter
 * this->0x90 into: this->0x260 (a 5-bit sub-type), this->0x258 (a 4-bit
 * "special mode" 0-3 that update()/draw() branch on), and this->0x25c
 * (a 4-bit specific PLAYER SLOT this instance targets, decremented once
 * here to convert from a 1-based spawn-editor value to a 0-based index,
 * or set to -1 if it was already 0). Rolls TWO independent values from
 * the confirmed global PRNG (same `lbl_8053AAF8->0xb4` LCG stepping
 * idiom as update()) into this->0x240/0x248 for randomized initial
 * timing.
 *
 * Mode branches on this->0x258:
 *   - mode 2: force-starts the actor already in update()'s state 4
 *     ("settle"), skipping the normal search/arm sequence, and sets a
 *     second "cutscene-locked"-looking flag (this->0x11f=1).
 *   - mode 3: force-starts already in state 5 ("wind-down") with a very
 *     long re-arm timer (0x2710=10000), bumps the persistent play-count
 *     byte (lbl_80529DEC->0x24f) the same way update() does, and queues
 *     a distinct cue (fn_801F0E34, code 0x400E5) - these read as
 *     scripted/cutscene-only instances that start pre-triggered rather
 *     than searching for a live target.
 *   - otherwise: checks the SAME virtual-method (vtable slot 0x34) flag
 *     draw()/update() check; if it says inactive, sets this->0xb0=0 and
 *     skips the effect spawn below entirely; otherwise eagerly spawns
 *     both flame/ember effect sub-objects right at construction time
 *     (fn_8013CC50, codes 0x183/0x184 - same as update()'s lazy path)
 *     and, if starting in state 0 or 5, fires the haptic-rumble pattern
 *     (fn_8043D67C, code 0x339) immediately.
 */
.section extab, "a"
.balign 4
.global etb_80007074
etb_80007074:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80007074, 8

.section extabindex, "a"
.balign 4
.global eti_80013C3C
eti_80013C3C:
    .4byte fn_80161290
    .4byte 0x0000035C
    .4byte etb_80007074
.size eti_80013C3C, 12

.text
.balign 4
.global fn_80161290

fn_80161290:
    stwu 1, -0x20(1)
    mflr 0
    .4byte 0xC022A704 # lfs f1, lbl_8053D6A4@sda21(r0)
    li 6, 0x0
    stw 0, 0x24(1)
    li 5, 0x400
    .4byte 0xC002A708 # lfs f0, lbl_8053D6A8@sda21(r0)
    li 4, 0xa
    stw 31, 0x1c(1)
    mr 31, 3
    lis 3, 0x19
    .4byte 0xC082A6EC # lfs f4, lbl_8053D68C@sda21(r0)
    stfs 1, 0x60(31)
    addi 0, 3, 0x660d
    .4byte 0xC042A70C # lfs f2, lbl_8053D6AC@sda21(r0)
    stfs 1, 0x64(31)
    .4byte 0xC022A6D0 # lfs f1, lbl_8053D670@sda21(r0)
    stfs 0, 0x68(31)
    .4byte 0xC062A6E8 # lfs f3, lbl_8053D688@sda21(r0)
    stfs 0, 0x6c(31)
    .4byte 0xC002A710 # lfs f0, lbl_8053D6B0@sda21(r0)
    stw 6, 0x244(31)
    stw 6, 0x248(31)
    stw 6, 0x24c(31)
    stw 6, 0x234(31)
    stw 6, 0x238(31)
    stw 6, 0x23c(31)
    stw 6, 0x240(31)
    stw 6, 0x250(31)
    stfs 4, 0x26c(31)
    stfs 4, 0x278(31)
    stfs 4, 0x27c(31)
    stfs 4, 0x280(31)
    stw 5, 0x234(31)
    stfs 2, 0x280(31)
    stw 4, 0x23c(31)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0xc(1)
    lfs 2, 0xc(1)
    fsubs 1, 2, 1
    fmuls 1, 3, 1
    fctiwz 1, 1
    stfd 1, 0x10(1)
    lwz 3, 0x14(1)
    addi 0, 3, 0x1e
    stw 0, 0x240(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 5, 5
    stw 0, 0x260(31)
    lwz 0, 0x90(31)
    extrwi 0, 0, 4, 24
    stw 0, 0x258(31)
    lwz 0, 0x90(31)
    clrlwi 0, 0, 28
    stw 0, 0x25c(31)
    stw 6, 0x264(31)
    stb 6, 0x268(31)
    stfs 0, 0x270(31)
    lwz 3, 0x25c(31)
    cmpwi 3, 0x0
    .4byte 0x40810010 # ble .L_801613B0
    subi 0, 3, 0x1
    stw 0, 0x25c(31)
    .4byte 0x4800000C # b .L_801613B8
L_801613B0:
    li 0, -0x1
    stw 0, 0x25c(31)
L_801613B8:
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, 0x19
    addi 0, 3, 0x660d
    .4byte 0xC002A6D0 # lfs f0, lbl_8053D670@sda21(r0)
    lwz 5, 0xb4(6)
    li 4, 0x0
    .4byte 0xC042A6F0 # lfs f2, lbl_8053D690@sda21(r0)
    lis 3, 0x2
    mullw 5, 5, 0
    li 0, -0x1
    addis 5, 5, 0x3c6f
    subi 5, 5, 0xca1
    stw 5, 0xb4(6)
    lwz 5, 0xb4(6)
    srwi 5, 5, 9
    oris 5, 5, 0x3f80
    stw 5, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 5, 0x14(1)
    stw 5, 0x248(31)
    stw 4, 0x230(31)
    stw 3, 0xb0(31)
    stw 0, 0x254(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x2
    .4byte 0x4082000C # bne .L_80161438
    li 0, 0x1
    stb 0, 0x11f(31)
L_80161438:
    li 3, 0x0
    stw 3, 0x290(31)
    stw 3, 0x294(31)
    lfs 0, 0xc(31)
    stfs 0, 0x284(31)
    lfs 0, 0x10(31)
    stfs 0, 0x288(31)
    lfs 0, 0x14(31)
    stfs 0, 0x28c(31)
    lwz 0, 0x258(31)
    cmpwi 0, 0x2
    .4byte 0x40820018 # bne .L_8016147C
    stw 3, 0x234(31)
    li 0, 0x4
    stw 3, 0x238(31)
    stw 3, 0x248(31)
    stw 0, 0x230(31)
L_8016147C:
    lwz 0, 0x258(31)
    cmpwi 0, 0x3
    .4byte 0x40820060 # bne .L_801614E4
    li 0, 0x2710
    lis 3, lbl_80529DEC@ha
    stw 0, 0x234(31)
    addi 4, 3, lbl_80529DEC@l
    .4byte 0xC002A714 # lfs f0, lbl_8053D6B4@sda21(r0)
    stfs 0, 0x280(31)
    lbz 3, 0x24f(4)
    cmplwi 3, 0x63
    .4byte 0x40800010 # bge .L_801614B8
    addi 0, 3, 0x1
    stb 0, 0x24f(4)
    .4byte 0x4800000C # b .L_801614C0
L_801614B8:
    li 0, 0x63
    stb 0, 0x24f(4)
L_801614C0:
    li 0, 0x1e
    lis 4, 0x4
    stw 0, 0x23c(31)
    mr 3, 31
    addi 4, 4, 0xe5
    li 5, 0x0
    bl fn_801F0E34
    li 0, 0x5
    stw 0, 0x230(31)
L_801614E4:
    lwz 0, 0x90(31)
    srwi. 0, 0, 27
    .4byte 0x4182002C # beq .L_80161518
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x40820010 # bne .L_80161518
    li 0, 0x0
    stw 0, 0xb0(31)
    .4byte 0x480000C4 # b .L_801615D8
L_80161518:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022A6D0 # lfs f1, lbl_8053D670@sda21(r0)
    li 5, 0x183
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x290(31)
    addi 4, 31, 0xc
    .4byte 0xC022A6D0 # lfs f1, lbl_8053D670@sda21(r0)
    li 5, 0x184
    lwz 3, 0x4(31)
    li 6, 0x0
    li 7, 0x0
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x294(31)
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_80161584
    cmpwi 0, 0x5
    .4byte 0x40820058 # bne .L_801615D8
L_80161584:
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    lbz 0, 0x7f(3)
    cmplwi 0, 0x1
    .4byte 0x40820048 # bne .L_801615D8
    lis 3, lbl_8050EC80@ha
    addi 3, 3, lbl_8050EC80@l
    lwz 0, 0x10(3)
    mulli 0, 0, 0xc8
    add 6, 3, 0
    lbz 4, 0x87(6)
    clrlwi. 0, 4, 31
    .4byte 0x40820028 # bne .L_801615D8
    lis 3, lbl_80529DEC@ha
    ori 0, 4, 0x1
    addi 5, 3, lbl_80529DEC@l
    stb 0, 0x87(6)
    .4byte 0x806D9310 # lwz r3, lbl_8053AED0@sda21(r0)
    li 4, 0x339
    lbz 6, 0x24f(5)
    li 5, 0x0
    bl fn_8043D67C
L_801615D8:
    lwz 0, 0x24(1)
    lwz 31, 0x1c(1)
    mtlr 0
    addi 1, 1, 0x20
    blr

