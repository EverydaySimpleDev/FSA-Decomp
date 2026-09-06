typedef int s32;
typedef unsigned char u8;

extern "C" void* SpatialRegistry_GetBase();
extern "C" void* fn_801F666C(void* base, s32 id);

extern "C" void fn_802F3C24(void* this_) {
    char* p = (char*)this_;
    s32 id = *(s32*)(p + 0x23c);
    if (id >= 0) {
        void* base = SpatialRegistry_GetBase();
        void* found = fn_801F666C(base, id);
        if (found != 0) {
            *(u8*)((char*)found + 0x11c) = 0;
        }
        *(s32*)(p + 0x23c) = -1;
    }
    *(u8*)(p + 0x11c) = 0;
}
