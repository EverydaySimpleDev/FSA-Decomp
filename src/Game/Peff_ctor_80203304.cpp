typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A6E20[];

extern "C" void* fn_80203304(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A6E20;
    return this_;
}
