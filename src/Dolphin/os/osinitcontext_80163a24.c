#include <types.h>
#include "Dolphin/OS/OSContext.h"

extern void OSClearContext(OSContext* context);

//80163A24
ASM void OSInitContext(register OSContext* context, register u32 pc, register u32 newsp)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc

    stw     pc,  OS_CONTEXT_SRR0(context)
    stw     newsp,  OS_CONTEXT_R1(context)
    li      r11, 0
    ori     r11, r11, 0x00008000 | 0x00000020 | 0x00000010 | 0x00000002 | 0x00001000
    stw     r11, OS_CONTEXT_SRR1(context)
    li      r0,  0x0
    stw     r0,  OS_CONTEXT_CR(context)
    stw     r0,  OS_CONTEXT_XER(context)


    stw     r2,  OS_CONTEXT_R2(context)
    stw     r13, OS_CONTEXT_R13(context)

    stw     r0,  OS_CONTEXT_R3(context)
    stw     r0,  OS_CONTEXT_R4(context)
    stw     r0,  OS_CONTEXT_R5(context)
    stw     r0,  OS_CONTEXT_R6(context)
    stw     r0,  OS_CONTEXT_R7(context)
    stw     r0,  OS_CONTEXT_R8(context)
    stw     r0,  OS_CONTEXT_R9(context)
    stw     r0,  OS_CONTEXT_R10(context)
    stw     r0,  OS_CONTEXT_R11(context)
    stw     r0,  OS_CONTEXT_R12(context)

    stw     r0,  OS_CONTEXT_R14(context)
    stw     r0,  OS_CONTEXT_R15(context)
    stw     r0,  OS_CONTEXT_R16(context)
    stw     r0,  OS_CONTEXT_R17(context)
    stw     r0,  OS_CONTEXT_R18(context)
    stw     r0,  OS_CONTEXT_R19(context)
    stw     r0,  OS_CONTEXT_R20(context)
    stw     r0,  OS_CONTEXT_R21(context)
    stw     r0,  OS_CONTEXT_R22(context)
    stw     r0,  OS_CONTEXT_R23(context)
    stw     r0,  OS_CONTEXT_R24(context)
    stw     r0,  OS_CONTEXT_R25(context)
    stw     r0,  OS_CONTEXT_R26(context)
    stw     r0,  OS_CONTEXT_R27(context)
    stw     r0,  OS_CONTEXT_R28(context)
    stw     r0,  OS_CONTEXT_R29(context)
    stw     r0,  OS_CONTEXT_R30(context)
    stw     r0,  OS_CONTEXT_R31(context)

    stw     r0,  OS_CONTEXT_GQR0(context)
    stw     r0,  OS_CONTEXT_GQR1(context)
    stw     r0,  OS_CONTEXT_GQR2(context)
    stw     r0,  OS_CONTEXT_GQR3(context)
    stw     r0,  OS_CONTEXT_GQR4(context)
    stw     r0,  OS_CONTEXT_GQR5(context)
    stw     r0,  OS_CONTEXT_GQR6(context)
    stw     r0,  OS_CONTEXT_GQR7(context)

    b       OSClearContext
#endif // clang-format on
}
