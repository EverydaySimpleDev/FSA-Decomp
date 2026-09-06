extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A02B8[];

extern "C" void* fn_80203B3C(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A02B8;
    return this_;
}
