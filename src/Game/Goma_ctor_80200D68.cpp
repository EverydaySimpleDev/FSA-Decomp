extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A307C[];

extern "C" void* fn_80200D68(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A307C;
    return this_;
}
