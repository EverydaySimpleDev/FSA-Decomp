extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A7FB8[];

extern "C" void* fn_80203C68(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A7FB8;
    return this_;
}
