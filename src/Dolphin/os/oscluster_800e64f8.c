#include "types.h"

extern f32 fn_800E6540;
extern f32 lbl_804BA5C8;
extern f32 lbl_80539BA0;

extern void __register_global_object(void);
extern void fn_80086EA4(void);

ASM void fn_800E64F8(void);

ASM void fn_800E64F8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_80539BA0@ha
    li r4, 0x0
    stw r0, 0x14(r1)
    addi r3, r3, lbl_80539BA0@l
    bl fn_80086EA4
    lis r3, lbl_80539BA0@ha
    lis r4, fn_800E6540@ha
    lis r5, lbl_804BA5C8@ha
    addi r3, r3, lbl_80539BA0@l
    addi r4, r4, fn_800E6540@l
    addi r5, r5, lbl_804BA5C8@l
    bl __register_global_object
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

DECL_SECT(".ctors") void* const g_ctor_fn_800E64F8 = (void*)fn_800E64F8;

