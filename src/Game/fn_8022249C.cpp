typedef int s32;

extern "C" void fn_80221250(void* this_);
extern "C" void fn_801CE4E8(void* this_);

// fn_8022249C - ZSLA's own vtable-0x88 override (see extab_80222a58.s
// and project_fsa_growing_area_extension.md). Byte-identical to
// fn_80221BE4/fn_80222D28 (fn_80222190's/fn_8022313C's own 0x88
// overrides): if this->0x248 == 2, calls fn_80221250, else falls
// through to the generic 0x88 default fn_801CE4E8. Confirms ZSLA
// carries the SAME 14-slot growing-area vtable extension (0x60-0x8c)
// as ZSLJ and the 3 previously-anonymous siblings - every other slot
// in ZSLA's vtable (0x54-0x8c) matches the already-landed
// generic/shared values exactly, so this was the only genuinely new
// function needed.
extern "C" void fn_8022249C(void* this_) {
    s32 state = *(s32*)((char*)this_ + 0x248);
    if (state == 2) {
        fn_80221250(this_);
    } else {
        fn_801CE4E8(this_);
    }
}
