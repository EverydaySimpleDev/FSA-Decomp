extern "C" void* Actor_ctor(void* this_);
extern void* lbl_8049F9B4[];

extern "C" void* fn_80203D58(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_8049F9B4;
    return this_;
}
