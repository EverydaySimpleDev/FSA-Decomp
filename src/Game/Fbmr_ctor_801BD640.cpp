typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void __construct_array(void* ptr, void* ctor, void* dtor, u32 size, u32 n);
extern "C" void* fn_801D0F40(void* this_);
extern void* lbl_804A3F90[];

extern "C" void* fn_801BD640(void* this_) {
    fn_801D0F40(this_);
    *(void**)this_ = lbl_804A3F90;
    *(s32*)((char*)this_ + 0x2a8) = 0;
    *(u8*)((char*)this_ + 0x2ec) = 0;
    *(s32*)((char*)this_ + 0x2f0) = 0;
    *(s32*)((char*)this_ + 0x2f4) = 0;
    *(s16*)((char*)this_ + 0x2f8) = 0;
    *(s16*)((char*)this_ + 0x2fa) = 0;
    *(s16*)((char*)this_ + 0x2fc) = 0;
    return this_;
}
