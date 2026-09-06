#include "types.h"

extern "C" void* SpatialRegistry_GetBase(void);
extern "C" void* fn_801F666C(void* base, u32 id);
extern "C" s32 fn_801A41D8(void* this_, void* a4, void* a5);

// SAYA cluster, part 4/18 (88B). Vtable-slot wrapper that directly
// invokes state-handler fn_801A41D8 (an external "force-run this
// specific behavior" entry point, separate from the update() dispatch
// chain through fn_801A6160). Return value is passed through to callers
// that check it (e.g. extab_80145f60.s).
extern "C" s32 Saya_ForceState1(void* this_, void* a4, void* a5) {
    void* base = SpatialRegistry_GetBase();
    void* target = fn_801F666C(base, (u32)this_);
    return fn_801A41D8(target, a4, a5);
}
