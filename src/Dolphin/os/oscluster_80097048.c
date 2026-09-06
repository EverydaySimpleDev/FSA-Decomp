#include "types.h"

extern f32 lbl_80536C40;
extern f32 lbl_8053B9B0;


ASM void fn_80097048(void);

ASM void fn_80097048(void)
{
    nofralloc
    opword  0xC0028A10  // lfs f0, lbl_8053B9B0@sda21(r0)
    lis r3, lbl_80536C40@ha
    stfsu fp0, lbl_80536C40@l(r3)
    stfs fp0, 0x4(r3)
    stfs fp0, 0x8(r3)
    stfs fp0, 0xc(r3)
    blr
}

DECL_SECT(".ctors") void* const g_ctor_fn_80097048 = (void*)fn_80097048;

