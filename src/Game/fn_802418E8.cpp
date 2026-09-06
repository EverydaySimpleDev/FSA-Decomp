typedef int s32;

extern "C" s32 fn_80236100(s32 playerIdx);

// fn_802418E8(playerObj) - the SAME "linked-delegate else raw field"
// idiom as fn_802416C4/fn_80247594 (see
// project_fsa_player_target_helper_decoded.md): if playerObj->0xd60
// (co-op LINK/CHAIN target) is non-negative, delegates to
// fn_80236100(linkedIdx); otherwise returns playerObj->0xc04 directly.
extern "C" s32 fn_802418E8(void* playerObj) {
    s32 linked = *(s32*)((char*)playerObj + 0xd60);
    if (linked >= 0) {
        return fn_80236100(linked);
    }
    return *(s32*)((char*)playerObj + 0xc04);
}
