#include "types.h"

extern "C" void fn_8022AF2C(void);
extern "C" void fn_80138B7C(void);
extern "C" void fn_80458508(void* this_, u8 mode);
extern "C" void fn_801EE434(void* handle);
extern "C" void dtor_801F593C(void* this_, int how);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804A2BF4[];
extern void* lbl_8053AAF8[2];
extern void* lbl_8053AF80;

// TENN cluster, part 8/9 (216B). Destructor - culls a handle via the
// confirmed fn_801EE434, calls the boss-defeat notifier fn_80138B7C,
// fn_8022AF2C, fn_80458508, then the shared base dtor dtor_801F593C
// plus a conditional second-base dtor dtor_80084580.
extern "C" void* Tenn_dtor(void* this_, short how) {
    if (this_) {
        *(void**)this_ = lbl_804A2BF4;
        if (*(s32*)((char*)this_ + 0x274) == 0) {
            s32 state = *(s32*)((char*)this_ + 0x230);
            if (state == 5 || state == 6) {
                fn_8022AF2C();
                void* mgr = lbl_8053AAF8[0];
                if (*(s32*)((char*)mgr + 0x4c) != 9) {
                    fn_80138B7C();
                    fn_80458508(lbl_8053AF80, 0);
                }
            }
        }
        char* p;
        int i;
        i = 0;
        p = (char*)this_;
        do {
            void* h = *(void**)(p + 0x344);
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
