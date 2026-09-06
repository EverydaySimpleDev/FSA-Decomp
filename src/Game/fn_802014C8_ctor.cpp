extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A9E50[];

extern "C" void* fn_802014C8(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A9E50;
    return this_;
}
