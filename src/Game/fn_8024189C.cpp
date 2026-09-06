typedef int s32;
typedef unsigned char u8;

extern "C" s32 fn_80237774(s32 playerIdx);

// fn_8024189C - the sub-checker delegate for fn_80237774 in the "per-
// player capability predicate" family (see
// project_fsa_player_target_helper_decoded.md). Same "linked player"
// redirect pattern as fn_80241920: if playerObj->0xd60 (the
// linked-player index) is set, delegates the query to that OTHER
// player via fn_80237774. Otherwise, checks playerObj->0xc00 (a byte
// flag): if clear, returns playerObj->0xbfc directly; if set, returns
// 0.
extern "C" s32 fn_8024189C(void* playerObj) {
    s32 linked = *(s32*)((char*)playerObj + 0xd60);
    if (linked >= 0) {
        return fn_80237774(linked);
    }
    u8 flag = *(u8*)((char*)playerObj + 0xc00);
    if (flag != 0) {
        return 0;
    } else {
        return *(s32*)((char*)playerObj + 0xbfc);
    }
}
