typedef short s16;

extern "C" void dtor_80084580(void* this_);
extern void* lbl_804AFB30[];

extern "C" void* fn_803B94C4(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_804AFB30;
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
