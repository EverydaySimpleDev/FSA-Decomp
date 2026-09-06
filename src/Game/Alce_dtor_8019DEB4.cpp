#include "types.h"

extern "C" void fn_801EE434(void* handle);
extern "C" void fn_8022ADCC(void);
extern "C" void fn_80134FC4(void* mgr, s32 mode);
extern "C" void fn_8037AE30(void* a);
extern "C" void dtor_801F593C(void* this_, int how);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804A2AB0[];
extern void* lbl_8053AAF8[2];
extern void* lbl_8053AD70;
extern u8 lbl_8053ABB0;

// ALCE cluster, part 5/6 (200B). Destructor - culls a handle via the
// confirmed fn_801EE434, calls fn_8022ADCC/fn_8037AE30, then the shared
// base dtor dtor_801F593C plus a conditional second-base dtor
// dtor_80084580 (same multiple-inheritance pattern seen throughout this
// gap).
extern "C" void* Alce_dtor(void* this_, short how) {
    if (this_) {
        *(void**)this_ = lbl_804A2AB0;
        char* p = (char*)this_;
        int i;
        i = 0;
        do {
            void* h = *(void**)(p + 0x260);
            fn_801EE434(h);
            i++;
            p += 4;
        } while (i < 2);
        if (*(s32*)((char*)this_ + 0x248) == 1) {
            fn_8022ADCC();
            *(s32*)((char*)this_ + 0x248) = 0;
            void* mgr = lbl_8053AAF8[0];
            fn_80134FC4(mgr, 0);
            lbl_8053ABB0 = 0;
            fn_8037AE30(lbl_8053AD70);
        }
        dtor_801F593C(this_, 0);
        if (how > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
