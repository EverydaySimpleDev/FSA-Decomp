#include "types.h"

extern f32 fn_80085968;
extern f32 fn_800859BC;
extern f32 lbl_804BA058;
extern f32 lbl_804BA064;
extern f32 lbl_8052E850;
extern f32 lbl_8052E888;

extern void __register_global_object(void);
extern void fn_80086EA4(void);
extern void fn_80086F44(void);

ASM void fn_800858F8(void);

ASM void fn_800858F8(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_8052E850@ha
    li r4, 0x0
    stw r0, 0x14(r1)
    addi r3, r3, lbl_8052E850@l
    bl fn_80086EA4
    lis r3, lbl_8052E850@ha
    lis r4, fn_800859BC@ha
    lis r5, lbl_804BA058@ha
    addi r3, r3, lbl_8052E850@l
    addi r4, r4, fn_800859BC@l
    addi r5, r5, lbl_804BA058@l
    bl __register_global_object
    lis r3, lbl_8052E888@ha
    addi r3, r3, lbl_8052E888@l
    bl fn_80086F44
    lis r3, lbl_8052E888@ha
    lis r4, fn_80085968@ha
    lis r5, lbl_804BA064@ha
    addi r3, r3, lbl_8052E888@l
    addi r4, r4, fn_80085968@l
    addi r5, r5, lbl_804BA064@l
    bl __register_global_object
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

DECL_SECT(".ctors") void* const g_ctor_fn_800858F8 = (void*)fn_800858F8;

