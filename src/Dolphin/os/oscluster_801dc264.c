#include "types.h"

// fn_801DC264(this) -> u8 - a "near-end fade alpha" utility, unrelated to
// the just-closed 3rd chase-or-free-roam class (uses fresh fields this->
// 0x278/0xd8/0xdc, not any of that class's 0x60-0x2e4 range) - either a
// generic shared helper or the start of a new class, not yet determined.
//
// Only active when this->0x278==1 (some mode flag); otherwise returns 0.
// this->0xdc is a total/max duration, this->0xd8 is the current elapsed
// tick. Returns a proportional 0-255 byte:
//   - if the duration is short (<25 ticks total): elapsed/total * 255,
//     over the WHOLE duration.
//   - otherwise, only once within the last 25 ticks of the duration:
//     (elapsed-(total-25))/25 * 255 - i.e. a fade that only starts
//     ramping up in the final 25 ticks.
//   - otherwise (still far from the end): 0.
// The reciprocal-multiplication divide-by-25 in the 2nd branch is MWCC's
// own division-by-constant optimization, not hand-derived - kept as raw
// ASM (not reconstructed as `/ 25`) since natural-C div-by-constant
// codegen is not guaranteed to match MWCC's exact instruction selection
// byte-for-byte (established fallback, see project_fsa_real_decomp_pivot).
ASM void fn_801DC264(void);

ASM void fn_801DC264(void)
{
    nofralloc
    lwz r0, 0x278(r3)
    li r5, 0x0
    cmpwi r0, 0x1
    opword  0x4082005C  // bne .L_801DC2CC
    lwz r4, 0xdc(r3)
    lwz r0, 0xd8(r3)
    subi r3, r4, 0x19
    cmpw r0, r3
    opword  0x4181000C  // bgt .L_801DC290
    cmpwi r4, 0x19
    opword  0x40800040  // bge .L_801DC2CC
L_801DC290:
    cmpwi r4, 0x19
    opword  0x40800014  // bge .L_801DC2A8
    mulli r0, r0, 0xff
    divw r0, r0, r4
    clrlwi r5, r0, 24
    opword  0x48000028  // b .L_801DC2CC
L_801DC2A8:
    subf r0, r3, r0
    lis r3, 0x51ec
    mulli r0, r0, 0xff
    subi r3, r3, 0x7ae1
    mulhw r0, r3, r0
    srawi r0, r0, 3
    srwi r3, r0, 31
    add r0, r0, r3
    clrlwi r5, r0, 24
L_801DC2CC:
    mr r3, r5
    blr
}

