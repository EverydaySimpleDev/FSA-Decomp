typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void* fn_801D0F40(void* this_);
extern void* lbl_804A6004[];
extern "C" f32 lbl_8053FA2C;

extern "C" void* Flor_ctor(void* this_) {
    fn_801D0F40(this_);
    void* vt = lbl_804A6004;
    f32 f = lbl_8053FA2C;
    *(void**)this_ = vt;
    *(f32*)((char*)this_ + 0x2a8) = f;
    *(f32*)((char*)this_ + 0x2ac) = f;
    *(s32*)((char*)this_ + 0x2b0) = 0;
    *(f32*)((char*)this_ + 0x2b4) = f;
    *(s32*)((char*)this_ + 0x2b8) = -1;
    *(s32*)((char*)this_ + 0x2bc) = 0;
    *(s32*)((char*)this_ + 0x2c0) = -1;
    return this_;
}
