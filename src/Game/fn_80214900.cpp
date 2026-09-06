typedef int s32;
typedef unsigned int u32;
typedef unsigned char u8;

extern "C" void* SpatialRegistry_GetBase();
extern "C" void* fn_801F666C(void* base, s32 id);
extern "C" void* fn_8013C824();
extern "C" void fn_800EC240(void* table, s32 id);
extern "C" void fn_801CDC8C(void* this_, s32 event);

extern "C" void fn_80214900(void* this_) {
    char* p = (char*)this_;
    s32 id = *(s32*)(p + 0x30);
    if (id >= 0) {
        void* base = SpatialRegistry_GetBase();
        void* found = fn_801F666C(base, id);
        if (found != 0) {
            *(u8*)((char*)found + 0x11c) = 0;
        }
        *(s32*)(p + 0x30) = -1;
    }
    if (*(u32*)(p + 0x18) != 0) {
        void* table = fn_8013C824();
        fn_800EC240(*(void**)((char*)table + 0xc), *(s32*)(p + 0x18));
        *(s32*)(p + 0x18) = 0;
    }
    fn_801CDC8C(*(void**)(p + 0x34), 0x4000E);
}
