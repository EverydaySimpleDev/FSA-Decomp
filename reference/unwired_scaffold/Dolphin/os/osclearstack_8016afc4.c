#include <types.h>

extern u32 OSGetStackPointer(void);

//8016AFC4
ASM void OSClearStack(register u8 val)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mflr     r0
    stw      r0, 0x4(r1)
    clrlslwi r0, val, 24, 16
    rlwimi   r0, val, 24, 0, 7
    stwu     r1, -0x18(r1)
    rlwimi   r0, val, 8, 16, 23
    stw      r31, 0x14(r1)
    mr       r31, r0
    rlwimi   r31, val, 0, 24, 31
    bl       OSGetStackPointer
    lis      r4, 0x8000
    lwz      r5, 0xe4(r4)
    addi     r4, r3, 0x3
    lwz      r5, 0x308(r5)
    addi     r5, r5, 0x4
    cmplw    r5, r3
    subf     r4, r5, r4
    srwi     r4, r4, 2
    bge      done
    srwi.    r0, r4, 3
    mtctr    r0
    beq      remainder
loop8:
    stw      r31, 0x0(r5)
    stw      r31, 0x4(r5)
    stw      r31, 0x8(r5)
    stw      r31, 0xc(r5)
    stw      r31, 0x10(r5)
    stw      r31, 0x14(r5)
    stw      r31, 0x18(r5)
    stw      r31, 0x1c(r5)
    addi     r5, r5, 0x20
    bdnz     loop8
    andi.    r4, r4, 0x7
    beq      done
remainder:
    mtctr    r4
loop1:
    stw      r31, 0x0(r5)
    addi     r5, r5, 0x4
    bdnz     loop1
done:
    lwz      r0, 0x1c(r1)
    lwz      r31, 0x14(r1)
    addi     r1, r1, 0x18
    mtlr     r0
    blr
#endif // clang-format on
}
