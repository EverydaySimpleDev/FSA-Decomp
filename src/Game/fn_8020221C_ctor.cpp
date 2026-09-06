extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A1888[];

extern "C" void* fn_8020221C(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A1888;
    return this_;
}
