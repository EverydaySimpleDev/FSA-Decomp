typedef int s32;
typedef unsigned short u16;

extern "C" void* SpatialRegistry_GetBase(void);
extern "C" void* fn_801F666C(void* base, s32 idx);
extern "C" void fn_801C1768(void* obj);
extern "C" void fn_8021C468(void* obj);

extern "C" void fn_801C115C(char* this_) {
    s32 idx = *(s32*)(this_ + 0x50);
    if (idx < 0) return;
    void* result = fn_801F666C(SpatialRegistry_GetBase(), idx);
    if (result != 0) {
        fn_801C1768(result);
    }
}

extern "C" void fn_801C11A4(char* this_) {
    s32 idx = *(s32*)(this_ + 0x50);
    if (idx < 0) return;
    void* result = fn_801F666C(SpatialRegistry_GetBase(), idx);
    if (result != 0) {
        fn_8021C468((char*)result + 0x2d8);
    }
}

extern "C" s32 fn_801C11F0(char* this_) {
    s32 count = *(s32*)(this_ + 0xc);
    s32 result = 0;
    if (count > 1) {
        s32 field2 = *(u16*)(this_ + 0x2);
        if (count != field2) {
            u16 field0 = *(u16*)(this_ + 0x0);
            if (field0 & 0x6) {
                result = 1;
            }
        }
    }
    return result;
}
