typedef int s32;
typedef unsigned int u32;

extern "C" void fn_80221184(void* this_);
extern "C" void* fn_8013C824();
extern "C" void fn_800EC240(void* table, s32 id);
extern "C" void fn_801CDC8C(void* this_, s32 event);
extern "C" void* fn_801EE434(void* handle);

extern "C" void fn_80223534(void* this_) {
    fn_80221184(this_);
    char* p = (char*)this_;
    if (*(u32*)(p + 0x2b8) != 0) {
        void* base = fn_8013C824();
        fn_800EC240(*(void**)((char*)base + 0xc), *(s32*)(p + 0x2b8));
        *(s32*)(p + 0x2b8) = 0;
    }
    fn_801CDC8C(this_, 0x4000E);
    fn_801EE434(*(void**)(p + 0x2bc));
    fn_801EE434(*(void**)(p + 0x2c0));
    *(s32*)(p + 0x2bc) = 0;
    *(s32*)(p + 0x2c0) = 0;
}
