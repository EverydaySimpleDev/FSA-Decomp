typedef int s32;

extern "C" void fn_80213774(void* this_, s32 state);

// fn_80212ECC(this) - called from RUSA's setParams (extab_80212288.s)
// on sub-variant 0, once the spawned ARIJ child handle is confirmed
// valid. Picks a behavior state via fn_80213774(this, state): state 0
// if flag bit 17 of this->0x230 is set, otherwise state 2 (unless the
// current state this->0x248 is already 2, in which case does
// nothing).
extern "C" void fn_80212ECC(void* this_) {
    s32 flags = *(s32*)((char*)this_ + 0x230);
    if (flags & 0x4000) {
        fn_80213774(this_, 0);
    } else {
        if (*(s32*)((char*)this_ + 0x248) != 2) {
            fn_80213774(this_, 2);
        }
    }
}
