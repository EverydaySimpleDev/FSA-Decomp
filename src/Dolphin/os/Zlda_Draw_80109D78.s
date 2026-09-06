/*
 * IDENTIFIED: this is ZLDA - "Princess Zelda" (see extab_80109534.s's header note).
 * fn_801F5778 is slot 8 of the BASE ACTOR vtable (Actor_vtable) - Actor_draw, called first per
 * the standard "call base then extend" override pattern (see project_fsa_actor_system_discovery
 * and project_fsa_zlda_actor_progress.md, which fully decompiled this exact function end to
 * end: the model drawn is the shared "enemy_both2_sob.bin" resource, and this->0x320 selects
 * which of 2 offsets within it - NOT two distinct ZLDA models as first guessed).
 *
 * fn_80109D78 (0x80109D78-0x80109FA0, 0x22C/556 bytes) - ZLDA's draw(): builds a 16-byte
 * identity index array and a ~40-byte config struct on the stack, matching the SAME structural
 * shape confirmed for the 3rd/4th MI classes' spawn methods (fn_80108494/fn_80108AEC).
 *
 * NEW: if this->0x2f8 is set, does an eased-angle lookup using this->0x30c (a frame index,
 * `mulli x, 0x3c` scaling) against lbl_8053C428/8053C41C/8053C420/8053C424 constants and the
 * CONFIRMED shared anchor table lbl_8052EBC0 (same table used by fn_801053E8/fn_80107660's
 * angle lookups), storing a signed byte into a config sub-field.
 *
 * Then calls fn_801F02BC (the CONFIRMED scale-variant spawn wrapper) - which of two variants
 * depends on this->0x320: offset `lbl_804642C0+0x218` or `+0x9b` (two different name-table
 * entries) combined with `this->0x34c` as the position/config base.
 */

.section extab, "a"
.balign 4
.global etb_80005BAC
etb_80005BAC:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_80005BAC, 8

.section extabindex, "a"
.balign 4
.global eti_80012004
eti_80012004:
    .4byte fn_80109D78
    .4byte 0x0000022C
    .4byte etb_80005BAC
.size eti_80012004, 12

.text
.balign 4
.global fn_80109D78

fn_80109D78:
    stwu 1, -0x70(1)
    mflr 0
    stw 0, 0x74(1)
    stw 31, 0x6c(1)
    mr 31, 3
    bl fn_801F5778
    li 0, -0x1
    addi 9, 1, 0x8
    stw 0, 0x18(1)
    li 10, 0x0
    stw 0, 0x1c(1)
    .4byte 0x48000064 # b .L_80109E08
L_80109DA8:
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
L_80109E08:
    clrlwi 0, 10, 24
    cmplwi 0, 0x10
    .4byte 0x4180FF98 # blt .L_80109DA8
    li 5, 0x0
    li 4, 0x1
    li 6, -0x1
    li 3, 0x3
    li 0, 0x2
    stw 6, 0x18(1)
    stw 5, 0x1c(1)
    stw 5, 0x20(1)
    stb 5, 0x24(1)
    stb 5, 0x25(1)
    stb 5, 0x26(1)
    stb 4, 0x27(1)
    stb 4, 0x28(1)
    stb 5, 0x29(1)
    stb 5, 0x2a(1)
    stb 5, 0x2b(1)
    stb 5, 0x2c(1)
    stb 5, 0x2d(1)
    stb 4, 0x2e(1)
    stw 3, 0x30(1)
    stb 4, 0x34(1)
    stb 5, 0x35(1)
    stb 5, 0x36(1)
    stw 6, 0x38(1)
    stw 5, 0x3c(1)
    stw 0, 0x40(1)
    lbz 0, 0x2f8(31)
    cmplwi 0, 0x0
    .4byte 0x4182009C # beq .L_80109F20
    lwz 3, 0x30c(31)
    lis 0, 0x4330
    stw 0, 0x48(1)
    mulli 0, 3, 0x3c
    .4byte 0xC8629488 # lfd f3, lbl_8053C428@sda21(r0)
    .4byte 0xC0029440 # lfs f0, lbl_8053C3E0@sda21(r0)
    .4byte 0xC022947C # lfs f1, lbl_8053C41C@sda21(r0)
    xoris 0, 0, 0x8000
    stw 0, 0x4c(1)
    lfd 2, 0x48(1)
    fsubs 2, 2, 3
    fcmpo cr0, 2, 0
    .4byte 0x40800030 # bge .L_80109EE8
    .4byte 0xC0029480 # lfs f0, lbl_8053C420@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 0, 2
    fctiwz 0, 0
    stfd 0, 0x50(1)
    lwz 0, 0x54(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
    fneg 0, 0
    .4byte 0x48000028 # b .L_80109F0C
L_80109EE8:
    .4byte 0xC0029484 # lfs f0, lbl_8053C424@sda21(r0)
    lis 3, lbl_8052EBC0@ha
    addi 3, 3, lbl_8052EBC0@l
    fmuls 0, 0, 2
    fctiwz 0, 0
    stfd 0, 0x58(1)
    lwz 0, 0x5c(1)
    clrlslwi 0, 0, 21, 3
    lfsx 0, 3, 0
L_80109F0C:
    fmuls 0, 1, 0
    fctiwz 0, 0
    stfd 0, 0x60(1)
    lwz 0, 0x64(1)
    stb 0, 0x1b(1)
L_80109F20:
    lwz 0, 0x320(31)
    cmpwi 0, 0x0
    .4byte 0x40820038 # bne .L_80109F60
    .4byte 0xC0229448 # lfs f1, lbl_8053C3E8@sda21(r0)
    lis 3, lbl_804642C0@ha
    lwz 5, 0x34c(31)
    addi 4, 3, lbl_804642C0@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x218
    addi 6, 1, 0x8
    li 7, 0x407
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
    .4byte 0x48000034 # b .L_80109F90
L_80109F60:
    .4byte 0xC0229448 # lfs f1, lbl_8053C3E8@sda21(r0)
    lis 3, lbl_804642C0@ha
    lwz 5, 0x34c(31)
    addi 4, 3, lbl_804642C0@l
    fmr 2, 1
    mr 3, 31
    addi 5, 5, 0x9b
    addi 6, 1, 0x8
    li 7, 0x407
    li 8, 0x0
    li 9, 0x0
    bl fn_801F02BC
L_80109F90:
    lwz 0, 0x74(1)
    lwz 31, 0x6c(1)
    mtlr 0
    addi 1, 1, 0x70
    blr

