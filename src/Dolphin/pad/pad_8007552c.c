// LANDED 2026-08-08, 0 diffs. This cluster was blocked for an entire prior
// session under the theory that it hit a decomp-toolkit v1.8.3 auto-region
// boundary-recalculation bug (see "project_fsa_dtk_boundary_bug_deferred.md"
// for that now-superseded investigation). The real cause was much more
// mundane: two MWCC assembler quirks in the hand-transcribed ASM itself (see
// "project_fsa_mwcc_branch_fold_bug.md") - MWCC silently folds any branch-to-
// label instruction whose target resolves to another branch or a bare `blr`
// (shrinking the function vs. retail), and rejects symbolic CR field names
// like `crclr cr1eq` (wants the numeric bit index instead). Regenerating this
// file from build/G4SE01/asm/auto_03_8007552C_text.s with every branch-to-
// label opword'd and crNeq/lt/gt/so rewritten to 4*N+{0,1,2,3} fixed it
// outright - no changes to SI's sbss/threshold handling were needed at all;
// lbl_8053A798 stayed a plain (harmless) extern.
#include "types.h"

extern f32 lbl_80498590;
extern f32 lbl_804985A0;
extern f32 lbl_804985D0;
extern f32 lbl_80498950;
extern f32 lbl_8049895C;
extern f32 lbl_804B9AA0;
extern f32 lbl_804B9BA0;
extern f32 lbl_8053A798;

extern void DCFlushRange(void);
extern void DCInvalidateRange(void);
extern void OSClearContext(void);
extern void OSDisableInterrupts(void);
extern void OSGetCurrentContext(void);
extern void OSGetTick(void);
extern void OSGetTime(void);
extern void OSInitAlarm(void);
extern void OSInitThreadQueue(void);
extern void OSPanic(void);
extern void OSRegisterResetFunction(void);
extern void OSRestoreInterrupts(void);
extern void OSSetCurrentContext(void);
extern void OSSleepThread(void);
extern void OSWakeupThread(void);
extern void SITransfer(void);
extern void __OSReschedule(void);
extern void __div2i(void);
extern void fn_8003A040(void);
extern void fn_80051CB4(void);
extern void fn_80051CEC(void);
extern void fn_80051D40(void);
extern void fn_80075178(void);
extern void memcpy(void);

ASM void fn_8007552C(void);
ASM void fn_80075580(void);
ASM void fn_80075624(void);
ASM void fn_80075688(void);
ASM void fn_80075718(void);
ASM void fn_8007577C(void);
ASM void fn_8007580C(void);
ASM void fn_8007581C(void);
ASM void fn_80075990(void);
ASM void fn_80075ACC(void);
ASM void fn_80075B74(void);
ASM void fn_80075C44(void);
ASM void fn_80075D14(void);
ASM void fn_80075D94(void);
ASM void fn_80075F70(void);
ASM void fn_80076408(void);
ASM void fn_8007657C(void);
ASM void fn_800766D8(void);
ASM void fn_800767D4(void);
ASM void fn_80076854(void);
ASM void fn_8007689C(void);
ASM void fn_800768FC(void);
ASM void fn_80076968(void);
ASM void fn_800769FC(void);
ASM void fn_80076A2C(void);
ASM void fn_80076AC0(void);
ASM void fn_80076B84(void);
ASM void fn_80076C60(void);
ASM void fn_80076C94(void);
ASM void fn_80076D00(void);
ASM void fn_80076E24(void);
ASM void fn_80076E98(void);
ASM void fn_80076EBC(void);
ASM void fn_80076F98(void);
ASM void fn_80077040(void);

//8007552C
ASM void fn_8007552C(void)
{
    nofralloc
    lis r4, lbl_804B9BA0@ha
    slwi r3, r3, 8
    addi r0, r4, lbl_804B9BA0@l
    add r3, r0, r3
    lwz r0, 0x20(r3)
    cmpwi r0, 0x0
    bnelr
    lbz r0, 0x5(r3)
    cmplwi r0, 0x0
    opword  0x40820010  // bne .L_80075560
    lbz r0, 0x6(r3)
    cmplwi r0, 0x4
    opword  0x41820010  // beq .L_8007556C
L_80075560:
    li r0, 0x1
    stw r0, 0x20(r3)
    blr
L_8007556C:
    lbz r0, 0x7(r3)
    lwz r3, 0x14(r3)
    andi. r0, r0, 0x3a
    stb r0, 0x0(r3)
    blr
}

//80075580
ASM void fn_80075580(void)
{
    nofralloc
    mflr r0
    lis r3, 0x8000
    stw r0, 0x4(r1)
    lis r4, lbl_804B9BA0@ha
    stwu r1, -0x20(r1)
    stmw r27, 0xc(r1)
    addi r29, r4, lbl_804B9BA0@l
    li r27, 0x0
    li r31, 0x0
    lwz r0, 0xf8(r3)
    lis r3, 0x431c
    subi r3, r3, 0x217d
    srwi r0, r0, 2
    mulhwu r0, r3, r0
    srwi r0, r0, 15
    mulli r0, r0, 0x3c
    lis r3, lbl_804B9AA0@ha
    addi r28, r3, lbl_804B9AA0@l
    srwi r30, r0, 3
L_800755CC:
    stw r30, 0x34(r29)
    addi r3, r29, 0x24
    stw r31, 0x30(r29)
    bl OSInitThreadQueue
    addi r27, r27, 0x1
    stw r28, 0xf8(r29)
    cmpwi r27, 0x4
    addi r29, r29, 0x100
    addi r28, r28, 0x40
    opword  0x4180FFDC  // blt .L_800755CC
    bl OSInitAlarm
    bl fn_80051D40
    li r0, 0x0
    lis r3, lbl_80498590@ha
    opword  0x900D8BD8  // stw r0, lbl_8053A798@sda21(r0)
    addi r3, r3, lbl_80498590@l
    bl OSRegisterResetFunction
    lmw r27, 0xc(r1)
    lwz r0, 0x24(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

//80075624
ASM void fn_80075624(void)
{
    nofralloc
    mflr r0
    lis r6, lbl_804B9BA0@ha
    stw r0, 0x4(r1)
    slwi r7, r3, 8
    addi r0, r6, lbl_804B9BA0@l
    stwu r1, -0x8(r1)
    add r7, r0, r7
    lwz r0, 0x1c(r7)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_80075654
    li r3, 0x2
    opword  0x48000028  // b .L_80075678
L_80075654:
    li r0, 0x0
    stb r0, 0x0(r7)
    lis r6, fn_8007552C@ha
    addi r6, r6, fn_8007552C@l
    stw r4, 0x14(r7)
    li r4, 0x1
    stw r5, 0x1c(r7)
    li r5, 0x3
    bl fn_80076E24
L_80075678:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

//80075688
ASM void fn_80075688(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    slwi r5, r31, 8
    addi r0, r3, lbl_804B9BA0@l
    add r7, r0, r5
    lwz r0, 0x1c(r7)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800756C0
    li r3, 0x2
    opword  0x48000034  // b .L_800756F0
L_800756C0:
    li r0, 0x0
    stb r0, 0x0(r7)
    lis r5, fn_80076C60@ha
    addi r0, r5, fn_80076C60@l
    stw r4, 0x14(r7)
    lis r3, fn_8007552C@ha
    addi r6, r3, fn_8007552C@l
    stw r0, 0x1c(r7)
    addi r3, r31, 0x0
    li r4, 0x1
    li r5, 0x3
    bl fn_80076E24
L_800756F0:
    cmpwi r3, 0x0
    opword  0x41820008  // beq .L_800756FC
    opword  0x4800000C  // b .L_80075704
L_800756FC:
    mr r3, r31
    bl fn_80076C94
L_80075704:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

//80075718
ASM void fn_80075718(void)
{
    nofralloc
    mflr r0
    lis r6, lbl_804B9BA0@ha
    stw r0, 0x4(r1)
    slwi r7, r3, 8
    addi r0, r6, lbl_804B9BA0@l
    stwu r1, -0x8(r1)
    add r7, r0, r7
    lwz r0, 0x1c(r7)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_80075748
    li r3, 0x2
    opword  0x48000028  // b .L_8007576C
L_80075748:
    li r0, 0xff
    stb r0, 0x0(r7)
    lis r6, fn_8007552C@ha
    addi r6, r6, fn_8007552C@l
    stw r4, 0x14(r7)
    li r4, 0x1
    stw r5, 0x1c(r7)
    li r5, 0x3
    bl fn_80076E24
L_8007576C:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

//8007577C
ASM void fn_8007577C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    addi r31, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    slwi r5, r31, 8
    addi r0, r3, lbl_804B9BA0@l
    add r7, r0, r5
    lwz r0, 0x1c(r7)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800757B4
    li r3, 0x2
    opword  0x48000034  // b .L_800757E4
L_800757B4:
    li r0, 0xff
    stb r0, 0x0(r7)
    lis r5, fn_80076C60@ha
    addi r0, r5, fn_80076C60@l
    stw r4, 0x14(r7)
    lis r3, fn_8007552C@ha
    addi r6, r3, fn_8007552C@l
    stw r0, 0x1c(r7)
    addi r3, r31, 0x0
    li r4, 0x1
    li r5, 0x3
    bl fn_80076E24
L_800757E4:
    cmpwi r3, 0x0
    opword  0x41820008  // beq .L_800757F0
    opword  0x4800000C  // b .L_800757F8
L_800757F0:
    mr r3, r31
    bl fn_80076C94
L_800757F8:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

//8007580C
ASM void fn_8007580C(void)
{
    nofralloc
    li r0, 0x1
    opword  0x900D8BD8  // stw r0, lbl_8053A798@sda21(r0)
    li r3, 0x1
    blr
}

//8007581C
ASM void fn_8007581C(void)
{
    nofralloc
    mflr r0
    lis r5, lbl_804B9BA0@ha
    stw r0, 0x4(r1)
    slwi r3, r3, 8
    addi r0, r5, lbl_804B9BA0@l
    stwu r1, -0x38(r1)
    stmw r23, 0x14(r1)
    add r23, r0, r3
    addi r24, r4, 0x0
    addi r31, r23, 0x40
    bl OSDisableInterrupts
    lwz r0, 0x14(r31)
    addi r29, r3, 0x0
    cmplwi r0, 0x0
    opword  0x41820104  // beq .L_80075958
    lwz r3, 0x34(r31)
    li r30, 0x0
    lwz r0, 0x28(r31)
    li r28, 0x2
    mulli r5, r3, 0x64
    lwz r4, 0x64(r31)
    lwz r3, 0x2c(r31)
    divw r4, r5, r4
    xor r3, r3, r30
    xor r0, r0, r30
    or. r0, r3, r0
    clrlwi r27, r4, 24
    opword  0x418200C0  // beq .L_80075948
    bl OSGetTime
    lis r23, 0x8000
    lwz r6, 0x2c(r31)
    lwz r0, 0xf8(r23)
    lis r5, 0x1062
    subfc r25, r6, r4
    lwz r4, 0x28(r31)
    addi r31, r5, 0x4dd3
    srwi r0, r0, 2
    mulhwu r0, r31, r0
    subfe r26, r4, r3
    srwi r6, r0, 6
    addi r3, r26, 0x0
    addi r4, r25, 0x0
    li r5, 0x0
    bl __div2i
    li r7, 0x157c
    xoris r5, r3, 0x8000
    xoris r3, r30, 0x8000
    subfc r0, r7, r4
    subfe r3, r3, r5
    subfe r3, r5, r5
    neg. r3, r3
    opword  0x41820050  // beq .L_80075938
    lwz r3, 0xf8(r23)
    mullw r5, r30, r7
    srwi r3, r3, 2
    mulhwu r3, r31, r3
    srwi r6, r3, 6
    mulhwu r3, r6, r7
    add r5, r5, r3
    mullw r3, r6, r30
    srawi r0, r27, 31
    add r5, r5, r3
    mullw r3, r0, r25
    mulhwu r0, r27, r25
    add r3, r3, r0
    mullw r0, r27, r26
    mullw r4, r27, r25
    mullw r6, r6, r7
    add r3, r3, r0
    bl __div2i
    mr r27, r4
L_80075938:
    clrlwi r0, r27, 24
    cmplwi r0, 0x64
    opword  0x41800008  // blt .L_80075948
    li r27, 0x64
L_80075948:
    cmplwi r24, 0x0
    opword  0x41820024  // beq .L_80075970
    stb r27, 0x0(r24)
    opword  0x4800001C  // b .L_80075970
L_80075958:
    lwz r0, 0x1c(r23)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_8007596C
    li r28, 0x2
    opword  0x48000008  // b .L_80075970
L_8007596C:
    li r28, 0x0
L_80075970:
    mr r3, r29
    bl OSRestoreInterrupts
    mr r3, r28
    lmw r23, 0x14(r1)
    lwz r0, 0x3c(r1)
    addi r1, r1, 0x38
    mtlr r0
    blr
}

//80075990
ASM void fn_80075990(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    clrrwi. r0, r3, 2
    stwu r1, -0x48(r1)
    stmw r24, 0x28(r1)
    addi r24, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    slwi r10, r24, 8
    addi r0, r3, lbl_804B9BA0@l
    add r3, r0, r10
    addi r25, r4, 0x0
    addi r26, r5, 0x0
    addi r27, r6, 0x0
    addi r28, r7, 0x0
    addi r29, r8, 0x0
    addi r30, r9, 0x0
    addi r31, r3, 0x40
    opword  0x4182000C  // beq .L_800759E0
    li r3, 0x4
    opword  0x480000DC  // b .L_80075AB8
L_800759E0:
    cmpwi r28, 0x0
    opword  0x41820010  // beq .L_800759F4
    lis r0, 0x4
    cmpw r0, r28
    opword  0x4080000C  // bge .L_800759FC
L_800759F4:
    li r3, 0x4
    opword  0x480000C0  // b .L_80075AB8
L_800759FC:
    cmpwi r26, -0x4
    opword  0x4180000C  // blt .L_80075A0C
    cmpwi r26, 0x4
    opword  0x4081000C  // ble .L_80075A14
L_80075A0C:
    li r3, 0x4
    opword  0x480000A8  // b .L_80075AB8
L_80075A14:
    cmpwi r25, 0x0
    opword  0x4180000C  // blt .L_80075A24
    cmpwi r25, 0x6
    opword  0x4081000C  // ble .L_80075A2C
L_80075A24:
    li r3, 0x4
    opword  0x48000090  // b .L_80075AB8
L_80075A2C:
    lbz r3, 0xac(r27)
    lbz r0, 0xad(r27)
    lbz r4, 0xae(r27)
    mullw r0, r3, r0
    lbz r3, 0xaf(r27)
    mullw r0, r4, r0
    mullw. r0, r3, r0
    opword  0x4082000C  // bne .L_80075A54
    li r3, 0x4
    opword  0x48000068  // b .L_80075AB8
L_80075A54:
    addi r3, r24, 0x0
    addi r4, r1, 0x24
    bl fn_8007581C
    cmpwi r3, 0x0
    opword  0x41820008  // beq .L_80075A6C
    opword  0x48000050  // b .L_80075AB8
L_80075A6C:
    stw r25, 0x0(r31)
    lis r4, lbl_804985A0@ha
    lis r3, fn_80075ACC@ha
    stw r26, 0x4(r31)
    addi r5, r3, fn_80075ACC@l
    addi r4, r4, lbl_804985A0@l
    stw r27, 0x8(r31)
    mr r3, r24
    stw r28, 0xc(r31)
    stw r29, 0x10(r31)
    stw r30, 0x14(r31)
    lbz r0, 0x8(r4)
    stw r0, 0x34(r31)
    lwz r4, 0x10(r31)
    bl fn_80075624
    cmpwi r3, 0x0
    opword  0x4182000C  // beq .L_80075AB8
    li r0, 0x0
    stw r0, 0x14(r31)
L_80075AB8:
    lmw r24, 0x28(r1)
    lwz r0, 0x4c(r1)
    addi r1, r1, 0x48
    mtlr r0
    blr
}

//80075ACC
ASM void fn_80075ACC(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    stw r29, 0x1c(r1)
    mr. r29, r4
    stw r28, 0x18(r1)
    addi r28, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    slwi r4, r28, 8
    addi r0, r3, lbl_804B9BA0@l
    add r31, r0, r4
    addi r30, r31, 0x40
    opword  0x40820020  // bne .L_80075B24
    lis r3, fn_80075B74@ha
    lwz r4, 0x10(r30)
    addi r5, r3, fn_80075B74@l
    addi r3, r28, 0x0
    bl fn_80075718
    mr. r29, r3
    opword  0x41820030  // beq .L_80075B50
L_80075B24:
    li r0, 0x0
    stw r0, 0x2c(r30)
    stw r0, 0x28(r30)
    lwz r12, 0x14(r30)
    cmplwi r12, 0x0
    opword  0x41820018  // beq .L_80075B50
    stw r0, 0x14(r30)
    mtlr r12
    addi r3, r28, 0x0
    addi r4, r29, 0x0
    blrl
L_80075B50:
    stw r29, 0x20(r31)
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    lwz r28, 0x18(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

//80075B74
ASM void fn_80075B74(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    stw r29, 0x1c(r1)
    mr. r29, r4
    stw r28, 0x18(r1)
    addi r28, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    slwi r4, r28, 8
    addi r0, r3, lbl_804B9BA0@l
    add r31, r0, r4
    addi r30, r31, 0x40
    opword  0x40820024  // bne .L_80075BD0
    lwz r4, 0x10(r30)
    lis r3, lbl_804985A0@ha
    addi r3, r3, lbl_804985A0@l
    lbz r4, 0x0(r4)
    lbz r0, 0x25(r3)
    cmplw r4, r0
    opword  0x41820008  // beq .L_80075BD0
    li r29, 0x3
L_80075BD0:
    cmpwi r29, 0x0
    opword  0x40820020  // bne .L_80075BF4
    lis r3, fn_80075C44@ha
    lwz r4, 0x10(r30)
    addi r5, r3, fn_80075C44@l
    addi r3, r28, 0x0
    bl fn_80075624
    mr. r29, r3
    opword  0x41820030  // beq .L_80075C20
L_80075BF4:
    li r0, 0x0
    stw r0, 0x2c(r30)
    stw r0, 0x28(r30)
    lwz r12, 0x14(r30)
    cmplwi r12, 0x0
    opword  0x41820018  // beq .L_80075C20
    stw r0, 0x14(r30)
    mtlr r12
    addi r3, r28, 0x0
    addi r4, r29, 0x0
    blrl
L_80075C20:
    stw r29, 0x20(r31)
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    lwz r28, 0x18(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

//80075C44
ASM void fn_80075C44(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    stw r29, 0x1c(r1)
    mr. r29, r4
    stw r28, 0x18(r1)
    addi r28, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    slwi r4, r28, 8
    addi r0, r3, lbl_804B9BA0@l
    add r31, r0, r4
    addi r30, r31, 0x40
    opword  0x40820020  // bne .L_80075C9C
    lwz r4, 0x10(r30)
    lis r3, lbl_804985A0@ha
    lbz r0, lbl_804985A0@l(r3)
    lbz r4, 0x0(r4)
    cmplw r4, r0
    opword  0x41820008  // beq .L_80075C9C
    li r29, 0x3
L_80075C9C:
    cmpwi r29, 0x0
    opword  0x40820024  // bne .L_80075CC4
    lis r3, fn_80075D14@ha
    lwz r5, 0x10(r30)
    addi r6, r3, fn_80075D14@l
    addi r3, r28, 0x0
    addi r4, r30, 0x18
    bl fn_800768FC
    mr. r29, r3
    opword  0x41820030  // beq .L_80075CF0
L_80075CC4:
    li r0, 0x0
    stw r0, 0x2c(r30)
    stw r0, 0x28(r30)
    lwz r12, 0x14(r30)
    cmplwi r12, 0x0
    opword  0x41820018  // beq .L_80075CF0
    stw r0, 0x14(r30)
    mtlr r12
    addi r3, r28, 0x0
    addi r4, r29, 0x0
    blrl
L_80075CF0:
    stw r29, 0x20(r31)
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    lwz r28, 0x18(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

//80075D14
ASM void fn_80075D14(void)
{
    nofralloc
    mflr r0
    slwi r5, r3, 8
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr. r30, r4
    lis r4, lbl_804B9BA0@ha
    addi r0, r4, lbl_804B9BA0@l
    add r31, r0, r5
    addi r4, r31, 0x40
    opword  0x40820010  // bne .L_80075D50
    addi r4, r4, 0x18
    bl fn_80077040
    opword  0x4800002C  // b .L_80075D78
L_80075D50:
    li r0, 0x0
    stw r0, 0x2c(r4)
    stw r0, 0x28(r4)
    lwz r12, 0x14(r4)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_80075D78
    stw r0, 0x14(r4)
    mtlr r12
    addi r4, r30, 0x0
    blrl
L_80075D78:
    stw r30, 0x20(r31)
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

//80075D94
ASM void fn_80075D94(void)
{
    nofralloc
    mflr r0
    lis r5, lbl_804985A0@ha
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    stw r29, 0x1c(r1)
    addi r29, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    stw r28, 0x18(r1)
    mr. r28, r4
    addi r0, r3, lbl_804B9BA0@l
    slwi r4, r29, 8
    add r31, r0, r4
    addi r3, r5, lbl_804985A0@l
    addi r30, r31, 0x40
    opword  0x40820144  // bne .L_80075F18
    lwz r4, 0xf8(r31)
    lwz r0, 0x20(r4)
    stw r0, 0x58(r30)
    lwz r4, 0xf8(r31)
    lwz r0, 0x24(r4)
    stw r0, 0x5c(r30)
    lbz r0, 0x1b(r30)
    cmplwi r0, 0x0
    opword  0x41820044  // beq .L_80075E3C
    lbz r0, 0x1a(r30)
    cmplwi r0, 0x0
    opword  0x41820038  // beq .L_80075E3C
    lbz r0, 0x5(r3)
    lwz r4, 0x58(r30)
    slwi r0, r0, 9
    and. r0, r4, r0
    opword  0x41820024  // beq .L_80075E3C
    lbz r0, 0x19(r30)
    cmplwi r0, 0x0
    opword  0x41820018  // beq .L_80075E3C
    srwi. r0, r4, 15
    opword  0x41820010  // beq .L_80075E3C
    lbz r0, 0x18(r30)
    cmplwi r0, 0x0
    opword  0x4082000C  // bne .L_80075E44
L_80075E3C:
    li r28, 0x3
    opword  0x480000D8  // b .L_80075F18
L_80075E44:
    lbz r5, 0x24(r3)
    lwz r4, 0xc(r30)
    lbz r0, 0x24(r3)
    nor r5, r5, r5
    add r0, r4, r0
    and r0, r5, r0
    stw r0, 0x20(r30)
    lbz r5, 0x14(r3)
    lbz r4, 0x21(r3)
    lwz r0, 0x20(r30)
    slw r4, r5, r4
    cmpw r0, r4
    opword  0x40800008  // bge .L_80075E7C
    stw r4, 0x20(r30)
L_80075E7C:
    lwz r0, 0x20(r30)
    stw r0, 0x64(r30)
    lwz r0, 0x20(r30)
    subf r0, r4, r0
    stw r0, 0x20(r30)
    lwz r4, 0x20(r30)
    lbz r0, 0x20(r3)
    sraw r0, r4, r0
    stw r0, 0x20(r30)
    lwz r0, 0x5c(r30)
    stb r0, 0x1c(r30)
    lwz r0, 0x5c(r30)
    srawi r0, r0, 8
    stb r0, 0x1d(r30)
    lwz r0, 0x5c(r30)
    srawi r0, r0, 24
    stb r0, 0x1f(r30)
    lwz r0, 0x5c(r30)
    srawi r0, r0, 16
    stb r0, 0x1e(r30)
    lbz r4, 0x26(r3)
    lbz r0, 0x22(r3)
    addi r4, r4, 0x1
    slw r0, r4, r0
    stw r0, 0x38(r30)
    lbz r0, 0x8(r3)
    stw r0, 0x34(r30)
    bl OSGetTime
    stw r4, 0x2c(r30)
    lis r4, fn_80075F70@ha
    addi r6, r4, fn_80075F70@l
    stw r3, 0x28(r30)
    li r0, 0x1
    addi r3, r29, 0x0
    stw r0, 0x30(r30)
    addi r4, r30, 0x1c
    lwz r5, 0x10(r30)
    bl fn_80076A2C
    mr r28, r3
L_80075F18:
    cmpwi r28, 0x0
    opword  0x41820030  // beq .L_80075F4C
    li r0, 0x0
    stw r0, 0x2c(r30)
    stw r0, 0x28(r30)
    lwz r12, 0x14(r30)
    cmplwi r12, 0x0
    opword  0x41820018  // beq .L_80075F4C
    stw r0, 0x14(r30)
    mtlr r12
    addi r3, r29, 0x0
    addi r4, r28, 0x0
    blrl
L_80075F4C:
    stw r28, 0x20(r31)
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    lwz r28, 0x18(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

//80075F70
ASM void fn_80075F70(void)
{
    nofralloc
    mflr r0
    lis r5, lbl_804985A0@ha
    stw r0, 0x4(r1)
    stwu r1, -0x38(r1)
    stw r31, 0x34(r1)
    stw r30, 0x30(r1)
    stw r29, 0x2c(r1)
    addi r29, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    stw r28, 0x28(r1)
    mr. r28, r4
    addi r0, r3, lbl_804B9BA0@l
    slwi r4, r29, 8
    add r31, r0, r4
    addi r3, r5, lbl_804985A0@l
    addi r30, r31, 0x40
    opword  0x40820400  // bne .L_800763B0
    lwz r0, 0x30(r30)
    cmpwi r0, 0x0
    opword  0x41820010  // beq .L_80075FCC
    li r0, 0x0
    stw r0, 0x30(r30)
    opword  0x48000060  // b .L_80076028
L_80075FCC:
    lwz r4, 0x10(r30)
    lbz r0, 0x14(r3)
    lbz r5, 0x0(r4)
    and. r0, r5, r0
    opword  0x41820030  // beq .L_8007600C
    lbz r4, 0x2a(r3)
    lbz r0, 0x21(r3)
    and r6, r5, r4
    lwz r5, 0x34(r30)
    lbz r4, 0x21(r3)
    sraw r6, r6, r0
    lbz r0, 0x1f(r3)
    and r4, r5, r4
    sraw r0, r4, r0
    cmpw r6, r0
    opword  0x4182000C  // beq .L_80076014
L_8007600C:
    li r28, 0x3
    opword  0x480003A0  // b .L_800763B0
L_80076014:
    lbz r4, 0x17(r3)
    lbz r0, 0x19(r3)
    subf r0, r4, r0
    subf r0, r0, r5
    stw r0, 0x34(r30)
L_80076028:
    lwz r5, 0x34(r30)
    lwz r0, 0x64(r30)
    cmpw r5, r0
    opword  0x41810358  // bgt .L_8007638C
    opword  0x40800168  // bge .L_800761A0
    addi r4, r3, 0x1d
    lbz r0, 0x1d(r3)
    lbz r4, 0x0(r4)
    stw r4, 0x20(r30)
    opword  0x48000048  // b .L_80076094
L_80076050:
    lwz r4, 0xc(r30)
    cmpwi r4, 0x0
    opword  0x41820030  // beq .L_80076088
    lwz r6, 0x8(r30)
    addi r4, r6, 0x1
    stw r4, 0x8(r30)
    lbz r5, 0x25(r3)
    lwz r4, 0xc(r30)
    mullw r5, r7, r5
    lbz r6, 0x0(r6)
    subi r4, r4, 0x1
    slw r5, r6, r5
    stw r4, 0xc(r30)
    or r0, r0, r5
L_80076088:
    lwz r4, 0x20(r30)
    addi r4, r4, 0x1
    stw r4, 0x20(r30)
L_80076094:
    lwz r7, 0x20(r30)
    lbz r4, 0x21(r3)
    cmpw r7, r4
    opword  0x4180FFB0  // blt .L_80076050
    addi r6, r3, 0x26
    lwz r5, 0x34(r30)
    lbz r4, 0x26(r3)
    cmpw r5, r4
    opword  0x4082000C  // bne .L_800760C0
    stw r0, 0x60(r30)
    opword  0x48000018  // b .L_800760D4
L_800760C0:
    lbz r4, 0x27(r3)
    cmpw r5, r4
    opword  0x4082000C  // bne .L_800760D4
    lbz r0, 0x25(r3)
    slw r0, r29, r0
L_800760D4:
    lwz r5, 0x34(r30)
    lbz r4, 0x2(r3)
    cmpw r5, r4
    opword  0x41800078  // blt .L_80076158
    addi r4, r3, 0x2b
    lbz r6, 0x0(r6)
    lbz r5, 0x2b(r3)
    mr r9, r0
    lbz r4, 0x0(r4)
    slwi r7, r6, 8
    slwi r5, r5, 4
    lbz r6, 0x28(r3)
    subf r4, r5, r4
    lbz r5, 0x23(r3)
    add r4, r6, r4
    lwz r8, 0x38(r30)
    subf r4, r5, r4
    lbz r6, 0x14(r3)
    add r5, r7, r4
    opword  0x48000028  // b .L_80076148
L_80076124:
    xor r4, r9, r8
    clrlwi. r4, r4, 31
    opword  0x41820010  // beq .L_8007613C
    srwi r8, r8, 1
    xor r8, r8, r5
    opword  0x48000008  // b .L_80076140
L_8007613C:
    srwi r8, r8, 1
L_80076140:
    srwi r9, r9, 1
    subi r6, r6, 0x1
L_80076148:
    lbz r4, 0x1e(r3)
    cmpw r6, r4
    opword  0x4181FFD4  // bgt .L_80076124
    stw r8, 0x38(r30)
L_80076158:
    lbz r4, 0x28(r3)
    lwz r5, 0x34(r30)
    addi r4, r4, 0x100
    cmpw r5, r4
    opword  0x4082000C  // bne .L_80076174
    stw r0, 0x3c(r30)
    opword  0x4800003C  // b .L_800761AC
L_80076174:
    lbz r4, 0x1(r3)
    addi r4, r4, 0x100
    cmpw r5, r4
    opword  0x4082002C  // bne .L_800761AC
    lbz r4, 0x7(r3)
    stw r4, 0x20(r30)
    lwz r4, 0x20(r30)
    slwi r4, r4, 2
    add r4, r30, r4
    stw r0, 0x3c(r4)
    opword  0x48000010  // b .L_800761AC
L_800761A0:
    lwz r4, 0x38(r30)
    slwi r0, r5, 16
    or r0, r4, r0
L_800761AC:
    lwz r5, 0x34(r30)
    lbz r4, 0x2b(r3)
    cmpw r5, r4
    opword  0x40810098  // ble .L_80076250
    lbz r5, 0x25(r3)
    addi r4, r3, 0xb
    lbz r6, 0x18(r3)
    lbz r8, 0x15(r3)
    slw r7, r6, r5
    lbz r6, 0x18(r3)
    lbz r5, 0x2c(r3)
    or r7, r8, r7
    lbz r9, 0x17(r3)
    slw r5, r6, r5
    lbz r8, 0x2a(r3)
    or r5, r7, r5
    lwz r10, 0x58(r30)
    slw r6, r9, r8
    lbz r7, 0x1a(r3)
    or r5, r6, r5
    lbz r6, 0x1b(r3)
    mullw r5, r10, r5
    subf r6, r7, r6
    subf r5, r6, r5
    stw r5, 0x58(r30)
    lbz r7, 0xb(r3)
    lwz r9, 0x58(r30)
    lwz r8, 0x34(r30)
    slwi r7, r7, 20
    lbz r5, 0xb(r3)
    xor r0, r0, r9
    add r8, r8, r7
    lbz r4, 0x0(r4)
    rlwimi r4, r5, 24, 0, 7
    lbz r6, 0x13(r3)
    neg r5, r8
    lbz r7, 0x12(r3)
    rlwimi r4, r6, 16, 8, 15
    xor r0, r0, r5
    rlwimi r4, r7, 8, 16, 23
    xor r0, r0, r4
L_80076250:
    lbz r4, 0x0(r3)
    srw r4, r0, r4
    stb r4, 0x1f(r30)
    lbz r4, 0x1e(r3)
    srw r4, r0, r4
    stb r4, 0x1c(r30)
    lbz r4, 0x29(r3)
    srw r4, r0, r4
    stb r4, 0x1d(r30)
    lbz r4, 0x2a(r3)
    srw r4, r0, r4
    stb r4, 0x1e(r30)
    lbz r5, 0x1(r3)
    lbz r4, 0x1(r3)
    lwz r6, 0x34(r30)
    add r4, r5, r4
    cmpw r6, r4
    opword  0x40820008  // bne .L_8007629C
    stw r0, 0x44(r30)
L_8007629C:
    lwz r4, 0x20(r30)
    lbz r3, 0x21(r3)
    cmpw r4, r3
    opword  0x408000C4  // bge .L_8007636C
    subfic r3, r4, 0x1
    subfic r3, r3, 0x3
    slwi r3, r3, 2
    add r3, r30, r3
    stw r0, 0x3c(r3)
    lwz r5, 0x20(r30)
    subfic r0, r5, 0x1
    subfic r3, r0, 0x2
    subfic r0, r5, 0x4
    slwi r3, r3, 2
    slwi r0, r0, 2
    add r4, r30, r3
    add r3, r30, r0
    lwz r4, 0x3c(r4)
    lwz r3, 0x3c(r3)
    subfic r0, r5, 0x5
    slwi r0, r0, 2
    mullw r4, r4, r3
    add r3, r30, r0
    stw r4, 0x3c(r3)
    lwz r0, 0x20(r30)
    subfic r5, r0, 0x1
    slwi r3, r5, 2
    slwi r0, r0, 2
    add r4, r30, r3
    add r3, r30, r0
    lwz r4, 0x3c(r4)
    lwz r3, 0x3c(r3)
    subfic r0, r5, 0x5
    slwi r0, r0, 2
    mullw r4, r4, r3
    add r3, r30, r0
    stw r4, 0x3c(r3)
    lwz r5, 0x20(r30)
    subfic r3, r5, 0x1
    subfic r0, r5, 0x4
    neg r3, r3
    slwi r3, r3, 2
    slwi r0, r0, 2
    add r4, r30, r3
    add r3, r30, r0
    lwz r4, 0x3c(r4)
    lwz r3, 0x3c(r3)
    subfic r0, r5, 0x7
    slwi r0, r0, 2
    mullw r4, r4, r3
    add r3, r30, r0
    stw r4, 0x3c(r3)
L_8007636C:
    lis r3, fn_80075F70@ha
    lwz r5, 0x10(r30)
    addi r6, r3, fn_80075F70@l
    addi r3, r29, 0x0
    addi r4, r30, 0x1c
    bl fn_80076A2C
    mr r28, r3
    opword  0x48000028  // b .L_800763B0
L_8007638C:
    bl OSGetTick
    stw r3, 0x24(r30)
    lis r3, fn_80076408@ha
    addi r6, r3, fn_80076408@l
    lwz r5, 0x10(r30)
    addi r3, r29, 0x0
    addi r4, r30, 0x18
    bl fn_800768FC
    mr r28, r3
L_800763B0:
    cmpwi r28, 0x0
    opword  0x41820030  // beq .L_800763E4
    li r0, 0x0
    stw r0, 0x2c(r30)
    stw r0, 0x28(r30)
    lwz r12, 0x14(r30)
    cmplwi r12, 0x0
    opword  0x41820018  // beq .L_800763E4
    stw r0, 0x14(r30)
    mtlr r12
    addi r3, r29, 0x0
    addi r4, r28, 0x0
    blrl
L_800763E4:
    stw r28, 0x20(r31)
    lwz r0, 0x3c(r1)
    lwz r31, 0x34(r1)
    lwz r30, 0x30(r1)
    lwz r29, 0x2c(r1)
    lwz r28, 0x28(r1)
    addi r1, r1, 0x38
    mtlr r0
    blr
}

//80076408
ASM void fn_80076408(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    stw r29, 0x1c(r1)
    addi r29, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    stw r28, 0x18(r1)
    mr. r28, r4
    slwi r4, r29, 8
    addi r0, r3, lbl_804B9BA0@l
    add r31, r0, r4
    addi r30, r31, 0x40
    opword  0x408200E4  // bne .L_80076524
    li r0, 0x21
    lis r3, lbl_804985A0@ha
    stw r0, 0x20(r30)
    addi r0, r3, lbl_804985A0@l
    opword  0x48000094  // b .L_800764E8
L_80076458:
    add r7, r0, r3
    lbz r6, 0x1b(r30)
    lbz r4, 0x0(r7)
    lbz r3, 0x0(r7)
    lbz r5, 0x0(r7)
    slwi r4, r4, 2
    lbz r8, 0x0(r7)
    slwi r3, r3, 2
    slwi r7, r5, 2
    addi r5, r4, 0x3c
    lbz r4, 0x1a(r30)
    addi r3, r3, 0x3c
    lwzx r5, r30, r5
    addi r7, r7, 0x3c
    lwzx r3, r30, r3
    slwi r8, r8, 2
    lwzx r7, r30, r7
    addi r9, r8, 0x3c
    lbz r8, 0x19(r30)
    srwi r5, r5, 24
    lbz r10, 0x18(r30)
    srwi r3, r3, 16
    lwzx r9, r30, r9
    srwi r7, r7, 8
    xor r3, r4, r3
    xor r5, r6, r5
    or r3, r5, r3
    xor r4, r8, r7
    xor r5, r10, r9
    or r3, r4, r3
    or r3, r5, r3
    slwi. r28, r3, 24
    opword  0x4182001C  // beq .L_800764F4
    lwz r3, 0x20(r30)
    addi r3, r3, 0x1
    stw r3, 0x20(r30)
L_800764E8:
    lwz r3, 0x20(r30)
    cmpwi r3, 0x24
    opword  0x4180FF68  // blt .L_80076458
L_800764F4:
    cmpwi r28, 0x0
    opword  0x4182000C  // beq .L_80076504
    li r28, 0x3
    opword  0x48000024  // b .L_80076524
L_80076504:
    bl OSGetTick
    stw r3, 0x24(r30)
    lis r3, fn_8007657C@ha
    addi r5, r3, fn_8007657C@l
    lwz r4, 0x10(r30)
    mr r3, r29
    bl fn_80075624
    mr r28, r3
L_80076524:
    cmpwi r28, 0x0
    opword  0x41820030  // beq .L_80076558
    li r0, 0x0
    stw r0, 0x2c(r30)
    stw r0, 0x28(r30)
    lwz r12, 0x14(r30)
    cmplwi r12, 0x0
    opword  0x41820018  // beq .L_80076558
    stw r0, 0x14(r30)
    mtlr r12
    addi r3, r29, 0x0
    addi r4, r28, 0x0
    blrl
L_80076558:
    stw r28, 0x20(r31)
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    lwz r28, 0x18(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

//8007657C
ASM void fn_8007657C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    stw r29, 0x1c(r1)
    addi r29, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    stw r28, 0x18(r1)
    mr. r28, r4
    slwi r4, r29, 8
    addi r0, r3, lbl_804B9BA0@l
    add r31, r0, r4
    addi r30, r31, 0x40
    opword  0x408200CC  // bne .L_80076680
    bl OSGetTick
    lis r28, 0x8000
    lwz r4, 0x24(r30)
    lwz r0, 0xf8(r28)
    subf r3, r4, r3
    srwi r5, r0, 2
    mulli r0, r5, 0xa
    cmplw r0, r3
    opword  0x4181000C  // bgt .L_800765E4
    li r28, 0x3
    opword  0x480000A0  // b .L_80076680
L_800765E4:
    lwz r4, 0x10(r30)
    lbz r3, 0x0(r4)
    andi. r0, r3, 0x32
    opword  0x4182000C  // beq .L_800765FC
    li r28, 0x3
    opword  0x48000088  // b .L_80076680
L_800765FC:
    cmplwi r3, 0x8
    opword  0x4182001C  // beq .L_8007661C
    lis r3, fn_8007657C@ha
    addi r5, r3, fn_8007657C@l
    addi r3, r29, 0x0
    bl fn_80075624
    mr r28, r3
    opword  0x48000068  // b .L_80076680
L_8007661C:
    lis r3, 0x1062
    addi r0, r3, 0x4dd3
    mulhwu r0, r0, r5
    rlwinm r6, r0, 29, 3, 28
    addi r3, r29, 0x0
    li r5, 0x0
    bl fn_80076E98
    lis r3, fn_800766D8@ha
    lwz r5, 0x10(r30)
    addi r6, r3, fn_800766D8@l
    addi r3, r29, 0x0
    addi r4, r30, 0x18
    bl fn_800768FC
    lwz r0, 0xf8(r28)
    lis r4, 0x431c
    addi r28, r3, 0x0
    srwi r0, r0, 2
    subi r4, r4, 0x217d
    mulhwu r0, r4, r0
    srwi r0, r0, 15
    mulli r0, r0, 0x3c
    srwi r6, r0, 3
    addi r3, r29, 0x0
    li r5, 0x0
    bl fn_80076E98
L_80076680:
    cmpwi r28, 0x0
    opword  0x41820030  // beq .L_800766B4
    li r0, 0x0
    stw r0, 0x2c(r30)
    stw r0, 0x28(r30)
    lwz r12, 0x14(r30)
    cmplwi r12, 0x0
    opword  0x41820018  // beq .L_800766B4
    stw r0, 0x14(r30)
    mtlr r12
    addi r3, r29, 0x0
    addi r4, r28, 0x0
    blrl
L_800766B4:
    stw r28, 0x20(r31)
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    lwz r28, 0x18(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

//800766D8
ASM void fn_800766D8(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    stw r30, 0x20(r1)
    stw r29, 0x1c(r1)
    addi r29, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    stw r28, 0x18(r1)
    mr. r28, r4
    slwi r4, r29, 8
    addi r0, r3, lbl_804B9BA0@l
    add r31, r0, r4
    addi r30, r31, 0x40
    opword  0x4082006C  // bne .L_8007677C
    lwz r9, 0x60(r30)
    lbz r5, 0x1b(r30)
    srwi r4, r9, 24
    lbz r3, 0x1a(r30)
    srwi r0, r9, 16
    lbz r7, 0x19(r30)
    lbz r8, 0x18(r30)
    srwi r6, r9, 8
    xor r0, r3, r0
    xor r4, r5, r4
    or r0, r4, r0
    xor r3, r7, r6
    xor r4, r8, r9
    or r0, r3, r0
    or r0, r4, r0
    slwi. r0, r0, 24
    opword  0x4182000C  // beq .L_80076760
    li r28, 0x3
    opword  0x48000020  // b .L_8007677C
L_80076760:
    lis r3, fn_800767D4@ha
    lwz r5, 0x10(r30)
    addi r6, r3, fn_800767D4@l
    addi r3, r29, 0x0
    addi r4, r30, 0x18
    bl fn_80076A2C
    mr r28, r3
L_8007677C:
    cmpwi r28, 0x0
    opword  0x41820030  // beq .L_800767B0
    li r0, 0x0
    stw r0, 0x2c(r30)
    stw r0, 0x28(r30)
    lwz r12, 0x14(r30)
    cmplwi r12, 0x0
    opword  0x41820018  // beq .L_800767B0
    stw r0, 0x14(r30)
    mtlr r12
    addi r3, r29, 0x0
    addi r4, r28, 0x0
    blrl
L_800767B0:
    stw r28, 0x20(r31)
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    lwz r30, 0x20(r1)
    lwz r29, 0x1c(r1)
    lwz r28, 0x18(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

//800767D4
ASM void fn_800767D4(void)
{
    nofralloc
    mflr r0
    slwi r5, r3, 8
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    mr. r30, r4
    lis r4, lbl_804B9BA0@ha
    addi r0, r4, lbl_804B9BA0@l
    add r31, r0, r5
    addi r5, r31, 0x40
    opword  0x40820010  // bne .L_80076810
    lwz r4, 0x10(r5)
    li r0, 0x0
    stb r0, 0x0(r4)
L_80076810:
    li r0, 0x0
    stw r0, 0x2c(r5)
    stw r0, 0x28(r5)
    lwz r12, 0x14(r5)
    cmplwi r12, 0x0
    opword  0x41820014  // beq .L_80076838
    stw r0, 0x14(r5)
    mtlr r12
    addi r4, r30, 0x0
    blrl
L_80076838:
    stw r30, 0x20(r31)
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

//80076854
ASM void fn_80076854(void)
{
    nofralloc
    mflr r0
    lis r9, fn_80076C60@ha
    stw r0, 0x4(r1)
    addi r9, r9, fn_80076C60@l
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    addi r31, r3, 0x0
    bl fn_80075990
    cmpwi r3, 0x0
    opword  0x41820008  // beq .L_80076880
    opword  0x4800000C  // b .L_80076888
L_80076880:
    mr r3, r31
    bl fn_80076C94
L_80076888:
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

//8007689C
ASM void fn_8007689C(void)
{
    nofralloc
    mflr r0
    lis r4, lbl_804B9BA0@ha
    stw r0, 0x4(r1)
    slwi r3, r3, 8
    addi r0, r4, lbl_804B9BA0@l
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    add r31, r0, r3
    lwz r0, 0x20(r31)
    cmpwi r0, 0x0
    opword  0x40820024  // bne .L_800768E8
    lwz r3, 0x18(r31)
    addi r4, r31, 0x5
    li r5, 0x4
    bl memcpy
    lbz r0, 0x9(r31)
    lwz r3, 0x14(r31)
    andi. r0, r0, 0x3a
    stb r0, 0x0(r3)
L_800768E8:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

//800768FC
ASM void fn_800768FC(void)
{
    nofralloc
    mflr r0
    lis r7, lbl_804B9BA0@ha
    stw r0, 0x4(r1)
    slwi r8, r3, 8
    addi r0, r7, lbl_804B9BA0@l
    stwu r1, -0x8(r1)
    add r8, r0, r8
    lwz r0, 0x1c(r8)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_8007692C
    li r3, 0x2
    opword  0x48000030  // b .L_80076958
L_8007692C:
    li r0, 0x14
    stb r0, 0x0(r8)
    lis r7, fn_8007689C@ha
    addi r0, r7, fn_8007689C@l
    stw r4, 0x18(r8)
    li r4, 0x1
    stw r5, 0x14(r8)
    li r5, 0x5
    stw r6, 0x1c(r8)
    mr r6, r0
    bl fn_80076E24
L_80076958:
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

//80076968
ASM void fn_80076968(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stw r31, 0x24(r1)
    addi r31, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    slwi r6, r31, 8
    addi r0, r3, lbl_804B9BA0@l
    add r8, r0, r6
    lwz r0, 0x1c(r8)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_800769A0
    li r3, 0x2
    opword  0x48000038  // b .L_800769D4
L_800769A0:
    li r0, 0x14
    stb r0, 0x0(r8)
    lis r7, fn_80076C60@ha
    lis r3, fn_8007689C@ha
    stw r4, 0x18(r8)
    addi r6, r3, fn_8007689C@l
    addi r0, r7, fn_80076C60@l
    stw r5, 0x14(r8)
    mr r3, r31
    li r4, 0x1
    stw r0, 0x1c(r8)
    li r5, 0x5
    bl fn_80076E24
L_800769D4:
    cmpwi r3, 0x0
    opword  0x41820008  // beq .L_800769E0
    opword  0x4800000C  // b .L_800769E8
L_800769E0:
    mr r3, r31
    bl fn_80076C94
L_800769E8:
    lwz r0, 0x2c(r1)
    lwz r31, 0x24(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

//800769FC
ASM void fn_800769FC(void)
{
    nofralloc
    lis r4, lbl_804B9BA0@ha
    slwi r3, r3, 8
    addi r0, r4, lbl_804B9BA0@l
    add r3, r0, r3
    lwz r0, 0x20(r3)
    cmpwi r0, 0x0
    bnelr
    lbz r0, 0x5(r3)
    lwz r3, 0x14(r3)
    andi. r0, r0, 0x3a
    stb r0, 0x0(r3)
    blr
}

//80076A2C
ASM void fn_80076A2C(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stmw r27, 0x1c(r1)
    addi r27, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    slwi r7, r27, 8
    addi r0, r3, lbl_804B9BA0@l
    add r31, r0, r7
    addi r28, r4, 0x0
    addi r29, r5, 0x0
    lwz r0, 0x1c(r31)
    addi r30, r6, 0x0
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_80076A70
    li r3, 0x2
    opword  0x48000040  // b .L_80076AAC
L_80076A70:
    li r0, 0x15
    stb r0, 0x0(r31)
    addi r4, r28, 0x0
    addi r3, r31, 0x1
    li r5, 0x4
    bl memcpy
    stw r28, 0x18(r31)
    lis r3, fn_800769FC@ha
    addi r6, r3, fn_800769FC@l
    stw r29, 0x14(r31)
    mr r3, r27
    li r4, 0x5
    stw r30, 0x1c(r31)
    li r5, 0x1
    bl fn_80076E24
L_80076AAC:
    lmw r27, 0x1c(r1)
    lwz r0, 0x34(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

//80076AC0
ASM void fn_80076AC0(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stw r31, 0x2c(r1)
    stw r30, 0x28(r1)
    addi r30, r5, 0x0
    stw r29, 0x24(r1)
    addi r29, r4, 0x0
    stw r28, 0x20(r1)
    addi r28, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    slwi r6, r28, 8
    addi r0, r3, lbl_804B9BA0@l
    add r31, r0, r6
    lwz r0, 0x1c(r31)
    cmplwi r0, 0x0
    opword  0x4182000C  // beq .L_80076B0C
    li r3, 0x2
    opword  0x48000048  // b .L_80076B50
L_80076B0C:
    li r0, 0x15
    stb r0, 0x0(r31)
    addi r4, r29, 0x0
    addi r3, r31, 0x1
    li r5, 0x4
    bl memcpy
    stw r29, 0x18(r31)
    lis r4, fn_80076C60@ha
    addi r0, r4, fn_80076C60@l
    stw r30, 0x14(r31)
    lis r3, fn_800769FC@ha
    addi r6, r3, fn_800769FC@l
    stw r0, 0x1c(r31)
    addi r3, r28, 0x0
    li r4, 0x5
    li r5, 0x1
    bl fn_80076E24
L_80076B50:
    cmpwi r3, 0x0
    opword  0x41820008  // beq .L_80076B5C
    opword  0x4800000C  // b .L_80076B64
L_80076B5C:
    mr r3, r28
    bl fn_80076C94
L_80076B64:
    lwz r0, 0x34(r1)
    lwz r31, 0x2c(r1)
    lwz r30, 0x28(r1)
    lwz r29, 0x24(r1)
    lwz r28, 0x20(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

//80076B84
ASM void fn_80076B84(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x2f8(r1)
    stw r31, 0x2f4(r1)
    stw r30, 0x2f0(r1)
    addi r30, r5, 0x0
    stw r29, 0x2ec(r1)
    addi r29, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    opword  0x800D8BD8  // lwz r0, lbl_8053A798@sda21(r0)
    slwi r6, r29, 8
    cmpwi r0, 0x0
    addi r0, r3, lbl_804B9BA0@l
    add r31, r0, r6
    opword  0x40820088  // bne .L_80076C44
    clrlwi. r0, r4, 28
    opword  0x41820010  // beq .L_80076BD4
    li r0, 0x1
    stw r0, 0x20(r31)
    opword  0x4800000C  // b .L_80076BDC
L_80076BD4:
    li r0, 0x0
    stw r0, 0x20(r31)
L_80076BDC:
    lwz r12, 0x38(r31)
    cmplwi r12, 0x0
    opword  0x41820018  // beq .L_80076BFC
    li r0, 0x0
    mtlr r12
    stw r0, 0x38(r31)
    mr r3, r29
    blrl
L_80076BFC:
    lwz r0, 0x1c(r31)
    cmplwi r0, 0x0
    opword  0x41820040  // beq .L_80076C44
    addi r3, r1, 0x18
    bl OSClearContext
    addi r3, r1, 0x18
    bl OSSetCurrentContext
    lwz r12, 0x1c(r31)
    li r0, 0x0
    addi r3, r29, 0x0
    stw r0, 0x1c(r31)
    mtlr r12
    lwz r4, 0x20(r31)
    blrl
    addi r3, r1, 0x18
    bl OSClearContext
    mr r3, r30
    bl OSSetCurrentContext
L_80076C44:
    lwz r0, 0x2fc(r1)
    lwz r31, 0x2f4(r1)
    lwz r30, 0x2f0(r1)
    lwz r29, 0x2ec(r1)
    addi r1, r1, 0x2f8
    mtlr r0
    blr
}

//80076C60
ASM void fn_80076C60(void)
{
    nofralloc
    mflr r0
    lis r4, lbl_804B9BA0@ha
    stw r0, 0x4(r1)
    slwi r3, r3, 8
    addi r0, r4, lbl_804B9BA0@l
    add r3, r0, r3
    stwu r1, -0x8(r1)
    addi r3, r3, 0x24
    bl OSWakeupThread
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

//80076C94
ASM void fn_80076C94(void)
{
    nofralloc
    mflr r0
    lis r4, lbl_804B9BA0@ha
    stw r0, 0x4(r1)
    slwi r3, r3, 8
    addi r0, r4, lbl_804B9BA0@l
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    add r31, r0, r3
    stw r30, 0x10(r1)
    bl OSDisableInterrupts
    mr r30, r3
    opword  0x4800000C  // b .L_80076CCC
L_80076CC4:
    addi r3, r31, 0x24
    bl OSSleepThread
L_80076CCC:
    lwz r0, 0x1c(r31)
    cmplwi r0, 0x0
    opword  0x4082FFF0  // bne .L_80076CC4
    lwz r31, 0x20(r31)
    mr r3, r30
    bl OSRestoreInterrupts
    mr r3, r31
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

//80076D00
ASM void fn_80076D00(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x2f0(r1)
    stw r31, 0x2ec(r1)
    addi r31, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    stw r30, 0x2e8(r1)
    slwi r5, r31, 8
    stw r29, 0x2e4(r1)
    opword  0x800D8BD8  // lwz r0, lbl_8053A798@sda21(r0)
    cmpwi r0, 0x0
    addi r0, r3, lbl_804B9BA0@l
    add r30, r0, r5
    opword  0x408200D4  // bne .L_80076E08
    clrlwi. r0, r4, 24
    opword  0x40820014  // bne .L_80076D50
    clrrwi r3, r4, 16
    subis r0, r3, 0x4
    cmplwi r0, 0x0
    opword  0x41820010  // beq .L_80076D5C
L_80076D50:
    li r0, 0x1
    stw r0, 0x20(r30)
    opword  0x4800003C  // b .L_80076D94
L_80076D5C:
    lis r3, fn_80076B84@ha
    lwz r5, 0xc(r30)
    addi r8, r3, fn_80076B84@l
    lwz r7, 0x10(r30)
    lwz r9, 0x30(r30)
    mr r3, r31
    lwz r10, 0x34(r30)
    addi r4, r30, 0x0
    addi r6, r30, 0x5
    bl SITransfer
    cmpwi r3, 0x0
    opword  0x40820080  // bne .L_80076E08
    li r0, 0x2
    stw r0, 0x20(r30)
L_80076D94:
    lwz r12, 0x38(r30)
    cmplwi r12, 0x0
    opword  0x41820018  // beq .L_80076DB4
    li r0, 0x0
    mtlr r12
    stw r0, 0x38(r30)
    mr r3, r31
    blrl
L_80076DB4:
    lwz r0, 0x1c(r30)
    cmplwi r0, 0x0
    opword  0x4182004C  // beq .L_80076E08
    bl OSGetCurrentContext
    addi r29, r3, 0x0
    addi r3, r1, 0x10
    bl OSClearContext
    addi r3, r1, 0x10
    bl OSSetCurrentContext
    lwz r12, 0x1c(r30)
    li r0, 0x0
    addi r3, r31, 0x0
    stw r0, 0x1c(r30)
    mtlr r12
    lwz r4, 0x20(r30)
    blrl
    addi r3, r1, 0x10
    bl OSClearContext
    mr r3, r29
    bl OSSetCurrentContext
    bl __OSReschedule
L_80076E08:
    lwz r0, 0x2f4(r1)
    lwz r31, 0x2ec(r1)
    lwz r30, 0x2e8(r1)
    lwz r29, 0x2e4(r1)
    addi r1, r1, 0x2f0
    mtlr r0
    blr
}

//80076E24
ASM void fn_80076E24(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stmw r27, 0x1c(r1)
    addi r27, r3, 0x0
    lis r3, lbl_804B9BA0@ha
    slwi r7, r27, 8
    addi r0, r3, lbl_804B9BA0@l
    addi r28, r4, 0x0
    addi r29, r5, 0x0
    addi r31, r6, 0x0
    add r30, r0, r7
    bl OSDisableInterrupts
    stw r31, 0x38(r30)
    lis r4, fn_80076D00@ha
    addi r31, r3, 0x0
    stw r28, 0xc(r30)
    addi r4, r4, fn_80076D00@l
    mr r3, r27
    stw r29, 0x10(r30)
    bl fn_80075178
    mr r3, r31
    bl OSRestoreInterrupts
    lmw r27, 0x1c(r1)
    li r3, 0x0
    lwz r0, 0x34(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

//80076E98
ASM void fn_80076E98(void)
{
    nofralloc
    lis r4, lbl_804B9BA0@ha
    slwi r3, r3, 8
    addi r0, r4, lbl_804B9BA0@l
    add r7, r0, r3
    lwz r3, 0x30(r7)
    lwz r4, 0x34(r7)
    stw r6, 0x34(r7)
    stw r5, 0x30(r7)
    blr
}

//80076EBC
ASM void fn_80076EBC(void)
{
    nofralloc
    mflr r0
    lis r4, lbl_804B9BA0@ha
    stw r0, 0x4(r1)
    addi r4, r4, lbl_804B9BA0@l
    addi r0, r4, 0xa8
    stwu r1, -0x20(r1)
    cmplw r0, r3
    stw r31, 0x1c(r1)
    opword  0x4082000C  // bne .L_80076EE8
    li r0, 0x0
    opword  0x48000068  // b .L_80076F4C
L_80076EE8:
    addi r4, r4, 0x100
    addi r0, r4, 0xa8
    cmplw r0, r3
    opword  0x4082000C  // bne .L_80076F00
    li r0, 0x1
    opword  0x48000050  // b .L_80076F4C
L_80076F00:
    addi r0, r4, 0x1a8
    cmplw r0, r3
    addi r4, r4, 0x100
    opword  0x4082000C  // bne .L_80076F18
    li r0, 0x2
    opword  0x48000038  // b .L_80076F4C
L_80076F18:
    addi r0, r4, 0x1a8
    cmplw r0, r3
    opword  0x4082000C  // bne .L_80076F2C
    li r0, 0x3
    opword  0x48000024  // b .L_80076F4C
L_80076F2C:
    lis r3, lbl_80498950@ha
    crclr 6
    lis r4, lbl_8049895C@ha
    addi r5, r4, lbl_8049895C@l
    addi r3, r3, lbl_80498950@l
    li r4, 0xa9
    bl OSPanic
    li r0, -0x1
L_80076F4C:
    lis r3, lbl_804B9BA0@ha
    slwi r4, r0, 8
    addi r0, r3, lbl_804B9BA0@l
    add r31, r0, r4
    lis r3, 0xabba
    bl fn_80051CEC
L_80076F64:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80076F64
    lwz r3, 0xf8(r31)
    bl fn_80051CEC
L_80076F78:
    bl fn_80051CB4
    cmplwi r3, 0x0
    opword  0x4082FFF8  // bne .L_80076F78
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

//80076F98
ASM void fn_80076F98(void)
{
    nofralloc
    lis r4, lbl_804B9BA0@ha
    mflr r0
    addi r4, r4, lbl_804B9BA0@l
    stw r0, 0x4(r1)
    addi r0, r4, 0xa8
    cmplw r0, r3
    stwu r1, -0x8(r1)
    opword  0x4082000C  // bne .L_80076FC0
    li r0, 0x0
    opword  0x48000068  // b .L_80077024
L_80076FC0:
    addi r4, r4, 0x100
    addi r0, r4, 0xa8
    cmplw r0, r3
    opword  0x4082000C  // bne .L_80076FD8
    li r0, 0x1
    opword  0x48000050  // b .L_80077024
L_80076FD8:
    addi r0, r4, 0x1a8
    cmplw r0, r3
    addi r4, r4, 0x100
    opword  0x4082000C  // bne .L_80076FF0
    li r0, 0x2
    opword  0x48000038  // b .L_80077024
L_80076FF0:
    addi r0, r4, 0x1a8
    cmplw r0, r3
    opword  0x4082000C  // bne .L_80077004
    li r0, 0x3
    opword  0x48000024  // b .L_80077024
L_80077004:
    lis r3, lbl_80498950@ha
    crclr 6
    lis r4, lbl_8049895C@ha
    addi r5, r4, lbl_8049895C@l
    addi r3, r3, lbl_80498950@l
    li r4, 0xa9
    bl OSPanic
    li r0, -0x1
L_80077024:
    mr r3, r0
    li r4, 0x0
    bl fn_80075D94
    lwz r0, 0xc(r1)
    addi r1, r1, 0x8
    mtlr r0
    blr
}

//80077040
ASM void fn_80077040(void)
{
    nofralloc
    mflr r0
    lis r5, lbl_804B9BA0@ha
    stw r0, 0x4(r1)
    addi r0, r5, lbl_804B9BA0@l
    slwi r3, r3, 8
    stwu r1, -0x20(r1)
    li r5, 0x4
    stw r31, 0x1c(r1)
    add r31, r0, r3
    stw r30, 0x18(r1)
    addi r30, r31, 0x40
    stw r29, 0x14(r1)
    lwz r29, 0xf8(r31)
    addi r3, r29, 0x0
    bl memcpy
    lwz r0, 0x0(r30)
    addi r3, r29, 0x20
    li r4, 0x20
    stw r0, 0x4(r29)
    lwz r0, 0x4(r30)
    stw r0, 0x8(r29)
    lwz r0, 0xc(r30)
    stw r0, 0xc(r29)
    stw r3, 0x10(r29)
    bl DCInvalidateRange
    addi r3, r29, 0x0
    li r4, 0x20
    bl DCFlushRange
    li r0, 0xff
    lis r4, lbl_804985D0@ha
    stw r0, 0xac(r31)
    addi r4, r4, lbl_804985D0@l
    addis r0, r4, 0x8000
    stw r0, 0xb4(r31)
    li r0, 0x380
    lis r5, fn_80076EBC@ha
    stw r0, 0xb8(r31)
    li r6, 0x0
    li r0, 0x10
    stw r6, 0xbc(r31)
    addi r5, r5, fn_80076EBC@l
    lis r4, fn_80076F98@ha
    sth r0, 0xcc(r31)
    addi r0, r4, fn_80076F98@l
    addi r3, r31, 0xa8
    stw r5, 0xd0(r31)
    stw r6, 0xd4(r31)
    stw r0, 0xd8(r31)
    stw r6, 0xdc(r31)
    bl fn_8003A040
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

