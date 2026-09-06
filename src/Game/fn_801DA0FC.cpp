typedef int s32;

extern void* lbl_8053AF80;

extern "C" s32 fn_80458F9C(void* mgr, s32 handle);

// fn_801DA0FC(void) - a SECOND, byte-identical copy of fn_801D652C
// (Game/fn_801D652C.cpp): tail-calls fn_80458F9C(lbl_8053AF80, 0x3c).
// MWCC emitted the same trivial wrapper body twice at two different
// addresses - not a decomp artifact (matches the fn_801D76B4/
// fn_801D77B4 duplicate-body precedent from earlier this session).
extern "C" s32 fn_801DA0FC(void) {
    return fn_80458F9C(lbl_8053AF80, 0x3c);
}
