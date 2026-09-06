#include "types.h"

extern "C" s32 fn_802265DC(void* targetPos, void* arg1, s32 zero);
extern "C" void* fn_8020D58C(void);
extern "C" u8 fn_8020D6AC(void* elem, void* a, void* b, void* config, s32 zero);

// fn_801F15BC - universal shared-Actor default virtual, the simpler
// sibling of fn_801F132C: guarded by a quick predicate
// (fn_802265DC(b, a, 0)) - if true, returns true immediately. Otherwise
// looks up this->0x198 (room config), the lazy-init manager singleton
// (fn_8020D58C), and its current-index byte (mgr->0x1) to compute a
// 0x784-stride array element (mgr + idx*0x784 + 4), then delegates to
// fn_8020D6AC(elem, a, b, config, 0) for the actual room-config-disable
// check; returns true if that call returns true, else false.
//
// NOTE: this function's own control-flow logic is byte-exact and
// matched on the first attempt. The ONLY residual is that MWCC always
// assigns r29=b/r28=a (reversed from retail's r29=a/r28=b) for the 2
// saved incoming params, a confirmed hard MWCC allocation rule with no
// source-level fix (see reference_fsa_param_register_pairing_wall_investigation.md).
// This is patched post-compile - see config/G4SE01/patches/fn_801F15BC.json.
extern "C" s32 fn_801F15BC(void* this_, void* a, void* b) {
	s32 result = 1;
	u8 predicate = (u8)fn_802265DC(b, a, 0);
	if (predicate) {
		goto end;
	}
	{
		void* config = *(void**)((char*)this_ + 0x198);
		void* mgr = fn_8020D58C();
		u8 idx = *(u8*)((char*)mgr + 0x1);
		void* elem = (char*)mgr + (s32)idx * 0x784 + 4;
		if (fn_8020D6AC(elem, a, b, config, 0)) {
			goto end;
		}
		result = 0;
	}
end:
	return result;
}
