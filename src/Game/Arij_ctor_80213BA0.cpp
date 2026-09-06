typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void __construct_array(void* ptr, void* ctor, void* dtor, u32 size, u32 n);
extern "C" void* fn_801D0F40(void* this_);
extern void* lbl_804A6340[];

extern "C" void* fn_80213BA0(void* this_) {
    fn_801D0F40(this_);
    *(void**)this_ = lbl_804A6340;
    return this_;
}
