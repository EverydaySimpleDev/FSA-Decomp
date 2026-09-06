#include "types.h"

// WARP-portal-actor cluster, part 9/12. Trivial lookup-table accessor.
extern "C" {
extern f32 lbl_8046A00C[5]; // real symbol size is 0x14 bytes (5 floats) per symbols.txt

f32 Warp_GetLookupTableValue(void* thisPtr) {
	u32 idx = *(u32*)((char*)thisPtr + 0xc0);
	return lbl_8046A00C[idx];
}
}
