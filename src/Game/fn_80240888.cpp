typedef int s32;

extern "C" s32 fn_80234004(s32 playerIdx);

// fn_80240888 - another "linked player redirect" (same pattern as
// fn_80241920/fn_8024189C, see
// project_fsa_player_target_helper_decoded.md): if playerObj->0xd60
// (linked-player index) is set, delegates the SAME query to that other
// player via fn_80234004; otherwise returns playerObj->0x1224 directly
// (meaning of this field not yet identified, but consistently threaded
// through the whole link-redirect chain).
extern "C" s32 fn_80240888(void* playerObj) {
    s32 linked = *(s32*)((char*)playerObj + 0xd60);
    if (linked >= 0) {
        return fn_80234004(linked);
    }
    return *(s32*)((char*)playerObj + 0x1224);
}
