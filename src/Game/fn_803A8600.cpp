typedef int s32;
typedef unsigned char u8;

extern void* lbl_8053AAF8[2];

extern "C" void fn_803ED83C(void* subObj);
extern "C" void fn_803FC304(void* subObj);

// fn_803A8600 - actor@lbl_804AF860: vtable-slot function. Calls
// fn_803FC304/fn_803ED83C (both inside the still-unexamined 156KB
// non-actor stretch found earlier in this gap - confirms actors here
// do call into that shared subsystem).
extern "C" void fn_803A8600(void* this_) {
    u8 flag = *(u8*)((char*)lbl_8053AAF8[0] + 0x7f);
    if (flag != 0) {
        void* obj = *(void**)((char*)this_ + 0x4);
        fn_803ED83C(obj);
        obj = *(void**)((char*)this_ + 0x4);
        *(s32*)((char*)this_ + 0xc) = *(s32*)((char*)obj + 0x360);
    } else {
        void* obj = *(void**)((char*)this_ + 0x8);
        fn_803FC304(obj);
        obj = *(void**)((char*)this_ + 0x8);
        *(s32*)((char*)this_ + 0xc) = *(s32*)((char*)obj + 0x350);
    }
}
