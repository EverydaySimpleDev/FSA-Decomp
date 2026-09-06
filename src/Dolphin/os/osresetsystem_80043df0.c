#include "types.h"
#include "Dolphin/os.h"

extern OSResetFunctionInfo* ResetFunctionQueue;
extern u32 bootThisDol;

extern BOOL __PADDisableRecalibration(BOOL disable);
extern BOOL __OSSyncSram(void);
extern void Reset(register s32 resetCode);
extern void __OSReboot(register u32 resetCode, register u32 bootDol);
extern void* memset(void* dst, int val, u32 n);

//80043DF0
ASM void OSResetSystem(register int reset, register u32 resetCode, register BOOL forceMenu)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x40(r1)
    stmw    r26, 0x28(r1)
    mr      r28, r3
    mr      r29, r4
    mr      r30, r5
    bl      OSDisableScheduler
    bl      __OSStopAudioSystem
    cmpwi   r28, 0x2
    beq     L_80043E30
    cmpwi   r28, 0x0
    bne     L_80043E3C
    lwz     r0, bootThisDol
    cmplwi  r0, 0x0
    beq     L_80043E3C
L_80043E30:
    li      r3, 0x1
    bl      __PADDisableRecalibration
    mr      r31, r3
L_80043E3C:
    opword  0x48000004
L_80043E40:
    opword  0x48000004
L_80043E44:
    lwz     r26, ResetFunctionQueue
    li      r27, 0x0
    opword  0x48000004
L_80043E50:
    opword  0x48000004
L_80043E54:
    b       L_80043E78
L_80043E58:
    li      r3, 0x0
    lwz     r12, 0x0(r26)
    mtlr    r12
    blrl
    cntlzw  r0, r3
    lwz     r26, 0x8(r26)
    srwi    r0, r0, 5
    or      r27, r27, r0
L_80043E78:
    cmplwi  r26, 0x0
    beq     L_80043E88
    cmpwi   r27, 0x0
    beq     L_80043E58
L_80043E88:
    bl      __OSSyncSram
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or      r27, r27, r0
    cmpwi   r27, 0x0
    beq     L_80043EA8
    li      r0, 0x0
    b       L_80043EAC
L_80043EA8:
    li      r0, 0x1
L_80043EAC:
    cmpwi   r0, 0x0
    beq     L_80043E44
    cmpwi   r28, 0x1
    bne     L_80043EF0
    cmpwi   r30, 0x0
    beq     L_80043EF0
    bl      __OSLockSram
    lbz     r0, 0x13(r3)
    ori     r0, r0, 0x40
    stb     r0, 0x13(r3)
    li      r3, 0x1
    bl      __OSUnlockSram
    opword  0x48000004
L_80043EE0:
    opword  0x48000004
L_80043EE4:
    bl      __OSSyncSram
    cmpwi   r3, 0x0
    beq     L_80043EE4
L_80043EF0:
    bl      OSDisableInterrupts
    lwz     r27, ResetFunctionQueue
    li      r26, 0x0
    opword  0x48000004
L_80043F00:
    opword  0x48000004
L_80043F04:
    b       L_80043F28
L_80043F08:
    li      r3, 0x1
    lwz     r12, 0x0(r27)
    mtlr    r12
    blrl
    cntlzw  r0, r3
    lwz     r27, 0x8(r27)
    srwi    r0, r0, 5
    or      r26, r26, r0
L_80043F28:
    cmplwi  r27, 0x0
    beq     L_80043F38
    cmpwi   r26, 0x0
    beq     L_80043F08
L_80043F38:
    bl      __OSSyncSram
    bl      LCDisable
    cmpwi   r28, 0x1
    bne     L_80043F6C
    bl      OSDisableInterrupts
    lis     r3, 0xcc00
    addi    r3, r3, 0x2000
    li      r0, 0x0
    sth     r0, 0x2(r3)
    bl      ICFlashInvalidate
    slwi    r3, r29, 3
    bl      Reset
    b       L_80043FE4
L_80043F6C:
    cmpwi   r28, 0x0
    bne     L_80043FE4
    lwz     r0, bootThisDol
    lis     r3, 0x8000
    cmplwi  r0, 0x0
    stw     r0, 0x30ec(r3)
    beq     L_80043F90
    mr      r3, r31
    bl      __PADDisableRecalibration
L_80043F90:
    lis     r3, 0x8000
    lwz     r3, 0xdc(r3)
    opword  0x48000004
L_80043F9C:
    opword  0x48000004
L_80043FA0:
    b       L_80043FCC
L_80043FA4:
    lhz     r0, 0x2c8(r3)
    lwz     r26, 0x2fc(r3)
    cmpwi   r0, 0x4
    beq     L_80043FC4
    bge     L_80043FC8
    cmpwi   r0, 0x1
    beq     L_80043FC4
    b       L_80043FC8
L_80043FC4:
    bl      OSCancelThread
L_80043FC8:
    mr      r3, r26
L_80043FCC:
    cmplwi  r3, 0x0
    bne     L_80043FA4
    bl      OSEnableScheduler
    mr      r3, r29
    mr      r4, r30
    bl      __OSReboot
L_80043FE4:
    lis     r3, 0x8000
    lwz     r3, 0xdc(r3)
    opword  0x48000004
L_80043FF0:
    opword  0x48000004
L_80043FF4:
    b       L_80044020
L_80043FF8:
    lhz     r0, 0x2c8(r3)
    lwz     r26, 0x2fc(r3)
    cmpwi   r0, 0x4
    beq     L_80044018
    bge     L_8004401C
    cmpwi   r0, 0x1
    beq     L_80044018
    b       L_8004401C
L_80044018:
    bl      OSCancelThread
L_8004401C:
    mr      r3, r26
L_80044020:
    cmplwi  r3, 0x0
    bne     L_80043FF8
    lis     r28, 0x8000
    addi    r3, r28, 0x40
    li      r4, 0x0
    li      r5, 0x8c
    bl      memset
    addi    r3, r28, 0xd4
    li      r4, 0x0
    li      r5, 0x14
    bl      memset
    addi    r3, r28, 0xf4
    li      r4, 0x0
    li      r5, 0x4
    bl      memset
    addi    r3, r28, 0x3000
    li      r4, 0x0
    li      r5, 0xc0
    bl      memset
    addi    r3, r28, 0x30c8
    li      r4, 0x0
    li      r5, 0xc
    bl      memset
    addi    r3, r28, 0x30e2
    li      r4, 0x0
    li      r5, 0x1
    bl      memset
    mr      r3, r31
    bl      __PADDisableRecalibration
    lmw     r26, 0x28(r1)
    lwz     r0, 0x44(r1)
    addi    r1, r1, 0x40
    mtlr    r0
    blr
}
