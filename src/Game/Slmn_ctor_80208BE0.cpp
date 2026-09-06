typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void __construct_array(void* ptr, void* ctor, void* dtor, u32 size, u32 n);
extern "C" void* fn_80207AC0(void* this_);
extern void* lbl_804A5BD8[];

extern "C" void* fn_80208BE0(void* this_) {
    fn_80207AC0(this_);
    *(void**)this_ = lbl_804A5BD8;
    *(s32*)((char*)this_ + 0x340) = 0;
    *(u8*)((char*)this_ + 0x344) = 0;
    *(u8*)((char*)this_ + 0x345) = 0;
    *(s16*)((char*)this_ + 0x346) = 0;
    *(s16*)((char*)this_ + 0x348) = 0;
    *(u8*)((char*)this_ + 0x34a) = 0;
    return this_;
}
