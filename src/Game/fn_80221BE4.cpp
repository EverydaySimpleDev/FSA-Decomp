typedef int s32;

extern "C" void fn_80221250(void* this_);
extern "C" void fn_801CE4E8(void* this_);

// fn_80221BE4 - fn_80222190's own vtable-0x88 override (see
// extab_80221b44.s and project_fsa_growing_area_extension.md). If
// this->0x248 == 2 (a specific state), calls fn_80221250 (a
// not-further-decompiled "already settled" behavior); otherwise falls
// through to the generic 0x88 default fn_801CE4E8 (direction-vector
// update + growth-step chain).
extern "C" void fn_80221BE4(void* this_) {
    s32 state = *(s32*)((char*)this_ + 0x248);
    if (state == 2) {
        fn_80221250(this_);
    } else {
        fn_801CE4E8(this_);
    }
}
