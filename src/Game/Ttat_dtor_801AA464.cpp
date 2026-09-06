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
extern "C" void fn_80138B7C(void);
extern void* lbl_804A2FB0[];
extern void* lbl_8053AAF8[2];
extern "C" s32 lbl_8053ABD0;

// TTAT cluster, part 7/9. Real destructor - culls a handle via the
// confirmed fn_801EE434, calls the boss-defeat notifier fn_80138B7C
// (from GOMA) when leaving the idle state (unless the global mode is
// already 9), decrements the global active-boss counter lbl_8053ABD0
// when leaving state 5, then the shared base dtor dtor_801F593C plus a
// conditional second-base dtor dtor_80084580.
extern "C" void* Ttat_dtor(void* this_, short how) {
    char* t = (char*)this_;
    if (this_) {
        *(void**)this_ = lbl_804A2FB0;
        fn_801EE434(*(void**)(t + 0x2b8));
        if (*(s32*)(t + 0x258) == 0) {
            void* mgr = lbl_8053AAF8[0];
            if (*(s32*)((char*)mgr + 0x4c) != 9) {
                fn_80138B7C();
            }
        }
        if (*(s32*)(t + 0x258) == 5) {
            lbl_8053ABD0 = lbl_8053ABD0 - 1;
        }
        dtor_801F593C(this_, 0);
        if (how > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
