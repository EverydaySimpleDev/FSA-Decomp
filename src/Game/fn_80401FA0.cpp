typedef short s16;

extern void* lbl_804B0FD0[];

extern "C" void fn_800838F4(void* this_, s16 flag);

// fn_80401FA0 - destructor for lbl_804B0FD0. Standard "if (this)"
// guard; installs the vtable at this->0x8, then if the incoming s16
// arg is > 0, calls fn_800838F4(this, 0).
extern "C" void* fn_80401FA0(void* this_, s16 arg) {
    if (this_ != 0) {
        *(void**)((char*)this_ + 0x8) = lbl_804B0FD0;
        if (arg > 0) {
            fn_800838F4(this_, 0);
        }
    }
    return this_;
}
