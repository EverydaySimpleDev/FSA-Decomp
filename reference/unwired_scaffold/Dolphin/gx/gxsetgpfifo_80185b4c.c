#include <types.h>
#include "Dolphin/os.h"

extern short* __cpReg;
extern void* __GXData;
extern void* CPUFifo;
extern void* GPFifo;
extern u8 CPGPLinked;

extern void __GXFifoReadDisable(void);
extern void __GXFifoReadEnable(void);
extern void __GXWriteFifoIntEnable(u32, u32);
extern void __GXWriteFifoIntReset(u32, u32);
extern void __GXFifoLink(u8);
extern void PPCSync(void);

//80185B4C
ASM void GXSetGPFifo(void* fifo)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    stw     r30, 0x10(r1)
    mr      r30, r3
    bl      OSDisableInterrupts
    mr      r31, r3
    bl      __GXFifoReadDisable
    li      r3, 0x0
    li      r4, 0x0
    bl      __GXWriteFifoIntEnable
    stw     r30, GPFifo
    lwz     r3, __cpReg
    lwz     r0, 0x0(r30)
    sth     r0, 0x20(r3)
    lwz     r0, 0x4(r30)
    lwz     r3, __cpReg
    sth     r0, 0x24(r3)
    lwz     r0, 0x1c(r30)
    lwz     r3, __cpReg
    sth     r0, 0x30(r3)
    lwz     r0, 0x18(r30)
    lwz     r3, __cpReg
    sth     r0, 0x34(r3)
    lwz     r0, 0x14(r30)
    lwz     r3, __cpReg
    sth     r0, 0x38(r3)
    lwz     r0, 0xc(r30)
    lwz     r3, __cpReg
    sth     r0, 0x28(r3)
    lwz     r0, 0x10(r30)
    lwz     r3, __cpReg
    sth     r0, 0x2c(r3)
    lwz     r0, 0x0(r30)
    lwz     r3, __cpReg
    extrwi  r0, r0, 14, 2
    sth     r0, 0x22(r3)
    lwz     r0, 0x4(r30)
    lwz     r3, __cpReg
    extrwi  r0, r0, 14, 2
    sth     r0, 0x26(r3)
    lwz     r0, 0x1c(r30)
    lwz     r3, __cpReg
    srawi   r0, r0, 16
    sth     r0, 0x32(r3)
    lwz     r0, 0x18(r30)
    lwz     r3, __cpReg
    extrwi  r0, r0, 14, 2
    sth     r0, 0x36(r3)
    lwz     r0, 0x14(r30)
    lwz     r3, __cpReg
    extrwi  r0, r0, 14, 2
    sth     r0, 0x3a(r3)
    lwz     r0, 0xc(r30)
    lwz     r3, __cpReg
    srwi    r0, r0, 16
    sth     r0, 0x2a(r3)
    lwz     r0, 0x10(r30)
    lwz     r3, __cpReg
    srwi    r0, r0, 16
    sth     r0, 0x2e(r3)
    bl      PPCSync
    lwz     r3, CPUFifo
    lwz     r0, GPFifo
    cmplw   r3, r0
    bne     not_linked
    li      r0, 0x1
    stb     r0, CPGPLinked
    li      r3, 0x1
    li      r4, 0x0
    bl      __GXWriteFifoIntEnable
    li      r3, 0x1
    bl      __GXFifoLink
    b       done
not_linked:
    li      r0, 0x0
    stb     r0, CPGPLinked
    li      r3, 0x0
    li      r4, 0x0
    bl      __GXWriteFifoIntEnable
    li      r3, 0x0
    bl      __GXFifoLink
done:
    lwz     r5, __GXData
    li      r0, 0x0
    lwz     r4, __cpReg
    li      r3, 0x1
    lwz     r6, 0x8(r5)
    rlwimi  r6, r0, 1, 30, 30
    rlwimi  r6, r0, 5, 26, 26
    sth     r6, 0x2(r4)
    li      r4, 0x1
    lwz     r0, 0x8(r5)
    lwz     r5, __cpReg
    sth     r0, 0x2(r5)
    bl      __GXWriteFifoIntReset
    bl      __GXFifoReadEnable
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    lwz     r30, 0x10(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}
