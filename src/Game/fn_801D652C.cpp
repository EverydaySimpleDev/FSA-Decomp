typedef int s32;

extern void* lbl_8053AF80;

extern "C" s32 fn_80458F9C(void* mgr, s32 handle);

// fn_801D652C(void) - a trivial wrapper: tail-calls
// fn_80458F9C(lbl_8053AF80, 0x3c) - lbl_8053AF80 is the same global
// manager singleton fn_801D5390's default path queries via fn_80458FF0.
// Likely a "get handle 0x3c from this manager" convenience accessor;
// caller not yet traced.
extern "C" s32 fn_801D652C(void) {
    return fn_80458F9C(lbl_8053AF80, 0x3c);
}
