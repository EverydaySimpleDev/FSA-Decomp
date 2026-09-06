extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804AC388[];

extern "C" void* fn_80201BF0(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804AC388;
    return this_;
}
