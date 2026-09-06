#include "types.h"

extern f32 fn_800834E8;
extern f32 lbl_804BA048;
extern f32 lbl_8052E844;

extern void __register_global_object(void);
extern void fn_80086F44(void);

ASM void fn_800834A4(void);

ASM void fn_800834A4(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_8052E844@ha
    stw r0, 0x14(r1)
    addi r3, r3, lbl_8052E844@l
    bl fn_80086F44
    lis r3, lbl_8052E844@ha
    lis r4, fn_800834E8@ha
    lis r5, lbl_804BA048@ha
    addi r3, r3, lbl_8052E844@l
    addi r4, r4, fn_800834E8@l
    addi r5, r5, lbl_804BA048@l
    bl __register_global_object
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

DECL_SECT(".ctors") void* const g_ctor_fn_800834A4 = (void*)fn_800834A4;

