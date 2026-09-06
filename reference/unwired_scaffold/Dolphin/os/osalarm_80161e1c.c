// .text-only match: ResetFunctionInfo/AlarmQueue are deliberately left
// unclaimed (claiming .data/.sbss here cascades into a much larger DOL
// divergence -- dtk's auto-blob splitting can't cleanly carve storage out of
// this address range). See project memory for the full investigation.
#include "Dolphin/os.h"

// forward declarations
BOOL __DVDTestAlarm(OSAlarm* alarm);

static OSAlarmQueue AlarmQueue;

static void DecrementerExceptionHandler(__OSException exception, OSContext* context);
BOOL OnReset(BOOL final);

static OSResetFunctionInfo ResetFunctionInfo = { OnReset, OS_RESET_PRIO_ALARM };

extern void InsertAlarm(register OSAlarm* alarm, register OSTime fire, register OSAlarmHandler handler);
extern void __div2i(void);
extern OSTime __OSTimeToSystemTime(OSTime time);
extern void __OSReschedule(void);

// MWCC can't express "li r3, AlarmQueue@sda21" directly; hardcoded as the
// linked result instead (addi r3,r13,0x90B0). See project memory.
#define OPWORD_LI_R3_ALARMQUEUE_SDA21 opword 0x386D90B0

//80161E1C
ASM void OSInitAlarm(void)
{
    nofralloc
    mflr    r0
    li      r3, 0x8
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    bl      __OSGetExceptionHandler
    lis     r4, DecrementerExceptionHandler@ha
    addi    r4, r4, DecrementerExceptionHandler@l
    cmplw   r3, r4
    beq     done
    li      r0, 0x0
    OPWORD_LI_R3_ALARMQUEUE_SDA21
    stw     r0, 0x4(r3)
    li      r3, 0x8
    stw     r0, AlarmQueue
    bl      __OSSetExceptionHandler
    lis     r3, ResetFunctionInfo@ha
    addi    r3, r3, ResetFunctionInfo@l
    bl      OSRegisterResetFunction
done:
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}

//80161E74
void OSCreateAlarm(OSAlarm* alarm)
{
	alarm->handler = nullptr;
	alarm->tag     = 0;
}

//80161E84
ASM static void InsertAlarm(register OSAlarm* alarm, register OSTime fire, register OSAlarmHandler handler)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x40(r1)
    stmw    r25, 0x24(r1)
    li      r28, 0x0
    mr      r29, alarm
    xoris   r4, r28, 0x8000
    addi    r25, r5, 0x0
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    lwz     r0, 0x18(alarm)
    lwz     r8, 0x1c(alarm)
    xoris   r3, r0, 0x8000
    subfc   r0, r8, r28
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg.    r3, r3
    beq     skipPeriod
    bl      __OSGetSystemTime
    lwz     r7, 0x20(r29)
    xoris   r5, r3, 0x8000
    lwz     r8, 0x24(r29)
    xoris   r6, r7, 0x8000
    subfc   r0, r4, r8
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    addi    r30, r8, 0x0
    addi    r25, r7, 0x0
    beq     skipPeriod
    lwz     r27, 0x18(r29)
    subfc   r4, r8, r4
    lwz     r26, 0x1c(r29)
    subfe   r3, r7, r3
    addi    r5, r27, 0x0
    addi    r6, r26, 0x0
    bl      __div2i
    li      r0, 0x1
    addc    r5, r4, r0
    mullw   r4, r27, r5
    mulhwu  r0, r26, r5
    adde    r3, r3, r28
    add     r4, r4, r0
    mullw   r0, r26, r3
    mullw   r3, r26, r5
    add     r0, r4, r0
    addc    r30, r30, r3
    adde    r25, r25, r0
skipPeriod:
    stw     r31, 0x0(r29)
    xoris   r4, r25, 0x8000
    stw     r30, 0xc(r29)
    stw     r25, 0x8(r29)
    lwz     r6, AlarmQueue
    b       checkLoop
loopBody:
    lwz     r0, 0x8(r6)
    lwz     r5, 0xc(r6)
    xoris   r3, r0, 0x8000
    subfc   r0, r5, r30
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg.    r3, r3
    beq     notLess
    lwz     r0, 0x10(r6)
    stw     r0, 0x10(r29)
    stw     r29, 0x10(r6)
    stw     r6, 0x14(r29)
    lwz     r3, 0x10(r29)
    cmplwi  r3, 0x0
    beq     noPrev
    stw     r29, 0x14(r3)
    b       epilogue
noPrev:
    stw     r29, AlarmQueue
    bl      __OSGetSystemTime
    lwz     r6, 0xc(r29)
    li      r7, 0x0
    lwz     r0, 0x8(r29)
    xoris   r5, r7, 0x8000
    subfc   r8, r4, r6
    subfe   r0, r3, r0
    xoris   r6, r0, 0x8000
    subfc   r0, r7, r8
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq     ntCheck2
    li      r3, 0x0
    bl      PPCMtdec
    b       epilogue
ntCheck2:
    lis     r4, 0x8000
    xoris   r3, r7, 0x8000
    subfc   r0, r4, r8
    subfe   r3, r3, r6
    subfe   r3, r6, r6
    neg.    r3, r3
    beq     ntCheck3
    mr      r3, r8
    bl      PPCMtdec
    b       epilogue
ntCheck3:
    subi    r3, r4, 0x1
    bl      PPCMtdec
    b       epilogue
notLess:
    lwz     r6, 0x14(r6)
checkLoop:
    cmplwi  r6, 0x0
    bne     loopBody
    li      r30, 0x0
    stw     r30, 0x14(r29)
    OPWORD_LI_R3_ALARMQUEUE_SDA21
    lwz     r4, 0x4(r3)
    stwu    r29, 0x4(r3)
    cmplwi  r4, 0x0
    stw     r4, 0x10(r29)
    beq     noTail
    stw     r29, 0x14(r4)
    b       epilogue
noTail:
    stw     r29, 0x0(r3)
    stw     r29, AlarmQueue
    bl      __OSGetSystemTime
    lwz     r6, 0xc(r29)
    xoris   r5, r30, 0x8000
    lwz     r0, 0x8(r29)
    subfc   r7, r4, r6
    subfe   r0, r3, r0
    xoris   r6, r0, 0x8000
    subfc   r0, r30, r7
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq     ntlCheck2
    li      r3, 0x0
    bl      PPCMtdec
    b       epilogue
ntlCheck2:
    lis     r4, 0x8000
    xoris   r3, r30, 0x8000
    subfc   r0, r4, r7
    subfe   r3, r3, r6
    subfe   r3, r6, r6
    neg.    r3, r3
    beq     ntlCheck3
    mr      r3, r7
    bl      PPCMtdec
    b       epilogue
ntlCheck3:
    subi    r3, r4, 0x1
    bl      PPCMtdec
epilogue:
    lmw     r25, 0x24(r1)
    lwz     r0, 0x44(r1)
    addi    r1, r1, 0x40
    mtlr    r0
    blr
}

//8016210C
ASM void OSSetAlarm(register OSAlarm* alarm, register OSTime tick, register OSAlarmHandler handler)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x38(r1)
    stmw    r27, 0x24(r1)
    addi    r27, alarm, 0x0
    addi    r29, r5, 0x0
    addi    r28, r6, 0x0
    addi    r30, r7, 0x0
    bl      OSDisableInterrupts
    li      r0, 0x0
    stw     r0, 0x1c(r27)
    mr      r31, r3
    stw     r0, 0x18(r27)
    bl      __OSGetSystemTime
    addc    r6, r28, r4
    adde    r5, r29, r3
    addi    r3, r27, 0x0
    addi    r7, r30, 0x0
    bl      InsertAlarm
    mr      r3, r31
    bl      OSRestoreInterrupts
    lmw     r27, 0x24(r1)
    lwz     r0, 0x3c(r1)
    addi    r1, r1, 0x38
    mtlr    r0
    blr
}

//80162174
ASM void OSSetPeriodicAlarm(register OSAlarm* alarm, register OSTime start, register OSTime period, register OSAlarmHandler handler)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x40(r1)
    stmw    r26, 0x28(r1)
    addi    r26, alarm, 0x0
    addi    r28, r5, 0x0
    addi    r27, r6, 0x0
    addi    r29, r7, 0x0
    addi    r31, r8, 0x0
    addi    r30, r9, 0x0
    bl      OSDisableInterrupts
    stw     r31, 0x1c(r26)
    mr      r31, r3
    addi    r4, r27, 0x0
    stw     r29, 0x18(r26)
    addi    r3, r28, 0x0
    bl      __OSTimeToSystemTime
    stw     r4, 0x24(r26)
    addi    r7, r30, 0x0
    li      r6, 0x0
    stw     r3, 0x20(r26)
    addi    r3, r26, 0x0
    li      r5, 0x0
    bl      InsertAlarm
    mr      r3, r31
    bl      OSRestoreInterrupts
    lmw     r26, 0x28(r1)
    lwz     r0, 0x44(r1)
    addi    r1, r1, 0x40
    mtlr    r0
    blr
}

//801621F0
ASM void OSCancelAlarm(register OSAlarm* alarm)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x20(r1)
    stw     r31, 0x1c(r1)
    stw     r30, 0x18(r1)
    mr      r30, alarm
    stw     r29, 0x14(r1)
    bl      OSDisableInterrupts
    lwz     r0, 0x0(r30)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    bne     hasNext
    mr      r3, r31
    bl      OSRestoreInterrupts
    b       epilogue
hasNext:
    lwz     r29, 0x14(r30)
    cmplwi  r29, 0x0
    bne     hasPrev
    lwz     r0, 0x10(r30)
    OPWORD_LI_R3_ALARMQUEUE_SDA21
    stw     r0, 0x4(r3)
    b       afterPrev
hasPrev:
    lwz     r0, 0x10(r30)
    stw     r0, 0x10(r29)
afterPrev:
    lwz     r3, 0x10(r30)
    cmplwi  r3, 0x0
    beq     noNextPtr
    stw     r29, 0x14(r3)
    b       afterQueueFixup
noNextPtr:
    cmplwi  r29, 0x0
    stw     r29, AlarmQueue
    beq     afterQueueFixup
    bl      __OSGetSystemTime
    lwz     r6, 0xc(r29)
    li      r7, 0x0
    lwz     r0, 0x8(r29)
    xoris   r5, r7, 0x8000
    subfc   r8, r4, r6
    subfe   r0, r3, r0
    xoris   r6, r0, 0x8000
    subfc   r0, r7, r8
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq     check2
    li      r3, 0x0
    bl      PPCMtdec
    b       afterQueueFixup
check2:
    lis     r4, 0x8000
    xoris   r3, r7, 0x8000
    subfc   r0, r4, r8
    subfe   r3, r3, r6
    subfe   r3, r6, r6
    neg.    r3, r3
    beq     check3
    mr      r3, r8
    bl      PPCMtdec
    b       afterQueueFixup
check3:
    subi    r3, r4, 0x1
    bl      PPCMtdec
afterQueueFixup:
    li      r0, 0x0
    stw     r0, 0x0(r30)
    mr      r3, r31
    bl      OSRestoreInterrupts
epilogue:
    lwz     r0, 0x24(r1)
    lwz     r31, 0x1c(r1)
    lwz     r30, 0x18(r1)
    lwz     r29, 0x14(r1)
    addi    r1, r1, 0x20
    mtlr    r0
    blr
}

//8016230C
ASM static void DecrementerExceptionCallback(register __OSException exception, register OSContext* context)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x2f0(r1)
    stw     r31, 0x2ec(r1)
    stw     r30, 0x2e8(r1)
    stw     r29, 0x2e4(r1)
    mr      r29, context
    stw     r28, 0x2e0(r1)
    bl      __OSGetSystemTime
    lwz     r0, AlarmQueue
    addi    r28, r4, 0x0
    addi    r30, r3, 0x0
    cmplwi  r0, 0x0
    mr      r31, r0
    bne     haveAlarm
    mr      r3, r29
    bl      OSLoadContext
haveAlarm:
    lwz     r0, 0x8(r31)
    xoris   r4, r30, 0x8000
    lwz     r5, 0xc(r31)
    xoris   r3, r0, 0x8000
    subfc   r0, r5, r28
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg.    r3, r3
    beq     afterTimeCheck
    bl      __OSGetSystemTime
    lwz     r6, 0xc(r31)
    li      r7, 0x0
    lwz     r0, 0x8(r31)
    xoris   r5, r7, 0x8000
    subfc   r8, r4, r6
    subfe   r0, r3, r0
    xoris   r6, r0, 0x8000
    subfc   r0, r7, r8
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq     tcCheck2
    li      r3, 0x0
    bl      PPCMtdec
    b       afterTimer
tcCheck2:
    lis     r4, 0x8000
    xoris   r3, r7, 0x8000
    subfc   r0, r4, r8
    subfe   r3, r3, r6
    subfe   r3, r6, r6
    neg.    r3, r3
    beq     tcCheck3
    mr      r3, r8
    bl      PPCMtdec
    b       afterTimer
tcCheck3:
    subi    r3, r4, 0x1
    bl      PPCMtdec
afterTimer:
    mr      r3, r29
    bl      OSLoadContext
afterTimeCheck:
    lwz     r3, 0x14(r31)
    cmplwi  r3, 0x0
    stw     r3, AlarmQueue
    bne     hasNextAlarm
    li      r0, 0x0
    OPWORD_LI_R3_ALARMQUEUE_SDA21
    stw     r0, 0x4(r3)
    b       afterQueueFixup2
hasNextAlarm:
    li      r0, 0x0
    stw     r0, 0x10(r3)
afterQueueFixup2:
    lwz     r30, 0x0(r31)
    li      r6, 0x0
    xoris   r4, r6, 0x8000
    stw     r6, 0x0(r31)
    lwz     r0, 0x18(r31)
    lwz     r5, 0x1c(r31)
    xoris   r3, r0, 0x8000
    subfc   r0, r5, r6
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg.    r3, r3
    beq     skipReinsert
    addi    r3, r31, 0x0
    addi    r7, r30, 0x0
    li      r6, 0x0
    li      r5, 0x0
    bl      InsertAlarm
skipReinsert:
    lwz     r28, AlarmQueue
    cmplwi  r28, 0x0
    beq     afterSetTimer
    bl      __OSGetSystemTime
    lwz     r6, 0xc(r28)
    li      r7, 0x0
    lwz     r0, 0x8(r28)
    xoris   r5, r7, 0x8000
    subfc   r8, r4, r6
    subfe   r0, r3, r0
    xoris   r6, r0, 0x8000
    subfc   r0, r7, r8
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq     stCheck2
    li      r3, 0x0
    bl      PPCMtdec
    b       afterSetTimer
stCheck2:
    lis     r4, 0x8000
    xoris   r3, r7, 0x8000
    subfc   r0, r4, r8
    subfe   r3, r3, r6
    subfe   r3, r6, r6
    neg.    r3, r3
    beq     stCheck3
    mr      r3, r8
    bl      PPCMtdec
    b       afterSetTimer
stCheck3:
    subi    r3, r4, 0x1
    bl      PPCMtdec
afterSetTimer:
    bl      OSDisableScheduler
    addi    r3, r1, 0x18
    bl      OSClearContext
    addi    r3, r1, 0x18
    bl      OSSetCurrentContext
    addi    r12, r30, 0x0
    mtlr    r12
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    blrl
    addi    r3, r1, 0x18
    bl      OSClearContext
    mr      r3, r29
    bl      OSSetCurrentContext
    bl      OSEnableScheduler
    bl      __OSReschedule
    mr      r3, r29
    bl      OSLoadContext
    lwz     r0, 0x2f4(r1)
    lwz     r31, 0x2ec(r1)
    lwz     r30, 0x2e8(r1)
    lwz     r29, 0x2e4(r1)
    lwz     r28, 0x2e0(r1)
    addi    r1, r1, 0x2f0
    mtlr    r0
    blr
}

//8016253C
ASM static void DecrementerExceptionHandler(register __OSException exception, register OSContext* context)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    OS_EXCEPTION_SAVE_GPRS(context)
    stwu r1, -8(r1)
    b DecrementerExceptionCallback
#endif // clang-format on
}

//80162584
ASM BOOL OnReset(register BOOL final)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    cmpwi   final, 0x0
    beq     epilogueRet1
    lwz     r0, AlarmQueue
    cmplwi  r0, 0x0
    mr      r31, r0
    beq     elseNoAlarm
    lwz     r0, 0x14(r31)
    b       joinNext
elseNoAlarm:
    li      r0, 0x0
joinNext:
    mr      r30, r0
    opword 0x48000004
    opword 0x48000004
    b       loopCheck
loopBody:
    mr      r3, r31
    bl      __DVDTestAlarm
    cmpwi   r3, 0x0
    bne     skipCancel
    mr      r3, r31
    bl      OSCancelAlarm
skipCancel:
    cmplwi  r30, 0x0
    mr      r31, r30
    beq     elseNoNext
    lwz     r0, 0x14(r30)
    b       joinNext2
elseNoNext:
    li      r0, 0x0
joinNext2:
    mr      r30, r0
loopCheck:
    cmplwi  r31, 0x0
    bne     loopBody
epilogueRet1:
    li      r3, 0x1
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
