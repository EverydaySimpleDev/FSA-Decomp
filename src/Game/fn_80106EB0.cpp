typedef int s32;

extern "C" s32 fn_80456334(s32 a, void* ptr, s32 zero);

// fn_80106EB0(a, ptr): a small thunk - dereferences the first word of
// ptr into a stack temp and calls fn_80456334(a, &temp, 0). Reads as
// an "unwrap and forward" helper, likely a virtual-call trampoline or
// a param-adapter for fn_80456334.
extern "C" s32 fn_80106EB0(s32 a, void* ptr) {
    s32 temp = *(s32*)ptr;
    return fn_80456334(a, &temp, 0);
}
