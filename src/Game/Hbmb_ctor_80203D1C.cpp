extern "C" void* Actor_ctor(void* this_);
extern void* lbl_8049F784[];

extern "C" void* fn_80203D1C(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_8049F784;
    return this_;
}
