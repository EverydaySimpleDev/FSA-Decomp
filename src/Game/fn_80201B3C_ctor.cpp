extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A9BC8[];

extern "C" void* fn_80201B3C(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A9BC8;
    return this_;
}
