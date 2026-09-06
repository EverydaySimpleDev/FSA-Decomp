#include "types.h"
#include "Dolphin/exi.h"
#include "Dolphin/os.h"
#include "stl/mem.h"

EXIControl Ecb[3];
u32 IDSerialPort1;
extern char* __EXIVersion;
extern void __div2i(void);

//80071C14
ASM void SetExiInterruptMask(s32 chan, EXIControl* exi)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    addi r31, r4, 0x0
    lis r4, Ecb@ha
    addi r4, r4, Ecb@l
    addi r4, r4, 0x80
    cmpwi r3, 0x1
    beq L_80071C94
    bge L_80071C4C
    cmpwi r3, 0x0
    bge L_80071C58
    b L_80071CF4
L_80071C4C:
    cmpwi r3, 0x3
    bge L_80071CF4
    b L_80071CC4
L_80071C58:
    lwz r0, 0x0(r31)
    cmplwi r0, 0x0
    bne L_80071C70
    lwz r0, 0x0(r4)
    cmplwi r0, 0x0
    beq L_80071C7C
L_80071C70:
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq L_80071C88
L_80071C7C:
    lis r3, 0x41
    bl __OSMaskInterrupts
    b L_80071CF4
L_80071C88:
    lis r3, 0x41
    bl __OSUnmaskInterrupts
    b L_80071CF4
L_80071C94:
    lwz r0, 0x0(r31)
    cmplwi r0, 0x0
    beq L_80071CAC
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq L_80071CB8
L_80071CAC:
    lis r3, 0x8
    bl __OSMaskInterrupts
    b L_80071CF4
L_80071CB8:
    lis r3, 0x8
    bl __OSUnmaskInterrupts
    b L_80071CF4
L_80071CC4:
    li r3, 0x19
    bl __OSGetInterruptHandler
    cmplwi r3, 0x0
    beq L_80071CE0
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq L_80071CEC
L_80071CE0:
    li r3, 0x40
    bl __OSMaskInterrupts
    b L_80071CF4
L_80071CEC:
    li r3, 0x40
    bl __OSUnmaskInterrupts
L_80071CF4:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

//80071D08
ASM BOOL EXIImm(s32 chan, void* buf, s32 len, u32 type, EXICallback callback)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x40(r1)
    stmw r25, 0x24(r1)
    addi r26, r3, 0x0
    addi r27, r4, 0x0
    addi r28, r5, 0x0
    addi r29, r6, 0x0
    addi r25, r7, 0x0
    slwi r4, r3, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r31, r0, r4
    bl OSDisableInterrupts
    mr r30, r3
    lwz r0, 0xc(r31)
    clrlwi. r0, r0, 30
    bne L_80071D5C
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 29, 29
    bne L_80071D6C
L_80071D5C:
    mr r3, r30
    bl OSRestoreInterrupts
    li r3, 0x0
    b L_80071F50
L_80071D6C:
    stw r25, 0x4(r31)
    lwz r0, 0x4(r31)
    cmplwi r0, 0x0
    beq L_80071DA0
    addi r3, r26, 0x0
    li r4, 0x0
    li r5, 0x1
    li r6, 0x0
    bl EXIClearInterrupts
    lis r3, 0x20
    mulli r0, r26, 0x3
    srw r3, r3, r0
    bl __OSUnmaskInterrupts
L_80071DA0:
    lwz r0, 0xc(r31)
    ori r0, r0, 0x2
    stw r0, 0xc(r31)
    cmplwi r29, 0x0
    beq L_80071EF4
    li r0, 0x0
    li r4, 0x0
    cmpw r4, r28
    bge L_80071EE0
    subi r6, r28, 0x8
    cmpwi r28, 0x8
    ble L_80071F48
    addi r3, r27, 0x0
    addi r5, r6, 0x7
    srwi r5, r5, 3
    mtctr r5
    cmpwi r6, 0x0
    ble L_80071F48
L_80071DE8:
    lbz r6, 0x0(r3)
    subfic r5, r4, 0x3
    slwi r5, r5, 3
    slw r5, r6, r5
    or r0, r0, r5
    lbz r6, 0x1(r3)
    addi r5, r4, 0x1
    subfic r5, r5, 0x3
    slwi r5, r5, 3
    slw r5, r6, r5
    or r0, r0, r5
    lbz r6, 0x2(r3)
    addi r5, r4, 0x2
    subfic r5, r5, 0x3
    slwi r5, r5, 3
    slw r5, r6, r5
    or r0, r0, r5
    lbz r6, 0x3(r3)
    neg r5, r4
    slwi r5, r5, 3
    slw r5, r6, r5
    or r0, r0, r5
    lbz r6, 0x4(r3)
    addi r5, r4, 0x4
    subfic r5, r5, 0x3
    slwi r5, r5, 3
    slw r5, r6, r5
    or r0, r0, r5
    lbz r6, 0x5(r3)
    addi r5, r4, 0x5
    subfic r5, r5, 0x3
    slwi r5, r5, 3
    slw r5, r6, r5
    or r0, r0, r5
    lbz r6, 0x6(r3)
    addi r5, r4, 0x6
    subfic r5, r5, 0x3
    slwi r5, r5, 3
    slw r5, r6, r5
    or r0, r0, r5
    lbz r6, 0x7(r3)
    addi r5, r4, 0x7
    subfic r5, r5, 0x3
    slwi r5, r5, 3
    slw r5, r6, r5
    or r0, r0, r5
    addi r3, r3, 0x8
    addi r4, r4, 0x8
    bdnz L_80071DE8
    b L_80071F48
L_80071EB0:
    subf r3, r4, r28
    mtctr r3
    cmpw r4, r28
    bge L_80071EE0
L_80071EC0:
    lbz r5, 0x0(r6)
    subfic r3, r4, 0x3
    slwi r3, r3, 3
    slw r3, r5, r3
    or r0, r0, r3
    addi r6, r6, 0x1
    addi r4, r4, 0x1
    bdnz L_80071EC0
L_80071EE0:
    lis r3, 0xcc00
    addi r4, r3, 0x6800
    mulli r3, r26, 0x14
    add r3, r4, r3
    stw r0, 0x10(r3)
L_80071EF4:
    stw r27, 0x14(r31)
    cmplwi r29, 0x1
    beq L_80071F08
    mr r0, r28
    b L_80071F0C
L_80071F08:
    li r0, 0x0
L_80071F0C:
    stw r0, 0x10(r31)
    slwi r0, r29, 2
    ori r3, r0, 0x1
    subi r0, r28, 0x1
    slwi r0, r0, 4
    or r4, r3, r0
    lis r3, 0xcc00
    addi r3, r3, 0x6800
    mulli r0, r26, 0x14
    add r3, r3, r0
    stw r4, 0xc(r3)
    mr r3, r30
    bl OSRestoreInterrupts
    li r3, 0x1
    b L_80071F50
L_80071F48:
    add r6, r27, r4
    b L_80071EB0
L_80071F50:
    lwz r0, 0x44(r1)
    lmw r25, 0x24(r1)
    addi r1, r1, 0x40
    mtlr r0
    blr
}

//80071F64
ASM BOOL EXIImmEx(s32 chan, void* buf, s32 len, u32 mode)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stmw r27, 0x1c(r1)
    addi r27, r3, 0x0
    addi r28, r4, 0x0
    addi r29, r5, 0x0
    addi r30, r6, 0x0
    b L_80071FE4
L_80071F88:
    cmpwi r29, 0x4
    bge L_80071F98
    mr r31, r29
    b L_80071F9C
L_80071F98:
    li r31, 0x4
L_80071F9C:
    addi r5, r31, 0x0
    addi r3, r27, 0x0
    addi r4, r28, 0x0
    addi r6, r30, 0x0
    li r7, 0x0
    bl EXIImm
    cmpwi r3, 0x0
    bne L_80071FC4
    li r3, 0x0
    b L_80071FF0
L_80071FC4:
    mr r3, r27
    bl EXISync
    cmpwi r3, 0x0
    bne L_80071FDC
    li r3, 0x0
    b L_80071FF0
L_80071FDC:
    add r28, r28, r31
    subf r29, r31, r29
L_80071FE4:
    cmpwi r29, 0x0
    bne L_80071F88
    li r3, 0x1
L_80071FF0:
    lwz r0, 0x34(r1)
    lmw r27, 0x1c(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

//80072004
ASM BOOL EXIDma(s32 chan, void* buf, s32 len, u32 type, EXICallback callback)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x40(r1)
    stmw r25, 0x24(r1)
    addi r27, r3, 0x0
    addi r28, r4, 0x0
    addi r29, r5, 0x0
    addi r30, r6, 0x0
    addi r25, r7, 0x0
    slwi r4, r3, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r26, r0, r4
    bl OSDisableInterrupts
    mr r31, r3
    lwz r0, 0xc(r26)
    clrlwi. r0, r0, 30
    bne L_80072058
    lwz r0, 0xc(r26)
    rlwinm. r0, r0, 0, 29, 29
    bne L_80072068
L_80072058:
    mr r3, r31
    bl OSRestoreInterrupts
    li r3, 0x0
    b L_800720DC
L_80072068:
    stw r25, 0x4(r26)
    lwz r0, 0x4(r26)
    cmplwi r0, 0x0
    beq L_8007209C
    addi r3, r27, 0x0
    li r4, 0x0
    li r5, 0x1
    li r6, 0x0
    bl EXIClearInterrupts
    lis r3, 0x20
    mulli r0, r27, 0x3
    srw r3, r3, r0
    bl __OSUnmaskInterrupts
L_8007209C:
    lwz r0, 0xc(r26)
    ori r0, r0, 0x1
    stw r0, 0xc(r26)
    rlwinm r4, r28, 0, 6, 26
    lis r3, 0xcc00
    addi r0, r3, 0x6800
    mulli r3, r27, 0x14
    add r3, r0, r3
    stw r4, 0x4(r3)
    stw r29, 0x8(r3)
    slwi r0, r30, 2
    ori r0, r0, 0x3
    stw r0, 0xc(r3)
    mr r3, r31
    bl OSRestoreInterrupts
    li r3, 0x1
L_800720DC:
    lwz r0, 0x44(r1)
    lmw r25, 0x24(r1)
    addi r1, r1, 0x40
    mtlr r0
    blr
}

//800720F0
ASM BOOL EXISync(s32 chan)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stmw r27, 0x1c(r1)
    slwi r5, r3, 6
    lis r4, Ecb@ha
    addi r0, r4, Ecb@l
    add r31, r0, r5
    li r28, 0x0
    mulli r30, r3, 0x14
    lis r3, 0xcc00
    addi r29, r3, 0x6800
    add r29, r29, r30
    b L_80072318
L_80072128:
    lwz r0, 0xc(r29)
    clrlwi. r0, r0, 31
    bne L_80072318
    bl OSDisableInterrupts
    mr r27, r3
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq L_8007230C
    lwz r0, 0xc(r31)
    clrlwi. r0, r0, 30
    beq L_80072284
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq L_80072278
    lwz r3, 0x10(r31)
    cmpwi r3, 0x0
    beq L_80072278
    lwz r5, 0x14(r31)
    lis r4, 0xcc00
    addi r0, r4, 0x6800
    add r4, r0, r30
    lwz r0, 0x10(r4)
    li r4, 0x0
    ble L_80072278
    subi r7, r3, 0x8
    cmpwi r3, 0x8
    ble L_8007224C
    addi r6, r7, 0x7
    srwi r6, r6, 3
    mtctr r6
    cmpwi r7, 0x0
    ble L_8007224C
L_800721A8:
    subfic r6, r4, 0x3
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x0(r5)
    addi r6, r4, 0x1
    subfic r6, r6, 0x3
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x1(r5)
    addi r6, r4, 0x2
    subfic r6, r6, 0x3
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x2(r5)
    neg r6, r4
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x3(r5)
    addi r6, r4, 0x4
    subfic r6, r6, 0x3
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x4(r5)
    addi r6, r4, 0x5
    subfic r6, r6, 0x3
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x5(r5)
    addi r6, r4, 0x6
    subfic r6, r6, 0x3
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x6(r5)
    addi r6, r4, 0x7
    subfic r6, r6, 0x3
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x7(r5)
    addi r5, r5, 0x8
    addi r4, r4, 0x8
    bdnz L_800721A8
L_8007224C:
    subf r6, r4, r3
    mtctr r6
    cmpw r4, r3
    bge L_80072278
L_8007225C:
    subfic r3, r4, 0x3
    slwi r3, r3, 3
    srw r3, r0, r3
    stb r3, 0x0(r5)
    addi r5, r5, 0x1
    addi r4, r4, 0x1
    bdnz L_8007225C
L_80072278:
    lwz r0, 0xc(r31)
    clrrwi r0, r0, 2
    stw r0, 0xc(r31)
L_80072284:
    bl __OSGetDIConfig
    cmplwi r3, 0xff
    bne L_80072308
    bl OSGetConsoleType
    clrrwi r3, r3, 28
    subis r0, r3, 0x2000
    cmplwi r0, 0x0
    beq L_80072308
    lwz r0, 0x10(r31)
    cmpwi r0, 0x4
    bne L_80072308
    lwz r0, 0x0(r29)
    rlwinm. r0, r0, 0, 25, 27
    bne L_80072308
    lis r3, 0xcc00
    addi r0, r3, 0x6800
    add r4, r0, r30
    lwzu r3, 0x10(r4)
    subis r0, r3, 0x101
    cmplwi r0, 0x0
    beq L_800722F8
    lwz r3, 0x0(r4)
    subis r0, r3, 0x507
    cmplwi r0, 0x0
    beq L_800722F8
    lwz r3, 0x0(r4)
    subis r0, r3, 0x422
    cmplwi r0, 0x1
    bne L_80072308
L_800722F8:
    lis r3, 0x8000
    lhz r0, 0x30e6(r3)
    cmplwi r0, 0x8200
    bne L_8007230C
L_80072308:
    li r28, 0x1
L_8007230C:
    mr r3, r27
    bl OSRestoreInterrupts
    b L_80072324
L_80072318:
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 29, 29
    bne L_80072128
L_80072324:
    mr r3, r28
    lwz r0, 0x34(r1)
    lmw r27, 0x1c(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

//8007233C
ASM int EXIClearInterrupts(s32 chan, BOOL exi, BOOL tc, BOOL ext)
{
    nofralloc
    mulli r0, r3, 0x14
    lis r3, 0xcc00
    addi r7, r3, 0x6800
    add r7, r7, r0
    lwz r0, 0x0(r7)
    mr r3, r0
    andi. r0, r0, 0x7f5
    cmpwi r4, 0x0
    beq L_80072364
    ori r0, r0, 0x2
L_80072364:
    cmpwi r5, 0x0
    beq L_80072370
    ori r0, r0, 0x8
L_80072370:
    cmpwi r6, 0x0
    beq L_8007237C
    ori r0, r0, 0x800
L_8007237C:
    stw r0, 0x0(r7)
    blr
}

//80072384
ASM EXICallback EXISetExiCallback(s32 chan, EXICallback exiCallback)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stmw r26, 0x10(r1)
    addi r26, r3, 0x0
    addi r27, r4, 0x0
    slwi r0, r3, 6
    lis r3, Ecb@ha
    addi r31, r3, Ecb@l
    add r30, r31, r0
    bl OSDisableInterrupts
    mr r28, r3
    lwz r29, 0x0(r30)
    stw r27, 0x0(r30)
    cmpwi r26, 0x2
    beq L_800723D4
    addi r3, r26, 0x0
    addi r4, r30, 0x0
    bl SetExiInterruptMask
    b L_800723E0
L_800723D4:
    li r3, 0x0
    addi r4, r31, 0x0
    bl SetExiInterruptMask
L_800723E0:
    mr r3, r28
    bl OSRestoreInterrupts
    mr r3, r29
    lwz r0, 0x2c(r1)
    lmw r26, 0x10(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

//80072400
ASM BOOL __EXIProbe(s32 chan)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x28(r1)
    stmw r27, 0x14(r1)
    addi r28, r3, 0x0
    slwi r4, r3, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r31, r0, r4
    cmpwi r28, 0x2
    bne L_80072434
    li r3, 0x1
    b L_80072560
L_80072434:
    li r29, 0x1
    bl OSDisableInterrupts
    addi r30, r3, 0x0
    mulli r0, r28, 0x14
    lis r3, 0xcc00
    addi r3, r3, 0x6800
    add r3, r3, r0
    lwz r5, 0x0(r3)
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 28, 28
    bne L_80072528
    rlwinm. r0, r5, 0, 20, 20
    beq L_80072490
    lwz r0, 0x0(r3)
    andi. r0, r0, 0x7f5
    ori r0, r0, 0x800
    stw r0, 0x0(r3)
    li r4, 0x0
    stw r4, 0x20(r31)
    slwi r0, r28, 2
    lis r3, 0x8000
    addi r3, r3, 0x30c0
    stwx r4, r3, r0
L_80072490:
    rlwinm. r0, r5, 0, 19, 19
    beq L_80072508
    lis r31, 0x8000
    lwz r0, 0xf8(r31)
    srwi r0, r0, 2
    lis r3, 0x1062
    addi r3, r3, 0x4dd3
    mulhwu r0, r3, r0
    srwi r27, r0, 6
    bl OSGetTime
    li r5, 0x0
    addi r6, r27, 0x0
    bl __div2i
    li r5, 0x0
    li r6, 0x64
    bl __div2i
    addi r4, r4, 0x1
    slwi r0, r28, 2
    addi r3, r31, 0x30c0
    add r3, r3, r0
    lwz r0, 0x0(r3)
    cmpwi r0, 0x0
    bne L_800724F0
    stw r4, 0x0(r3)
L_800724F0:
    lwz r0, 0x0(r3)
    subf r0, r0, r4
    cmpwi r0, 0x3
    bge L_80072554
    li r29, 0x0
    b L_80072554
L_80072508:
    li r4, 0x0
    stw r4, 0x20(r31)
    slwi r0, r28, 2
    lis r3, 0x8000
    addi r3, r3, 0x30c0
    stwx r4, r3, r0
    li r29, 0x0
    b L_80072554
L_80072528:
    rlwinm. r0, r5, 0, 19, 19
    beq L_80072538
    rlwinm. r0, r5, 0, 20, 20
    beq L_80072554
L_80072538:
    li r4, 0x0
    stw r4, 0x20(r31)
    slwi r0, r28, 2
    lis r3, 0x8000
    addi r3, r3, 0x30c0
    stwx r4, r3, r0
    li r29, 0x0
L_80072554:
    mr r3, r30
    bl OSRestoreInterrupts
    mr r3, r29
L_80072560:
    lwz r0, 0x2c(r1)
    lmw r27, 0x14(r1)
    addi r1, r1, 0x28
    mtlr r0
    blr
}

//80072574
ASM BOOL EXIProbe(s32 chan)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    slwi r4, r3, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r31, r0, r4
    addi r3, r30, 0x0
    bl __EXIProbe
    cmpwi r3, 0x0
    beq L_800725DC
    lwz r0, 0x20(r31)
    cmpwi r0, 0x0
    bne L_800725DC
    addi r3, r30, 0x0
    li r4, 0x0
    addi r5, r1, 0xc
    bl EXIGetID
    cmpwi r3, 0x0
    beq L_800725D8
    li r3, 0x1
    b L_800725DC
L_800725D8:
    li r3, 0x0
L_800725DC:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

//800725F4
ASM s32 EXIProbeEx(s32 chan)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    stw r31, 0x14(r1)
    stw r30, 0x10(r1)
    addi r30, r3, 0x0
    slwi r4, r3, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r31, r0, r4
    addi r3, r30, 0x0
    bl __EXIProbe
    cmpwi r3, 0x0
    beq L_8007265C
    lwz r0, 0x20(r31)
    cmpwi r0, 0x0
    bne L_8007265C
    addi r3, r30, 0x0
    li r4, 0x0
    addi r5, r1, 0xc
    bl EXIGetID
    cmpwi r3, 0x0
    beq L_80072658
    li r3, 0x1
    b L_8007265C
L_80072658:
    li r3, 0x0
L_8007265C:
    cmpwi r3, 0x0
    beq L_8007266C
    li r3, 0x1
    b L_80072690
L_8007266C:
    slwi r0, r30, 2
    lis r3, 0x8000
    addi r3, r3, 0x30c0
    lwzx r0, r3, r0
    cmpwi r0, 0x0
    beq L_8007268C
    li r3, 0x0
    b L_80072690
L_8007268C:
    li r3, -0x1
L_80072690:
    lwz r0, 0x1c(r1)
    lwz r31, 0x14(r1)
    lwz r30, 0x10(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

//800726A8
ASM BOOL EXIAttach(s32 chan, EXICallback extCallback)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x40(r1)
    stmw r27, 0x2c(r1)
    addi r27, r3, 0x0
    addi r28, r4, 0x0
    slwi r4, r3, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r30, r0, r4
    addi r3, r27, 0x0
    bl __EXIProbe
    cmpwi r3, 0x0
    beq L_800726FC
    lwz r0, 0x20(r30)
    cmpwi r0, 0x0
    bne L_800726FC
    addi r3, r27, 0x0
    li r4, 0x0
    addi r5, r1, 0x1c
    bl EXIGetID
L_800726FC:
    bl OSDisableInterrupts
    mr r29, r3
    lwz r0, 0x20(r30)
    cmpwi r0, 0x0
    bne L_80072720
    mr r3, r29
    bl OSRestoreInterrupts
    li r3, 0x0
    b L_800727A0
L_80072720:
    bl OSDisableInterrupts
    mr r31, r3
    lwz r0, 0xc(r30)
    rlwinm. r0, r0, 0, 28, 28
    bne L_80072744
    mr r3, r27
    bl __EXIProbe
    cmpwi r3, 0x0
    bne L_80072754
L_80072744:
    mr r3, r31
    bl OSRestoreInterrupts
    li r31, 0x0
    b L_80072794
L_80072754:
    addi r3, r27, 0x0
    li r4, 0x1
    li r5, 0x0
    li r6, 0x0
    bl EXIClearInterrupts
    stw r28, 0x8(r30)
    lis r3, 0x10
    mulli r0, r27, 0x3
    srw r3, r3, r0
    bl __OSUnmaskInterrupts
    lwz r0, 0xc(r30)
    ori r0, r0, 0x8
    stw r0, 0xc(r30)
    mr r3, r31
    bl OSRestoreInterrupts
    li r31, 0x1
L_80072794:
    mr r3, r29
    bl OSRestoreInterrupts
    mr r3, r31
L_800727A0:
    lwz r0, 0x44(r1)
    lmw r27, 0x2c(r1)
    addi r1, r1, 0x40
    mtlr r0
    blr
}

//800727B4
ASM BOOL EXIDetach(s32 chan)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    addi r29, r3, 0x0
    slwi r4, r3, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r31, r0, r4
    bl OSDisableInterrupts
    mr r30, r3
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 28, 28
    bne L_80072804
    mr r3, r30
    bl OSRestoreInterrupts
    li r3, 0x1
    b L_80072854
L_80072804:
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq L_8007282C
    lwz r0, 0x18(r31)
    cmplwi r0, 0x0
    bne L_8007282C
    mr r3, r30
    bl OSRestoreInterrupts
    li r3, 0x0
    b L_80072854
L_8007282C:
    lwz r0, 0xc(r31)
    rlwinm r0, r0, 0, 29, 27
    stw r0, 0xc(r31)
    lis r3, 0x50
    mulli r0, r29, 0x3
    srw r3, r3, r0
    bl __OSMaskInterrupts
    mr r3, r30
    bl OSRestoreInterrupts
    li r3, 0x1
L_80072854:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

//80072870
ASM BOOL EXISelect(s32 chan, u32 dev, u32 freq)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stmw r27, 0x1c(r1)
    addi r27, r3, 0x0
    addi r28, r4, 0x0
    addi r29, r5, 0x0
    slwi r4, r3, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r31, r0, r4
    bl OSDisableInterrupts
    mr r30, r3
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 29, 29
    bne L_800728F4
    cmpwi r27, 0x2
    beq L_80072904
    cmplwi r28, 0x0
    bne L_800728DC
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 28, 28
    bne L_800728DC
    mr r3, r27
    bl __EXIProbe
    cmpwi r3, 0x0
    beq L_800728F4
L_800728DC:
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq L_800728F4
    lwz r0, 0x18(r31)
    cmplw r0, r28
    beq L_80072904
L_800728F4:
    mr r3, r30
    bl OSRestoreInterrupts
    li r3, 0x0
    b L_80072988
L_80072904:
    lwz r0, 0xc(r31)
    ori r0, r0, 0x4
    stw r0, 0xc(r31)
    mulli r0, r27, 0x14
    lis r3, 0xcc00
    addi r4, r3, 0x6800
    add r4, r4, r0
    lwz r5, 0x0(r4)
    andi. r5, r5, 0x405
    li r0, 0x1
    slw r0, r0, r28
    slwi r3, r0, 7
    slwi r0, r29, 4
    or r0, r3, r0
    or r5, r5, r0
    stw r5, 0x0(r4)
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq L_8007297C
    cmpwi r27, 0x1
    beq L_80072974
    bge L_8007297C
    cmpwi r27, 0x0
    bge L_80072968
    b L_8007297C
L_80072968:
    lis r3, 0x10
    bl __OSMaskInterrupts
    b L_8007297C
L_80072974:
    lis r3, 0x2
    bl __OSMaskInterrupts
L_8007297C:
    mr r3, r30
    bl OSRestoreInterrupts
    li r3, 0x1
L_80072988:
    lwz r0, 0x34(r1)
    lmw r27, 0x1c(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

//8007299C
ASM BOOL EXIDeselect(s32 chan)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    addi r31, r3, 0x0
    slwi r4, r3, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r30, r0, r4
    bl OSDisableInterrupts
    mr r28, r3
    lwz r0, 0xc(r30)
    rlwinm. r0, r0, 0, 29, 29
    bne L_800729F0
    mr r3, r28
    bl OSRestoreInterrupts
    li r3, 0x0
    b L_80072A8C
L_800729F0:
    lwz r0, 0xc(r30)
    rlwinm r0, r0, 0, 30, 28
    stw r0, 0xc(r30)
    mulli r0, r31, 0x14
    lis r3, 0xcc00
    addi r3, r3, 0x6800
    add r3, r3, r0
    lwz r29, 0x0(r3)
    andi. r0, r29, 0x405
    stw r0, 0x0(r3)
    lwz r0, 0xc(r30)
    rlwinm. r0, r0, 0, 28, 28
    beq L_80072A50
    cmpwi r31, 0x1
    beq L_80072A48
    bge L_80072A50
    cmpwi r31, 0x0
    bge L_80072A3C
    b L_80072A50
L_80072A3C:
    lis r3, 0x10
    bl __OSUnmaskInterrupts
    b L_80072A50
L_80072A48:
    lis r3, 0x2
    bl __OSUnmaskInterrupts
L_80072A50:
    mr r3, r28
    bl OSRestoreInterrupts
    cmpwi r31, 0x2
    beq L_80072A88
    rlwinm. r0, r29, 0, 24, 24
    beq L_80072A88
    mr r3, r31
    bl __EXIProbe
    cmpwi r3, 0x0
    beq L_80072A80
    li r3, 0x1
    b L_80072A8C
L_80072A80:
    li r3, 0x0
    b L_80072A8C
L_80072A88:
    li r3, 0x1
L_80072A8C:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

//80072AAC
ASM void EXIIntrruptHandler(__OSInterrupt interrupt, OSContext* context)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x2f8(r1)
    stw r31, 0x2f4(r1)
    stw r30, 0x2f0(r1)
    stw r29, 0x2ec(r1)
    addi r31, r4, 0x0
    extsh r3, r3
    subi r0, r3, 0x9
    lis r3, 0x5555
    addi r3, r3, 0x5556
    mulhw r3, r3, r0
    srwi r0, r3, 31
    add r30, r3, r0
    mulli r0, r30, 0x14
    lis r3, 0xcc00
    addi r3, r3, 0x6800
    add r3, r3, r0
    lwz r0, 0x0(r3)
    andi. r0, r0, 0x7f5
    ori r0, r0, 0x2
    stw r0, 0x0(r3)
    slwi r4, r30, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r3, r0, r4
    lwz r0, 0x0(r3)
    mr r29, r0
    cmplwi r0, 0x0
    beq L_80072B58
    addi r3, r1, 0x18
    bl OSClearContext
    addi r3, r1, 0x18
    bl OSSetCurrentContext
    addi r3, r30, 0x0
    addi r4, r31, 0x0
    addi r12, r29, 0x0
    mtlr r12
    blrl
    addi r3, r1, 0x18
    bl OSClearContext
    mr r3, r31
    bl OSSetCurrentContext
L_80072B58:
    lwz r0, 0x2fc(r1)
    lwz r31, 0x2f4(r1)
    lwz r30, 0x2f0(r1)
    lwz r29, 0x2ec(r1)
    addi r1, r1, 0x2f8
    mtlr r0
    blr
}

//80072B74
ASM void TCIntrruptHandler(__OSInterrupt interrupt, OSContext* context)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x2f8(r1)
    stw r31, 0x2f4(r1)
    stw r30, 0x2f0(r1)
    stw r29, 0x2ec(r1)
    stw r28, 0x2e8(r1)
    addi r28, r4, 0x0
    extsh r5, r3
    subi r0, r5, 0xa
    lis r3, 0x5555
    addi r3, r3, 0x5556
    mulhw r3, r3, r0
    srwi r0, r3, 31
    add r30, r3, r0
    slwi r4, r30, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r31, r0, r4
    lis r0, 0x8000
    srw r3, r0, r5
    bl __OSMaskInterrupts
    mulli r7, r30, 0x14
    lis r6, 0xcc00
    addi r3, r6, 0x6800
    add r3, r3, r7
    lwz r0, 0x0(r3)
    andi. r0, r0, 0x7f5
    ori r0, r0, 0x8
    stw r0, 0x0(r3)
    lwz r0, 0x4(r31)
    mr r29, r0
    cmplwi r0, 0x0
    beq L_80072D6C
    li r4, 0x0
    stw r4, 0x4(r31)
    lwz r0, 0xc(r31)
    clrlwi. r0, r0, 30
    beq L_80072D38
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq L_80072D2C
    lwz r3, 0x10(r31)
    cmpwi r3, 0x0
    beq L_80072D2C
    lwz r5, 0x14(r31)
    addi r0, r6, 0x6800
    add r6, r0, r7
    lwz r0, 0x10(r6)
    ble L_80072D2C
    subi r7, r3, 0x8
    cmpwi r3, 0x8
    ble L_80072D00
    addi r6, r7, 0x7
    srwi r6, r6, 3
    mtctr r6
    cmpwi r7, 0x0
    ble L_80072D00
L_80072C5C:
    subfic r6, r4, 0x3
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x0(r5)
    addi r6, r4, 0x1
    subfic r6, r6, 0x3
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x1(r5)
    addi r6, r4, 0x2
    subfic r6, r6, 0x3
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x2(r5)
    neg r6, r4
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x3(r5)
    addi r6, r4, 0x4
    subfic r6, r6, 0x3
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x4(r5)
    addi r6, r4, 0x5
    subfic r6, r6, 0x3
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x5(r5)
    addi r6, r4, 0x6
    subfic r6, r6, 0x3
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x6(r5)
    addi r6, r4, 0x7
    subfic r6, r6, 0x3
    slwi r6, r6, 3
    srw r6, r0, r6
    stb r6, 0x7(r5)
    addi r5, r5, 0x8
    addi r4, r4, 0x8
    bdnz L_80072C5C
L_80072D00:
    subf r6, r4, r3
    mtctr r6
    cmpw r4, r3
    bge L_80072D2C
L_80072D10:
    subfic r3, r4, 0x3
    slwi r3, r3, 3
    srw r3, r0, r3
    stb r3, 0x0(r5)
    addi r5, r5, 0x1
    addi r4, r4, 0x1
    bdnz L_80072D10
L_80072D2C:
    lwz r0, 0xc(r31)
    clrrwi r0, r0, 2
    stw r0, 0xc(r31)
L_80072D38:
    addi r3, r1, 0x20
    bl OSClearContext
    addi r3, r1, 0x20
    bl OSSetCurrentContext
    addi r3, r30, 0x0
    addi r4, r28, 0x0
    addi r12, r29, 0x0
    mtlr r12
    blrl
    addi r3, r1, 0x20
    bl OSClearContext
    mr r3, r28
    bl OSSetCurrentContext
L_80072D6C:
    lwz r0, 0x2fc(r1)
    lwz r31, 0x2f4(r1)
    lwz r30, 0x2f0(r1)
    lwz r29, 0x2ec(r1)
    lwz r28, 0x2e8(r1)
    addi r1, r1, 0x2f8
    mtlr r0
    blr
}

//80072D8C
ASM void EXTIntrruptHandler(__OSInterrupt interrupt, OSContext* context)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x2e8(r1)
    stw r31, 0x2e4(r1)
    stw r30, 0x2e0(r1)
    stw r29, 0x2dc(r1)
    stw r28, 0x2d8(r1)
    addi r31, r4, 0x0
    extsh r3, r3
    subi r0, r3, 0xb
    lis r3, 0x5555
    addi r3, r3, 0x5556
    mulhw r3, r3, r0
    srwi r0, r3, 31
    add r30, r3, r0
    lis r3, 0x50
    mulli r0, r30, 0x3
    srw r3, r3, r0
    bl __OSMaskInterrupts
    slwi r4, r30, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r29, r0, r4
    lwz r28, 0x8(r29)
    lwz r0, 0xc(r29)
    rlwinm r0, r0, 0, 29, 27
    stw r0, 0xc(r29)
    cmplwi r28, 0x0
    beq L_80072E3C
    addi r3, r1, 0x10
    bl OSClearContext
    addi r3, r1, 0x10
    bl OSSetCurrentContext
    li r0, 0x0
    stw r0, 0x8(r29)
    addi r3, r30, 0x0
    addi r4, r31, 0x0
    addi r12, r28, 0x0
    mtlr r12
    blrl
    addi r3, r1, 0x10
    bl OSClearContext
    mr r3, r31
    bl OSSetCurrentContext
L_80072E3C:
    lwz r0, 0x2ec(r1)
    lwz r31, 0x2e4(r1)
    lwz r30, 0x2e0(r1)
    lwz r29, 0x2dc(r1)
    lwz r28, 0x2d8(r1)
    addi r1, r1, 0x2e8
    mtlr r0
    blr
}

//80072E5C
ASM void EXIInit(void)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    lis r3, 0xcc00
    addi r3, r3, 0x6800
L_80072E80:
    lwz r0, 0xc(r3)
    clrlwi r0, r0, 31
    cmplwi r0, 0x1
    beq L_80072E80
    lwz r0, 0x20(r3)
    clrlwi r0, r0, 31
    cmplwi r0, 0x1
    beq L_80072E80
    lwz r0, 0x34(r3)
    clrlwi r0, r0, 31
    cmplwi r0, 0x1
    beq L_80072E80
    lis r3, 0x80
    addi r3, r3, -0x8000
    bl __OSMaskInterrupts
    li r31, 0x0
    lis r4, 0xcc00
    stw r31, 0x6800(r4)
    stw r31, 0x6814(r4)
    stw r31, 0x6828(r4)
    li r0, 0x2000
    stw r0, 0x6800(r4)
    li r3, 0x9
    lis r4, EXIIntrruptHandler@ha
    addi r28, r4, EXIIntrruptHandler@l
    addi r4, r28, 0x0
    bl __OSSetInterruptHandler
    li r3, 0xa
    lis r4, TCIntrruptHandler@ha
    addi r29, r4, TCIntrruptHandler@l
    addi r4, r29, 0x0
    bl __OSSetInterruptHandler
    li r3, 0xb
    lis r4, EXTIntrruptHandler@ha
    addi r30, r4, EXTIntrruptHandler@l
    addi r4, r30, 0x0
    bl __OSSetInterruptHandler
    li r3, 0xc
    addi r4, r28, 0x0
    bl __OSSetInterruptHandler
    li r3, 0xd
    addi r4, r29, 0x0
    bl __OSSetInterruptHandler
    li r3, 0xe
    addi r4, r30, 0x0
    bl __OSSetInterruptHandler
    li r3, 0xf
    addi r4, r28, 0x0
    bl __OSSetInterruptHandler
    li r3, 0x10
    addi r4, r29, 0x0
    bl __OSSetInterruptHandler
    li r3, 0x0
    li r4, 0x2
    opword 0x38AD8BA8
    bl EXIGetID
    lwz r0, __OSInIPL
    cmpwi r0, 0x0
    beq L_80072F9C
    lis r4, 0x8000
    stw r31, 0x30c4(r4)
    stw r31, 0x30c0(r4)
    lis r3, Ecb@ha
    addi r3, r3, Ecb@l
    stw r31, 0x60(r3)
    stw r31, 0x20(r3)
    li r3, 0x0
    bl __EXIProbe
    li r3, 0x1
    bl __EXIProbe
    b L_80073008
L_80072F9C:
    li r3, 0x0
    li r4, 0x0
    addi r5, r1, 0x8
    bl EXIGetID
    cmpwi r3, 0x0
    beq L_80072FD4
    lwz r3, 0x8(r1)
    subis r0, r3, 0x701
    cmplwi r0, 0x0
    bne L_80072FD4
    li r3, 0x1
    li r4, 0x0
    bl __OSEnableBarnacle
    b L_80073008
L_80072FD4:
    li r3, 0x1
    li r4, 0x0
    addi r5, r1, 0x8
    bl EXIGetID
    cmpwi r3, 0x0
    beq L_80073008
    lwz r3, 0x8(r1)
    subis r0, r3, 0x701
    cmplwi r0, 0x0
    bne L_80073008
    li r3, 0x0
    li r4, 0x2
    bl __OSEnableBarnacle
L_80073008:
    lwz r3, __EXIVersion
    bl OSRegisterVersion
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

//80073030
ASM BOOL EXILock(s32 chan, u32 dev, EXICallback unlockedCallback)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x30(r1)
    stmw r27, 0x1c(r1)
    addi r27, r3, 0x0
    addi r31, r4, 0x0
    addi r28, r5, 0x0
    slwi r4, r3, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r30, r0, r4
    bl OSDisableInterrupts
    mr r29, r3
    lwz r0, 0xc(r30)
    rlwinm. r0, r0, 0, 27, 27
    beq L_800730E8
    cmplwi r28, 0x0
    beq L_800730D8
    mr r3, r30
    lwz r4, 0x24(r30)
    mtctr r4
    cmpwi r4, 0x0
    ble L_800730B0
L_8007308C:
    lwz r0, 0x28(r3)
    cmplw r0, r31
    bne L_800730A8
    mr r3, r29
    bl OSRestoreInterrupts
    li r3, 0x0
    b L_80073110
L_800730A8:
    addi r3, r3, 0x8
    bdnz L_8007308C
L_800730B0:
    slwi r0, r4, 3
    add r3, r30, r0
    stw r28, 0x2c(r3)
    lwz r0, 0x24(r30)
    slwi r0, r0, 3
    add r3, r30, r0
    stw r31, 0x28(r3)
    lwz r3, 0x24(r30)
    addi r0, r3, 0x1
    stw r0, 0x24(r30)
L_800730D8:
    mr r3, r29
    bl OSRestoreInterrupts
    li r3, 0x0
    b L_80073110
L_800730E8:
    lwz r0, 0xc(r30)
    ori r0, r0, 0x10
    stw r0, 0xc(r30)
    stw r31, 0x18(r30)
    addi r3, r27, 0x0
    addi r4, r30, 0x0
    bl SetExiInterruptMask
    mr r3, r29
    bl OSRestoreInterrupts
    li r3, 0x1
L_80073110:
    lwz r0, 0x34(r1)
    lmw r27, 0x1c(r1)
    addi r1, r1, 0x30
    mtlr r0
    blr
}

//80073124
ASM BOOL EXIUnlock(s32 chan)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x20(r1)
    stw r31, 0x1c(r1)
    stw r30, 0x18(r1)
    stw r29, 0x14(r1)
    stw r28, 0x10(r1)
    addi r28, r3, 0x0
    slwi r4, r3, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r31, r0, r4
    bl OSDisableInterrupts
    mr r30, r3
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    bne L_80073178
    mr r3, r30
    bl OSRestoreInterrupts
    li r3, 0x0
    b L_800731E0
L_80073178:
    lwz r0, 0xc(r31)
    rlwinm r0, r0, 0, 28, 26
    stw r0, 0xc(r31)
    addi r3, r28, 0x0
    addi r4, r31, 0x0
    bl SetExiInterruptMask
    lwz r3, 0x24(r31)
    cmpwi r3, 0x0
    ble L_800731D4
    lwz r29, 0x2c(r31)
    subic. r0, r3, 0x1
    stw r0, 0x24(r31)
    ble L_800731C0
    addi r3, r31, 0x28
    addi r4, r31, 0x30
    lwz r0, 0x24(r31)
    slwi r5, r0, 3
    bl memmove
L_800731C0:
    addi r3, r28, 0x0
    li r4, 0x0
    addi r12, r29, 0x0
    mtlr r12
    blrl
L_800731D4:
    mr r3, r30
    bl OSRestoreInterrupts
    li r3, 0x1
L_800731E0:
    lwz r0, 0x24(r1)
    lwz r31, 0x1c(r1)
    lwz r30, 0x18(r1)
    lwz r29, 0x14(r1)
    lwz r28, 0x10(r1)
    addi r1, r1, 0x20
    mtlr r0
    blr
}

//80073200
ASM u32 EXIGetState(s32 chan)
{
    nofralloc
    slwi r4, r3, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r3, r0, r4
    lwz r3, 0xc(r3)
    blr
}

//80073218
ASM void UnlockedHandler(s32 chan, OSContext* context)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x18(r1)
    li r4, 0x0
    addi r5, r1, 0x10
    bl EXIGetID
    lwz r0, 0x1c(r1)
    addi r1, r1, 0x18
    mtlr r0
    blr
}

//80073240
ASM s32 EXIGetID(s32 chan, u32 dev, u32* id)
{
    nofralloc
    mflr r0
    stw r0, 0x4(r1)
    stwu r1, -0x48(r1)
    stmw r23, 0x24(r1)
    mr. r25, r3
    addi r26, r4, 0x0
    addi r27, r5, 0x0
    slwi r4, r3, 6
    lis r3, Ecb@ha
    addi r0, r3, Ecb@l
    add r31, r0, r4
    bne L_80073290
    cmplwi r26, 0x2
    bne L_80073290
    lwz r0, IDSerialPort1
    cmplwi r0, 0x0
    beq L_80073290
    stw r0, 0x0(r27)
    li r3, 0x1
    b L_800735DC
L_80073290:
    cmpwi r25, 0x2
    bge L_80073374
    cmplwi r26, 0x0
    bne L_80073374
    mr r3, r25
    bl __EXIProbe
    cmpwi r3, 0x0
    bne L_800732B8
    li r3, 0x0
    b L_800735DC
L_800732B8:
    lwz r4, 0x20(r31)
    slwi r0, r25, 2
    lis r3, 0x8000
    addi r30, r3, 0x30c0
    add r30, r30, r0
    lwz r0, 0x0(r30)
    cmpw r4, r0
    bne L_800732E8
    lwz r0, 0x1c(r31)
    stw r0, 0x0(r27)
    lwz r3, 0x20(r31)
    b L_800735DC
L_800732E8:
    bl OSDisableInterrupts
    mr r28, r3
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 28, 28
    bne L_8007330C
    mr r3, r25
    bl __EXIProbe
    cmpwi r3, 0x0
    bne L_8007331C
L_8007330C:
    mr r3, r28
    bl OSRestoreInterrupts
    li r0, 0x0
    b L_80073360
L_8007331C:
    addi r3, r25, 0x0
    li r4, 0x1
    li r5, 0x0
    li r6, 0x0
    bl EXIClearInterrupts
    li r0, 0x0
    stw r0, 0x8(r31)
    lis r3, 0x10
    mulli r0, r25, 0x3
    srw r3, r3, r0
    bl __OSUnmaskInterrupts
    lwz r0, 0xc(r31)
    ori r0, r0, 0x8
    stw r0, 0xc(r31)
    mr r3, r28
    bl OSRestoreInterrupts
    li r0, 0x1
L_80073360:
    cmpwi r0, 0x0
    bne L_80073370
    li r3, 0x0
    b L_800735DC
L_80073370:
    lwz r29, 0x0(r30)
L_80073374:
    bl OSDisableInterrupts
    addi r28, r3, 0x0
    li r0, 0x0
    cmpwi r25, 0x2
    bge L_80073394
    cmplwi r26, 0x0
    bne L_80073394
    li r0, 0x1
L_80073394:
    cmpwi r0, 0x0
    beq L_800733A8
    lis r3, UnlockedHandler@ha
    addi r5, r3, UnlockedHandler@l
    b L_800733AC
L_800733A8:
    li r5, 0x0
L_800733AC:
    addi r3, r25, 0x0
    addi r4, r26, 0x0
    bl EXILock
    cntlzw r0, r3
    srwi r0, r0, 5
    mr. r30, r0
    bne L_800734F8
    addi r3, r25, 0x0
    addi r4, r26, 0x0
    li r5, 0x0
    bl EXISelect
    cntlzw r0, r3
    srwi r0, r0, 5
    mr. r30, r0
    bne L_80073474
    li r0, 0x0
    stw r0, 0x1c(r1)
    addi r3, r25, 0x0
    addi r4, r1, 0x1c
    li r5, 0x2
    li r6, 0x1
    li r7, 0x0
    bl EXIImm
    cntlzw r0, r3
    srwi r0, r0, 5
    or r30, r30, r0
    addi r3, r25, 0x0
    bl EXISync
    cntlzw r0, r3
    srwi r0, r0, 5
    or r30, r30, r0
    addi r3, r25, 0x0
    addi r4, r27, 0x0
    li r5, 0x4
    li r6, 0x0
    li r7, 0x0
    bl EXIImm
    cntlzw r0, r3
    srwi r0, r0, 5
    or r30, r30, r0
    addi r3, r25, 0x0
    bl EXISync
    cntlzw r0, r3
    srwi r0, r0, 5
    or r30, r30, r0
    addi r3, r25, 0x0
    bl EXIDeselect
    cntlzw r0, r3
    srwi r0, r0, 5
    or r30, r30, r0
L_80073474:
    bl OSDisableInterrupts
    mr r23, r3
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    bne L_80073494
    mr r3, r23
    bl OSRestoreInterrupts
    b L_800734F8
L_80073494:
    lwz r0, 0xc(r31)
    rlwinm r0, r0, 0, 28, 26
    stw r0, 0xc(r31)
    addi r3, r25, 0x0
    addi r4, r31, 0x0
    bl SetExiInterruptMask
    lwz r3, 0x24(r31)
    cmpwi r3, 0x0
    ble L_800734F0
    lwz r24, 0x2c(r31)
    subic. r0, r3, 0x1
    stw r0, 0x24(r31)
    ble L_800734DC
    addi r3, r31, 0x28
    addi r4, r31, 0x30
    lwz r0, 0x24(r31)
    slwi r5, r0, 3
    bl memmove
L_800734DC:
    addi r3, r25, 0x0
    li r4, 0x0
    addi r12, r24, 0x0
    mtlr r12
    blrl
L_800734F0:
    mr r3, r23
    bl OSRestoreInterrupts
L_800734F8:
    mr r3, r28
    bl OSRestoreInterrupts
    cmpwi r25, 0x2
    bge L_800735C8
    cmplwi r26, 0x0
    bne L_800735C8
    bl OSDisableInterrupts
    mr r23, r3
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 28, 28
    bne L_80073530
    mr r3, r23
    bl OSRestoreInterrupts
    b L_80073578
L_80073530:
    lwz r0, 0xc(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq L_80073554
    lwz r0, 0x18(r31)
    cmplwi r0, 0x0
    bne L_80073554
    mr r3, r23
    bl OSRestoreInterrupts
    b L_80073578
L_80073554:
    lwz r0, 0xc(r31)
    rlwinm r0, r0, 0, 29, 27
    stw r0, 0xc(r31)
    lis r3, 0x50
    mulli r0, r25, 0x3
    srw r3, r3, r0
    bl __OSMaskInterrupts
    mr r3, r23
    bl OSRestoreInterrupts
L_80073578:
    bl OSDisableInterrupts
    slwi r0, r25, 2
    lis r4, 0x8000
    addi r4, r4, 0x30c0
    lwzx r0, r4, r0
    subf r4, r29, r0
    subic r0, r4, 0x1
    subfe r0, r0, r4
    or. r30, r30, r0
    bne L_800735AC
    lwz r0, 0x0(r27)
    stw r0, 0x1c(r31)
    stw r29, 0x20(r31)
L_800735AC:
    bl OSRestoreInterrupts
    cmpwi r30, 0x0
    beq L_800735C0
    li r3, 0x0
    b L_800735DC
L_800735C0:
    lwz r3, 0x20(r31)
    b L_800735DC
L_800735C8:
    cmpwi r30, 0x0
    beq L_800735D8
    li r3, 0x0
    b L_800735DC
L_800735D8:
    li r3, 0x1
L_800735DC:
    lwz r0, 0x4c(r1)
    lmw r23, 0x24(r1)
    addi r1, r1, 0x48
    mtlr r0
    blr
}

