#include "types.h"

extern "C" void* SpatialRegistry_GetBase(void);
extern "C" void* fn_801F666C(void* base, u32 id);
extern "C" s32 fn_801A4D74(void* this_, void* a4, void* a5);

// SAYA cluster, part 8/18 (88B). Vtable-slot wrapper directly invoking
// state-handler fn_801A4D74 (same external-entry-point pattern). Return
// value is passed through to callers that check it.
extern "C" s32 Saya_ForceState3(void* this_, void* a4, void* a5) {
    void* base = SpatialRegistry_GetBase();
    void* target = fn_801F666C(base, (u32)this_);
    return fn_801A4D74(target, a4, a5);
}
