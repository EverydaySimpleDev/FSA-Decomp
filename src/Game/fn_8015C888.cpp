typedef int s32;

extern "C" s32 fn_802265DC(void* targetPos, void* arg1, s32 zero);

// fn_8015C888 - KETH's ("Keese") override of the base Actor vtable's
// slot 19 ("can I move this way" query, per
// project_fsa_actor_system_discovery.md and
// project_fsa_zlda_actor_progress.md, where it's called via a genuine
// virtual dispatch in update()). A thin forwarder: fn_802265DC(targetPos,
// arg1, 0) - not itself decompiled, but the fixed 0 second argument (vs
// whatever the base default passes) is consistent with Keese's erratic
// flight ignoring the normal terrain/ground movement constraint most
// grounded actors check.
extern "C" s32 fn_8015C888(void* this_, void* arg1, void* targetPos) {
    return fn_802265DC(targetPos, arg1, 0);
}
