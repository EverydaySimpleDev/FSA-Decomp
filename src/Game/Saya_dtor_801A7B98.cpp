#include "types.h"

extern "C" void fn_80138B7C(void);
extern "C" void fn_80458508(void* this_, u8 mode);
extern "C" void ClearSessionFlag_0x6e(void);
extern "C" void dtor_801F593C(void* this_, int how);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804A2E30[];
extern void* lbl_8053AAF8[2];
extern void* lbl_8053AF80;

// SAYA cluster, part 16/18 (176B). Destructor - calls the boss-defeat
// notifier fn_80138B7C, ClearSessionFlag_0x6e, fn_80458508, then the shared
// base dtor dtor_801F593C plus a conditional second-base dtor
// dtor_80084580.
extern "C" void* Saya_dtor(void* this_, short how) {
    if (this_) {
        *(void**)this_ = lbl_804A2E30;
        s32 flag = *(s32*)((char*)this_ + 0x260);
        if (flag == 0 || flag == 1) {
            s32 state = *(s32*)((char*)this_ + 0x230);
            if (state == 4 || state == 5) {
                ClearSessionFlag_0x6e();
                void* mgr = lbl_8053AAF8[0];
                if (*(s32*)((char*)mgr + 0x4c) != 9) {
                    fn_80138B7C();
                    fn_80458508(lbl_8053AF80, 0);
                }
            }
        }
        dtor_801F593C(this_, 0);
        if (how > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
