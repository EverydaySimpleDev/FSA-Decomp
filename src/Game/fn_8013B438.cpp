typedef int s32;

extern "C" s32 fn_8030DFE8(void* subObj, void* matrix);

// fn_8013B438(this) - forwards to fn_8030DFE8(this->0x24, NULL) - same
// callee fn_8013AC90 uses with a live matrix pointer; NULL here likely
// means "reset to identity/no override".
extern "C" s32 fn_8013B438(void* this_) {
    return fn_8030DFE8(*(void**)((char*)this_ + 0x24), 0);
}
