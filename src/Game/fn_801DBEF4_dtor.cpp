typedef short s16;
typedef int s32;

extern "C" void dtor_801F593C(void* this_, int flag);
extern "C" void dtor_80084580(void* this_);
extern "C" void fn_801EE434(void* handle);
extern "C" void* fn_801DAC6C(void);
extern "C" void fn_801DAEAC(void* singleton, s32 id);
extern void* lbl_804A4EE8[];
extern void* lbl_804A4808[];
extern void* lbl_8049CC34[];

extern "C" void* fn_801DBEF4(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        char* p = (char*)this_;
        *(void**)p = lbl_804A4EE8;
        fn_801EE434(*(void**)(p + 0x2e4));
        *(s32*)(p + 0x2e4) = 0;
        if (*(s32*)(p + 0x16c) == -1) {
            void* singleton = fn_801DAC6C();
            fn_801DAEAC(singleton, *(s32*)(p + 0x198));
        }
        if (this_ != 0) {
            *(void**)p = lbl_804A4808;
            if (p + 0x270 != 0) {
                if (p + 0x294 != 0) {
                    *(void**)(p + 0x294) = lbl_8049CC34;
                }
            }
            dtor_801F593C(this_, 0);
        }
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
