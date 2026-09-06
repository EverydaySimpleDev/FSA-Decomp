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
extern void* lbl_804AA350[];

extern "C" void* fn_802EE630(void* this_, short how) {
    if (this_) {
        *(void**)this_ = lbl_804AA350;
        void* h0 = *(void**)((char*)this_ + 0x230);
        if (h0) {
            fn_801EE434(h0);
        }
        void* h1 = *(void**)((char*)this_ + 0x234);
        if (h1) {
            fn_801EE434(h1);
        }
        void* h2 = *(void**)((char*)this_ + 0x238);
        if (h2) {
            fn_801EE434(h2);
        }
        void* h3 = *(void**)((char*)this_ + 0x23c);
        if (h3) {
            fn_801EE434(h3);
        }
        void* h4 = *(void**)((char*)this_ + 0x240);
        if (h4) {
            fn_801EE434(h4);
        }
        void* h5 = *(void**)((char*)this_ + 0x244);
        if (h5) {
            fn_801EE434(h5);
        }
        void* h6 = *(void**)((char*)this_ + 0x248);
        if (h6) {
            fn_801EE434(h6);
        }
        dtor_801F593C(this_, 0);
        if (how > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
