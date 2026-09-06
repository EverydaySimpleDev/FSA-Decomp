#include "types.h"

// Player_GetField_0xce8 - a trivial one-field accessor, part of fn_8022D534's
// two-stage "linked player" capability check (see
// [[project_fsa_player_target_helper_decoded]]). Just returns
// playerObj->0xce8 (a byte field, meaning not yet identified) directly -
// no further logic.
extern "C" {

u8 Player_GetField_0xce8(void* thisPtr) { return *(u8*)((char*)thisPtr + 0xce8); }

}
