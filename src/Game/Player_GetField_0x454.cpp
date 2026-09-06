#include "types.h"

// Player_GetField_0x454 - a trivial one-field accessor, the sub-checker delegate
// for fn_80230188 in the "per-player capability predicate" family (see
// [[project_fsa_player_target_helper_decoded]]). Just returns
// playerObj->0x454 (a byte field, meaning not yet identified) directly -
// no further logic.
extern "C" {

u8 Player_GetField_0x454(void* thisPtr) { return *(u8*)((char*)thisPtr + 0x454); }

}
