#include "types.h"

/*
 * fn_801D2608 (0x801D2608-0x801D267C, 0x74/116 bytes, no extab of its own) - "register the
 * per-class sequence table" for the "timed-cue lookup table" component (see
 * project_fsa_multiple_inheritance_pattern.md). This is `fn_801D2608(this, sequenceArrayPtr,
 * sequenceCount)`, the call every derived actor class this session used to give the shared
 * component its own real attack/cue data.
 *
 * Real understanding, fully confirmed: this->0x0=sequenceArrayPtr, this->0x4=sequenceCount.
 * Then walks EVERY sequence's step list (each 4-byte step = {int16 value, int16 duration},
 * terminated by a negative value) and computes this->0x14 = MIN of every step's `value`
 * across ALL sequences, this->0x18 = MAX of the same - i.e. precomputing the global sanity-
 * clamp bounds that fn_801D1C18/fn_801D1F14/fn_801D1D60/fn_801D22DC later clamp their
 * "what's due now" result into. Callers pass sentinels (this->0x14=INT_MAX, this->0x18=
 * INT_MIN, set by fn_801D267C's constructor) so the very first min/max comparison always
 * takes the real value.
 */



ASM void fn_801D2608(void);

ASM void fn_801D2608(void)
{
    nofralloc
    stw r4, 0x0(r3)
    li r7, 0x0
    li r6, 0x0
    stw r5, 0x4(r3)
    opword  0x48000054  // b .L_801D266C
L_801D261C:
    lwz r4, 0x0(r3)
    lwzx r5, r4, r6
    opword  0x48000034  // b .L_801D2658
L_801D2628:
    lwz r0, 0x14(r3)
    cmpw r0, r4
    opword  0x41800008  // blt .L_801D2638
    mr r0, r4
L_801D2638:
    stw r0, 0x14(r3)
    lha r4, 0x0(r5)
    lwz r0, 0x18(r3)
    cmpw r0, r4
    opword  0x41800008  // blt .L_801D2650
    mr r4, r0
L_801D2650:
    stw r4, 0x18(r3)
    addi r5, r5, 0x4
L_801D2658:
    lha r4, 0x0(r5)
    extsh. r0, r4
    opword  0x4080FFC8  // bge .L_801D2628
    addi r6, r6, 0x4
    addi r7, r7, 0x1
L_801D266C:
    lwz r0, 0x4(r3)
    cmpw r7, r0
    opword  0x4180FFA8  // blt .L_801D261C
    blr
}

