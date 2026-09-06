/*
 * fn_801D7E6C(this) (0x801D7E6C-0x801D80F0, 0x284/644 bytes) - initializes
 * dtor_801D46FC's class's "effect pair" state: calls fn_801D0ED0(this) (the
 * SAME base-construction step fn_801D6554 also calls), sets default velocity/
 * range fields (this->0x54-0x7c), this->0xb0=4, this->0x98=2,
 * this->0x230|=0x300, this->0x114=2, this->0x194=1.
 *
 * If the CONFIRMED fn_801CD2F8(this->0x4) self-ID check passes: registers
 * ANOTHER timed-cue sequence array (`lbl_8053A140`, count=1) at this+0x270 via
 * the CONFIRMED fn_801D2608, then activates sequence 0 via fn_801D22DC - a
 * SECOND registration at the same offset fn_801D6554's setParams already used
 * for `lbl_8053A138` (count=2). Open question: whether this genuinely
 * re-registers (overwriting) or whether fn_801D7E6C/fn_801D6554 run in an
 * order where only one's registration survives - not yet resolved.
 *
 * Otherwise (self-ID invalid): SPAWNS the two attached effect handles via
 * fn_8013CC50(this, this+0xc, magnitude, 0x226/0x227, 1, 2, 0, 0, 1) into
 * this->0x2a8/0x2ac - the CONFIRMED pair fn_801D7BA0/fn_801D7DB4 later update -
 * before falling into the shared tail below (so only THIS branch spawns them;
 * the self-ID-valid branch above skips straight past the spawn code).
 *
 * Shared tail: re-checks fn_801CD2F8(this->0x4) a SECOND time and either
 * propagates fresh default velocity/range values (`lbl_8053F1B4/8/C`,
 * `lbl_8053F1A4/8/C/0`) or fallback constants (`lbl_8053F1BC/C0`) into both
 * effect handles' +0x98/0x9c/0xa0/0xb0/0xb4 offsets - the same propagation
 * fn_801D7DB4 performs.
 */

.section extab, "a"
.balign 4
.global etb_8000870C
etb_8000870C:
    .4byte 0x080A0000
    .4byte 0x00000000
.size etb_8000870C, 8

.section extabindex, "a"
.balign 4
.global eti_80015AE4
eti_80015AE4:
    .4byte fn_801D7E6C
    .4byte 0x00000284
    .4byte etb_8000870C
.size eti_80015AE4, 12

.text
.balign 4
.global fn_801D7E6C

fn_801D7E6C:
    stwu 1, -0x10(1)
    mflr 0
    stw 0, 0x14(1)
    stw 31, 0xc(1)
    mr 31, 3
    bl fn_801D0ED0
    .4byte 0xC042C214 # lfs f2, lbl_8053F1B4@sda21(r0)
    li 3, 0x4
    .4byte 0xC022C218 # lfs f1, lbl_8053F1B8@sda21(r0)
    li 4, 0x2
    stfs 2, 0x60(31)
    li 0, 0x1
    stfs 2, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    lfs 0, 0x60(31)
    stfs 0, 0x70(31)
    lfs 0, 0x64(31)
    stfs 0, 0x74(31)
    lfs 0, 0x68(31)
    stfs 0, 0x78(31)
    lfs 0, 0x6c(31)
    stfs 0, 0x7c(31)
    stfs 2, 0x80(31)
    stfs 2, 0x84(31)
    stfs 1, 0x88(31)
    stfs 1, 0x8c(31)
    stw 3, 0xb0(31)
    stw 4, 0x98(31)
    lwz 3, 0x230(31)
    ori 3, 3, 0x300
    stw 3, 0x230(31)
    stw 4, 0x114(31)
    stb 0, 0x194(31)
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x4182002C # beq .L_801D7F2C
    addi 3, 31, 0x270
    .4byte 0x388D8580 # li r4, lbl_8053A140@sda21
    li 5, 0x1
    bl fn_801D2608
    addi 3, 31, 0x270
    li 4, 0x0
    li 5, 0x2
    li 6, 0x0
    bl fn_801D22DC
    .4byte 0x4800005C # b .L_801D7F84
L_801D7F2C:
    lwz 3, 0x4(31)
    addi 4, 31, 0xc
    .4byte 0xC022C214 # lfs f1, lbl_8053F1B4@sda21(r0)
    li 5, 0x226
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2a8(31)
    addi 4, 31, 0xc
    .4byte 0xC022C214 # lfs f1, lbl_8053F1B4@sda21(r0)
    li 5, 0x227
    lwz 3, 0x4(31)
    li 6, 0x1
    li 7, 0x2
    li 8, 0x0
    li 9, 0x0
    li 10, 0x1
    bl fn_8013CC50
    stw 3, 0x2ac(31)
L_801D7F84:
    lwz 3, 0x4(31)
    bl fn_801CD2F8
    clrlwi. 0, 3, 24
    .4byte 0x418200B0 # beq .L_801D8040
    .4byte 0xC002C214 # lfs f0, lbl_8053F1B4@sda21(r0)
    .4byte 0xC062C204 # lfs f3, lbl_8053F1A4@sda21(r0)
    stfs 0, 0x54(31)
    .4byte 0xC042C208 # lfs f2, lbl_8053F1A8@sda21(r0)
    stfs 0, 0x58(31)
    .4byte 0xC022C20C # lfs f1, lbl_8053F1AC@sda21(r0)
    stfs 0, 0x5c(31)
    .4byte 0xC002C210 # lfs f0, lbl_8053F1B0@sda21(r0)
    stfs 3, 0x60(31)
    stfs 3, 0x64(31)
    stfs 2, 0x68(31)
    stfs 2, 0x6c(31)
    stfs 1, 0x70(31)
    stfs 1, 0x74(31)
    stfs 0, 0x78(31)
    stfs 0, 0x7c(31)
    lwz 3, 0x2a8(31)
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_801D8008
    lfs 0, 0x54(31)
    stfs 0, 0x98(3)
    lfs 0, 0x58(31)
    stfs 0, 0x9c(3)
    lfs 0, 0x5c(31)
    stfs 0, 0xa0(3)
    lfs 1, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0xb0(3)
    stfs 1, 0xb4(3)
L_801D8008:
    lwz 3, 0x2ac(31)
    cmplwi 3, 0x0
    .4byte 0x418200CC # beq .L_801D80DC
    lfs 0, 0x54(31)
    stfs 0, 0x98(3)
    lfs 0, 0x58(31)
    stfs 0, 0x9c(3)
    lfs 0, 0x5c(31)
    stfs 0, 0xa0(3)
    lfs 1, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0xb0(3)
    stfs 1, 0xb4(3)
    .4byte 0x480000A0 # b .L_801D80DC
L_801D8040:
    .4byte 0xC022C21C # lfs f1, lbl_8053F1BC@sda21(r0)
    .4byte 0xC002C220 # lfs f0, lbl_8053F1C0@sda21(r0)
    stfs 1, 0x54(31)
    stfs 1, 0x58(31)
    stfs 1, 0x5c(31)
    stfs 0, 0x60(31)
    stfs 0, 0x64(31)
    stfs 1, 0x68(31)
    stfs 1, 0x6c(31)
    stfs 0, 0x70(31)
    stfs 0, 0x74(31)
    stfs 1, 0x78(31)
    stfs 1, 0x7c(31)
    lwz 3, 0x2a8(31)
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_801D80A8
    lfs 0, 0x54(31)
    stfs 0, 0x98(3)
    lfs 0, 0x58(31)
    stfs 0, 0x9c(3)
    lfs 0, 0x5c(31)
    stfs 0, 0xa0(3)
    lfs 1, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0xb0(3)
    stfs 1, 0xb4(3)
L_801D80A8:
    lwz 3, 0x2ac(31)
    cmplwi 3, 0x0
    .4byte 0x4182002C # beq .L_801D80DC
    lfs 0, 0x54(31)
    stfs 0, 0x98(3)
    lfs 0, 0x58(31)
    stfs 0, 0x9c(3)
    lfs 0, 0x5c(31)
    stfs 0, 0xa0(3)
    lfs 1, 0x58(31)
    lfs 0, 0x54(31)
    stfs 0, 0xb0(3)
    stfs 1, 0xb4(3)
L_801D80DC:
    lwz 0, 0x14(1)
    lwz 31, 0xc(1)
    mtlr 0
    addi 1, 1, 0x10
    blr

