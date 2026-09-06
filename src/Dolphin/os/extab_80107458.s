/*
 * fn_80107458(this): a method of the fn_80107360-class (survey-level).
 * Makes a virtual call through this->vtable[slot 15] and, if truthy,
 * checks this->0x274 (0 or 1) then makes the confirmed "can start?"
 * virtual call through this->vtable[slot 13] - the SAME slot-15-then-
 * slot-13 sequence fn_80106C84's update() used, reinforcing that these
 * two slots form a shared, engine-wide (not class-specific) contract.
 * On failure of either check, builds a large ~0x60-byte stack config
 * struct (16-slot byte array + defaults, the recurring convention) and:
 *  - if this->0x4 < 8: makes a virtual call through the confirmed
 *    global manager (lbl_8053AAF8->0xa4, slot 6) with args
 *    (0x534f4220, &lbl_80463FEC), then calls **fn_802F86CC** (the
 *    THIRD "spatial triad" function - see project_fsa_shared_effect_
 *    subsystem_crossref.md - now with a REAL call site: args (registry
 *    from lbl_8053AB10->0x20, config-struct ptr, this->0x240+0x14c)).
 *  - always: calls fn_803075AC (one of `fn_801F02BC`'s two previously-
 *    unexplored end-path callees, per the same crossref doc) with
 *    this->0x240+0x14c and other position/id args.
 */

.section extab, "a"
.balign 4
.global etb_80005AC8
etb_80005AC8:
    .4byte 0x180A0000
    .4byte 0x00000000
.size etb_80005AC8, 8

.section extabindex, "a"
.balign 4
.global eti_80011F08
eti_80011F08:
    .4byte fn_80107458
    .4byte 0x00000208
    .4byte etb_80005AC8
.size eti_80011F08, 12

.text
.balign 4
.global fn_80107458

fn_80107458:
    stwu 1, -0x60(1)
    mflr 0
    stw 0, 0x64(1)
    stw 31, 0x5c(1)
    mr 31, 3
    stw 30, 0x58(1)
    stw 29, 0x54(1)
    lwz 12, 0x0(3)
    lwz 12, 0x3c(12)
    mtctr 12
    bctrl
    cmpwi 3, 0x0
    .4byte 0x41820034 # beq .L_801074BC
    lwz 0, 0x274(31)
    cmpwi 0, 0x0
    .4byte 0x4182000C # beq .L_801074A0
    cmpwi 0, 0x1
    .4byte 0x40820020 # bne .L_801074BC
L_801074A0:
    mr 3, 31
    lwz 12, 0x0(31)
    lwz 12, 0x34(12)
    mtctr 12
    bctrl
    clrlwi. 0, 3, 24
    .4byte 0x4182018C # beq .L_80107644
L_801074BC:
    li 0, -0x1
    addi 9, 1, 0x10
    stw 0, 0x20(1)
    li 10, 0x0
    stw 0, 0x24(1)
    .4byte 0x48000064 # b .L_80107534
L_801074D4:
    clrlwi 0, 10, 24
    addi 7, 10, 0x5
    addi 5, 10, 0x1
    stbx 10, 9, 0
    clrlwi 0, 5, 24
    addi 3, 10, 0x2
    stbx 5, 9, 0
    clrlwi 0, 3, 24
    addi 4, 10, 0x3
    addi 8, 10, 0x4
    stbx 3, 9, 0
    clrlwi 0, 4, 24
    clrlwi 6, 7, 24
    addi 5, 10, 0x6
    stbx 4, 9, 0
    clrlwi 0, 8, 24
    addi 3, 10, 0x7
    clrlwi 4, 5, 24
    stbx 8, 9, 0
    clrlwi 0, 3, 24
    addi 10, 10, 0x8
    stbx 7, 9, 6
    stbx 5, 9, 4
    stbx 3, 9, 0
L_80107534:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801074D4
    li 5, 0x0
    li 4, 0x1
    stb 5, 0x2d(1)
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x20(1)
    addi 29, 31, 0xc
    stw 5, 0x24(1)
    stw 5, 0x28(1)
    stb 5, 0x2c(1)
    stb 5, 0x2e(1)
    stb 4, 0x2f(1)
    stb 4, 0x30(1)
    stb 5, 0x31(1)
    stb 5, 0x32(1)
    stb 5, 0x33(1)
    stb 5, 0x34(1)
    stb 5, 0x35(1)
    stb 4, 0x36(1)
    stw 3, 0x38(1)
    stb 4, 0x3c(1)
    stb 5, 0x3d(1)
    stb 5, 0x3e(1)
    stw 6, 0x40(1)
    stw 5, 0x44(1)
    stw 0, 0x48(1)
    stb 4, 0x2d(1)
    lwz 0, 0x4(31)
    lwz 3, 0x240(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x14c
    .4byte 0x40800050 # bge .L_80107610
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_80463FEC@ha
    addi 5, 3, lbl_80463FEC@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC0229334 # lfs f1, lbl_8053C2D4@sda21(r0)
    mr 5, 3
    .4byte 0x80CD8F50 # lwz r6, lbl_8053AB10@sda21(r0)
    mr 4, 29
    fmr 2, 1
    addi 7, 1, 0x10
    lwz 3, 0x20(6)
    mr 6, 30
    bl fn_802F86CC
L_80107610:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x1
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 6, 0x240(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    addi 6, 6, 0x14c
    bl fn_803075AC
L_80107644:
    lwz 0, 0x64(1)
    lwz 31, 0x5c(1)
    lwz 30, 0x58(1)
    lwz 29, 0x54(1)
    mtlr 0
    addi 1, 1, 0x60
    blr

