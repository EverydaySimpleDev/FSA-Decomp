#include "types.h"

// fn_80240818 - the sub-checker delegate for fn_8022DCD8 in the
// "per-player capability predicate" family. Returns true if
// playerObj->0x1240 == 0x49(73) OR playerObj->0x1244 == 0x49.
extern "C" s32 fn_80240818(void* playerObj) {
	s32 result = 0;
	if (*(s32*)((char*)playerObj + 0x1240) == 0x49 ||
	    *(s32*)((char*)playerObj + 0x1244) == 0x49) {
		result = 1;
	}
	return result;
}
