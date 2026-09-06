#include "types.h"

// Stgn_EmptyHook1 / Stgn_EmptyHook2 - STGN: 2 empty no-op overrides (0x4 each, leaf, no extab needed)
extern "C" {

void Stgn_EmptyHook1(void) {}

void Stgn_EmptyHook2(void) {}

}
