#include "types.h"

// The am-I-linked-to-another-player predicate (see project_fsa_player_target_helper_decoded.md).
extern "C" {
BOOL Player_IsLinked(void* thisPtr) {
	u32 v = *(u32*)((char*)thisPtr + 0xd60);
	return (v >> 31) ^ 1;
}
}
