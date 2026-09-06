#include "types.h"

extern f32 fn_800A6590;
extern f32 lbl_804BA4B0;
extern f32 lbl_8053A9B8;

extern void __register_global_object(void);

ASM void fn_800A6898(void);

ASM void fn_800A6898(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, fn_800A6590@ha
    lis r5, lbl_804BA4B0@ha
    stw r0, 0x14(r1)
    li r0, 0x0
    addi r4, r3, fn_800A6590@l
    opword  0x386D8DF8  // li r3, lbl_8053A9B8@sda21
    opword  0x900D8DF8  // stw r0, lbl_8053A9B8@sda21(r0)
    addi r5, r5, lbl_804BA4B0@l
    bl __register_global_object
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

DECL_SECT(".ctors") void* const g_ctor_fn_800A6898 = (void*)fn_800A6898;

