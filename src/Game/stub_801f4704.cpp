#include "types.h"
#include "Game/Actor.h"

// UNIVERSAL BASE-ACTOR DEFAULTS - a fused 4-function dtk split (no
// extab, all leaf functions). fn_801F4704/fn_801F4708/fn_801F470C are
// empty "return void" virtual-hook stubs (no-op unless a subclass
// overrides them). fn_801F4710 is a trivial accessor extracting a 5-bit
// field (bits 27-31) from this->0x90 - likely a category/priority code.
extern "C" {

void fn_801F4704(void) {}

void fn_801F4708(void) {}

void fn_801F470C(void) {}

u32 fn_801F4710(void* thisPtr) {
	return ((Actor*)thisPtr)->spawnParam >> 27;
}

}
