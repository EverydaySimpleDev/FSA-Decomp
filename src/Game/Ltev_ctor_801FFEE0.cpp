typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void __construct_array(void* ptr, void* ctor, void* dtor, u32 size, u32 n);
extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804AA4F0[];

extern "C" void* fn_801FFEE0(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804AA4F0;
    *(s32*)((char*)this_ + 0x248) = -1;
    return this_;
}
