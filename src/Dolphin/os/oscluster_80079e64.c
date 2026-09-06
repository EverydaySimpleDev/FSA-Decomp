#include "types.h"

extern f32 fn_80079EA8;
extern f32 lbl_804B9FA0;
extern f32 lbl_8052E7CC;

extern void __register_global_object(void);
extern void fn_80086F44(void);

ASM void fn_80079E64(void);

ASM void fn_80079E64(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_8052E7CC@ha
    stw r0, 0x14(r1)
    addi r3, r3, lbl_8052E7CC@l
    bl fn_80086F44
    lis r3, lbl_8052E7CC@ha
    lis r4, fn_80079EA8@ha
    lis r5, lbl_804B9FA0@ha
    addi r3, r3, lbl_8052E7CC@l
    addi r4, r4, fn_80079EA8@l
    addi r5, r5, lbl_804B9FA0@l
    bl __register_global_object
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

DECL_SECT(".ctors") void* const g_ctor_fn_80079E64 = (void*)fn_80079E64;

