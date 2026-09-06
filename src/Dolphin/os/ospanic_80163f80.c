#include "types.h"
#include "Dolphin/os.h"

extern int vprintf(const char* fmt, void* valist);

//80163F80
ASM void OSPanic(register const char* file, register int line, register const char* msg, ...)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x90(r1)
    stw     r31, 0x8c(r1)
    stw     r30, 0x88(r1)
    stw     r29, 0x84(r1)
    stw     r28, 0x80(r1)
    bne     cr1, _skipFPSpill
    stfd    f1, 0x28(r1)
    stfd    f2, 0x30(r1)
    stfd    f3, 0x38(r1)
    stfd    f4, 0x40(r1)
    stfd    f5, 0x48(r1)
    stfd    f6, 0x50(r1)
    stfd    f7, 0x58(r1)
    stfd    f8, 0x60(r1)
_skipFPSpill:
    stw     r3, 0x8(r1)
    addi    r28, r3, 0x0
    addi    r30, r4, 0x0
    stw     r4, 0xc(r1)
    addi    r29, r5, 0x0
    stw     r5, 0x10(r1)
    stw     r6, 0x14(r1)
    lis     r6, 0x8049
    addi    r31, r6, 0x5c88
    stw     r7, 0x18(r1)
    stw     r8, 0x1c(r1)
    stw     r9, 0x20(r1)
    stw     r10, 0x24(r1)
    bl      OSDisableInterrupts
    lis     r0, 0x300
    stw     r0, 0x74(r1)
    addi    r0, r1, 0x98
    addi    r4, r1, 0x74
    stw     r0, 0x78(r1)
    addi    r0, r1, 0x8
    addi    r3, r29, 0x0
    stw     r0, 0x7c(r1)
    bl      vprintf
    addi    r3, r31, 0x0
    crclr   6
    addi    r4, r28, 0x0
    addi    r5, r30, 0x0
    bl      OSReport
    addi    r3, r31, 0x18
    crclr   6
    bl      OSReport
    li      r30, 0x0
    bl      OSGetStackPointer
    mr      r29, r3
    b       _loopCheck
_loopBody:
    lwz     r5, 0x0(r29)
    mr      r4, r29
    lwz     r6, 0x4(r29)
    addi    r3, r31, 0x40
    crclr   6
    bl      OSReport
    lwz     r29, 0x0(r29)
_loopCheck:
    cmplwi  r29, 0x0
    beq     _halt
    addis   r0, r29, 0x1
    cmplwi  r0, 0xffff
    beq     _halt
    cmplwi  r30, 0x10
    addi    r30, r30, 0x1
    blt     _loopBody
_halt:
    bl      PPCHalt
    lwz     r0, 0x94(r1)
    lwz     r31, 0x8c(r1)
    lwz     r30, 0x88(r1)
    lwz     r29, 0x84(r1)
    lwz     r28, 0x80(r1)
    addi    r1, r1, 0x90
    mtlr    r0
    blr
}
