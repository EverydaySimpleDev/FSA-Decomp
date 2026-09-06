#include "types.h"

typedef struct HeapCell {
	struct HeapCell* prev;
	struct HeapCell* next;
	u32 size;
} HeapCell;

//801625F4
ASM HeapCell* DLInsert(register HeapCell* list, register HeapCell* cell, register void* unused /* needed to match OSFreeToHeap */)
{
    nofralloc
    addi    r7, list, 0x0
    li      r6, 0x0
    b       checkAfter
loopBody:
    cmplw   cell, r7
    ble     afterLoop
    mr      r6, r7
    lwz     r7, 0x4(r7)
checkAfter:
    cmplwi  r7, 0x0
    bne     loopBody
afterLoop:
    stw     r7, 0x4(cell)
    cmplwi  r7, 0x0
    stw     r6, 0x0(cell)
    beq     checkBefore
    stw     cell, 0x0(r7)
    lwz     r5, 0x8(cell)
    add     r0, cell, r5
    cmplw   r0, r7
    bne     checkBefore
    lwz     r0, 0x8(r7)
    add     r0, r5, r0
    stw     r0, 0x8(cell)
    lwz     r7, 0x4(r7)
    cmplwi  r7, 0x0
    stw     r7, 0x4(cell)
    beq     checkBefore
    stw     cell, 0x0(r7)
checkBefore:
    cmplwi  r6, 0x0
    beq     returnCell
    stw     cell, 0x4(r6)
    lwz     r5, 0x8(r6)
    add     r0, r6, r5
    cmplw   r0, cell
    bnelr
    lwz     r0, 0x8(cell)
    cmplwi  r7, 0x0
    add     r0, r5, r0
    stw     r0, 0x8(r6)
    stw     r7, 0x4(r6)
    beqlr
    stw     r6, 0x0(r7)
    blr
returnCell:
    mr      r3, cell
    blr
}
