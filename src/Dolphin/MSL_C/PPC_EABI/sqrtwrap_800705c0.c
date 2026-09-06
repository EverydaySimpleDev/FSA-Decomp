#include "types.h"

extern f64 __ieee754_sqrt(register f64 x);

//800705C0
ASM f64 sqrt(register f64 x)
{
    nofralloc
    stwu    r1, -0x10(r1)
    mflr    r0
    stw     r0, 0x14(r1)
    bl      __ieee754_sqrt
    lwz     r0, 0x14(r1)
    mtlr    r0
    addi    r1, r1, 0x10
    blr
}

// The 7 functions below (0x800705E0-0x80070608) are all trivial one- or
// two-instruction stubs sitting between this file's `sqrt` and the next
// file's `AMC_IsStub`/`Hu_IsStub` (src/Dolphin/MSL_C/PPC_EABI/amcstub_80070608.c
// - those two ARE real, confirmed SDK names: peripheral "is this driver a
// stub" checks, `AMC_IsStub` returning TRUE, `Hu_IsStub` returning FALSE).
// The 4 void-returning ones here (E0, E4, 80070600, 604) and the 3
// s32-returning-0 ones (E8, F0, F8) match that exact shape/neighborhood -
// almost certainly more peripheral `_IsStub()`-style hardware-driver-stub
// checks (a well-known Nintendo SDK pattern: CARD/AMC/Hu/GBS/etc. each get
// one). Left as `fn_ADDRESS` rather than guessing specific peripheral
// names: no reference source (cbr_decomp, FF Crystal Chronicles) had this
// exact file, and inventing a plausible-sounding name here would repeat
// the mistake documented in project_fsa_real_decomp_pivot - shape-based
// identification without ground truth. Understood, just not confidently
// nameable yet.

//800705E0
ASM void fn_800705E0(void)
{
    nofralloc
    blr
}

//800705E4
ASM void fn_800705E4(void)
{
    nofralloc
    blr
}

//800705E8
ASM s32 fn_800705E8(void)
{
    nofralloc
    li      r3, 0x0
    blr
}

//800705F0
ASM s32 fn_800705F0(void)
{
    nofralloc
    li      r3, 0x0
    blr
}

//800705F8
ASM s32 fn_800705F8(void)
{
    nofralloc
    li      r3, 0x0
    blr
}

//80070600
ASM void fn_80070600(void)
{
    nofralloc
    blr
}

//80070604
ASM void fn_80070604(void)
{
    nofralloc
    blr
}
