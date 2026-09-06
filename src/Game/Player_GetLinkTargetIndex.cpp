#include "types.h"

// Player_GetLinkTargetIndex - raw accessor for the "linked player index" field
// discovered this session (see [[project_fsa_player_target_helper_decoded]]):
// returns playerObj->0xd60 directly, no validation. This is the "get my
// link target index, whatever it is (including negative/unlinked)"
// counterpart to Player_IsLinked's boolean "am I linked at all" check.
extern "C" {

u32 Player_GetLinkTargetIndex(void* thisPtr) { return *(u32*)((char*)thisPtr + 0xd60); }

}
