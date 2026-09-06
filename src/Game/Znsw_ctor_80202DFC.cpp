typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void* Actor_ctor(void* this_);
extern void* lbl_804A8AC8[];

extern "C" void* fn_80202DFC(void* this_) {
    Actor_ctor(this_);
    *(void**)this_ = lbl_804A8AC8;
    return this_;
}
