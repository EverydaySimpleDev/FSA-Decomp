typedef int s32;

extern "C" s32 fn_802373EC(s32 playerIdx);

// fn_802416C4(playerObj) - the SAME "linked-delegate else raw field"
// idiom as the CONFIRMED fn_80247594 (extab_80247594.s): if
// playerObj->0xd60 (co-op LINK/CHAIN target,
// project_fsa_player_target_helper_decoded.md) is non-negative,
// delegates to not-yet-decompiled fn_802373EC(linkedIdx); otherwise
// returns playerObj->0xc10 directly - a "current sub-state" value.
// Confirmed caller: fn_802808E8 (extab_802808e8.s), which checks
// whether the result equals 5 before applying a special-case pitch
// scale.
extern "C" s32 fn_802416C4(void* playerObj) {
    s32 linked = *(s32*)((char*)playerObj + 0xd60);
    if (linked >= 0) {
        return fn_802373EC(linked);
    }
    return *(s32*)((char*)playerObj + 0xc10);
}
