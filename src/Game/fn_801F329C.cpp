typedef int s32;

extern "C" s32 fn_8023DE58(s32 playerIdx);

// fn_801F329C(this, playerIdx) - half of the "sentinel-8 wildcard
// owner" ownership predicate used across this project (see
// fn_801F320C below, and fn_801EEC98/
// project_fsa_rusa_repel_helpers_solved.md): true only when
// playerIdx's own room-ownership group (fn_8023DE58(playerIdx)) is
// NOT the wildcard value 8 AND this actor's own group (this->0x4) IS
// the wildcard 8 - i.e. "am I unclaimed (wildcard-owned), and is
// playerIdx a genuinely-owned, non-wildcard player." Used standalone
// from fn_801F320C's full ownership-match test below.
extern "C" s32 fn_801F329C(void* this_, s32 playerIdx) {
    s32 result = 0;
    if (fn_8023DE58(playerIdx) < 8) {
        if (*(s32*)((char*)this_ + 0x4) == 8) {
            result = 1;
        }
    }
    return result;
}
