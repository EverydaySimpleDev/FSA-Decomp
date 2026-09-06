typedef short s16;
typedef int s32;

extern "C" void dtor_801F593C(void* this_, int flag);
extern "C" void dtor_80084580(void* this_);
extern "C" void fn_801EE434(void* handle);
extern void* lbl_804A1FA0[];

extern "C" void* fn_8018FB24(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_804A1FA0;
        char* p = (char*)this_;
        for (s32 i = 0; i < 3; i++) {
            fn_801EE434(*(void**)(p + 0x3c0));
            p += 4;
        }
        dtor_801F593C(this_, 0);
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
