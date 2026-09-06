typedef int s32;

extern "C" void fn_801D9C58(void* this_, s32 newState);

// fn_801D8400(this) - the first method of a BRAND NEW class (address
// right after the previous minimal class's closing __sinit,
// extab_801d81dc.s). Reads the shared this->0x248 state-field
// convention; if state<8, calls fn_801D9C58(this, 8) - a "commit new
// state" helper for THIS class, the same role fn_801D5D84 plays for
// dtor_801D46FC's class. Caller not yet traced.
extern "C" void fn_801D8400(void* this_) {
    s32 state = *(s32*)((char*)this_ + 0x248);
    if (state < 8) {
        fn_801D9C58(this_, 8);
    }
}
