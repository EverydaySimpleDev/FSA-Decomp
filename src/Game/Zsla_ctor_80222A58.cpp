typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void __construct_array(void* ptr, void* ctor, void* dtor, u32 size, u32 n);
extern "C" void* fn_802218C8(void* this_);
extern void* lbl_804A6B70[];

extern "C" void* fn_80222A58(void* this_) {
    fn_802218C8(this_);
    *(void**)this_ = lbl_804A6B70;
    *(s32*)((char*)this_ + 0x2b8) = 0;
    *(s32*)((char*)this_ + 0x2bc) = 0;
    return this_;
}
