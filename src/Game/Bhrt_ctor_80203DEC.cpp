extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A7E58[];

extern "C" void* fn_80203DEC(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A7E58;
    return this_;
}
