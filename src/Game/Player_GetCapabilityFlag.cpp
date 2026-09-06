#include "types.h"

// Player_GetCapabilityFlag - the same master-enable-flag read as Player_GetCapabilityFlagByIndex
// (`playerObj->0xcac`, see [[project_fsa_player_target_helper_decoded]]),
// but taking the player OBJECT directly instead of an index (no bounds-
// checking/roster lookup) - a convenience variant for callers that
// already hold the player pointer.
extern "C" {

u8 Player_GetCapabilityFlag(void* thisPtr) { return *(u8*)((char*)thisPtr + 0xcac); }

}
