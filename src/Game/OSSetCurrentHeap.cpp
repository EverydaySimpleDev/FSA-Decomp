#include "types.h"

// OSSetCurrentHeap - installs a new current-heap index, returns the old one.
extern "C" {

extern s32 __OSCurrHeap[2];

s32 OSSetCurrentHeap(s32 heap) {
	s32 old = __OSCurrHeap[0];
	__OSCurrHeap[0] = heap;
	return old;
}

}
