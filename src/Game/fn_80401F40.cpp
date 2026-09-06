typedef short s16;

extern void* lbl_804B0FC0[];
extern void* lbl_804B0FD0[];

extern "C" void fn_800838F4(void* this_, s16 flag);

// fn_80401F40 - destructor for lbl_804B0FC0, with the base destructor
// INLINED (same shape as fn_80401890/fn_80401CC0): installs its OWN
// vtable, then the base's vtable (lbl_804B0FD0), then runs the shared
// cleanup step.
extern "C" void* fn_80401F40(void* this_, s16 arg) {
    if (this_ != 0) {
        *(void**)((char*)this_ + 0x8) = lbl_804B0FC0;
        if (this_ != 0) {
            *(void**)((char*)this_ + 0x8) = lbl_804B0FD0;
        }
        if (arg > 0) {
            fn_800838F4(this_, 0);
        }
    }
    return this_;
}
