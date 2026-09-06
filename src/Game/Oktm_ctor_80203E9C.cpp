extern "C" void* Actor_ctor(void* this_);
extern void* lbl_8049F5D8[];

extern "C" void* fn_80203E9C(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_8049F5D8;
    return this_;
}
