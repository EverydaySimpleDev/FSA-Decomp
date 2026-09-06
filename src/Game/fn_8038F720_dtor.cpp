typedef short s16;
typedef int s32;
typedef unsigned int u32;

extern "C" void* fn_801EE434(void* handle);
extern "C" void fn_803037D4(s32 index, s32 kind);
extern "C" void dtor_801F593C(void* this_, int flag);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804AF338[];

extern "C" void* fn_8038F720(void* this_, s16 freeFlag) {
    if (this_ != 0) {
        *(void**)this_ = lbl_804AF338;
        fn_801EE434(*(void**)((char*)this_ + 0x2a0));
        fn_801EE434(*(void**)((char*)this_ + 0x2a4));
        if (*(u32*)((char*)this_ + 0x90) != 3) {
            char* q = (char*)this_;
            for (s32 i = 0; i < 4; i++) {
                if (*(s32*)(q + 0x24c) == 1) {
                    fn_803037D4(i, 0x12);
                    *(s32*)(q + 0x24c) = 0;
                }
                q += 4;
            }
        }
        dtor_801F593C(this_, 0);
        if (freeFlag > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
