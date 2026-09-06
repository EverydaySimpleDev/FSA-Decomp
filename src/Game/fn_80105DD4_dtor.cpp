typedef short s16;

extern "C" void dtor_80084580(void* this_);
extern void* lbl_8049CC34[];

extern "C" void* fn_80105DD4(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_8049CC34;
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
