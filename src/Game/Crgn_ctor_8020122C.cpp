typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void __construct_array(void* ptr, void* ctor, void* dtor, u32 size, u32 n);
extern "C" void* Actor_ctor(void* this_);
extern void* lbl_8049E5B8[];

extern "C" void* fn_8020122C(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_8049E5B8;
    *(s32*)((char*)this_ + 0x230) = 1;
    *(s32*)((char*)this_ + 0x234) = 4;
    *(s32*)((char*)this_ + 0x238) = 0;
    *(s32*)((char*)this_ + 0x23c) = -1;
    *(s32*)((char*)this_ + 0x240) = 0;
    *(s32*)((char*)this_ + 0x244) = 0;
    *(s32*)((char*)this_ + 0x280) = 0;
    return this_;
}
