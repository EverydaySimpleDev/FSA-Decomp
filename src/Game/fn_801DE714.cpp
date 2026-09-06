typedef int s32;

extern "C" void fn_801CE694(void* this_);

// TINK (vtable lbl_804A51E4). Trivial state-gated hook: while
// this->0x248 (state) == 0xa, calls the already-landed fn_801CE694.
extern "C" void fn_801DE714(void* this_) {
    s32 state = *(s32*)((char*)this_ + 0x248);
    if (state == 0xa) {
        fn_801CE694(this_);
    }
}
