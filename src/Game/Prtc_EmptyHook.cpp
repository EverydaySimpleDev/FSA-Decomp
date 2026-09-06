#include "types.h"

// PRTC (vtable lbl_804A9AC8, ctor fn_80201E80) cluster, part 1/4. No
// separate leading static-init this time - PRTC's cluster begins
// immediately after URAC's tail static-init. Prtc_EmptyHook - empty
// override (bare blr), no extab.
extern "C" {

void Prtc_EmptyHook(void) {}

}
