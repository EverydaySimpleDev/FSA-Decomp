extern "C" void* Actor_ctor(void* this_);
extern void* lbl_8049F4F0[];

extern "C" void* fn_80203ED8(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_8049F4F0;
    return this_;
}
