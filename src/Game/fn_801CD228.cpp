typedef int s32;

extern "C" s32 fn_8023DE58(s32 playerIdx);

// fn_801CD228(groupID) - called by SLK2's fn_801C2ED4 as
// fn_801CD228(this->0x4). Returns true only if
// fn_8023DE58(playerIdx)==groupID for ALL 4 player slots - "am I the
// exclusive owner of every player" check (fn_8023DE58 is the confirmed
// per-player owner/group accessor used throughout this project's
// ownership predicates).
extern "C" s32 fn_801CD228(s32 groupID) {
    s32 result = 1;
    for (s32 i = 0; i < 4; i++) {
        if (fn_8023DE58(i) != groupID) {
            result = 0;
            break;
        }
    }
    return result;
}
