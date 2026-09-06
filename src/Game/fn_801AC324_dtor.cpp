typedef short s16;
typedef int s32;

extern "C" void dtor_801F593C(void* this_, int flag);
extern "C" void dtor_80084580(void* this_);
extern "C" void fn_801EE434(void* handle);
extern "C" void fn_80138B7C(void* counter);
extern s32 lbl_8053ABD8;
extern void* lbl_8053AAF8;
extern void* lbl_804A307C[];

extern "C" void* fn_801AC324(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_804A307C;
        char* p = (char*)this_;
        for (s32 i = 0; i < 2; i++) {
            fn_801EE434(*(void**)(p + 0x27c));
            p += 4;
        }
        s32 state = *(s32*)((char*)this_ + 0x254);
        if (state == 2 || state == 3) {
            s32 guard = lbl_8053ABD8 - 1;
            lbl_8053ABD8 = guard;
            if (guard == 0) {
                s32 c = *(s32*)((char*)lbl_8053AAF8 + 0x4c);
                if (c != 9) {
                    fn_80138B7C(lbl_8053AAF8);
                }
            }
        }
        dtor_801F593C(this_, 0);
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
