typedef short s16;

extern "C" void dtor_801F593C(void* this_, int flag);
extern "C" void dtor_80084580(void* this_);
extern "C" void fn_801EE434(void* handle);
extern void* lbl_804A03B8[];

extern "C" void* fn_80161638(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_804A03B8;
        char* p = (char*)this_;
        fn_801EE434(*(void**)(p + 0x290));
        fn_801EE434(*(void**)(p + 0x294));
        dtor_801F593C(this_, 0);
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
