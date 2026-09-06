#include "types.h"
#include "Dolphin/dvd.h"
#include "Dolphin/os.h"

extern int autoInvalidation;
extern int executing_8065B558;
extern int PauseFlag_8065B564;
extern void stateReady_8016EC1C(void);
extern BOOL __DVDPushWaitingQueue(register int prio, register void* block);

//8016FB1C
ASM BOOL DVDCancelStreamAsync(register DVDCommandBlock* block, register DVDCBCallback callback)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    li      r0, 0x7
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    addi    r31, r3, 0x0
    stw     r30, 0x18(r1)
    stw     r0, 0x8(r3)
    stw     r4, 0x28(r3)
    lwz     r0, autoInvalidation
    cmpwi   r0, 0x0
    beq     checkDone
    lwz     r3, 0x8(r31)
    cmplwi  r3, 0x1
    beq     doInvalidate
    subi    r0, r3, 0x4
    cmplwi  r0, 0x1
    ble     doInvalidate
    cmplwi  r3, 0xe
    bne     checkDone
doInvalidate:
    lwz     r3, 0x18(r31)
    lwz     r4, 0x14(r31)
    bl      DCInvalidateRange
checkDone:
    bl      OSDisableInterrupts
    li      r0, 0x2
    stw     r0, 0xc(r31)
    addi    r30, r3, 0x0
    addi    r4, r31, 0x0
    li      r3, 0x1
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
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}
