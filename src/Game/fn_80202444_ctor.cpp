extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A1318[];

extern "C" void* fn_80202444(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A1318;
    return this_;
}
