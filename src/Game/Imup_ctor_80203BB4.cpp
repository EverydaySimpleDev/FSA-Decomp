extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A01D0[];

extern "C" void* fn_80203BB4(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A01D0;
    return this_;
}
