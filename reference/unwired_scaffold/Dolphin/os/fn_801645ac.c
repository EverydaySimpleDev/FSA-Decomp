#include <types.h>

extern void* memset(void* dst, int val, u32 n);
extern u32 strlen(const char* s);
extern char* strcpy(char* dst, const char* src);

//801645AC
ASM u32 fn_801645AC(register void* dest, register u32 count, register char** strings)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x30(r1)
    stmw    r26, 0x18(r1)
    addi    r26, count, 0x0
    addi    r29, strings, 0x0
    addi    r30, dest, 0x0
    li      r4, 0x0
    li      r5, 0x2000
    bl      memset
    cmpwi   r26, 0x0
    bne     _l1
    li      r0, 0x0
    stw     r0, 0x8(r30)
    b       _lend1
_l1:
    slwi    r0, r26, 2
    addi    r31, r26, 0x0
    addi    r27, r30, 0x2000
    add     r28, r29, r0
    b       _loopcheck
_loopbody:
    lwz     r3, 0x0(r28)
    bl      strlen
    addi    r0, r3, 0x1
    lwz     r4, 0x0(r28)
    subf    r27, r0, r27
    addi    r3, r27, 0x0
    bl      strcpy
    subf    r0, r30, r27
    stw     r0, 0x0(r28)
_loopcheck:
    subic.  r26, r26, 0x1
    subi    r28, r28, 0x4
    bge     _loopbody
    subf    r0, r30, r27
    addi    r3, r31, 0x1
    clrrwi  r0, r0, 2
    cmplwi  r3, 0x0
    add     r6, r30, r0
    slwi    r0, r3, 2
    subf    r6, r0, r6
    addi    r5, r6, 0x0
    li      r7, 0x0
    ble     _finish
    cmplwi  r3, 0x8
    subi    r3, r31, 0x7
    ble     _remsetup
    addi    r0, r3, 0x7
    srwi    r0, r0, 3
    cmplwi  r3, 0x0
    mtctr   r0
    addi    r3, r29, 0x0
    addi    r4, r5, 0x0
    ble     _remsetup
_unrolled:
    lwz     r0, 0x0(r3)
    addi    r7, r7, 0x8
    stw     r0, 0x0(r4)
    lwz     r0, 0x4(r3)
    stw     r0, 0x4(r4)
    lwz     r0, 0x8(r3)
    stw     r0, 0x8(r4)
    lwz     r0, 0xc(r3)
    stw     r0, 0xc(r4)
    lwz     r0, 0x10(r3)
    stw     r0, 0x10(r4)
    lwz     r0, 0x14(r3)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r3)
    stw     r0, 0x18(r4)
    lwz     r0, 0x1c(r3)
    addi    r3, r3, 0x20
    stw     r0, 0x1c(r4)
    addi    r4, r4, 0x20
    bdnz    _unrolled
    b       _remsetup
_remloopsetup:
    addi    r3, r31, 0x1
    subf    r0, r7, r3
    cmplw   r7, r3
    mtctr   r0
    bge     _finish
_remloop:
    lwz     r0, 0x0(r4)
    addi    r4, r4, 0x4
    stw     r0, 0x0(r5)
    addi    r5, r5, 0x4
    bdnz    _remloop
_finish:
    subi    r0, r6, 0x4
    stw     r31, -0x4(r6)
    subf    r0, r30, r0
    stw     r0, 0x8(r30)
_lend1:
    li      r3, 0x1
    b       _epilogue
_remsetup:
    slwi    r0, r7, 2
    add     r4, r29, r0
    add     r5, r5, r0
    b       _remloopsetup
_epilogue:
    lmw     r26, 0x18(r1)
    lwz     r0, 0x34(r1)
    addi    r1, r1, 0x30
    mtlr    r0
    blr
}
