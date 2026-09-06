extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A3698[];

extern "C" void* fn_80200764(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A3698;
    return this_;
}
