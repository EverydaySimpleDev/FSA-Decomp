extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804ACC68[];

extern "C" void* fn_80200060(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804ACC68;
    return this_;
}
