typedef short s16;
typedef unsigned short u16;
typedef int s32;

extern "C" void* SpatialRegistry_GetBase();
extern "C" void* fn_801F666C(void* base, s32 id);

extern "C" void fn_80178D24(void* this_) {
    char* p = (char*)this_;
    u16 kind = *(u16*)(p + 0x94);
    if (kind == 0 || (u16)(kind - 4) <= 1 || (u16)(kind - 1) <= 1 || kind == 3) {
        s32 id = *(s32*)(p + 0x268);
        if (id >= 0) {
            void* base = SpatialRegistry_GetBase();
            void* found = fn_801F666C(base, id);
            if (found != 0) {
                *(s32*)(p + 0x268) = -1;
                *(s32*)((char*)found + 0x108) = 0;
            }
        }
    }
    *(s32*)(p + 0x238) = 0;
    *(char*)(p + 0x2e4) = 0;
    *(s32*)(p + 0x244) = 0;
    *(s32*)(p + 0x230) = 8;
}
