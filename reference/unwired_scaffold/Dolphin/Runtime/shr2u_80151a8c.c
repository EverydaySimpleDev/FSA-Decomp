#include "types.h"

//80151A8C
ASM void __shr2u(void)
{
    nofralloc
    subfic  r8, r5, 32
    subic   r9, r5, 32
    srw     r4, r4, r5
    slw     r10, r3, r8
    or      r4, r4, r10
    srw     r10, r3, r9
    or      r4, r4, r10
    srw     r3, r3, r5
    blr
}
