#include <types.h>
#include <Dolphin/vec.h>

extern "C" const f32 lbl_8065F2B0;
extern "C" const f32 lbl_8065F2B4;

//8016C65C
extern "C" asm void PSVECNormalize(register const Vec* src, register Vec* dst)
{
    nofralloc
    lfs      f0, lbl_8065F2B0
    lfs      f1, lbl_8065F2B4
    psq_l    f2, 0(src), 0, 0
    ps_mul   f5, f2, f2
    psq_l    f3, 8(src), 1, 0
    ps_madd  f4, f3, f3, f5
    ps_sum0  f4, f4, f3, f5
    frsqrte  f5, f4
    fmuls    f6, f5, f5
    fmuls    f0, f5, f0
    fnmsubs  f6, f6, f4, f1
    fmuls    f5, f6, f0
    ps_muls0 f2, f2, f5
    psq_st   f2, 0(dst), 0, 0
    ps_muls0 f3, f3, f5
    psq_st   f3, 8(dst), 1, 0
    blr
}
