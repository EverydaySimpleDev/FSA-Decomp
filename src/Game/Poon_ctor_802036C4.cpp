extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A06C0[];

extern "C" void* fn_802036C4(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A06C0;
    return this_;
}
