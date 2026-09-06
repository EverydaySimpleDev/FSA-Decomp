#include <types.h>

extern void* memcpy(void* dst, const void* src, u32 n);

//801647E8
ASM void __OSGetExecParams(register void* dst)
{
#ifdef __MWERKS__ // clang-format off
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x8(r1)
    lis     r5, 0x8000
    lwz     r4, 0x30f0(r5)
    cmplw   r5, r4
    bgt     notAvailable
    li      r5, 0x1c
    bl      memcpy
    b       done
notAvailable:
    li      r0, 0x0
    stw     r0, 0x0(dst)
done:
    lwz     r0, 0xc(r1)
    addi    r1, r1, 0x8
    mtlr    r0
    blr
#endif // clang-format on
}
