#include "types.h"

// Accessor for a global manager singleton: `lbl_8053AAF8->0x4->0x8`.
// lbl_8053AAF8 is the confirmed global "game globals" struct - offset
// +0x4 off of it is some other subsystem manager, and +0x8 off THAT is
// the manager returned here (base of the spatial-query registry - see
// extab_801f6644.s / extab_801f75b4.s for the query functions built on
// top of it).
extern void* lbl_8053AAF8[2];

extern "C" {

void* SpatialRegistry_GetBase(void) {
	void* p1 = lbl_8053AAF8[0];
	void* p2 = *(void**)((char*)p1 + 0x4);
	return *(void**)((char*)p2 + 0x8);
}

}
