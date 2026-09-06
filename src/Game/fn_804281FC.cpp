#include "types.h"

// fn_804281FC + fn_8042828C + fn_80428294 - 3 helpers bundled.
// fn_804281FC(a,b,c,d): if fn_804286A0(a,b,c,d) succeeds, forwards a
// chained lookup (fn_8042828C(fn_80428294())) plus 4 offset-adjusted
// args to fn_804288A0, then calls fn_80428A88().
extern "C" u8 fn_804286A0(s32 a, s32 b, s32 c, s32 d);
extern "C" void* fn_80428294(void);
extern "C" s32 fn_8042828C(void* p);
extern "C" void fn_804288A0(s32 x, s32 a, s32 b, s32 c, s32 d);
extern "C" void fn_80428A88(void);

extern void* lbl_8053A980;
extern s32 lbl_8053AEA4;
extern s32 lbl_8053AEA8;
extern s32 lbl_8052BEC0[];

extern "C" void fn_804281FC(s32 a, s32 b, s32 c, s32 d) {
    if (fn_804286A0(a, b, c, d)) {
        fn_804288A0(fn_8042828C(fn_80428294()), lbl_8053AEA4 + a, lbl_8053AEA8 + b, lbl_8052BEC0[0] + c, lbl_8052BEC0[1] + d);
        fn_80428A88();
    }
}

extern "C" s32 fn_8042828C(void* p) {
    return *(s32*)((char*)p + 0x4);
}

extern "C" void* fn_80428294(void) {
    return lbl_8053A980;
}
