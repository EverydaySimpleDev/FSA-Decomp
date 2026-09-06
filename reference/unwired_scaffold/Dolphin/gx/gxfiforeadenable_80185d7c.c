#include <types.h>

extern void* __GXData;
extern short* __cpReg;

//80185D7C
ASM void __GXFifoReadEnable(void)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    lwz     r4, __GXData
    li      r0, 0x1
    lwz     r3, 0x8(r4)
    rlwimi  r3, r0, 0, 31, 31
    stw     r3, 0x8(r4)
    lwz     r0, 0x8(r4)
    lwz     r3, __cpReg
    sth     r0, 0x2(r3)
    blr
#endif // clang-format on
}
