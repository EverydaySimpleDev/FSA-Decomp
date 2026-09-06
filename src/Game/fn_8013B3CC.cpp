typedef int s32;

// Family of thin forwarding methods on the camera/cutscene-cue-manager
// class (lbl_8053AB10's class): each reads a sub-object pointer off
// `this` and forwards to a method on it, discarding/passing through the
// result untouched.
extern "C" s32 fn_8030DD20(void* subObj);
extern "C" s32 fn_8030DD68(void* subObj);
extern "C" s32 fn_8030DD8C(void* subObj);

// fn_8013B3CC(this) - forwards to fn_8030DD20(this->0x24), the same 3rd
// sub-object fn_8013AC90 reads off the singleton.
extern "C" s32 fn_8013B3CC(void* this_) {
    return fn_8030DD20(*(void**)((char*)this_ + 0x24));
}

// fn_8013B3F0(this) - sibling of fn_8013B3CC: forwards to fn_8030DD68
// instead of fn_8030DD20, same this->0x24 sub-object.
extern "C" s32 fn_8013B3F0(void* this_) {
    return fn_8030DD68(*(void**)((char*)this_ + 0x24));
}

// fn_8013B414(this) - sibling of fn_8013B3CC/3F0: forwards to
// fn_8030DD8C, same this->0x24 sub-object.
extern "C" s32 fn_8013B414(void* this_) {
    return fn_8030DD8C(*(void**)((char*)this_ + 0x24));
}
