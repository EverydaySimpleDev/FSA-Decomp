#include "types.h"

// 901KB-gap non-actor manager block: 5 small "route to one of two
// device managers based on a global mode flag" functions, all
// consulting the confirmed global manager (lbl_8053AAF8->0x7f).
extern "C" s32 fn_8040F474(void* mgr);
extern "C" s32 fn_80414F6C(void* mgr);
extern "C" s32 fn_8040F480(s32 a);
extern "C" s32 fn_80416BD0(s32 a);
extern "C" s32 fn_804108B4(s32 a);
extern "C" s32 fn_804170B0(s32 a);
extern "C" void fn_804111C4(s32 a);
extern "C" s32 fn_80411230(s32 a);
extern "C" s32 fn_804170EC(s32 a);

extern void* lbl_8053AAF8[2];
extern u32 lbl_8053AD80;
extern s32 lbl_8053ADF8;
extern s32 lbl_8053AE00;

extern "C" s32 fn_8039003C(void) {
    if (lbl_8053AD80 != 0) {
        void* mgr = lbl_8053AAF8[0];
        if (*(u8*)((char*)mgr + 0x7f)) {
            return fn_8040F474(mgr);
        }
        return fn_80414F6C(mgr);
    }
    return 6;
}

extern "C" s32 fn_80390088(void) {
    if (*(u8*)((char*)lbl_8053AAF8[0] + 0x7f)) {
        return fn_8040F480(lbl_8053ADF8);
    }
    return fn_80416BD0(lbl_8053AE00);
}

extern "C" s32 fn_803900C8(void) {
    if (*(u8*)((char*)lbl_8053AAF8[0] + 0x7f)) {
        return fn_804108B4(lbl_8053ADF8);
    }
    return fn_804170B0(lbl_8053AE00);
}

extern "C" void fn_80390108(void) {
    if (*(u8*)((char*)lbl_8053AAF8[0] + 0x7f)) {
        fn_804111C4(lbl_8053ADF8);
    }
}

extern "C" s32 fn_8039013C(void) {
    if (*(u8*)((char*)lbl_8053AAF8[0] + 0x7f)) {
        return fn_80411230(lbl_8053ADF8);
    }
    return fn_804170EC(lbl_8053AE00);
}
