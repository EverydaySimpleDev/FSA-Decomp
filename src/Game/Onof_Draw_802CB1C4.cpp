typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void fn_80158B5C(void* target, u32 ownerId, void* posPtr, void* colorPtr, f32 scale);
extern void* lbl_8053AB10;
extern f32 lbl_80540DA8;

struct Color4 {
    u8 r, g, b, a;
};

extern "C" void fn_802CB1C4(void* this_) {
    s32 state = *(s32*)((char*)this_ + 0x238);
    if (state == 2 || state == 1) {
        Color4 color;
        color.r = 0;
        color.g = 0;
        color.b = 0;
        u32 ownerId = *(u32*)((char*)this_ + 0x4);
        color.a = 0x80;
        Color4 arg = color;
        void* target = *(void**)((char*)lbl_8053AB10 + 0x2c);
        fn_80158B5C(target, ownerId, (char*)this_ + 0xc, &arg, lbl_80540DA8);
    }
}
