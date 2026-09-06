#include "types.h"

// Stpn_EmptyHook1 / Stpn_EmptyHook2 - STPN: 2 empty no-op overrides (0x4 each, leaf, no extab needed)
extern "C" {

void Stpn_EmptyHook1(void) {}

void Stpn_EmptyHook2(void) {}

}
