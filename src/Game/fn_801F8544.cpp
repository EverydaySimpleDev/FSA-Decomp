typedef unsigned int u32;
typedef int s32;

extern "C" s32 fn_801F9484(void* base, u32 fourCC, u32 owner, void* posPtr, u32 param, s32 p6, s32 p7);

// fn_801F8544(slotTable, code4, ownerID, posPtr, flags) - NOT a separate
// "spawn by code" primitive after all: it's a thin trampoline around the
// CONFIRMED universal actor dispatcher `fn_801F9484` itself (see
// project_fsa_actor_system_discovery.md), appending 2 fixed trailing
// args (-1, -1) that most callers don't need to specify. This means
// fn_801F9484's real signature has (at least) 7 parameters, not the
// (slotTable, code4, ownerID, ...) 3-4 previously documented - the 2
// extra args this wrapper defaults are still unconfirmed in meaning.
// Confirmed used by WIZR's rupee-drop-on-defeat mechanic (see
// project_fsa_stal_wizr_full_depth.md) with code4='RUPY'.
extern "C" s32 fn_801F8544(void* base, u32 fourCC, u32 owner, void* posPtr, u32 param) {
    return fn_801F9484(base, fourCC, owner, posPtr, param, -1, -1);
}
