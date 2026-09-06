typedef short s16;

extern void* lbl_804B0FA0[];
extern void* lbl_804B0FD0[];

extern "C" void fn_800838F4(void* this_, s16 flag);

// fn_80401890 - destructor for lbl_804B0FA0, with the base destructor
// INLINED: installs its OWN vtable, then unconditionally (the 2nd "if
// (this)" guard is a leftover from the base destructor's own null
// check, always true here since we already know this_ != 0) installs
// the base's vtable (lbl_804B0FD0, same as fn_80401FA0/fn_80401CC0's
// target) before running the shared cleanup step.
extern "C" void* fn_80401890(void* this_, s16 arg) {
    if (this_ != 0) {
        *(void**)((char*)this_ + 0x8) = lbl_804B0FA0;
        if (this_ != 0) {
            *(void**)((char*)this_ + 0x8) = lbl_804B0FD0;
        }
        if (arg > 0) {
            fn_800838F4(this_, 0);
        }
    }
    return this_;
}
