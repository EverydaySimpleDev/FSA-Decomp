#include "types.h"

// Three trivial "return void" virtual-hook stub bodies for the base
// Actor class (see include/Game/Actor.h / project_fsa_actor_system_
// discovery.md) - each fills a vtable slot that is unused unless some
// derived actor class overrides it. Real, verified byte-exact C++: an
// empty function body compiles to a bare `blr`, matching retail exactly.
//
// Kept as plain functions (not `Actor::` virtual members) for now: we
// know these are base-Actor vtable slots by address/context, but not
// which SPECIFIC slots or with what real signatures - committing them
// as `virtual` methods on Actor would require knowing the full 21-slot
// vtable layout to place them correctly, which isn't established yet.
// Also kept under their `fn_ADDRESS` names rather than guessed real
// names, per this project's real-decompilation mandate (a fn_ name is
// honest; a wrong guessed name is worse than no name).
//
// This is an "empty extab" promotion - verified safe via comparison
// against zeldaret/tp, zeldaret/tww, and the Gauntlet: Dark Legacy
// decomp, all of which only ever need `-Cpp_exceptions on` for their
// C++ runtime's own exception-handling file, never for ordinary game
// code - see project_fsa_phase4_kickoff.md.
extern "C" {

/**
 * @note Address: 0x801F5930
 * @note Size: 0x4
 */
void fn_801F5930(void) {}

/**
 * @note Address: 0x801F5934
 * @note Size: 0x4
 */
void fn_801F5934(void) {}

/**
 * @note Address: 0x801F5938
 * @note Size: 0x4
 */
void fn_801F5938(void) {}

}
