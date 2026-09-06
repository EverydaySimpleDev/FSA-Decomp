#include "types.h"

extern f32 fn_8007FB14;
extern f32 lbl_804B9FF8;
extern f32 lbl_8052E82C;

extern void __register_global_object(void);
extern void fn_80086F44(void);

ASM void fn_8007FAD0(void);

ASM void fn_8007FAD0(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_8052E82C@ha
    stw r0, 0x14(r1)
    addi r3, r3, lbl_8052E82C@l
    bl fn_80086F44
    lis r3, lbl_8052E82C@ha
    lis r4, fn_8007FB14@ha
    lis r5, lbl_804B9FF8@ha
    addi r3, r3, lbl_8052E82C@l
    addi r4, r4, fn_8007FB14@l
    addi r5, r5, lbl_804B9FF8@l
    bl __register_global_object
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

DECL_SECT(".ctors") void* const g_ctor_fn_8007FAD0 = (void*)fn_8007FAD0;

