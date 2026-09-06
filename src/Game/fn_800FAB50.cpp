#include "types.h"

extern "C" u16 fn_8022461C(void* point, s32 param);
extern "C" s32 fn_802265DC(void* targetPos, void* arg1, s32 zero);

// fn_800FAB50(this_unused, a, b) - standalone type-exclusion filter,
// not a container-class method (the `this` parameter is never read).
// If fn_8022461C(b, a) (terrain/hazard classifier) returns one of 3
// excluded type codes (2, 3, 0xe), returns 0; otherwise forwards to
// fn_802265DC(b, a, 0).
//
// NOTE: this function's own control-flow logic is byte-exact and
// matched on the first attempt. The ONLY residual is that MWCC always
// assigns r31=b/r30=a (reversed from retail's r31=a/r30=b) for the 2
// saved incoming params, a confirmed hard MWCC allocation rule with no
// source-level fix (see reference_fsa_param_register_pairing_wall_investigation.md).
// This is patched post-compile - see config/G4SE01/patches/fn_800FAB50.json
// and PATCHED_OBJECTS in configure.py.
extern "C" s32 fn_800FAB50(void* this_unused, s32 a, void* b) {
	s32 type = fn_8022461C(b, a);
	if (type == 3 || type == 0xe || type == 2) {
		return 0;
	}
	return fn_802265DC(b, (void*)a, 0);
}
