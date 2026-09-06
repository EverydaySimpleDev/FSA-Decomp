#include "types.h"

extern f32 lbl_80536C50;

extern void fn_800BA544(void);

ASM void fn_800BB5F0(void);

ASM void fn_800BB5F0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_80536C50@ha
    stw r0, 0x14(r1)
    addi r3, r3, lbl_80536C50@l
    bl fn_800BA544
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

DECL_SECT(".ctors") void* const g_ctor_fn_800BB5F0 = (void*)fn_800BB5F0;

