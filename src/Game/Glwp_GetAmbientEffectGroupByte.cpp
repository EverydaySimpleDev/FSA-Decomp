#include "types.h"

// GLWP cluster, part 5/5. Shared private helper (called from both
// update() and setParams) - a small accessor reading through the
// confirmed multi-purpose global registry lbl_8053AB10's already-
// confirmed ->0x2c sub-field (ambient effect-group spawn base) to
// fetch a byte at ->0xc of the referenced object.
extern void* lbl_8053AB10[2];

extern "C" {

u8 Glwp_GetAmbientEffectGroupByte(void) {
	void* p1 = lbl_8053AB10[0];
	void* p2 = *(void**)((char*)p1 + 0x2c);
	return *(u8*)((char*)p2 + 0xc);
}

}
