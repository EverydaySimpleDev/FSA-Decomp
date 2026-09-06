extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804AE7D8[];

extern "C" void* fn_801FFD1C(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804AE7D8;
    return this_;
}
