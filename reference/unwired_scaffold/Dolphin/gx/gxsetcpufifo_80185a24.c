#include <types.h>
#include "Dolphin/os.h"

extern void* __piReg;
extern void* CPUFifo;
extern void* GPFifo;
extern u8 CPGPLinked;

extern void __GXWriteFifoIntReset(u32, u32);
extern void __GXWriteFifoIntEnable(u32, u32);
extern void __GXFifoLink(u8);
extern void PPCSync(void);

//80185A24
ASM void GXSetCPUFifo(void* fifo)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    mr      r30, r3
    bl      OSDisableInterrupts
    lwz     r0, GPFifo
    addi    r31, r3, 0x0
    stw     r30, CPUFifo
    cmplw   r30, r0
    bne     not_linked
    lwz     r0, 0x0(r30)
    li      r8, 0x0
    lwz     r3, __piReg
    li      r6, 0x0
    clrlwi  r0, r0, 2
    stw     r0, 0xc(r3)
    li      r0, 0x1
    li      r3, 0x1
    lwz     r7, 0x4(r30)
    li      r4, 0x1
    lwz     r5, __piReg
    clrlwi  r7, r7, 2
    stw     r7, 0x10(r5)
    lwz     r7, 0x18(r30)
    lwz     r5, __piReg
    rlwimi  r8, r7, 0, 6, 26
    addi    r7, r8, 0x0
    rlwimi  r7, r6, 26, 5, 5
    stw     r7, 0x14(r5)
    stb     r0, CPGPLinked
    bl      __GXWriteFifoIntReset
    li      r3, 0x1
    li      r4, 0x0
    bl      __GXWriteFifoIntEnable
    li      r3, 0x1
    bl      __GXFifoLink
    b       done
not_linked:
    lbz     r0, CPGPLinked
    cmplwi  r0, 0x0
    beq     skip_unlink
    li      r3, 0x0
    bl      __GXFifoLink
    li      r0, 0x0
    stb     r0, CPGPLinked
skip_unlink:
    li      r3, 0x0
    li      r4, 0x0
    bl      __GXWriteFifoIntEnable
    lwz     r4, 0x0(r30)
    li      r5, 0x0
    lwz     r3, __piReg
    li      r0, 0x0
    clrlwi  r4, r4, 2
    stw     r4, 0xc(r3)
    lwz     r4, 0x4(r30)
    lwz     r3, __piReg
    clrlwi  r4, r4, 2
    stw     r4, 0x10(r3)
    lwz     r4, 0x18(r30)
    lwz     r3, __piReg
    rlwimi  r5, r4, 0, 6, 26
    addi    r4, r5, 0x0
    rlwimi  r4, r0, 26, 5, 5
    stw     r4, 0x14(r3)
done:
    bl      PPCSync
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
