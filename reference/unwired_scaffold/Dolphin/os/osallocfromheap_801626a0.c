#include "types.h"
#include "Dolphin/os.h"

// The 4 globals below are deliberately unclaimed dead storage -- claiming
// their real .sbss addresses would shift downstream layout (same tradeoff
// as osalarm_80161e1c.c's AlarmQueue). See project memory.
static struct Heap* HeapArray;
static int NumHeaps;
static void* ArenaStart;
static void* ArenaEnd;

// __OSCurrHeap is properly claimed (.sdata:0x8065ABB8) by
// game/system/cfile.cpp already -- its real declaration comes in via
// "Dolphin/os.h" above (Dolphin/OS/OSAlloc.h), reference that instead of
// duplicating it.

extern void* DLInsert(void* list, void* cell, void* unused);

//801626A0
ASM void* OSAllocFromHeap(register OSHeapHandle heap, register u32 size)
{
    nofralloc
    mulli   r0, heap, 0xc
    lwz     r3, HeapArray
    add     r5, r3, r0
    addi    r0, size, 0x3f
    lwz     r6, 0x4(r5)
    clrrwi  r3, r0, 5
    b       loopCheck
loopBody:
    lwz     r0, 0x8(r6)
    cmpw    r3, r0
    ble     loopFound
    lwz     r6, 0x4(r6)
loopCheck:
    cmplwi  r6, 0x0
    bne     loopBody
loopFound:
    cmplwi  r6, 0x0
    bne     haveCell
    li      r3, 0x0
    blr
haveCell:
    lwz     r0, 0x8(r6)
    subf    r0, r3, r0
    cmplwi  r0, 0x40
    bge     splitCell
    lwz     r4, 0x4(r6)
    lwz     r3, 0x4(r5)
    cmplwi  r4, 0x0
    beq     skipPrevFix
    lwz     r0, 0x0(r6)
    stw     r0, 0x0(r4)
skipPrevFix:
    lwz     r4, 0x0(r6)
    cmplwi  r4, 0x0
    bne     skipNextFix
    lwz     r3, 0x4(r6)
    b       storeFree
skipNextFix:
    lwz     r0, 0x4(r6)
    stw     r0, 0x4(r4)
storeFree:
    stw     r3, 0x4(r5)
    b       addFront
splitCell:
    stw     r3, 0x8(r6)
    add     r4, r6, r3
    stw     r0, 0x8(r4)
    lwz     r0, 0x0(r6)
    stw     r0, 0x0(r4)
    lwz     r0, 0x4(r6)
    stw     r0, 0x4(r4)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    beq     skipNewPrevFix
    stw     r4, 0x0(r3)
skipNewPrevFix:
    lwz     r3, 0x0(r4)
    cmplwi  r3, 0x0
    beq     storeNewFree
    stw     r4, 0x4(r3)
    b       addFront
storeNewFree:
    stw     r4, 0x4(r5)
addFront:
    lwz     r3, 0x8(r5)
    li      r0, 0x0
    stw     r3, 0x4(r6)
    cmplwi  r3, 0x0
    stw     r0, 0x0(r6)
    beq     noAllocatedHead
    stw     r6, 0x0(r3)
noAllocatedHead:
    stw     r6, 0x8(r5)
    addi    r3, r6, 0x20
    blr
}

//8016279C
ASM void OSFreeToHeap(register OSHeapHandle heap, register void* ptr)
{
    nofralloc
    mflr    r0
    subi    r6, ptr, 0x20
    stw     r0, 0x4(r1)
    mulli   r0, heap, 0xc
    stwu    r1, -0x18(r1)
    stw     r31, 0x14(r1)
    lwz     r4, HeapArray
    lwz     r3, 0x4(r6)
    add     r31, r4, r0
    cmplwi  r3, 0x0
    lwz     r5, 0x8(r31)
    mr      r4, r6
    beq     skipPrevFix
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
skipPrevFix:
    lwz     r3, 0x0(r4)
    cmplwi  r3, 0x0
    bne     skipNextFix
    lwz     r5, 0x4(r4)
    b       storeAllocated
skipNextFix:
    lwz     r0, 0x4(r4)
    stw     r0, 0x4(r3)
storeAllocated:
    stw     r5, 0x8(r31)
    lwz     r3, 0x4(r31)
    bl      DLInsert
    stw     r3, 0x4(r31)
    lwz     r0, 0x1c(r1)
    lwz     r31, 0x14(r1)
    addi    r1, r1, 0x18
    mtlr    r0
    blr
}

//80162818
ASM OSHeapHandle OSSetCurrentHeap(register OSHeapHandle heap)
{
    nofralloc
    lwz     r0, __OSCurrHeap
    stw     heap, __OSCurrHeap
    mr      r3, r0
    blr
}

//80162828
ASM void* OSInitAlloc(register void* arenaStart, register void* arenaEnd, register int maxHeaps)
{
    nofralloc
    mulli   r7, maxHeaps, 0xc
    stw     arenaStart, HeapArray
    stw     maxHeaps, NumHeaps
    li      r6, 0x0
    addi    r3, r6, 0x0
    li      r8, 0x0
    li      r5, -0x1
    b       loopCheck
loopBody:
    lwz     r0, HeapArray
    addi    r8, r8, 0x1
    add     r9, r0, r6
    stw     r5, 0x0(r9)
    addi    r6, r6, 0xc
    stw     r3, 0x8(r9)
    stw     r3, 0x4(r9)
loopCheck:
    lwz     r0, NumHeaps
    cmpw    r8, r0
    blt     loopBody
    lwz     r3, HeapArray
    clrrwi  r0, arenaEnd, 5
    li      r4, -0x1
    stw     r0, ArenaEnd
    add     r3, r3, r7
    addi    r0, r3, 0x1f
    stw     r4, __OSCurrHeap
    clrrwi  r3, r0, 5
    stw     r3, ArenaStart
    blr
}

//80162898
ASM OSHeapHandle OSCreateHeap(register void* start, register void* end)
{
    nofralloc
    lwz     r6, NumHeaps
    addi    r0, start, 0x1f
    lwz     r5, HeapArray
    clrrwi  r7, r0, 5
    cmpwi   r6, 0x0
    mtctr   r6
    clrrwi  r4, end, 5
    li      r3, 0x0
    ble     noFreeSlot
loopBody:
    lwz     r0, 0x0(r5)
    cmpwi   r0, 0x0
    bge     nextSlot
    subf    r0, r7, r4
    stw     r0, 0x0(r5)
    li      r4, 0x0
    stw     r4, 0x0(r7)
    stw     r4, 0x4(r7)
    lwz     r0, 0x0(r5)
    stw     r0, 0x8(r7)
    stw     r7, 0x4(r5)
    stw     r4, 0x8(r5)
    blr
nextSlot:
    addi    r5, r5, 0xc
    addi    r3, r3, 0x1
    bdnz    loopBody
noFreeSlot:
    li      r3, -0x1
    blr
}

//80162904
ASM void OSDestroyHeap(register OSHeapHandle heap)
{
    nofralloc
    mulli   r0, heap, 0xc
    lwz     r3, HeapArray
    add     r3, r3, r0
    li      r0, -0x1
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    stw     r0, 0x4(r3)
    blr
}
