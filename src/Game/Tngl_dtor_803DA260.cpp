typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef short s16;
typedef int s32;
typedef float f32;

extern "C" void fn_801EE434(void* handle);
extern "C" void dtor_801F593C(void* this_, int how);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804B0478[];

extern "C" void* fn_803DA260(void* this_, short how) {
    if (this_) {
        *(void**)this_ = lbl_804B0478;
        for (int i = 0; i < 4; i++) {
            fn_801EE434(*(void**)((char*)this_ + 0x290 + i * 4));
        }
        dtor_801F593C(this_, 0);
        if (how > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
