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
extern void* lbl_804A39DC[];

// GLWP cluster, part 3/5 (148B). Destructor - culls 4 handles (this+0x294,
// +4 each) via the confirmed fn_801EE434, then the shared base dtor
// dtor_801F593C plus a conditional second-base dtor dtor_80084580.
extern "C" void* Glwp_dtor(void* this_, short how) {
    if (this_) {
        *(void**)this_ = lbl_804A39DC;
        char* p = (char*)this_;
        int i = 0;
        do {
            void* h = *(void**)(p + 0x294);
            fn_801EE434(h);
            i++;
            p += 4;
        } while (i < 4);
        dtor_801F593C(this_, 0);
        if (how > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
