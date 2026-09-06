#include <types.h>
#include "Dolphin/PPCArch.h"

extern void LCStoreBlocks(void* cacheAddr, void* memAddr, unsigned long numBlocks);

//80163208
ASM u32 fn_80163208(register void* cacheAddr, register void* memAddr, register u32 numBytes)
{
    nofralloc
    mflr    r0
    stw     r0, 0x4(r1)
    stwu    r1, -0x28(r1)
    stw     r31, 0x24(r1)
    stw     r30, 0x20(r1)
    stw     r29, 0x1c(r1)
    stw     r28, 0x18(r1)
    mr      r28, cacheAddr
    mr      r29, memAddr
    addi    r0, numBytes, 0x1f
    srwi    r3, r0, 5
    addi    r0, r3, 0x7f
    mr      r31, r3
    srwi    r30, r0, 7
    opword  0x48000004
    opword  0x48000004
    b       _loopCheck
_loopBody:
    cmplwi  r31, 0x80
    bge     _fullChunk
    mr      r3, r28
    mr      r4, r29
    mr      r5, r31
    bl      LCStoreBlocks
    li      r31, 0x0
    b       _loopCheck
_fullChunk:
    mr      r3, r28
    mr      r4, r29
    li      r5, 0x0
    bl      LCStoreBlocks
    subi    r31, r31, 0x80
    addi    r28, r28, 0x1000
    addi    r29, r29, 0x1000
_loopCheck:
    cmplwi  r31, 0x0
    bne     _loopBody
    mr      r3, r30
    lwz     r0, 0x2c(r1)
    lwz     r31, 0x24(r1)
    lwz     r30, 0x20(r1)
    lwz     r29, 0x1c(r1)
    lwz     r28, 0x18(r1)
    addi    r1, r1, 0x28
    mtlr    r0
    blr
}

//801632B4
ASM void fn_801632B4(register u32 threshold)
{
    nofralloc
_spin:
    mfspr   r4, HID2
    extrwi  r4, r4, 4, 4
    cmpw    r4, threshold
    bgt     _spin
    blr
}
