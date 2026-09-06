typedef int s32;
typedef unsigned int u32;

extern "C" void* SpatialRegistry_GetBase();
extern "C" void fn_801F8544(void* base, u32 fourCC, u32 owner, void* posPtr, s32 flag);
extern "C" void fn_801F9484(void* base, u32 fourCC, u32 owner, void* posPtr, s32 a, s32 b, s32 c);
extern "C" void fn_801F4F28(void* this_);

extern "C" void fn_80154A10(void* this_) {
    char* p = (char*)this_;
    *(s32*)(p + 0x18c) = 0;
    if (*(u32*)(p + 0x90) != 0) {
        void* base = SpatialRegistry_GetBase();
        fn_801F8544(base, 0x52555059, *(u32*)(p + 0x4), p + 0xc, 3);
    } else {
        void* base = SpatialRegistry_GetBase();
        fn_801F9484(base, 0x48415254, *(u32*)(p + 0x4), p + 0xc, 0, -1, -1);
    }
    fn_801F4F28(this_);
}
