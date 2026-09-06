extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A0260[];

extern "C" void* fn_80203B78(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A0260;
    return this_;
}
