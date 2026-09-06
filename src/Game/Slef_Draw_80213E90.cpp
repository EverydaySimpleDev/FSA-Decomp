typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void fn_803075AC(u32 callerID, u32 ownerID, void* posPtr, s32 effectRef,
                             s32 unused, s32 mode, s32 targetPlayerIdx, s32 kind,
                             s32 stackArg9, s32 stackArg10);

extern "C" void fn_80213E90(void* this_) {
    fn_803075AC(*(u32*)((char*)this_ + 0x198), *(u32*)((char*)this_ + 0x4),
                 (char*)this_ + 0xc, *(s32*)((char*)this_ + 0x280) + 0x1c3,
                 0, 1, -1, 1, 0, 0);
}
