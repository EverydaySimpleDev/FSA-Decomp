#include "types.h"

extern "C" void fn_80138B7C(void);
extern "C" void fn_80458508(void* this_, u8 mode);
extern "C" u8 fn_8022F514(s32 index);
extern "C" u8 fn_802372F8(s32 index, void* a, void* b);
extern "C" void ClearSessionFlag_0x6f(void);
extern "C" void dtor_801F593C(void* this_, int how);
extern "C" void dtor_80084580(void* this_);
extern void* lbl_804A2B18[];
extern void* lbl_8053AAF8[2];
extern void* lbl_8053AF80;

// SYKY cluster, part 9/10 (240B). Destructor - calls fn_80138B7C
// (confirmed boss-defeat/despawn notifier, from GOMA), ClearSessionFlag_0x6f,
// fn_8022F514, fn_802372F8, fn_80458508, then the shared base dtor
// dtor_801F593C plus a conditional second-base dtor dtor_80084580.
extern "C" void* Syky_dtor(void* this_, short how) {
    if (this_) {
        *(void**)this_ = lbl_804A2B18;
        if (*(s32*)((char*)this_ + 0x268) == 0) {
            s32 state = *(s32*)((char*)this_ + 0x230);
            if (state == 3 || state == 4) {
                ClearSessionFlag_0x6f();
                void* mgr = lbl_8053AAF8[0];
                if (*(s32*)((char*)mgr + 0x4c) != 9) {
                    fn_80138B7C();
                    fn_80458508(lbl_8053AF80, 0);
                }
                int i = 0;
                char* p = (char*)this_;
                do {
                    if (!fn_8022F514(i)) {
                        void* a = *(void**)(p + 0x26c);
                        void* b = *(void**)(p + 0x27c);
                        fn_802372F8(i, a, b);
                    }
                    i++;
                    p += 4;
                } while (i < 4);
            }
        }
        dtor_801F593C(this_, 0);
        if (how > 0) {
            dtor_80084580(this_);
        }
    }
    return this_;
}
