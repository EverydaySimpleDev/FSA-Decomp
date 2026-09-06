#include "types.h"

// Player_GetCapabilityFlagByIndex - the master-enable-flag ACCESSOR for the "per-player
// capability predicate" family. Bounds-checks the player slot
// (0<=idx<4, player pointer non-null) and returns playerObj->0xcac
// zero-extended, or 0 if any check fails.
//
// Third attempt: uses real `void**` array-indexing syntax (letting the
// compiler perform the *sizeof(void*) scaling via typed pointer
// arithmetic) instead of manual idx*4 byte-offset computation - a
// genuinely different C++ idiom from the first two failed attempts,
// modeled on how zeldaret/tww writes table-indexed lookups (plain
// array[idx] syntax rather than char*-cast pointer arithmetic).
extern void* lbl_8053AC90[2];

extern "C" {

u8 Player_GetCapabilityFlagByIndex(s32 idx) {
	void* mgr = lbl_8053AC90[0];
	if (mgr == 0) return 0;
	if (idx < 0) return 0;
	if (idx >= 4) return 0;
	void** playersArr = (void**)((char*)mgr + 0x4);
	void* playerObj = playersArr[idx];
	if (playerObj == 0) return 0;
	return *(u8*)((char*)playerObj + 0xcac);
}

}
