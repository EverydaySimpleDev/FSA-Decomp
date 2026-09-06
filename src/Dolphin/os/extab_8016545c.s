/*
 * ARRW (arrow projectile) actor cluster, part 1/6 - draw(). Track A
 * (byte-exact asm) + structural overview.
 *
 * fn_8016545C(this): no-ops for this->0x94==3 (a special variant).
 * Otherwise builds the standard identity-permutation joint array +
 * render descriptor (same idiom as BOYO/FARY/ZLDA draw()), calls
 * GetSessionFlag_0x6f() (shared with setParams, part 5/6) to check a condition
 * and, if true, picks a sub-index (this->0x48) from the narrowed
 * this->0x90 orientation. Then, if this->0x4 (owner/room) < 8: queries
 * the confirmed ambient light-probe grid via fn_802F86CC (see
 * [[project_fsa_shared_effect_subsystem_crossref]]) so the arrow model
 * is lit correctly, and registers a HUD/map marker via the confirmed
 * fn_803075AC (icon offset varies for fire-type arrows mid-flight).
 * Finally, for fire-type arrows (this->0x94==2 or 4) not yet embedded
 * (this->0x230!=4), spawns an ambient flame-glow effect group via the
 * confirmed fn_80158B5C(lbl_8053AB10->0x2c, ...) - the same primitive
 * FLME uses.
 */
.section extab, "a"
.balign 4
.global etb_8000713C
etb_8000713C:
    .4byte 0x100A0000
    .4byte 0x00000000
.size etb_8000713C, 8

.section extabindex, "a"
.balign 4
.global eti_80013D08
eti_80013D08:
    .4byte fn_8016545C
    .4byte 0x000002D4
    .4byte etb_8000713C
.size eti_80013D08, 12

.text
.balign 4
.global fn_8016545C

fn_8016545C:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    stw 30, 0x68(1)
    lhz 0, 0x94(3)
    cmplwi 0, 0x3
    .4byte 0x4182029C # beq .L_80165718
    lwz 0, 0x24c(31)
    cmpwi 0, 0x32
    .4byte 0x4080000C # bge .L_80165494
    rlwinm. 0, 0, 0, 30, 30
    .4byte 0x4082022C # bne .L_801656BC
L_80165494:
    li 0, -0x1
    addi 9, 1, 0x18
    stw 0, 0x28(1)
    li 10, 0x0
    stw 0, 0x2c(1)
    .4byte 0x48000064 # b .L_8016550C
L_801654AC:
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
L_8016550C:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_801654AC
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x28(1)
    stw 5, 0x2c(1)
    stw 5, 0x30(1)
    stb 5, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stb 4, 0x37(1)
    stb 4, 0x38(1)
    stb 5, 0x39(1)
    stb 5, 0x3a(1)
    stb 5, 0x3b(1)
    stb 5, 0x3c(1)
    stb 5, 0x3d(1)
    stb 4, 0x3e(1)
    stw 3, 0x40(1)
    stb 4, 0x44(1)
    stb 5, 0x45(1)
    stb 5, 0x46(1)
    stw 6, 0x48(1)
    stw 5, 0x4c(1)
    stw 0, 0x50(1)
    lfs 0, 0x234(31)
    fctiwz 0, 0
    stb 4, 0x35(1)
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    stb 0, 0x2b(1)
    bl GetSessionFlag_0x6f
    clrlwi 0, 3, 24
    cmplwi 0, 0x1
    .4byte 0x4082005C # bne .L_80165600
    lwz 0, 0x90(31)
    cmpwi 0, 0x2
    .4byte 0x4182003C # beq .L_801655EC
    .4byte 0x40800014 # bge .L_801655C8
    cmpwi 0, 0x0
    .4byte 0x41820018 # beq .L_801655D4
    .4byte 0x40800020 # bge .L_801655E0
    .4byte 0x4800003C # b .L_80165600
L_801655C8:
    cmpwi 0, 0x4
    .4byte 0x40800034 # bge .L_80165600
    .4byte 0x48000028 # b .L_801655F8
L_801655D4:
    li 0, 0x0
    stw 0, 0x48(1)
    .4byte 0x48000024 # b .L_80165600
L_801655E0:
    li 0, 0x1
    stw 0, 0x48(1)
    .4byte 0x48000018 # b .L_80165600
L_801655EC:
    li 0, 0x2
    stw 0, 0x48(1)
    .4byte 0x4800000C # b .L_80165600
L_801655F8:
    li 0, 0x3
    stw 0, 0x48(1)
L_80165600:
    lwz 0, 0x4(31)
    lwz 3, 0x268(31)
    cmpwi 0, 0x8
    addi 30, 3, 0x4c
    .4byte 0x40800050 # bge .L_80165660
    .4byte 0x80CD8F38 # lwz r6, lbl_8053AAF8@sda21(r0)
    lis 3, lbl_8046630C@ha
    addi 5, 3, lbl_8046630C@l
    lis 4, 0x534f
    lwz 3, 0xa4(6)
    addi 4, 4, 0x4220
    lwz 12, 0x0(3)
    lwz 12, 0x18(12)
    mtctr 12
    bctrl
    .4byte 0xC022A820 # lfs f1, lbl_8053D7C0@sda21(r0)
    mr 5, 3
    .4byte 0x808D8F50 # lwz r4, lbl_8053AB10@sda21(r0)
    mr 6, 30
    fmr 2, 1
    addi 7, 1, 0x18
    lwz 3, 0x20(4)
    addi 4, 31, 0xc
    bl fn_802F86CC
L_80165660:
    lhz 0, 0x94(31)
    li 6, 0x4c
    cmplwi 0, 0x0
    .4byte 0x4182000C # beq .L_80165678
    cmplwi 0, 0x4
    .4byte 0x40820014 # bne .L_80165688
L_80165678:
    lwz 0, 0x230(31)
    cmpwi 0, 0x0
    .4byte 0x40820008 # bne .L_80165688
    li 6, 0x2df
L_80165688:
    li 0, 0x0
    addi 5, 31, 0xc
    stw 0, 0x8(1)
    li 7, 0x0
    li 8, 0x2
    li 9, -0x1
    stw 0, 0xc(1)
    li 10, 0x0
    lwz 0, 0x268(31)
    lwz 3, 0x198(31)
    lwz 4, 0x4(31)
    add 6, 6, 0
    bl fn_803075AC
L_801656BC:
    lhz 0, 0x94(31)
    cmplwi 0, 0x2
    .4byte 0x4182000C # beq .L_801656D0
    cmplwi 0, 0x4
    .4byte 0x4082004C # bne .L_80165718
L_801656D0:
    lwz 0, 0x230(31)
    cmpwi 0, 0x4
    .4byte 0x41820040 # beq .L_80165718
    li 7, 0x0
    li 0, 0x80
    stb 7, 0x14(1)
    addi 5, 31, 0xc
    lwz 4, 0x4(31)
    addi 6, 1, 0x10
    stb 7, 0x15(1)
    .4byte 0x806D8F50 # lwz r3, lbl_8053AB10@sda21(r0)
    stb 7, 0x16(1)
    .4byte 0xC022A824 # lfs f1, lbl_8053D7C4@sda21(r0)
    stb 0, 0x17(1)
    lwz 0, 0x14(1)
    stw 0, 0x10(1)
    lwz 3, 0x2c(3)
    bl fn_80158B5C
L_80165718:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    lwz 30, 0x68(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

