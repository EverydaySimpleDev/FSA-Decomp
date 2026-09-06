#include <types.h>

//8016C61C
void PSVECSubtract(register const void* a, register const void* b, register void* dst)
{
#ifdef __MWERKS__ // clang-format off
    asm {
        psq_l    f2, 0(a), 0, 0
        psq_l    f4, 0(b), 0, 0
        ps_sub   f6, f2, f4
        psq_st   f6, 0(dst), 0, 0
        psq_l    f3, 8(a), 1, 0
        psq_l    f5, 8(b), 1, 0
        ps_sub   f7, f3, f5
        psq_st   f7, 8(dst), 1, 0
    }
#endif // clang-format on
}
