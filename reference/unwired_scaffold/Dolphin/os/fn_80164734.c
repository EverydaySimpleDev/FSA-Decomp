#include <types.h>

extern void ICFlashInvalidate(void);
extern int DVDReadAbsAsyncPrio(void* buf, void* a, void* b, int c, int d);
extern int fn_80170198(void);
extern void fn_80168894(int flag);
extern int DVDGetCommandBlockStatus(void* buf);

//80164734
ASM void fn_80164734(register void* arg)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    mr      r31, arg
    bl      ICFlashInvalidate
    sync
    isync
    mtlr    r31
    blr
}

//8016475C
ASM void fn_8016475C(void)
{
    nofralloc
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//80164770
ASM void fn_80164770(register void* a, register void* b, register void* c)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x48(r1)
    mr      r0, b
    mr      r6, c
    mr      r4, a
    mr      r5, r0
    addi    r3, r1, 0x14
    li      r7, 0x0
    li      r8, 0x0
    bl      DVDReadAbsAsyncPrio
    opword  0x48000004
    opword  0x48000004
    b       _loopCheck
_loopBody:
    bl      fn_80170198
    cmpwi   r3, 0x0
    bne     _loopCheck
    li      r3, 0x0
    bl      fn_80168894
_loopCheck:
    addi    r3, r1, 0x14
    bl      DVDGetCommandBlockStatus
    cmpwi   r3, 0x0
    bne     _loopBody
    lwz     r0, 0x4c(r1)
    addi    r1, r1, 0x48
    mtlr    r0
    blr
}
