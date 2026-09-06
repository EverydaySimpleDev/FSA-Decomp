#include "types.h"

static void (*FatalFunc)();

//80170968
ASM void __DVDPrintFatalMessage(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    lwz     r12, FatalFunc
    cmplwi  r12, 0x0
    beq     done
    mtlr    r12
    blrl
done:
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
}
