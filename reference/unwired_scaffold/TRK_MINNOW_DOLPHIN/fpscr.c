#include <types.h>

// Retail's real source is a `nofralloc` hand-written asm function that manages its own
// stack frame and explicitly preserves BOTH halves of f31 (the plain double via stfd/lfd
// AND the paired-single/quantized half via psq_st/psq_l) before using it as scratch for
// mffs/mtfsf, instead of relying on the compiler's automatic non-volatile-FPR save (which
// only covers the plain double half). Confirmed against an already-matched reference
// implementation of this exact MetroTRK function from another GameCube decomp project
// using the same compiler version (GC/1.3.2).

//8014D9A8
asm void ReadFPSCR(register f64* out)
{
    nofralloc
    stwu   r1, -0x40(r1)
    stfd   f31, 0x10(r1)
    psq_st f31, 0x20(r1), 0, 0
    mffs   f31
    stfd   f31, 0(r3)
    psq_l  f31, 0x20(r1), 0, 0
    lfd    f31, 0x10(r1)
    addi   r1, r1, 0x40
    blr
}

//8014D9CC
asm void WriteFPSCR(register const f64* in)
{
    nofralloc
    stwu   r1, -0x40(r1)
    stfd   f31, 0x10(r1)
    psq_st f31, 0x20(r1), 0, 0
    lfd    f31, 0(r3)
    mtfsf  0xff, f31
    psq_l  f31, 0x20(r1), 0, 0
    lfd    f31, 0x10(r1)
    addi   r1, r1, 0x40
    blr
}
