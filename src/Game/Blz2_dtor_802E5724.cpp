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
extern void* lbl_804A9D28[];

extern "C" void* fn_802E5724(void* this_, short how) {
    if (this_) {
        *(void**)this_ = lbl_804A9D28;
        for (int i = 0; i < 0x10; i++) {
            void* h0 = *(void**)((char*)this_ + 0x230 + i * 4);
            if (h0) {
                fn_801EE434(h0);
            }
            void* h1 = *(void**)((char*)this_ + 0x270 + i * 4);
            if (h1) {
                fn_801EE434(h1);
            }
            void* h2 = *(void**)((char*)this_ + 0x2b0 + i * 4);
            if (h2) {
                fn_801EE434(h2);
            }
        }
        dtor_801F593C(this_, 0);
        if (how > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
