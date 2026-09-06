#include "types.h"
#include "Dolphin/os.h"
#include "Dolphin/hw_regs.h"

extern __OSInterruptHandler* InterruptHandlerTable;
extern void ExternalInterruptHandler(register __OSException exception, register OSContext* context);
extern void* memset(void* dst, int val, u32 n);

//800426B4
ASM void __OSInterruptInit(void)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x10(r1)
    stw     r31, 0xc(r1)
    lis     r31, 0x8000
    addi    r0, r31, 0x3040
    stw     r0, InterruptHandlerTable
    li      r4, 0x0
    li      r5, 0x80
    lwz     r3, InterruptHandlerTable
    bl      memset
    li      r0, 0x0
    stw     r0, 0xc4(r31)
    lis     r3, 0xcc00
    addi    r4, r3, 0x3000
    stw     r0, 0xc8(r31)
    li      r0, 0xf0
    li      r3, -0x20
    stw     r0, 0x4(r4)
    bl      __OSMaskInterrupts
    lis     r3, ExternalInterruptHandler@ha
    addi    r4, r3, ExternalInterruptHandler@l
    li      r3, 0x4
    bl      __OSSetExceptionHandler
    lwz     r0, 0x14(r1)
    lwz     r31, 0xc(r1)
    addi    r1, r1, 0x10
    mtlr    r0
    blr
}
