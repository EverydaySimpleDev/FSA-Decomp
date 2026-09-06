typedef int s32;
typedef unsigned char u8;

extern void* lbl_8053AB10;
extern void* lbl_8053AF80;
extern "C" void fn_80458880(void* obj, s32 a, s32 b);

// fn_803D66A8 - BFIN: helper. Decrements this->0x23c; resets a shared
// registry-owned sub-object's flag block (mgr->0x24) if its +0x7f5 gate
// byte is clear; once the countdown reaches 0, sets this->0x240=4,
// this->0x23c=0x82, this->0x230=5, and notifies via
// fn_80458880(lbl_8053AF80, 0x2d, -1).
extern "C" void fn_803D66A8(char* this_) {
    *(s32*)(this_ + 0x23c) -= 1;
    char* sub = *(char**)((char*)lbl_8053AB10 + 0x24);
    if (*(u8*)(sub + 0x7f5) == 0) {
        *(u8*)(sub + 0x7f4) = 1;
        *(s32*)(sub + 0x7f8) = -1;
        *(u8*)(sub + 0x7f6) = 0;
    }
    if (*(s32*)(this_ + 0x23c) <= 0) {
        *(u8*)(this_ + 0x240) = 4;
        *(s32*)(this_ + 0x23c) = 0x82;
        *(s32*)(this_ + 0x230) = 5;
        fn_80458880(lbl_8053AF80, 0x2d, -1);
    }
}
