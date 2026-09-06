#include "types.h"

extern f32 fn_8008E6A4;
extern f32 fn_8008E6F8;
extern f32 fn_8008E714;
extern f32 fn_8008E750;
extern f32 lbl_804BA498;
extern f32 lbl_804BA4A4;
extern f32 lbl_8052E8A0;
extern f32 lbl_8052EA58;
extern f32 lbl_8052EB18;
extern f32 lbl_8052EB58;
extern f32 lbl_8052EB98;
extern f32 lbl_8053A948;
extern f32 lbl_8053A94C;

extern void __register_global_object(void);
extern void __construct_array(void);
extern void fn_80086EA4(void);

ASM void fn_8008E594(void);

ASM void fn_8008E594(void)
{
    nofralloc
    stwu r1, -0x10(r1)
    mflr r0
    lis r3, lbl_8052E8A0@ha
    li r4, 0x0
    stw r0, 0x14(r1)
    addi r3, r3, lbl_8052E8A0@l
    bl fn_80086EA4
    lis r3, lbl_8052E8A0@ha
    lis r4, fn_8008E750@ha
    lis r5, lbl_804BA498@ha
    addi r3, r3, lbl_8052E8A0@l
    addi r4, r4, fn_8008E750@l
    addi r5, r5, lbl_804BA498@l
    bl __register_global_object
    lis r3, lbl_8052EA58@ha
    lis r4, fn_8008E714@ha
    addi r3, r3, lbl_8052EA58@l
    li r5, 0x0
    addi r4, r4, fn_8008E714@l
    li r6, 0x30
    li r7, 0x4
    bl __construct_array
    lis r3, lbl_8052EB18@ha
    lis r4, fn_8008E6F8@ha
    addi r3, r3, lbl_8052EB18@l
    li r5, 0x0
    addi r4, r4, fn_8008E6F8@l
    li r6, 0x10
    li r7, 0x4
    bl __construct_array
    lis r3, lbl_8052EB58@ha
    lis r4, fn_8008E6F8@ha
    addi r3, r3, lbl_8052EB58@l
    li r5, 0x0
    addi r4, r4, fn_8008E6F8@l
    li r6, 0x10
    li r7, 0x4
    bl __construct_array
    lis r3, 0x8000
    lis r4, 0x8889
    lwz r0, 0xf8(r3)
    subi r5, r4, 0x7777
    lis r3, lbl_8052EB98@ha
    srwi r4, r0, 2
    li r0, 0x1e
    mulhwu r6, r5, r4
    li r5, 0x0
    addi r3, r3, lbl_8052EB98@l
    li r4, 0x0
    mullw r5, r5, r0
    srwi r6, r6, 5
    mulhwu r0, r6, r0
    mulli r6, r6, 0x1e
    add r0, r0, r5
    opword  0x900D8D88  // stw r0, lbl_8053A948@sda21(r0)
    opword  0x90CD8D8C  // stw r6, lbl_8053A94C@sda21(r0)
    bl fn_80086EA4
    lis r3, lbl_8052EB98@ha
    lis r4, fn_8008E6A4@ha
    lis r5, lbl_804BA4A4@ha
    addi r3, r3, lbl_8052EB98@l
    addi r4, r4, fn_8008E6A4@l
    addi r5, r5, lbl_804BA4A4@l
    bl __register_global_object
    lwz r0, 0x14(r1)
    mtlr r0
    addi r1, r1, 0x10
    blr
}

DECL_SECT(".ctors") void* const g_ctor_fn_8008E594 = (void*)fn_8008E594;

