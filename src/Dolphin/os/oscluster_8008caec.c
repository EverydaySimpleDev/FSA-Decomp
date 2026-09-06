#include "types.h"

extern f32 lbl_80499428;
extern f32 lbl_80499470;
extern f32 lbl_80499480;
extern f32 lbl_80499490;
extern f32 lbl_8052E8A0;
extern f32 lbl_8052EA28;
extern f32 lbl_8052EA58;
extern f32 lbl_8052EB18;
extern f32 lbl_8052EB58;
extern f32 lbl_8052EB98;
extern f32 lbl_80539D38;
extern f32 lbl_80539D98;
extern f32 lbl_80539D9C;
extern f32 lbl_80539DA0;
extern f32 lbl_80539DA4;
extern f32 lbl_80539DA8;
extern f32 lbl_80539DAC;
extern f32 lbl_8053A920;
extern f32 lbl_8053A924;
extern f32 lbl_8053A928;
extern f32 lbl_8053A92C;
extern f32 lbl_8053A930;
extern f32 lbl_8053A934;
extern f32 lbl_8053A938;
extern f32 lbl_8053A93C;
extern f32 lbl_8053A940;
extern f32 lbl_8053A948;
extern f32 lbl_8053A94C;
extern f32 lbl_8053A950;
extern f32 lbl_8053A951;
extern f32 lbl_8053A954;
extern f32 lbl_8053B890;
extern f32 lbl_8053B898;
extern f32 lbl_8053B8A0;
extern f32 lbl_8053B8A8;
extern f32 lbl_8053B8B0;
extern f32 lbl_8053B8B8;
extern f32 lbl_8053B8C0;
extern f32 lbl_8053B8C4;

extern void OSGetResetSwitchState(void);
extern void OSGetTime(void);
extern void atan2(void);
extern void dtor_80084580(void);
extern void fn_8004D918(void);
extern void fn_8004DA2C(void);
extern void fn_8004E3B0(void);
extern void fn_8004E4C0(void);
extern void fn_8004E5D4(void);
extern void fn_8004E724(void);
extern void fn_8004EA24(void);
extern void fn_8004EADC(void);
extern void fn_8004F294(void);
extern void fn_8007E6F4(void);
extern void fn_8007E75C(void);
extern void fn_80086E2C(void);
extern void fn_80086E44(void);
extern void fn_80086EDC(void);
extern void fn_80086F44(void);
extern void fn_80086F58(void);
extern void fn_80087298(void);

ASM void fn_8008CAEC(void);
ASM void fn_8008CB40(void);
ASM void fn_8008CC40(void);
ASM void fn_8008CC6C(void);
ASM void fn_8008CCB8(void);
ASM void fn_8008CD0C(void);
ASM void fn_8008CD70(void);
ASM void fn_8008CE88(void);
ASM void fn_8008CED0(void);
ASM void fn_8008CEFC(void);
ASM void fn_8008CF28(void);
ASM void fn_8008CF54(void);
ASM void dtor_8008D028(void);
ASM void fn_8008D0D4(void);
ASM void fn_8008D110(void);
ASM void fn_8008D148(void);
ASM void fn_8008D15C(void);
ASM void fn_8008D424(void);
ASM void fn_8008D4CC(void);
ASM void fn_8008D538(void);
ASM void fn_8008D864(void);
ASM void fn_8008D8E4(void);
ASM void fn_8008D910(void);
ASM void fn_8008D94C(void);
ASM void fn_8008DADC(void);
ASM void fn_8008DAF8(void);
ASM void fn_8008DDB0(void);
ASM void fn_8008DE64(void);
ASM void fn_8008DED8(void);
ASM void fn_8008DF30(void);
ASM void fn_8008DFA0(void);
ASM void fn_8008E1FC(void);
ASM void fn_8008E2B8(void);
ASM void fn_8008E328(void);
ASM void fn_8008E364(void);
ASM void fn_8008E488(void);
ASM void fn_8008E4A4(void);
ASM void fn_8008E530(void);

// ============================================================================
// FIRST FOOTHOLD into the rendering pipeline (Phase 1 core systems, see
// [[project_fsa_end_goal_dusklight_style_port]]). This file + its sibling
// oscluster_80085968.c together hold ~354 previously mechanically-
// transcribed, zero-comment functions reachable from the main loop's real
// per-frame draw() (fn_800E53E8 in oscluster_800e2b40.c). Fully mapping all
// of it is a multi-session undertaking; this pass identifies and names ONE
// concrete, coherent class: a TEXT/DIALOG-BOX rendering object with a
// fade-in/out alpha animation and multi-byte (Shift-JIS-capable) glyph
// drawing. See [[project_fsa_rendering_pipeline_foothold]] for the full
// writeup, the sibling "timed screen-overlay rectangle queue" class found
// in oscluster_80085968.c, and what's still unmapped.
//
// fn_8008CAEC - this class's real destructor: calls fn_80086EDC(this,0)
// then conditionally the shared free helper dtor_80084580, matching the
// same Actor-dtor convention used project-wide, just for an unrelated
// (rendering) class hierarchy.
ASM void fn_8008CAEC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x4182001C  // beq .L_8008CB24
    li r4, 0x0
    bl fn_80086EDC
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8008CB24
    mr r3, r30
    bl dtor_80084580
L_8008CB24:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

// fn_8008CB40 - the per-frame "tick fade, then draw" entry point (called
// directly from the main loop's draw(), see fn_800E53E8's banner in
// oscluster_800e2b40.c). Fully traced: this->0x20 is a "hold" counter -
// while positive it just decrements; once it hits exactly 0, it loads a
// QUEUED next state from this->0x24 into this->0x4 (a real state-machine
// hand-off). this->0x4 is the fade state: 0=snap fully opaque (alpha
// byte this->0xf=0xFF) and stop; 1=terminal "fully faded," skips drawing
// entirely; 2=fade IN (this->0xa/this->0x8 = elapsed/duration frame
// counters, alpha ramps 0xFF*elapsed/duration inverted); 3=fade OUT (same
// ramp, not inverted) - both transition to state 1 or 0 once elapsed
// reaches duration. After the state machine (except state 1's early
// exit), makes a virtual call through this->vtable[0x14] - the actual
// draw method, shared with fn_8008CD70's per-glyph draw call below.
ASM void fn_8008CB40(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r4, 0x20(r3)
    cmpwi r4, 0x0
    opword  0x41800018  // blt .L_8008CB6C
    subi r0, r4, 0x1
    stw r0, 0x20(r3)
    opword  0x4082000C  // bne .L_8008CB6C
    lwz r0, 0x24(r3)
    stw r0, 0x4(r3)
L_8008CB6C:
    lwz r0, 0x4(r3)
    cmpwi r0, 0x1
    opword  0x418200BC  // beq .L_8008CC30
    cmpwi r0, 0x2
    opword  0x4182002C  // beq .L_8008CBA8
    opword  0x40800010  // bge .L_8008CB90
    cmpwi r0, 0x0
    opword  0x41820014  // beq .L_8008CB9C
    opword  0x48000094  // b .L_8008CC20
L_8008CB90:
    cmpwi r0, 0x4
    opword  0x4080008C  // bge .L_8008CC20
    opword  0x48000050  // b .L_8008CBE8
L_8008CB9C:
    li r0, 0xff
    stb r0, 0xf(r3)
    opword  0x4800007C  // b .L_8008CC20
L_8008CBA8:
    lhz r4, 0xa(r3)
    addi r0, r4, 0x1
    sth r0, 0xa(r3)
    clrlwi r0, r0, 16
    mulli r4, r0, 0xff
    lhz r0, 0x8(r3)
    divw r0, r4, r0
    subfic r0, r0, 0xff
    stb r0, 0xf(r3)
    lhz r4, 0xa(r3)
    lhz r0, 0x8(r3)
    cmplw r4, r0
    opword  0x41800048  // blt .L_8008CC20
    li r0, 0x1
    stw r0, 0x4(r3)
    opword  0x4800003C  // b .L_8008CC20
L_8008CBE8:
    lhz r4, 0xa(r3)
    addi r0, r4, 0x1
    sth r0, 0xa(r3)
    clrlwi r0, r0, 16
    mulli r4, r0, 0xff
    lhz r0, 0x8(r3)
    divw r0, r4, r0
    stb r0, 0xf(r3)
    lhz r4, 0xa(r3)
    lhz r0, 0x8(r3)
    cmplw r4, r0
    opword  0x4180000C  // blt .L_8008CC20
    li r0, 0x0
    stw r0, 0x4(r3)
L_8008CC20:
    lwz r12, 0x0(r3)
    lwz r12, 0x14(r12)
    mtctr r12
    bctrl
L_8008CC30:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

// fn_8008CC40 - this class's real constructor: installs vtable
// lbl_80499428, sets this->0xc/0x10/0x14/0x18 = -1 (the 4 packed RGBA
// quad-corner colors, see fn_8008CCB8 - -1 = 0xFFFFFFFF, i.e. defaults to
// opaque white), and this->0x4=0 (fade state, see fn_8008CB40).
ASM void fn_8008CC40(void)
{
    nofralloc
    lis r5, lbl_80499428@ha
    li r4, -0x1
    addi r5, r5, lbl_80499428@l
    li r0, 0x0
    stw r5, 0x0(r3)
    stw r4, 0xc(r3)
    stw r4, 0x10(r3)
    stw r4, 0x14(r3)
    stw r4, 0x18(r3)
    stb r0, 0x4(r3)
    blr
}

// fn_8008CC6C - a second-stage init: builds a local {-1,-1,-1,-1} byte
// array on the stack and passes it to fn_8008CCB8 to reset the quad's
// RGBA color to that same "opaque white" default, then clears this->0x4/
// 0x5/0x8 (fade state, a flag byte, and the duration counter).
ASM void fn_8008CC6C(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    li r0, -0x1
    addi r4, r1, 0xc
    stw r31, 0x1c(r1)
    mr r31, r3
    stw r0, 0x8(r1)
    stw r0, 0xc(r1)
    bl fn_8008CCB8
    li r0, 0x0
    stb r0, 0x5(r31)
    stw r0, 0x8(r31)
    stb r0, 0x4(r31)
    lwz r31, 0x1c(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

// fn_8008CCB8 - sets the quad's 4 corner colors (this->0xc..0x1b, 4
// bytes each) all to the SAME solid RGBA color read from the 4-byte
// buffer at `src` (r4) - a "set solid fill color" primitive. Compare
// fn_8008CD0C below, which takes two source colors for a 2-tone quad.
ASM void fn_8008CCB8(void)
{
    nofralloc
    lbz r7, 0x0(r4)
    lbz r6, 0x1(r4)
    stb r7, 0xc(r3)
    lbz r5, 0x2(r4)
    stb r6, 0xd(r3)
    lbz r0, 0x3(r4)
    stb r5, 0xe(r3)
    stb r0, 0xf(r3)
    stb r7, 0x10(r3)
    stb r6, 0x11(r3)
    stb r5, 0x12(r3)
    stb r0, 0x13(r3)
    stb r7, 0x14(r3)
    stb r6, 0x15(r3)
    stb r5, 0x16(r3)
    stb r0, 0x17(r3)
    stb r7, 0x18(r3)
    stb r6, 0x19(r3)
    stb r5, 0x1a(r3)
    stb r0, 0x1b(r3)
    blr
}

// fn_8008CD0C - sets the quad's 4 corner colors to a TWO-TONE gradient:
// corners 0-1 get the RGBA color from source `r4`, corners 2-3 get a
// SECOND RGBA color from source `r5` - e.g. a top/bottom or left/right
// gradient fill, vs. fn_8008CCB8's single solid color.
ASM void fn_8008CD0C(void)
{
    nofralloc
    lbz r10, 0x0(r4)
    lbz r0, 0x1(r4)
    stb r10, 0xc(r3)
    lbz r9, 0x2(r4)
    stb r0, 0xd(r3)
    lbz r8, 0x3(r4)
    stb r9, 0xe(r3)
    lbz r7, 0x0(r5)
    stb r8, 0xf(r3)
    lbz r6, 0x1(r5)
    stb r10, 0x10(r3)
    lbz r4, 0x2(r5)
    stb r0, 0x11(r3)
    lbz r0, 0x3(r5)
    stb r9, 0x12(r3)
    stb r8, 0x13(r3)
    stb r7, 0x14(r3)
    stb r6, 0x15(r3)
    stb r4, 0x16(r3)
    stb r0, 0x17(r3)
    stb r7, 0x18(r3)
    stb r6, 0x19(r3)
    stb r4, 0x1a(r3)
    stb r0, 0x1b(r3)
    blr
}

// fn_8008CD70(this, x, y, w, h, count) - draws a STRING of glyphs one
// character at a time, advancing the cursor by each glyph's returned
// width. For each byte: calls this->vtable[0x40] to test whether it's
// the lead byte of a multi-byte (Shift-JIS-style) character - if so,
// combines it with the FOLLOWING byte into one 16-bit code and consumes
// 2 source bytes instead of 1 - then calls this->vtable[0x14] (the SAME
// draw slot fn_8008CB40 uses) with the resulting character code and
// current cursor position, adding the returned glyph width to the running
// x cursor. Confirms this class is a Shift-JIS-capable TEXT/DIALOG-BOX
// renderer, not a generic screen overlay - the "fade" state machine in
// fn_8008CB40 is this text box's own show/hide animation.
ASM void fn_8008CD70(void)
{
    nofralloc
    stwu r1, -0x70(r1)
    mflr r0
    stw r0, 0x74(r1)
    stfd fp31, 0x60(r1)
    psq_st fp31, 0x68(r1), 0, 0
    stfd fp30, 0x50(r1)
    psq_st fp30, 0x58(r1), 0, 0
    stfd fp29, 0x40(r1)
    psq_st fp29, 0x48(r1), 0, 0
    stfd fp28, 0x30(r1)
    psq_st fp28, 0x38(r1), 0, 0
    stfd fp27, 0x20(r1)
    psq_st fp27, 0x28(r1), 0, 0
    stmw r27, 0xc(r1)
    fmr fp27, fp1
    mr r27, r3
    fmr fp28, fp2
    mr r28, r4
    fmr fp29, fp3
    mr r29, r5
    fmr fp30, fp4
    mr r30, r6
    fmr fp31, fp27
    opword  0x48000074  // b .L_8008CE40
L_8008CDD0:
    lwz r12, 0x0(r27)
    mr r3, r27
    lbz r4, 0x0(r28)
    lwz r12, 0x40(r12)
    mr r31, r4
    mtctr r12
    bctrl
    clrlwi. r0, r3, 24
    opword  0x41820014  // beq .L_8008CE04
    lbzu r0, 0x1(r28)
    slwi r31, r31, 8
    subi r29, r29, 0x1
    or r31, r31, r0
L_8008CE04:
    mr r3, r27
    fmr fp1, fp27
    lwz r12, 0x0(r27)
    fmr fp2, fp28
    fmr fp3, fp29
    mr r4, r31
    lwz r12, 0x14(r12)
    fmr fp4, fp30
    mr r5, r30
    mtctr r12
    bctrl
    fadds fp27, fp27, fp1
    li r30, 0x1
    subi r29, r29, 0x1
    addi r28, r28, 0x1
L_8008CE40:
    cmplwi r29, 0x0
    opword  0x4082FF8C  // bne .L_8008CDD0
    fsubs fp1, fp27, fp31
    psq_l fp31, 0x68(r1), 0, 0
    lfd fp31, 0x60(r1)
    psq_l fp30, 0x58(r1), 0, 0
    lfd fp30, 0x50(r1)
    psq_l fp29, 0x48(r1), 0, 0
    lfd fp29, 0x40(r1)
    psq_l fp28, 0x38(r1), 0, 0
    lfd fp28, 0x30(r1)
    psq_l fp27, 0x28(r1), 0, 0
    lfd fp27, 0x20(r1)
    lmw r27, 0xc(r1)
    lwz r0, 0x74(r1)
    mtlr r0
    addi r1, r1, 0x70
    blr
}

// fn_8008CE88(this, count) - a reset/teardown helper: reinstalls the
// default vtable lbl_80499428, and if `count` > 0, calls the shared free
// helper dtor_80084580 - used where an owner wants to "reset this box to
// fresh defaults" without a full destructor call.
ASM void fn_8008CE88(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr. r31, r3
    opword  0x4182001C  // beq .L_8008CEB8
    lis r5, lbl_80499428@ha
    extsh. r0, r4
    addi r0, r5, lbl_80499428@l
    stw r0, 0x0(r31)
    opword  0x40810008  // ble .L_8008CEB8
    bl dtor_80084580
L_8008CEB8:
    lwz r0, 0x14(r1)
    mr r3, r31
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

// fn_8008CED0 - trivial virtual-call passthrough for this->vtable[0xc]
// (a different slot than the draw/fade slots above - likely a "get
// width/height" or similar accessor, not yet identified).
ASM void fn_8008CED0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008CEFC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x28(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008CF28(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    lwz r12, 0x0(r3)
    lwz r12, 0x24(r12)
    mtctr r12
    bctrl
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008CF54(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr r30, r3
    bl fn_8007E6F4
    lis r4, lbl_80499490@ha
    addi r3, r30, 0x18
    addi r0, r4, lbl_80499490@l
    stw r0, 0x0(r30)
    bl fn_8008D910
    addi r3, r30, 0x48
    bl fn_8008DADC
    addi r3, r30, 0x58
    bl fn_8008DADC
    mr r4, r30
    addi r3, r30, 0x68
    bl fn_8008DE64
    mr r4, r30
    addi r3, r30, 0x80
    bl fn_80086E2C
    li r0, 0x0
    mr r3, r30
    stb r0, 0x98(r30)
    sth r31, 0x7c(r30)
    lha r0, 0x7c(r30)
    cmpwi r0, 0x0
    opword  0x41800014  // blt .L_8008CFDC
    opword  0x38AD8D64  // li r5, lbl_8053A924@sda21
    lbzx r4, r5, r31
    addi r0, r4, 0x1
    stbx r0, r5, r31
L_8008CFDC:
    bl fn_8008D0D4
    lis r3, lbl_8052E8A0@ha
    addi r4, r30, 0x80
    addi r3, r3, lbl_8052E8A0@l
    bl fn_80086F58
    mr r3, r30
    bl fn_8008D538
    li r0, 0x0
    mr r3, r30
    stw r0, 0x90(r30)
    stw r0, 0x94(r30)
    bl fn_8008D148
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void dtor_8008D028(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r4
    stw r30, 0x8(r1)
    mr. r30, r3
    opword  0x41820074  // beq .L_8008D0B8
    lis r3, lbl_80499490@ha
    addi r0, r3, lbl_80499490@l
    stw r0, 0x0(r30)
    lha r5, 0x7c(r30)
    extsh. r0, r5
    opword  0x4180001C  // blt .L_8008D078
    opword  0x388D8D64  // li r4, lbl_8053A924@sda21
    li r0, -0x1
    lbzx r3, r4, r5
    subi r3, r3, 0x1
    stbx r3, r4, r5
    sth r0, 0x7c(r30)
L_8008D078:
    lis r3, lbl_8052E8A0@ha
    addi r4, r30, 0x80
    addi r3, r3, lbl_8052E8A0@l
    bl fn_80087298
    addic. r0, r30, 0x80
    opword  0x41820010  // beq .L_8008D09C
    addi r3, r30, 0x80
    li r4, 0x0
    bl fn_80086E44
L_8008D09C:
    mr r3, r30
    li r4, 0x0
    bl fn_8007E75C
    extsh. r0, r31
    opword  0x4081000C  // ble .L_8008D0B8
    mr r3, r30
    bl dtor_80084580
L_8008D0B8:
    lwz r0, 0x14(r1)
    mr r3, r30
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008D0D4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    opword  0x880D8D60  // lbz r0, lbl_8053A920@sda21(r0)
    cmplwi r0, 0x0
    opword  0x40820018  // bne .L_8008D100
    lis r3, lbl_8052E8A0@ha
    addi r3, r3, lbl_8052E8A0@l
    bl fn_80086F44
    li r0, 0x1
    opword  0x980D8D60  // stb r0, lbl_8053A920@sda21(r0)
L_8008D100:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008D110(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r3, 0x5
    stw r0, 0x14(r1)
    bl fn_8004EADC
    li r0, 0x3
    li r3, 0x3
    opword  0x900D8D6C  // stw r0, lbl_8053A92C@sda21(r0)
    bl fn_8004F294
    bl fn_8004E5D4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008D148(void)
{
    nofralloc
    li r4, 0x0
    li r0, 0x1
    stb r4, 0x98(r3)
    stb r0, 0xa8(r3)
    blr
}

ASM void fn_8008D15C(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    lis r3, lbl_8052EA28@ha
    stw r0, 0x44(r1)
    addi r3, r3, lbl_8052EA28@l
    stmw r24, 0x20(r1)
    bl fn_8004E724
    opword  0x800D81DC  // lwz r0, lbl_80539D9C@sda21(r0)
    opword  0x906D8D70  // stw r3, lbl_8053A930@sda21(r0)
    cmpwi r0, 0x2
    opword  0x41820024  // beq .L_8008D1A8
    opword  0x4080002C  // bge .L_8008D1B4
    cmpwi r0, 0x1
    opword  0x40800008  // bge .L_8008D198
    opword  0x48000020  // b .L_8008D1B4
L_8008D198:
    lis r3, lbl_8052EA28@ha
    addi r3, r3, lbl_8052EA28@l
    bl fn_8004D918
    opword  0x48000010  // b .L_8008D1B4
L_8008D1A8:
    lis r3, lbl_8052EA28@ha
    addi r3, r3, lbl_8052EA28@l
    bl fn_8004DA2C
L_8008D1B4:
    lis r6, lbl_8052EA28@ha
    lis r5, lbl_8052EA58@ha
    lis r4, lbl_8052EB18@ha
    lis r3, lbl_8052EB58@ha
    addi r29, r6, lbl_8052EA28@l
    addi r28, r5, lbl_8052EA58@l
    addi r27, r4, lbl_8052EB18@l
    addi r26, r3, lbl_8052EB58@l
    li r31, 0x0
    li r24, 0x0
    lis r30, 0x8000
L_8008D1E0:
    lbz r3, 0xa(r29)
    srw r25, r30, r24
    extsb. r0, r3
    opword  0x4082005C  // bne .L_8008D248
    lbz r4, 0x2(r29)
    mr r3, r27
    lbz r5, 0x3(r29)
    li r7, 0x0
    opword  0x80CD81D8  // lwz r6, lbl_80539D98@sda21(r0)
    lwz r8, 0x0(r28)
    bl fn_8008DAF8
    lbz r4, 0x4(r29)
    slwi r25, r3, 24
    lbz r5, 0x5(r29)
    mr r3, r26
    opword  0x80CD81D8  // lwz r6, lbl_80539D98@sda21(r0)
    li r7, 0x1
    lwz r8, 0x0(r28)
    bl fn_8008DAF8
    slwi r0, r3, 16
    mr r3, r28
    or r25, r25, r0
    mr r4, r29
    mr r5, r25
    bl fn_8008D94C
    opword  0x4800007C  // b .L_8008D2C0
L_8008D248:
    extsb r0, r3
    cmpwi r0, -0x1
    opword  0x40820060  // bne .L_8008D2B0
    opword  0x80CD81D8  // lwz r6, lbl_80539D98@sda21(r0)
    mr r3, r27
    li r4, 0x0
    li r5, 0x0
    li r7, 0x0
    li r8, 0x0
    bl fn_8008DAF8
    opword  0x80CD81D8  // lwz r6, lbl_80539D98@sda21(r0)
    mr r3, r26
    li r4, 0x0
    li r5, 0x0
    li r7, 0x1
    li r8, 0x0
    bl fn_8008DAF8
    mr r3, r28
    li r4, 0x0
    li r5, 0x0
    bl fn_8008D94C
    opword  0x800D8D68  // lwz r0, lbl_8053A928@sda21(r0)
    and. r0, r0, r25
    opword  0x4082001C  // bne .L_8008D2C0
    or r31, r31, r25
    opword  0x48000014  // b .L_8008D2C0
L_8008D2B0:
    li r0, 0x0
    stw r0, 0x4(r28)
    stw r0, 0x8(r28)
    stw r0, 0x18(r28)
L_8008D2C0:
    addi r24, r24, 0x1
    addi r28, r28, 0x30
    cmpwi r24, 0x4
    addi r27, r27, 0x10
    addi r26, r26, 0x10
    addi r29, r29, 0xc
    opword  0x4180FF08  // blt .L_8008D1E0
    lis r3, lbl_8052E8A0@ha
    lwz r30, lbl_8052E8A0@l(r3)
    opword  0x4800010C  // b .L_8008D3F0
L_8008D2E8:
    lwz r4, 0x0(r30)
    lwz r3, 0x94(r4)
    cmplwi r3, 0x0
    opword  0x41820088  // beq .L_8008D37C
    lbz r0, 0x4(r3)
    cmplwi r0, 0x0
    opword  0x4182007C  // beq .L_8008D37C
    lwz r12, 0x0(r3)
    addi r4, r1, 0x8
    lwz r12, 0xc(r12)
    mtctr r12
    bctrl
    lwz r8, 0x0(r30)
    li r7, 0x0
    lbz r4, 0xa(r1)
    lbz r5, 0xb(r1)
    addi r3, r8, 0x48
    opword  0x80CD81D8  // lwz r6, lbl_80539D98@sda21(r0)
    lwz r8, 0x18(r8)
    bl fn_8008DAF8
    lwz r8, 0x0(r30)
    slwi r24, r3, 24
    lbz r4, 0xc(r1)
    li r7, 0x1
    lbz r5, 0xd(r1)
    addi r3, r8, 0x58
    opword  0x80CD81D8  // lwz r6, lbl_80539D98@sda21(r0)
    lwz r8, 0x18(r8)
    bl fn_8008DAF8
    slwi r0, r3, 16
    lwz r3, 0x0(r30)
    or r24, r24, r0
    addi r4, r1, 0x8
    mr r5, r24
    addi r3, r3, 0x18
    bl fn_8008D94C
    opword  0x48000020  // b .L_8008D398
L_8008D37C:
    lha r0, 0x7c(r4)
    cmpwi r0, -0x1
    opword  0x4082000C  // bne .L_8008D390
    mr r3, r4
    bl fn_8008D424
L_8008D390:
    lwz r3, 0x0(r30)
    bl fn_8008D538
L_8008D398:
    lwz r4, 0x0(r30)
    lwz r3, 0x90(r4)
    cmplwi r3, 0x0
    opword  0x41820048  // beq .L_8008D3EC
    lbz r0, 0x4(r3)
    cmplwi r0, 0x0
    opword  0x4182003C  // beq .L_8008D3EC
    lha r4, 0x7c(r4)
    extsh. r0, r4
    opword  0x41800030  // blt .L_8008D3EC
    mulli r5, r4, 0xc
    lis r4, lbl_8052EA28@ha
    addi r0, r4, lbl_8052EA28@l
    add r4, r0, r5
    lbz r0, 0xa(r4)
    extsb. r0, r0
    opword  0x40820014  // bne .L_8008D3EC
    lwz r12, 0x0(r3)
    lwz r12, 0x10(r12)
    mtctr r12
    bctrl
L_8008D3EC:
    lwz r30, 0xc(r30)
L_8008D3F0:
    cmplwi r30, 0x0
    opword  0x4082FEF4  // bne .L_8008D2E8
    cmplwi r31, 0x0
    opword  0x4182000C  // beq .L_8008D408
    mr r3, r31
    bl fn_8004E3B0
L_8008D408:
    bl fn_8008D864
    lmw r24, 0x20(r1)
    lwz r0, 0x44(r1)
    opword  0x806D8D70  // lwz r3, lbl_8053A930@sda21(r0)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_8008D424(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_8052EA28@ha
    li r5, 0x0
    stw r0, 0x14(r1)
    li r0, 0x4
    addi r4, r4, lbl_8052EA28@l
    stw r31, 0xc(r1)
    mr r31, r3
    opword  0x386D8D64  // li r3, lbl_8053A924@sda21
    mtctr r0
L_8008D450:
    lbz r0, 0xa(r4)
    extsb. r0, r0
    opword  0x40820050  // bne .L_8008D4A8
    lbz r0, 0x0(r3)
    cmplwi r0, 0x0
    opword  0x40820044  // bne .L_8008D4A8
    sth r5, 0x7c(r31)
    li r0, 0x1
    opword  0x388D8D64  // li r4, lbl_8053A924@sda21
    lis r3, lbl_8052EA58@ha
    stbx r0, r4, r5
    mulli r6, r5, 0x30
    addi r0, r3, lbl_8052EA58@l
    lwz r4, 0x3c(r31)
    add r3, r0, r6
    lwz r5, 0x40(r31)
    lwz r6, 0x44(r31)
    bl fn_8008E488
    mr r4, r31
    addi r3, r31, 0x68
    bl fn_8008DE64
    opword  0x48000014  // b .L_8008D4B8
L_8008D4A8:
    addi r4, r4, 0xc
    addi r3, r3, 0x1
    addi r5, r5, 0x1
    opword  0x4200FF9C  // bdnz .L_8008D450
L_8008D4B8:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008D4CC(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    xoris r5, r5, 0x8000
    stw r0, 0x14(r1)
    opword  0x800D8D88  // lwz r0, lbl_8053A948@sda21(r0)
    opword  0x80ED8D8C  // lwz r7, lbl_8053A94C@sda21(r0)
    xoris r4, r0, 0x8000
    subfc r0, r7, r6
    subfe r4, r4, r5
    subfe r4, r5, r5
    neg. r4, r4
    opword  0x40820030  // bne .L_8008D528
    li r0, 0x1
    opword  0x818D8D7C  // lwz r12, lbl_8053A93C@sda21(r0)
    opword  0x980D8D91  // stb r0, lbl_8053A951@sda21(r0)
    cmplwi r12, 0x0
    lha r0, 0x7c(r3)
    opword  0x900D8D94  // stw r0, lbl_8053A954@sda21(r0)
    opword  0x41820014  // beq .L_8008D528
    lha r3, 0x7c(r3)
    opword  0x808D8D80  // lwz r4, lbl_8053A940@sda21(r0)
    mtctr r12
    bctrl
L_8008D528:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008D538(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    stw r0, 0x24(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr r30, r3
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    lha r3, 0x7c(r3)
    cmpwi r3, -0x1
    opword  0x418202E4  // beq .L_8008D844
    extsh. r0, r3
    opword  0x41800138  // blt .L_8008D6A0
    cmpwi r3, 0x4
    opword  0x40800130  // bge .L_8008D6A0
    mulli r4, r3, 0x30
    lis r3, lbl_8052EA58@ha
    lis r5, lbl_8052EB18@ha
    addi r0, r3, lbl_8052EA58@l
    add r7, r0, r4
    lis r4, lbl_8052EB58@ha
    lwz r6, 0x0(r7)
    lis r3, lbl_8052EA28@ha
    addi r5, r5, lbl_8052EB18@l
    addi r0, r4, lbl_8052EB58@l
    stw r6, 0x18(r30)
    addi r3, r3, lbl_8052EA28@l
    lwz r4, 0x4(r7)
    stw r4, 0x1c(r30)
    lwz r4, 0x8(r7)
    stw r4, 0x20(r30)
    lbz r4, 0xc(r7)
    stb r4, 0x24(r30)
    lbz r4, 0xd(r7)
    stb r4, 0x25(r30)
    lbz r4, 0xe(r7)
    stb r4, 0x26(r30)
    lbz r4, 0xf(r7)
    stb r4, 0x27(r30)
    lfs fp0, 0x10(r7)
    stfs fp0, 0x28(r30)
    lfs fp0, 0x14(r7)
    stfs fp0, 0x2c(r30)
    lwz r4, 0x18(r7)
    stw r4, 0x30(r30)
    lwz r4, 0x1c(r7)
    stw r4, 0x34(r30)
    lwz r4, 0x20(r7)
    stw r4, 0x38(r30)
    lwz r4, 0x24(r7)
    stw r4, 0x3c(r30)
    lwz r4, 0x28(r7)
    stw r4, 0x40(r30)
    lwz r4, 0x2c(r7)
    stw r4, 0x44(r30)
    lha r4, 0x7c(r30)
    slwi r4, r4, 4
    add r5, r5, r4
    lfs fp0, 0x0(r5)
    stfs fp0, 0x48(r30)
    lfs fp0, 0x4(r5)
    stfs fp0, 0x4c(r30)
    lfs fp0, 0x8(r5)
    stfs fp0, 0x50(r30)
    lha r4, 0xc(r5)
    sth r4, 0x54(r30)
    lbz r4, 0xe(r5)
    stb r4, 0x56(r30)
    lbz r4, 0xf(r5)
    stb r4, 0x57(r30)
    lha r4, 0x7c(r30)
    slwi r4, r4, 4
    add r4, r0, r4
    lfs fp0, 0x0(r4)
    stfs fp0, 0x58(r30)
    lfs fp0, 0x4(r4)
    stfs fp0, 0x5c(r30)
    lfs fp0, 0x8(r4)
    stfs fp0, 0x60(r30)
    lha r0, 0xc(r4)
    sth r0, 0x64(r30)
    lbz r0, 0xe(r4)
    stb r0, 0x66(r30)
    lbz r0, 0xf(r4)
    stb r0, 0x67(r30)
    lha r0, 0x7c(r30)
    mulli r0, r0, 0xc
    add r3, r3, r0
    lbz r0, 0xa(r3)
    stb r0, 0x7e(r30)
L_8008D6A0:
    lbz r0, 0xa8(r30)
    cmplwi r0, 0x0
    opword  0x4182001C  // beq .L_8008D6C4
    lwz r3, 0x18(r30)
    opword  0x800D81EC  // lwz r0, lbl_80539DAC@sda21(r0)
    opword  0x808D81E8  // lwz r4, lbl_80539DA8@sda21(r0)
    and r0, r3, r0
    cmplw r4, r0
    opword  0x41820010  // beq .L_8008D6D0
L_8008D6C4:
    li r0, 0x0
    stb r0, 0x98(r30)
    opword  0x48000098  // b .L_8008D764
L_8008D6D0:
    opword  0x880D8D91  // lbz r0, lbl_8053A951@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4082008C  // bne .L_8008D764
    lbz r0, 0x98(r30)
    cmplwi r0, 0x1
    opword  0x4082006C  // bne .L_8008D750
    bl OSGetTime
    lwz r0, 0xa4(r30)
    lwz r5, 0xa0(r30)
    subfc r6, r0, r4
    opword  0x800D8D88  // lwz r0, lbl_8053A948@sda21(r0)
    subfe r3, r5, r3
    opword  0x80AD8D8C  // lwz r5, lbl_8053A94C@sda21(r0)
    xoris r4, r3, 0x8000
    xoris r3, r0, 0x8000
    subfc r0, r5, r6
    subfe r3, r3, r4
    subfe r3, r4, r4
    neg. r3, r3
    opword  0x40820048  // bne .L_8008D764
    li r0, 0x1
    opword  0x818D8D7C  // lwz r12, lbl_8053A93C@sda21(r0)
    opword  0x980D8D91  // stb r0, lbl_8053A951@sda21(r0)
    cmplwi r12, 0x0
    lha r0, 0x7c(r30)
    opword  0x900D8D94  // stw r0, lbl_8053A954@sda21(r0)
    opword  0x4182002C  // beq .L_8008D764
    lha r3, 0x7c(r30)
    opword  0x808D8D80  // lwz r4, lbl_8053A940@sda21(r0)
    mtctr r12
    bctrl
    opword  0x48000018  // b .L_8008D764
L_8008D750:
    li r0, 0x1
    stb r0, 0x98(r30)
    bl OSGetTime
    stw r4, 0xa4(r30)
    stw r3, 0xa0(r30)
L_8008D764:
    lis r3, lbl_8052EB98@ha
    lwz r31, lbl_8052EB98@l(r3)
    opword  0x480000B4  // b .L_8008D820
L_8008D770:
    lwz r28, 0x0(r31)
    lbz r0, 0x10(r28)
    cmplwi r0, 0x0
    opword  0x418200A0  // beq .L_8008D81C
    lha r29, 0x7c(r30)
    extsh. r0, r29
    opword  0x41800094  // blt .L_8008D81C
    cmpwi r29, 0x4
    opword  0x4080008C  // bge .L_8008D81C
    lwz r4, 0x18(r30)
    lwz r3, 0x18(r28)
    lwz r0, 0x14(r28)
    and r3, r4, r3
    cmplw r3, r0
    opword  0x40820068  // bne .L_8008D810
    addi r3, r29, 0x20
    lbzx r0, r28, r3
    cmplwi r0, 0x1
    opword  0x4082002C  // bne .L_8008D7E4
    bl OSGetTime
    slwi r5, r29, 3
    lwz r3, 0x0(r31)
    addi r0, r5, 0x28
    add r5, r28, r0
    lwz r5, 0x4(r5)
    subfc r5, r5, r4
    lha r4, 0x7c(r30)
    bl fn_8008E530
    opword  0x4800003C  // b .L_8008D81C
L_8008D7E4:
    li r0, 0x1
    stbx r0, r28, r3
    lwz r29, 0x0(r31)
    bl OSGetTime
    lha r0, 0x7c(r30)
    slwi r5, r0, 3
    addi r0, r5, 0x28
    add r5, r29, r0
    stw r4, 0x4(r5)
    stw r3, 0x0(r5)
    opword  0x48000010  // b .L_8008D81C
L_8008D810:
    addi r0, r29, 0x20
    li r3, 0x0
    stbx r3, r28, r0
L_8008D81C:
    lwz r31, 0xc(r31)
L_8008D820:
    cmplwi r31, 0x0
    opword  0x4082FF4C  // bne .L_8008D770
    lha r4, 0x7c(r30)
    extsh. r0, r4
    opword  0x41800014  // blt .L_8008D844
    cmpwi r4, 0x4
    opword  0x4080000C  // bge .L_8008D844
    addi r3, r30, 0x68
    bl fn_8008DFA0
L_8008D844:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008D864(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    opword  0x880D8D91  // lbz r0, lbl_8053A951@sda21(r0)
    cmplwi r0, 0x0
    opword  0x4082005C  // bne .L_8008D8D4
    bl OSGetResetSwitchState
    cmpwi r3, 0x0
    opword  0x41820010  // beq .L_8008D894
    li r0, 0x1
    opword  0x980D8D90  // stb r0, lbl_8053A950@sda21(r0)
    opword  0x48000044  // b .L_8008D8D4
L_8008D894:
    opword  0x880D8D90  // lbz r0, lbl_8053A950@sda21(r0)
    cmplwi r0, 0x1
    opword  0x40820030  // bne .L_8008D8CC
    opword  0x818D8D7C  // lwz r12, lbl_8053A93C@sda21(r0)
    li r3, 0x1
    li r0, -0x1
    opword  0x986D8D91  // stb r3, lbl_8053A951@sda21(r0)
    cmplwi r12, 0x0
    opword  0x900D8D94  // stw r0, lbl_8053A954@sda21(r0)
    opword  0x41820014  // beq .L_8008D8CC
    opword  0x808D8D80  // lwz r4, lbl_8053A940@sda21(r0)
    li r3, -0x1
    mtctr r12
    bctrl
L_8008D8CC:
    li r0, 0x0
    opword  0x980D8D90  // stb r0, lbl_8053A950@sda21(r0)
L_8008D8D4:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008D8E4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    li r3, 0x0
    stw r0, 0x14(r1)
    bl fn_8008E364
    lis r3, 0xf000
    bl fn_8008E4A4
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008D910(void)
{
    nofralloc
    li r0, 0x0
    stw r0, 0x0(r3)
    stw r0, 0x4(r3)
    stw r0, 0x8(r3)
    stw r0, 0x18(r3)
    stb r0, 0xc(r3)
    stb r0, 0xd(r3)
    stb r0, 0xe(r3)
    stb r0, 0xf(r3)
    stw r0, 0x1c(r3)
    stw r0, 0x20(r3)
    stw r0, 0x24(r3)
    stw r0, 0x28(r3)
    stw r0, 0x2c(r3)
    blr
}

ASM void fn_8008D94C(void)
{
    nofralloc
    cmplwi r4, 0x0
    stwu r1, -0x20(r1)
    opword  0x4182000C  // beq .L_8008D960
    lhz r0, 0x0(r4)
    opword  0x48000008  // b .L_8008D964
L_8008D960:
    li r0, 0x0
L_8008D964:
    li r6, 0x0
    or r7, r5, r0
    stw r6, 0x18(r3)
    lwz r0, 0x28(r3)
    cmplwi r0, 0x0
    opword  0x4182008C  // beq .L_8008DA04
    lwz r0, 0x24(r3)
    cmplwi r0, 0x0
    opword  0x41820080  // beq .L_8008DA04
    and. r8, r7, r0
    stw r6, 0x18(r3)
    opword  0x40820010  // bne .L_8008D9A0
    stw r6, 0x20(r3)
    stw r6, 0x1c(r3)
    opword  0x48000068  // b .L_8008DA04
L_8008D9A0:
    lwz r5, 0x20(r3)
    cmplw r5, r8
    opword  0x40820044  // bne .L_8008D9EC
    lwz r5, 0x1c(r3)
    addi r0, r5, 0x1
    stw r0, 0x1c(r3)
    lwz r6, 0x1c(r3)
    lwz r0, 0x28(r3)
    cmplw r6, r0
    opword  0x41820020  // beq .L_8008D9E4
    opword  0x4081003C  // ble .L_8008DA04
    lwz r5, 0x2c(r3)
    subf r6, r0, r6
    divwu r0, r6, r5
    mullw r0, r0, r5
    subf. r0, r0, r6
    opword  0x40820024  // bne .L_8008DA04
L_8008D9E4:
    stw r8, 0x18(r3)
    opword  0x4800001C  // b .L_8008DA04
L_8008D9EC:
    li r0, -0x1
    xor r0, r5, r0
    and r0, r8, r0
    stw r0, 0x18(r3)
    stw r8, 0x20(r3)
    stw r6, 0x1c(r3)
L_8008DA04:
    lwz r0, 0x0(r3)
    li r5, -0x1
    cmplwi r4, 0x0
    xor r0, r7, r0
    and r0, r7, r0
    stw r0, 0x4(r3)
    lwz r6, 0x0(r3)
    xor r0, r7, r6
    and r0, r6, r0
    stw r0, 0x8(r3)
    stw r7, 0x0(r3)
    lwz r6, 0x24(r3)
    lwz r0, 0x4(r3)
    xor r5, r6, r5
    lwz r6, 0x18(r3)
    and r0, r5, r0
    or r0, r6, r0
    stw r0, 0x18(r3)
    opword  0x41820028  // beq .L_8008DA74
    lbz r0, 0x8(r4)
    stb r0, 0xc(r3)
    lbz r0, 0x9(r4)
    stb r0, 0xd(r3)
    lbz r0, 0x6(r4)
    stb r0, 0xe(r3)
    lbz r0, 0x7(r4)
    stb r0, 0xf(r3)
    opword  0x48000018  // b .L_8008DA88
L_8008DA74:
    li r0, 0x0
    stb r0, 0xc(r3)
    stb r0, 0xd(r3)
    stb r0, 0xe(r3)
    stb r0, 0xf(r3)
L_8008DA88:
    lbz r4, 0xe(r3)
    lis r0, 0x4330
    stw r0, 0x8(r1)
    xoris r4, r4, 0x8000
    opword  0xC84288F8  // lfd f2, lbl_8053B898@sda21(r0)
    stw r4, 0xc(r1)
    opword  0xC02288F0  // lfs f1, lbl_8053B890@sda21(r0)
    lfd fp0, 0x8(r1)
    stw r0, 0x10(r1)
    fsubs fp0, fp0, fp2
    fdivs fp0, fp0, fp1
    stfs fp0, 0x10(r3)
    lbz r0, 0xf(r3)
    xoris r0, r0, 0x8000
    stw r0, 0x14(r1)
    lfd fp0, 0x10(r1)
    fsubs fp0, fp0, fp2
    fdivs fp0, fp0, fp1
    stfs fp0, 0x14(r3)
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008DADC(void)
{
    nofralloc
    opword  0xC0028900  // lfs f0, lbl_8053B8A0@sda21(r0)
    li r0, 0x0
    stfs fp0, 0x0(r3)
    stfs fp0, 0x4(r3)
    stfs fp0, 0x8(r3)
    sth r0, 0xc(r3)
    blr
}

ASM void fn_8008DAF8(void)
{
    nofralloc
    stwu r1, -0x40(r1)
    mflr r0
    stw r0, 0x44(r1)
    stw r31, 0x3c(r1)
    mr r31, r8
    stw r30, 0x38(r1)
    mr r30, r7
    stw r29, 0x34(r1)
    mr r29, r3
    opword  0x800D81DC  // lwz r0, lbl_80539D9C@sda21(r0)
    cmpwi r0, 0x2
    opword  0x41820028  // beq .L_8008DB4C
    opword  0x40800038  // bge .L_8008DB60
    cmpwi r0, 0x1
    opword  0x40800008  // bge .L_8008DB38
    opword  0x4800002C  // b .L_8008DB60
L_8008DB38:
    cmpwi r30, 0x0
    li r0, 0x2a
    opword  0x40820030  // bne .L_8008DB70
    li r0, 0x36
    opword  0x48000028  // b .L_8008DB70
L_8008DB4C:
    cmpwi r30, 0x0
    li r0, 0x1d
    opword  0x4082001C  // bne .L_8008DB70
    li r0, 0x26
    opword  0x48000014  // b .L_8008DB70
L_8008DB60:
    cmpwi r30, 0x0
    li r0, 0x39
    opword  0x40820008  // bne .L_8008DB70
    li r0, 0x45
L_8008DB70:
    extsb r8, r4
    lis r7, 0x4330
    xoris r3, r0, 0x8000
    extsb r0, r5
    xoris r8, r8, 0x8000
    stw r7, 0x10(r1)
    xoris r0, r0, 0x8000
    opword  0xC88288F8  // lfd f4, lbl_8053B898@sda21(r0)
    stw r8, 0x14(r1)
    opword  0xC0028900  // lfs f0, lbl_8053B8A0@sda21(r0)
    lfd fp1, 0x10(r1)
    stw r3, 0x1c(r1)
    fsubs fp3, fp1, fp4
    stw r7, 0x18(r1)
    lfd fp1, 0x18(r1)
    stw r0, 0x24(r1)
    fsubs fp1, fp1, fp4
    stw r7, 0x20(r1)
    lfd fp2, 0x20(r1)
    fdivs fp3, fp3, fp1
    stw r3, 0x2c(r1)
    stw r7, 0x28(r1)
    lfd fp1, 0x28(r1)
    stb r4, 0xe(r29)
    stb r5, 0xf(r29)
    fsubs fp2, fp2, fp4
    stfs fp3, 0x0(r29)
    fsubs fp1, fp1, fp4
    fdivs fp1, fp2, fp1
    stfs fp1, 0x4(r29)
    lfs fp2, 0x0(r29)
    lfs fp1, 0x4(r29)
    fmuls fp2, fp2, fp2
    fmuls fp1, fp1, fp1
    fadds fp4, fp2, fp1
    fcmpo cr0, fp4, fp0
    opword  0x4081004C  // ble .L_8008DC4C
    frsqrte fp1, fp4
    opword  0xC8628908  // lfd f3, lbl_8053B8A8@sda21(r0)
    opword  0xC8428910  // lfd f2, lbl_8053B8B0@sda21(r0)
    fmul fp0, fp1, fp1
    fmul fp1, fp3, fp1
    fnmsub fp0, fp4, fp0, fp2
    fmul fp1, fp1, fp0
    fmul fp0, fp1, fp1
    fmul fp1, fp3, fp1
    fnmsub fp0, fp4, fp0, fp2
    fmul fp1, fp1, fp0
    fmul fp0, fp1, fp1
    fmul fp1, fp3, fp1
    fnmsub fp0, fp4, fp0, fp2
    fmul fp0, fp1, fp0
    fmul fp4, fp4, fp0
    frsp fp4, fp4
    opword  0x48000088  // b .L_8008DCD0
L_8008DC4C:
    opword  0xC8028918  // lfd f0, lbl_8053B8B8@sda21(r0)
    fcmpo cr0, fp4, fp0
    opword  0x40800010  // bge .L_8008DC64
    lis r3, lbl_80539D38@ha
    lfs fp4, lbl_80539D38@l(r3)
    opword  0x48000070  // b .L_8008DCD0
L_8008DC64:
    stfs fp4, 0x8(r1)
    lis r0, 0x7f80
    lwz r4, 0x8(r1)
    rlwinm r3, r4, 0, 1, 8
    cmpw r3, r0
    opword  0x41820014  // beq .L_8008DC8C
    opword  0x40800040  // bge .L_8008DCBC
    cmpwi r3, 0x0
    opword  0x41820020  // beq .L_8008DCA4
    opword  0x48000034  // b .L_8008DCBC
L_8008DC8C:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008DC9C
    li r0, 0x1
    opword  0x48000028  // b .L_8008DCC0
L_8008DC9C:
    li r0, 0x2
    opword  0x48000020  // b .L_8008DCC0
L_8008DCA4:
    clrlwi. r0, r4, 9
    opword  0x4182000C  // beq .L_8008DCB4
    li r0, 0x5
    opword  0x48000010  // b .L_8008DCC0
L_8008DCB4:
    li r0, 0x3
    opword  0x48000008  // b .L_8008DCC0
L_8008DCBC:
    li r0, 0x4
L_8008DCC0:
    cmpwi r0, 0x1
    opword  0x4082000C  // bne .L_8008DCD0
    lis r3, lbl_80539D38@ha
    lfs fp4, lbl_80539D38@l(r3)
L_8008DCD0:
    stfs fp4, 0x8(r29)
    opword  0xC0028920  // lfs f0, lbl_8053B8C0@sda21(r0)
    lfs fp1, 0x8(r29)
    fcmpo cr0, fp1, fp0
    opword  0x40810030  // ble .L_8008DD10
    cmpwi r6, 0x1
    opword  0x40820020  // bne .L_8008DD08
    lfs fp0, 0x0(r29)
    fdivs fp0, fp0, fp1
    stfs fp0, 0x0(r29)
    lfs fp1, 0x4(r29)
    lfs fp0, 0x8(r29)
    fdivs fp0, fp1, fp0
    stfs fp0, 0x4(r29)
L_8008DD08:
    opword  0xC0028920  // lfs f0, lbl_8053B8C0@sda21(r0)
    stfs fp0, 0x8(r29)
L_8008DD10:
    lfs fp0, 0x8(r29)
    opword  0xC0228900  // lfs f1, lbl_8053B8A0@sda21(r0)
    fcmpo cr0, fp0, fp1
    opword  0x4081005C  // ble .L_8008DD78
    lfs fp0, 0x4(r29)
    fcmpu cr0, fp1, fp0
    opword  0x40820028  // bne .L_8008DD50
    lfs fp0, 0x0(r29)
    fcmpo cr0, fp0, fp1
    opword  0x40810010  // ble .L_8008DD44
    li r0, 0x4000
    sth r0, 0xc(r29)
    opword  0x48000038  // b .L_8008DD78
L_8008DD44:
    li r0, -0x4000
    sth r0, 0xc(r29)
    opword  0x4800002C  // b .L_8008DD78
L_8008DD50:
    fneg fp2, fp0
    lfs fp1, 0x0(r29)
    bl atan2
    frsp fp1, fp1
    opword  0xC0028924  // lfs f0, lbl_8053B8C4@sda21(r0)
    fmuls fp0, fp0, fp1
    fctiwz fp0, fp0
    stfd fp0, 0x28(r1)
    lwz r0, 0x2c(r1)
    sth r0, 0xc(r29)
L_8008DD78:
    cmpwi r30, 0x0
    mr r3, r29
    li r0, 0x10
    opword  0x40820008  // bne .L_8008DD8C
    li r0, 0x18
L_8008DD8C:
    srw r4, r31, r0
    bl fn_8008DDB0
    lwz r0, 0x44(r1)
    lwz r31, 0x3c(r1)
    lwz r30, 0x38(r1)
    lwz r29, 0x34(r1)
    mtlr r0
    addi r1, r1, 0x40
    blr
}

ASM void fn_8008DDB0(void)
{
    nofralloc
    opword  0xC02D81E4  // lfs f1, lbl_80539DA4@sda21(r0)
    clrlwi r0, r4, 28
    lfs fp2, 0x0(r3)
    fneg fp4, fp1
    fcmpo cr0, fp4, fp2
    opword  0x40800014  // bge .L_8008DDD8
    fcmpo cr0, fp2, fp1
    opword  0x4080000C  // bge .L_8008DDD8
    clrrwi r0, r0, 2
    opword  0x48000038  // b .L_8008DE0C
L_8008DDD8:
    opword  0xC06D81E0  // lfs f3, lbl_80539DA0@sda21(r0)
    fneg fp0, fp3
    fcmpo cr0, fp2, fp0
    cror eq, lt, eq
    opword  0x40820010  // bne .L_8008DDF8
    rlwinm r0, r0, 0, 31, 29
    ori r0, r0, 0x1
    opword  0x48000018  // b .L_8008DE0C
L_8008DDF8:
    fcmpo cr0, fp2, fp3
    cror eq, gt, eq
    opword  0x4082000C  // bne .L_8008DE0C
    clrrwi r0, r0, 1
    ori r0, r0, 0x2
L_8008DE0C:
    lfs fp2, 0x4(r3)
    fcmpo cr0, fp4, fp2
    opword  0x40800014  // bge .L_8008DE28
    fcmpo cr0, fp2, fp1
    opword  0x4080000C  // bge .L_8008DE28
    rlwinm r0, r0, 0, 30, 27
    opword  0x48000038  // b .L_8008DE5C
L_8008DE28:
    opword  0xC02D81E0  // lfs f1, lbl_80539DA0@sda21(r0)
    fneg fp0, fp1
    fcmpo cr0, fp2, fp0
    cror eq, lt, eq
    opword  0x40820010  // bne .L_8008DE48
    rlwinm r0, r0, 0, 29, 27
    ori r0, r0, 0x4
    opword  0x48000018  // b .L_8008DE5C
L_8008DE48:
    fcmpo cr0, fp2, fp1
    cror eq, gt, eq
    opword  0x4082000C  // bne .L_8008DE5C
    rlwinm r0, r0, 0, 30, 28
    ori r0, r0, 0x8
L_8008DE5C:
    mr r3, r0
    blr
}

ASM void fn_8008DE64(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    stw r31, 0xc(r1)
    mr r31, r3
    lha r5, 0x7c(r4)
    extsh. r0, r5
    opword  0x41800024  // blt .L_8008DEA4
    cmpwi r5, 0x4
    opword  0x4080001C  // bge .L_8008DEA4
    li r0, 0x0
    opword  0x386D8D74  // li r3, lbl_8053A934@sda21
    stbx r0, r3, r5
    lha r3, 0x7c(r4)
    li r4, 0x1
    bl fn_8008DF30
L_8008DEA4:
    li r3, 0x0
    lis r0, 0xf000
    stw r3, 0x0(r31)
    stw r3, 0x4(r31)
    stw r3, 0x8(r31)
    stw r3, 0xc(r31)
    stw r3, 0x10(r31)
    opword  0x900D8D78  // stw r0, lbl_8053A938@sda21(r0)
    lwz r31, 0xc(r1)
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008DED8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_80499470@ha
    stw r0, 0x14(r1)
    slwi r0, r3, 2
    addi r4, r4, lbl_80499470@l
    stw r31, 0xc(r1)
    mr r31, r3
    opword  0x80AD8D78  // lwz r5, lbl_8053A938@sda21(r0)
    lwzx r0, r4, r0
    and. r0, r5, r0
    opword  0x41820018  // beq .L_8008DF1C
    li r4, 0x1
    bl fn_8004EA24
    li r0, 0x1
    opword  0x386D8D74  // li r3, lbl_8053A934@sda21
    stbx r0, r3, r31
L_8008DF1C:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008DF30(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, lbl_80499470@ha
    stw r0, 0x14(r1)
    slwi r0, r3, 2
    addi r5, r5, lbl_80499470@l
    stw r31, 0xc(r1)
    mr r31, r3
    opword  0x80CD8D78  // lwz r6, lbl_8053A938@sda21(r0)
    lwzx r0, r5, r0
    and. r0, r6, r0
    opword  0x41820030  // beq .L_8008DF8C
    clrlwi r5, r4, 24
    li r0, 0x2
    neg r4, r5
    or r4, r4, r5
    srawi r4, r4, 31
    and r0, r0, r4
    clrlwi r4, r0, 24
    bl fn_8004EA24
    li r0, 0x0
    opword  0x386D8D74  // li r3, lbl_8053A934@sda21
    stbx r0, r3, r31
L_8008DF8C:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008DFA0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r5, lbl_80499470@ha
    stw r0, 0x14(r1)
    addi r5, r5, lbl_80499470@l
    stw r31, 0xc(r1)
    extsh r31, r4
    slwi r0, r31, 2
    stw r30, 0x8(r1)
    mr r30, r3
    opword  0x80CD8D78  // lwz r6, lbl_8053A938@sda21(r0)
    lwzx r3, r5, r0
    and r6, r6, r3
    neg r3, r6
    or r3, r3, r6
    srwi. r3, r3, 31
    opword  0x4082001C  // bne .L_8008DFFC
    li r3, 0x0
    stw r3, 0x0(r30)
    stw r3, 0x4(r30)
    stw r3, 0x8(r30)
    stw r3, 0xc(r30)
    stw r3, 0x10(r30)
L_8008DFFC:
    lwz r3, 0x4(r30)
    cmplwi r3, 0x0
    opword  0x418201E0  // beq .L_8008E1E4
    lwz r10, 0x0(r30)
    cmplw r10, r3
    opword  0x41800038  // blt .L_8008E048
    opword  0x806D8D78  // lwz r3, lbl_8053A938@sda21(r0)
    lwzx r0, r5, r0
    and. r0, r3, r0
    opword  0x4182001C  // beq .L_8008E03C
    mr r3, r31
    li r4, 0x2
    bl fn_8004EA24
    li r0, 0x0
    opword  0x386D8D74  // li r3, lbl_8053A934@sda21
    stbx r0, r3, r31
L_8008E03C:
    li r0, 0x0
    stw r0, 0x4(r30)
    opword  0x48000194  // b .L_8008E1D8
L_8008E048:
    lwz r9, 0xc(r30)
    cmplwi r9, 0x0
    opword  0x40820044  // bne .L_8008E094
    extsh r4, r4
    opword  0x386D8D74  // li r3, lbl_8053A934@sda21
    lbzx r3, r3, r4
    cmplwi r3, 0x0
    opword  0x40820180  // bne .L_8008E1E4
    opword  0x806D8D78  // lwz r3, lbl_8053A938@sda21(r0)
    lwzx r0, r5, r0
    and. r0, r3, r0
    opword  0x41820170  // beq .L_8008E1E4
    mr r3, r31
    li r4, 0x1
    bl fn_8004EA24
    li r0, 0x1
    opword  0x386D8D74  // li r3, lbl_8053A934@sda21
    stbx r0, r3, r31
    opword  0x48000154  // b .L_8008E1E4
L_8008E094:
    divwu r6, r10, r9
    extsh r4, r4
    opword  0x386D8D74  // li r3, lbl_8053A934@sda21
    lwz r7, 0x8(r30)
    lbzx r4, r3, r4
    li r8, 0x80
    mullw r9, r6, r9
    neg r3, r4
    or r3, r3, r4
    srwi r6, r3, 31
    subf r9, r9, r10
    clrlwi r3, r9, 29
    sraw r4, r8, r3
    srawi r3, r9, 3
    lbzx r3, r7, r3
    and r3, r4, r3
    clrlwi r4, r3, 24
    neg r3, r4
    or r3, r3, r4
    srwi. r3, r3, 31
    opword  0x41820038  // beq .L_8008E11C
    cmplwi r6, 0x0
    opword  0x40820030  // bne .L_8008E11C
    opword  0x806D8D78  // lwz r3, lbl_8053A938@sda21(r0)
    lwzx r0, r5, r0
    and. r0, r3, r0
    opword  0x418200DC  // beq .L_8008E1D8
    mr r3, r31
    li r4, 0x1
    bl fn_8004EA24
    li r0, 0x1
    opword  0x386D8D74  // li r3, lbl_8053A934@sda21
    stbx r0, r3, r31
    opword  0x480000C0  // b .L_8008E1D8
L_8008E11C:
    cmplwi r3, 0x0
    opword  0x408200B8  // bne .L_8008E1D8
    lwz r7, 0x10(r30)
    li r4, 0x0
    cmplwi r7, 0x0
    opword  0x4182002C  // beq .L_8008E15C
    clrlwi r3, r9, 29
    li r4, 0x80
    sraw r4, r4, r3
    srawi r3, r9, 3
    lbzx r3, r7, r3
    and r3, r4, r3
    clrlwi r4, r3, 24
    neg r3, r4
    or r3, r3, r4
    srwi r4, r3, 31
L_8008E15C:
    cmplwi r6, 0x0
    opword  0x41820048  // beq .L_8008E1A8
    opword  0x806D8D78  // lwz r3, lbl_8053A938@sda21(r0)
    lwzx r0, r5, r0
    and. r0, r3, r0
    opword  0x41820068  // beq .L_8008E1D8
    clrlwi r5, r4, 24
    li r0, 0x2
    neg r4, r5
    mr r3, r31
    or r4, r4, r5
    srawi r4, r4, 31
    and r0, r0, r4
    clrlwi r4, r0, 24
    bl fn_8004EA24
    li r0, 0x0
    opword  0x386D8D74  // li r3, lbl_8053A934@sda21
    stbx r0, r3, r31
    opword  0x48000034  // b .L_8008E1D8
L_8008E1A8:
    clrlwi. r3, r4, 24
    opword  0x4182002C  // beq .L_8008E1D8
    opword  0x806D8D78  // lwz r3, lbl_8053A938@sda21(r0)
    lwzx r0, r5, r0
    and. r0, r3, r0
    opword  0x4182001C  // beq .L_8008E1D8
    mr r3, r31
    li r4, 0x2
    bl fn_8004EA24
    li r0, 0x0
    opword  0x386D8D74  // li r3, lbl_8053A934@sda21
    stbx r0, r3, r31
L_8008E1D8:
    lwz r3, 0x0(r30)
    addi r0, r3, 0x1
    stw r0, 0x0(r30)
L_8008E1E4:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    lwz r30, 0x8(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008E1FC(void)
{
    nofralloc
    lbz r8, 0x0(r4)
    cmpwi r5, 0x1
    lbz r7, 0x1(r4)
    addi r0, r4, 0x2
    slwi r4, r8, 8
    add r4, r4, r7
    stw r4, 0xc(r3)
    stw r0, 0x8(r3)
    opword  0x41820048  // beq .L_8008E264
    opword  0x40800010  // bge .L_8008E230
    cmpwi r5, 0x0
    opword  0x40800014  // bge .L_8008E23C
    blr
L_8008E230:
    cmpwi r5, 0x3
    bgelr
    opword  0x48000058  // b .L_8008E290
L_8008E23C:
    lwz r0, 0x8(r3)
    lwz r4, 0xc(r3)
    cmplwi r0, 0x0
    beqlr
    cmplwi r4, 0x0
    beqlr
    stw r4, 0x4(r3)
    li r0, 0x0
    stw r0, 0x0(r3)
    blr
L_8008E264:
    lwz r0, 0x8(r3)
    cmplwi r0, 0x0
    beqlr
    lwz r0, 0xc(r3)
    cmplwi r0, 0x0
    beqlr
    li r4, -0x1
    li r0, 0x0
    stw r4, 0x4(r3)
    stw r0, 0x0(r3)
    blr
L_8008E290:
    lwz r0, 0x8(r3)
    cmplwi r0, 0x0
    beqlr
    lwz r0, 0xc(r3)
    cmplwi r0, 0x0
    beqlr
    stw r6, 0x4(r3)
    li r0, 0x0
    stw r0, 0x0(r3)
    blr
}

ASM void fn_8008E2B8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    stw r0, 0x14(r1)
    li r0, 0x0
    stw r31, 0xc(r1)
    extsh r31, r4
    stw r0, 0x4(r3)
    lis r3, lbl_80499470@ha
    slwi r0, r31, 2
    addi r3, r3, lbl_80499470@l
    opword  0x808D8D78  // lwz r4, lbl_8053A938@sda21(r0)
    lwzx r0, r3, r0
    and r3, r4, r0
    neg r0, r3
    or r0, r0, r3
    srwi. r0, r0, 31
    opword  0x4182001C  // beq .L_8008E314
    mr r3, r31
    li r4, 0x2
    bl fn_8004EA24
    li r0, 0x0
    opword  0x386D8D74  // li r3, lbl_8053A934@sda21
    stbx r0, r3, r31
L_8008E314:
    lwz r0, 0x14(r1)
    lwz r31, 0xc(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008E328(void)
{
    nofralloc
    lis r4, lbl_8052E8A0@ha
    addi r4, r4, lbl_8052E8A0@l
    lwz r4, 0x0(r4)
    opword  0x48000020  // b .L_8008E354
L_8008E338:
    lwz r5, 0x0(r4)
    lha r0, 0x7c(r5)
    cmpw r3, r0
    opword  0x4082000C  // bne .L_8008E350
    mr r3, r5
    blr
L_8008E350:
    lwz r4, 0xc(r4)
L_8008E354:
    cmplwi r4, 0x0
    opword  0x4082FFE0  // bne .L_8008E338
    li r3, 0x0
    blr
}

ASM void fn_8008E364(void)
{
    nofralloc
    stwu r1, -0x20(r1)
    mflr r0
    lis r5, lbl_80499480@ha
    lis r4, lbl_80499470@ha
    stw r0, 0x24(r1)
    stmw r26, 0x8(r1)
    addi r31, r5, lbl_80499480@l
    mr r26, r3
    addi r29, r4, lbl_80499470@l
    li r27, 0x0
    opword  0x3BCD8D74  // li r30, lbl_8053A934@sda21
L_8008E390:
    opword  0x806D8D78  // lwz r3, lbl_8053A938@sda21(r0)
    lwz r0, 0x0(r31)
    and. r0, r3, r0
    opword  0x408200B8  // bne .L_8008E454
    lbz r0, 0x0(r30)
    cmplwi r0, 0x0
    opword  0x41820024  // beq .L_8008E3CC
    lwz r0, 0x0(r29)
    and. r0, r3, r0
    opword  0x41820018  // beq .L_8008E3CC
    mr r3, r27
    li r4, 0x0
    bl fn_8004EA24
    li r0, 0x0
    stb r0, 0x0(r30)
L_8008E3CC:
    lis r3, lbl_8052E8A0@ha
    addi r3, r3, lbl_8052E8A0@l
    lwz r3, 0x0(r3)
    opword  0x4800001C  // b .L_8008E3F4
L_8008E3DC:
    lwz r4, 0x0(r3)
    lha r0, 0x7c(r4)
    cmpw r27, r0
    opword  0x40820008  // bne .L_8008E3F0
    opword  0x48000014  // b .L_8008E400
L_8008E3F0:
    lwz r3, 0xc(r3)
L_8008E3F4:
    cmplwi r3, 0x0
    opword  0x4082FFE4  // bne .L_8008E3DC
    li r4, 0x0
L_8008E400:
    cmplwi r4, 0x0
    opword  0x41820050  // beq .L_8008E454
    lha r28, 0x7c(r4)
    li r0, 0x0
    lis r3, lbl_80499470@ha
    stw r0, 0x6c(r4)
    slwi r0, r28, 2
    addi r3, r3, lbl_80499470@l
    opword  0x808D8D78  // lwz r4, lbl_8053A938@sda21(r0)
    lwzx r0, r3, r0
    and r3, r4, r0
    neg r0, r3
    or r0, r0, r3
    srwi. r0, r0, 31
    opword  0x4182001C  // beq .L_8008E454
    mr r3, r28
    li r4, 0x2
    bl fn_8004EA24
    li r0, 0x0
    opword  0x386D8D74  // li r3, lbl_8053A934@sda21
    stbx r0, r3, r28
L_8008E454:
    addi r27, r27, 0x1
    addi r30, r30, 0x1
    cmpwi r27, 0x4
    addi r29, r29, 0x4
    addi r31, r31, 0x4
    opword  0x4180FF28  // blt .L_8008E390
    clrrwi r0, r26, 28
    opword  0x900D8D78  // stw r0, lbl_8053A938@sda21(r0)
    lmw r26, 0x8(r1)
    lwz r0, 0x24(r1)
    mtlr r0
    addi r1, r1, 0x20
    blr
}

ASM void fn_8008E488(void)
{
    nofralloc
    li r0, 0x0
    stw r0, 0x20(r3)
    stw r0, 0x1c(r3)
    stw r4, 0x24(r3)
    stw r5, 0x28(r3)
    stw r6, 0x2c(r3)
    blr
}

ASM void fn_8008E4A4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r4, lbl_80499480@ha
    stw r0, 0x14(r1)
    addi r5, r4, lbl_80499480@l
    li r0, -0x1
    opword  0x80CD8D68  // lwz r6, lbl_8053A928@sda21(r0)
    lwz r7, 0x0(r5)
    and. r4, r6, r7
    opword  0x4182000C  // beq .L_8008E4D4
    xor r4, r7, r0
    and r3, r3, r4
L_8008E4D4:
    lwzu r7, 0x4(r5)
    and. r4, r6, r7
    opword  0x4182000C  // beq .L_8008E4E8
    xor r4, r7, r0
    and r3, r3, r4
L_8008E4E8:
    lwzu r7, 0x4(r5)
    and. r4, r6, r7
    opword  0x4182000C  // beq .L_8008E4FC
    xor r4, r7, r0
    and r3, r3, r4
L_8008E4FC:
    lwz r7, 0x4(r5)
    and. r4, r6, r7
    opword  0x4182000C  // beq .L_8008E510
    xor r4, r7, r0
    and r3, r3, r4
L_8008E510:
    bl fn_8004E4C0
    neg r0, r3
    or r0, r0, r3
    srwi r3, r0, 31
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

ASM void fn_8008E530(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    cmpwi r4, 0x0
    mr r6, r3
    stw r0, 0x14(r1)
    opword  0x41800040  // blt .L_8008E584
    lwz r0, 0x1c(r6)
    cmplw r5, r0
    opword  0x41800034  // blt .L_8008E584
    li r0, 0x1
    add r3, r6, r4
    stb r0, 0x11(r6)
    stb r0, 0x48(r3)
    lwz r12, 0x4c(r6)
    cmplwi r12, 0x0
    opword  0x41820018  // beq .L_8008E584
    mr r3, r4
    mr r4, r6
    lwz r5, 0x50(r6)
    mtctr r12
    bctrl
L_8008E584:
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

