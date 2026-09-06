typedef int s32;

// fn_8013D5B0(this) - the first method of the this->0x28 sub-object's own
// class (forward-referenced from fn_8013B4C0/fn_8013B71C/etc in the
// camera-cue-manager cluster; this class's own dtor is dtor_8013C5C8,
// already landed). Thin forwarder: fn_800EC188(this->0xc).
extern "C" s32 fn_800EC188(void* subObj);

extern "C" s32 fn_8013D5B0(void* this_) {
    return fn_800EC188(*(void**)((char*)this_ + 0xc));
}
