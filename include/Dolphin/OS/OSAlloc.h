#ifndef _DOLPHIN_OS_OSALLOC_H
#define _DOLPHIN_OS_OSALLOC_H

#include "types.h"
#include "Dolphin/OS/OSUtil.h"

#ifdef __cplusplus
extern "C" {
#endif // ifdef __cplusplus

/////////// HEAP TYPES ///////////
// Useful typedef for heap locations.
typedef int OSHeapHandle;

// Alloc visitor function type.
typedef void (*OSAllocVisitor)(void* obj, u32 size);

// Current heap.
extern volatile OSHeapHandle __OSCurrHeap;

// One entry in the fixed-size heap-descriptor table (real Dolphin SDK
// layout, confirmed via zeldaret/tww's src/dolphin/os/OSAlloc.c).
typedef struct OSHeapDescriptor {
	s32 size;                    // _0
	struct OSHeapCell* free;     // _4
	struct OSHeapCell* allocated; // _8
} OSHeapDescriptor;

// A free/allocated block header - real size confirmed as 0x20 (32-byte
// aligned, matching every OSRoundUpPtr/OSRoundDownPtr(..., 0x20) call
// site) though only the first 3 fields are exercised by the functions
// promoted so far; the remainder is honestly left as padding rather
// than guessed.
typedef struct OSHeapCell {
	struct OSHeapCell* prev; // _00
	struct OSHeapCell* next; // _04
	u32 size;                // _08
	u8 unk_0c[0x20 - 0x0c];
} OSHeapCell;

#define OSRoundUpPtr(x, align)   ((void*)((((u32)(x)) + (align)-1) & (~((align)-1))))
#define OSRoundDownPtr(x, align) ((void*)(((u32)(x)) & (~((align)-1))))

//////////////////////////////////

///////// HEAP FUNCTIONS /////////
// Heap functions.
void* OSInitAlloc(void* arenaStart, void* arenaEnd, int maxHeaps);
OSHeapHandle OSCreateHeap(void* start, void* end);
OSHeapHandle OSSetCurrentHeap(OSHeapHandle heap);
void OSFreeToHeap(OSHeapHandle heap, void* ptr);

// Unused/inlined in P2.
void* OSAllocFromHeap(OSHeapHandle heap, u32 size);
void* OSAllocFixed(void** rStart, void** rEnd);
void OSDestroyHeap(OSHeapHandle heap);
void OSAddToHeap(OSHeapHandle heap, void* start, void* end);
s32 OSCheckHeap(OSHeapHandle heap);
void OSDumpHeap(OSHeapHandle heap);
u32 OSReferentSize(void* ptr);
void OSVisitAllocated(OSAllocVisitor visitor);

//////////////////////////////////

////////// HEAP MACROS ///////////
// Allocate 'size' bytes from current heap (unused in P2).
// Returns ptr to allocated space (32-aligned).
#define OSAlloc(size) OSAllocFromHeap(__OSCurrHeap, (size))

// Deallocates 'ptr' to current heap.
#define OSFree(ptr) OSFreeToHeap(__OSCurrHeap, (ptr))

//////////////////////////////////

#ifdef __cplusplus
};
#endif // ifdef __cplusplus

#endif
