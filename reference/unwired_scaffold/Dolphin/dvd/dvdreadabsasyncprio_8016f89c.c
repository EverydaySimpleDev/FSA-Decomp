#include "types.h"
#include "Dolphin/dvd.h"
#include "Dolphin/os.h"

extern int autoInvalidation;
extern int executing_8065B558;
extern int PauseFlag_8065B564;
extern void stateReady_8016EC1C(void);
extern BOOL __DVDPushWaitingQueue(register int prio, register void* block);

//8016F89C
ASM BOOL DVDReadAbsAsyncPrio(register DVDCommandBlock* block, register void* addr, register s32 length, register s32 offset, register DVDCBCallback callback, register s32 prio)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    li      r0, 0x1
    stwu    r1, -0x38(r1)
    stw     r31, 0x34(r1)
    addi    r31, r8, 0x0
    stw     r30, 0x30(r1)
    stw     r29, 0x2c(r1)
    addi    r29, r3, 0x0
    stw     r0, 0x8(r3)
    li      r0, 0x0
    stw     r4, 0x18(r3)
    stw     r5, 0x14(r3)
    stw     r6, 0x10(r3)
    stw     r0, 0x20(r3)
    stw     r7, 0x28(r3)
    lwz     r0, autoInvalidation
    cmpwi   r0, 0x0
    beq     checkDone
    lwz     r3, 0x8(r29)
    cmplwi  r3, 0x1
    beq     doInvalidate
    subi    r0, r3, 0x4
    cmplwi  r0, 0x1
    ble     doInvalidate
    cmplwi  r3, 0xe
    bne     checkDone
doInvalidate:
    lwz     r3, 0x18(r29)
    lwz     r4, 0x14(r29)
    bl      DCInvalidateRange
checkDone:
    bl      OSDisableInterrupts
    li      r0, 0x2
    stw     r0, 0xc(r29)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      __DVDPushWaitingQueue
    lwz     r0, executing_8065B558
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    bne     restore
    lwz     r0, PauseFlag_8065B564
    cmpwi   r0, 0x0
    bne     restore
    bl      stateReady_8016EC1C
restore:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r31
    lwz     r0, 0x3c(r1)
    lwz     r31, 0x34(r1)
    lwz     r30, 0x30(r1)
    lwz     r29, 0x2c(r1)
    addi    r1, r1, 0x38
    mtlr    r0
    blr
}
