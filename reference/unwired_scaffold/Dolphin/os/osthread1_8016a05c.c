#include <types.h>
#include "Dolphin/OS/OSThread.h"
#include "Dolphin/OS/OSMutex.h"

extern u32 RunQueueBits;

//8016A05C
ASM void UnsetRun(register OSThread* thread)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    lwz     r4, 0x2e0(thread)
    lwz     r5, 0x2dc(thread)
    cmplwi  r4, 0
    lwz     r6, 0x2e4(thread)
    bne     hasNext
    stw     r6, 0x4(r5)
    b       afterNext
hasNext:
    stw     r6, 0x2e4(r4)
afterNext:
    cmplwi  r6, 0
    bne     hasPrev
    stw     r4, 0x0(r5)
    b       afterPrev
hasPrev:
    stw     r4, 0x2e0(r6)
afterPrev:
    lwz     r0, 0x0(r5)
    cmplwi  r0, 0
    bne     skipBits
    lwz     r0, 0x2d0(thread)
    li      r4, 1
    lwz     r5, RunQueueBits
    subfic  r0, r0, 0x1f
    slw     r0, r4, r0
    andc    r0, r5, r0
    stw     r0, RunQueueBits
skipBits:
    li      r0, 0
    stw     r0, 0x2dc(thread)
    blr
#endif // clang-format on
}

//8016A0C4
ASM OSPriority __OSGetEffectivePriority(register OSThread* thread)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    lwz     r4, 0x2d4(thread)
    lwz     r5, 0x2f4(thread)
    b       checkMutex
loopBody:
    lwz     r3, 0x0(r5)
    cmplwi  r3, 0
    beq     nextMutex
    lwz     r0, 0x2d0(r3)
    cmpw    r0, r4
    bge     nextMutex
    mr      r4, r0
nextMutex:
    lwz     r5, 0x10(r5)
checkMutex:
    cmplwi  r5, 0
    bne     loopBody
    mr      r3, r4
    blr
#endif // clang-format on
}
