extern "C" void* Actor_ctor(void* this_);
extern void* lbl_8049FD50[];

extern "C" void* fn_80203C2C(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_8049FD50;
    return this_;
}
