extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A5958[];
extern void* lbl_804AD6F0[];

extern "C" void* fn_80200EDC(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A5958;
    *(void**)this_ = lbl_804AD6F0;
    return this_;
}
