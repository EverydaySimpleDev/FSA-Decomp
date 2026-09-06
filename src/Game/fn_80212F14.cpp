typedef int s32;

extern "C" void fn_80213774(void* this_, s32 state);

// fn_80212F14(this) - sibling of fn_80212ECC: same flag-bit-17 gate,
// but the "not yet in this state" target is state 1 (this->0x248==1
// check) instead of state 2.
extern "C" void fn_80212F14(void* this_) {
    s32 flags = *(s32*)((char*)this_ + 0x230);
    if (flags & 0x4000) {
        fn_80213774(this_, 0);
    } else {
        if (*(s32*)((char*)this_ + 0x248) != 1) {
            fn_80213774(this_, 1);
        }
    }
}
