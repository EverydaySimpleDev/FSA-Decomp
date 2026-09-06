extern "C" void* Actor_ctor(void* this_);
extern void* lbl_8049D140[];

extern "C" void* fn_8010E074(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_8049D140;
    return this_;
}
