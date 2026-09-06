typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void* fn_801D0F40(void* this_);
extern void* lbl_804A4230[];
extern "C" f32 lbl_8053ED34;

extern "C" void* Tndr_ctor(void* this_) {
    fn_801D0F40(this_);
    *(void**)this_ = lbl_804A4230;
    *(s32*)((char*)this_ + 0x2a8) = -1;
    *(f32*)((char*)this_ + 0x2ac) = lbl_8053ED34;
    *(s16*)((char*)this_ + 0x2b0) = 0;
    *(s16*)((char*)this_ + 0x2b2) = 0;
    *(u8*)((char*)this_ + 0x2b4) = 0;
    *(f32*)((char*)this_ + 0x2b8) = lbl_8053ED34;
    *(f32*)((char*)this_ + 0x2bc) = lbl_8053ED34;
    *(f32*)((char*)this_ + 0x2c0) = lbl_8053ED34;
    *(f32*)((char*)this_ + 0x2c4) = lbl_8053ED34;
    *(f32*)((char*)this_ + 0x2c8) = lbl_8053ED34;
    *(f32*)((char*)this_ + 0x2cc) = lbl_8053ED34;
    return this_;
}
