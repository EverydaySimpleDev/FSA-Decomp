extern "C" void* Actor_ctor(void* this_);
extern void* lbl_8049F444[];

extern "C" void* fn_80203F8C(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_8049F444;
    return this_;
}
