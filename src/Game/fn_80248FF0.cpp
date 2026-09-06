typedef int s32;
typedef unsigned char u8;

extern "C" void* SpatialRegistry_GetBase();
extern "C" void* fn_801F666C(void* base, s32 id);

extern "C" void fn_80248FF0(void* companionObj) {
    char* p = (char*)companionObj;
    void* base = SpatialRegistry_GetBase();
    void* found = fn_801F666C(base, *(s32*)(p + 0x1230));
    if (found != 0) {
        *(u8*)((char*)found + 0x11c) = 0;
        *(s32*)(p + 0x1230) = -1;
    } else if (*(u8*)(p + 0x121f) == 1) {
        *(u8*)(p + 0x121f) = 0;
        if (*(s32*)(p + 0x11f0) < 5) {
            *(s32*)(p + 0x11f0) = 5;
        }
    }
}
