typedef int s32;
typedef unsigned char u8;

extern void* lbl_8053AAF8[2];
extern void* lbl_8053AF80;

extern "C" void fn_80134FBC(void* mgr, s32 flag);
extern "C" s32 fn_80458658(void* obj, s32 flag);

// fn_802ED2BC - STPN: update(). Checks the global active-player flag
// (lbl_8053AAF8->0x7e); if set, seeds a countdown (this->0x230=0x64)
// and notifies via fn_80134FBC(lbl_8053AAF8, 1) +
// fn_80458658(lbl_8053AF80, 1); otherwise clears flag byte
// this->0x11c.
extern "C" void fn_802ED2BC(void* this_) {
    u8 flag = *(u8*)((char*)lbl_8053AAF8[0] + 0x7e);
    if (flag == 0) {
        *(s32*)((char*)this_ + 0x230) = 0x64;
        fn_80134FBC(lbl_8053AAF8[0], 1);
        fn_80458658(lbl_8053AF80, 1);
    } else {
        *(u8*)((char*)this_ + 0x11c) = 0;
    }
}
