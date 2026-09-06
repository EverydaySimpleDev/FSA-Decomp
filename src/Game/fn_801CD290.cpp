typedef int s32;

extern "C" s32 fn_8023DE58(s32 playerIdx);

// fn_801CD290(groupID) - sibling of fn_801CD228: "ANY" variant. Returns
// true if fn_8023DE58(playerIdx)==groupID for AT LEAST ONE of the 4
// player slots.
extern "C" s32 fn_801CD290(s32 groupID) {
    s32 result = 0;
    for (s32 i = 0; i < 4; i++) {
        if (fn_8023DE58(i) == groupID) {
            result = 1;
            break;
        }
    }
    return result;
}
