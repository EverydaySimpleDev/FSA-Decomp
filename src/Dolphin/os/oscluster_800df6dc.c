#include "types.h"

extern f32 lbl_80539E10;
extern f32 lbl_80539E14;
extern f32 lbl_80539E18;
extern f32 lbl_8053A9F8;
extern f32 lbl_8053A9FC;


ASM void fn_800DF6DC(void);

ASM void fn_800DF6DC(void)
{
    nofralloc
    opword  0x806D8258  // lwz r3, lbl_80539E18@sda21(r0)
    opword  0x800D8254  // lwz r0, lbl_80539E14@sda21(r0)
    opword  0x808D8250  // lwz r4, lbl_80539E10@sda21(r0)
    add r0, r0, r3
    add r3, r4, r3
    add r0, r4, r0
    opword  0x906D8E38  // stw r3, lbl_8053A9F8@sda21(r0)
    opword  0x900D8E3C  // stw r0, lbl_8053A9FC@sda21(r0)
    blr
}

DECL_SECT(".ctors") void* const g_ctor_fn_800DF6DC = (void*)fn_800DF6DC;

