typedef short s16;

extern "C" void dtor_801F593C(void* this_, int flag);
extern "C" void dtor_80084580(void* this_);
extern "C" void fn_801EE434(void* handle);
extern void* lbl_8049CA40[];

extern "C" void* fn_80103F28(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_8049CA40;
        char* p = (char*)this_;
        void* handle = *(void**)(p + 0x260);
        if (handle != 0) {
            fn_801EE434(handle);
        }
        dtor_801F593C(this_, 0);
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
