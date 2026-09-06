typedef unsigned char u8;

extern void* lbl_8053AAF8[2];

extern "C" void fn_803EDA2C(void* subObj);
extern "C" void fn_803FC46C(void* subObj);

// fn_803A8664 - actor@lbl_804AF860: vtable-slot function (0x40)
// Calls fn_803FC46C/fn_803EDA2C (same shared subsystem as
// fn_803A8600).
extern "C" void fn_803A8664(void* this_) {
    u8 flag = *(u8*)((char*)lbl_8053AAF8[0] + 0x7f);
    if (flag != 0) {
        fn_803EDA2C(*(void**)((char*)this_ + 0x4));
    } else {
        fn_803FC46C(*(void**)((char*)this_ + 0x8));
    }
}
