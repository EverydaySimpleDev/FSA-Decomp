#include "types.h"

// Swt4_Draw(this) - SWT4's real draw(). A pure no-op (`blr`), matching
// the SAME pattern DOOR's draw uses ([[project_fsa_door_key0_full_depth]])
// - SWT4 renders nothing itself, relying on static level geometry or
// effects triggered from elsewhere rather than an actor-drawn model.
extern "C" {

void Swt4_Draw(void) {}

}
