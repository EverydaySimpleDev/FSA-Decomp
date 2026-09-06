typedef int s32;
typedef unsigned int u32;

extern "C" s32 fn_80236228(s32 playerIdx);

// fn_80241920 - the sub-checker delegate for fn_80236228 in the "per-
// player capability predicate" family (see
// project_fsa_player_target_helper_decoded.md). First checks
// playerObj->0xd60 (a signed field): if >= 0, treats it as ANOTHER
// player's slot index and recursively delegates the SAME query to that
// player via fn_80236228 - a genuine "linked player" redirect. This is
// the first confirmed evidence of a per-player "linked to" index
// field, likely backing Four Swords Adventures' co-op link/chain
// mechanic. If unlinked (0xd60 < 0), falls back to returning
// playerObj->0xc04 clamped to non-negative (negative values become 0).
extern "C" s32 fn_80241920(void* playerObj) {
    s32 linked = *(s32*)((char*)playerObj + 0xd60);
    if (linked >= 0) {
        return fn_80236228(linked);
    }
    s32 val = *(s32*)((char*)playerObj + 0xc04);
    u32 mask = ((u32)val >> 31) - 1;
    return val & mask;
}
