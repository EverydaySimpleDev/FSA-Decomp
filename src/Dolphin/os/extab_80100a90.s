/*
 * fn_80100A90(this): second method of the fn_8010089C-class. Combines
 * initialization-looking work with a per-tick weighted random selection:
 *  - Calls SpatialRegistry_GetBase (confirmed registry get) then fn_801F666C (confirmed
 *    find-by-ID, keyed on this->0x90's low 16 bits) and stores the found
 *    target pointer into this->0x290 - the SAME field fn_801008FC treats
 *    as a per-target hit/miss array base, confirming this class owns/finds
 *    that target object.
 *  - Resets default position/bounds floats (this->0x60-0x7c) and zeroes
 *    this->0x234/0x240/0x245/0x246.
 *  - Uses the confirmed global PRNG (lbl_8053AAF8/inline LCG step) to draw
 *    a value in [0,10), then picks this->0x244 (a "hit-type" state 0-5)
 *    via a weighted table keyed on the target's elapsed-time field
 *    (this->0x290->0x23c vs threshold 0x2d0/720): past the threshold, the
 *    weights/denominator change (0xa vs 0xc) and the random draw is
 *    compared against cumulative weight buckets - a real weighted-random
 *    "what happens next" selector, time-biased toward later outcomes the
 *    longer the target has been active.
 *  - Ends by unconditionally playing a sound cue via the confirmed
 *    fn_8013CC50 primitive (ID 0x1da/474).
 * Reads as a "pick the next hit-type outcome for this target" tick,
 * possibly called once when starting a new attempt/round.
 */

.section extab, "a"
.balign 4
.global etb_800058E8
etb_800058E8:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_800058E8, 8

.section extabindex, "a"
.balign 4
.global eti_80011C8C
eti_80011C8C:
    .4byte fn_80100A90
    .4byte 0x00000298
    .4byte etb_800058E8
.size eti_80011C8C, 12

.text
.balign 4
.global fn_80100A90

fn_80100A90:
    stwu 1, -0x30(1)
    mflr 0
    stw 0, 0x34(1)
    stw 31, 0x2c(1)
    stw 30, 0x28(1)
    mr 30, 3
    stw 29, 0x24(1)
    bl SpatialRegistry_GetBase
    lwz 0, 0x90(30)
    clrlwi 4, 0, 16
    bl fn_801F666C
    stw 3, 0x290(30)
    lis 3, 0x19
    .4byte 0xC06291A8 # lfs f3, lbl_8053C148@sda21(r0)
    li 4, 0x0
    .4byte 0xC02291AC # lfs f1, lbl_8053C14C@sda21(r0)
    addi 0, 3, 0x660d
    stfs 3, 0x60(30)
    .4byte 0xC00291A0 # lfs f0, lbl_8053C140@sda21(r0)
    stfs 3, 0x64(30)
    .4byte 0xC04291B0 # lfs f2, lbl_8053C150@sda21(r0)
    stfs 1, 0x68(30)
    stfs 1, 0x6c(30)
    stfs 3, 0x70(30)
    stfs 3, 0x74(30)
    stfs 1, 0x78(30)
    stfs 1, 0x7c(30)
    stw 4, 0x234(30)
    stb 4, 0x246(30)
    stb 4, 0x245(30)
    stw 4, 0x240(30)
    .4byte 0x808D8F38 # lwz r4, lbl_8053AAF8@sda21(r0)
    lwz 3, 0xb4(4)
    mullw 3, 3, 0
    addis 3, 3, 0x3c6f
    subi 0, 3, 0xca1
    stw 0, 0xb4(4)
    lwz 0, 0xb4(4)
    .4byte 0x806D8F38 # lwz r3, lbl_8053AAF8@sda21(r0)
    srwi 0, 0, 9
    oris 0, 0, 0x3f80
    stw 0, 0x8(1)
    lfs 1, 0x8(1)
    fsubs 0, 1, 0
    fmuls 0, 2, 0
    fctiwz 0, 0
    stfd 0, 0x10(1)
    lwz 29, 0x14(1)
    bl fn_80138A30
    lwz 4, 0x290(30)
    clrlwi 3, 3, 24
    lwz 0, 0x23c(4)
    cmpwi 0, 0x2d0
    .4byte 0x40810094 # ble .L_80100BF8
    cmpwi 29, 0xa
    .4byte 0x40800010 # bge .L_80100B7C
    li 0, 0x1
    stb 0, 0x244(30)
    .4byte 0x4800016C # b .L_80100CE4
L_80100B7C:
    cmpwi 3, 0x1
    .4byte 0x41800018 # blt .L_80100B98
    cmpwi 29, 0xf
    .4byte 0x40800010 # bge .L_80100B98
    li 0, 0x2
    stb 0, 0x244(30)
    .4byte 0x48000150 # b .L_80100CE4
L_80100B98:
    cmpwi 3, 0x2
    .4byte 0x41800018 # blt .L_80100BB4
    cmpwi 29, 0x14
    .4byte 0x40800010 # bge .L_80100BB4
    li 0, 0x3
    stb 0, 0x244(30)
    .4byte 0x48000134 # b .L_80100CE4
L_80100BB4:
    cmpwi 3, 0x3
    .4byte 0x41800018 # blt .L_80100BD0
    cmpwi 29, 0x19
    .4byte 0x40800010 # bge .L_80100BD0
    li 0, 0x4
    stb 0, 0x244(30)
    .4byte 0x48000118 # b .L_80100CE4
L_80100BD0:
    cmpwi 3, 0x4
    .4byte 0x40820018 # bne .L_80100BEC
    cmpwi 29, 0x1e
    .4byte 0x40800010 # bge .L_80100BEC
    li 0, 0x5
    stb 0, 0x244(30)
    .4byte 0x480000FC # b .L_80100CE4
L_80100BEC:
    li 0, 0x0
    stb 0, 0x244(30)
    .4byte 0x480000F0 # b .L_80100CE4
L_80100BF8:
    cmpwi 3, 0x3
    li 6, 0x0
    li 5, 0x0
    li 4, 0x0
    li 0, 0x0
    .4byte 0x41820040 # beq .L_80100C4C
    .4byte 0x40800014 # bge .L_80100C24
    cmpwi 3, 0x1
    .4byte 0x41820018 # beq .L_80100C30
    .4byte 0x40800020 # bge .L_80100C3C
    .4byte 0x48000054 # b .L_80100C74
L_80100C24:
    cmpwi 3, 0x5
    .4byte 0x4080004C # bge .L_80100C74
    .4byte 0x48000034 # b .L_80100C60
L_80100C30:
    li 0, 0x5a
    li 6, 0xa
    .4byte 0x4800003C # b .L_80100C74
L_80100C3C:
    li 0, 0x2d
    li 4, 0x2d
    li 6, 0xa
    .4byte 0x4800002C # b .L_80100C74
L_80100C4C:
    li 0, 0x1e
    li 4, 0x1e
    li 31, 0x1e
    li 6, 0xa
    .4byte 0x48000018 # b .L_80100C74
L_80100C60:
    li 0, 0x16
    li 4, 0x16
    li 31, 0x16
    li 5, 0x16
    li 6, 0xc
L_80100C74:
    cmpw 29, 6
    .4byte 0x40800010 # bge .L_80100C88
    li 0, 0x1
    stb 0, 0x244(30)
    .4byte 0x48000060 # b .L_80100CE4
L_80100C88:
    add 0, 6, 0
    cmpw 29, 0
    .4byte 0x40800010 # bge .L_80100CA0
    li 0, 0x2
    stb 0, 0x244(30)
    .4byte 0x48000048 # b .L_80100CE4
L_80100CA0:
    add 0, 4, 0
    cmpw 29, 0
    .4byte 0x40800010 # bge .L_80100CB8
    li 0, 0x3
    stb 0, 0x244(30)
    .4byte 0x48000030 # b .L_80100CE4
L_80100CB8:
    add 0, 31, 0
    cmpw 29, 0
    .4byte 0x40800010 # bge .L_80100CD0
    li 0, 0x4
    stb 0, 0x244(30)
    .4byte 0x48000018 # b .L_80100CE4
L_80100CD0:
    add 0, 5, 0
    cmpw 29, 0
    .4byte 0x4080000C # bge .L_80100CE4
    li 0, 0x5
    stb 0, 0x244(30)
L_80100CE4:
    lwz 3, 0x4(30)
    addi 4, 30, 0xc
    .4byte 0xC02291A0 # lfs f1, lbl_8053C140@sda21(r0)
    li 5, 0x1da
    li 6, 0x0
    li 7, 0x1
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    lwz 0, 0x34(1)
    lwz 31, 0x2c(1)
    lwz 30, 0x28(1)
    lwz 29, 0x24(1)
    mtlr 0
    addi 1, 1, 0x30
    blr

