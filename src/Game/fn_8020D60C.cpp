#include "types.h"

// fn_8020D60C(this) - ctor: constructs an 80-element, 24-byte-per-
// element array at this+4 (elements default-ctor'd via the trivial
// fn_8020D65C no-op), then resets this->0x0=0.
// fn_8020D65C(this) - trivial no-op element ctor (empty body).
// fn_8020D660(this) - toggles this->0x0/0x1 (both single bytes), then
// zeroes a u32 field (+4) inside the array slot indexed by the NEW
// this->0x0 value (slot stride 0x784).
// fn_8020D690(this) - resets this->0x0=0, this->0x1=1, this->0x4=0,
// this->0x788=0.
extern "C" void __construct_array(void* arr, void* ctor, s32 unused, u32 elemSize, u32 count);
extern "C" void fn_8020D65C(void* this_);

extern "C" void* fn_8020D60C(void* this_) {
    __construct_array((char*)this_ + 0x4, (void*)fn_8020D65C, 0, 0x18, 0x50);
    *(u32*)this_ = 0;
    return this_;
}

extern "C" void fn_8020D65C(void* this_) {
}

extern "C" void fn_8020D660(void* this_) {
    char* t = (char*)this_;
    *(u8*)(t + 0x0) ^= 1;
    *(u8*)(t + 0x1) ^= 1;
    *(u32*)(t + *(u8*)(t + 0x0) * 0x784 + 0x4) = 0;
}

extern "C" void fn_8020D690(void* this_) {
    char* t = (char*)this_;
    *(u8*)(t + 0x0) = 0;
    *(u8*)(t + 0x1) = 1;
    *(u32*)(t + 0x4) = 0;
    *(u32*)(t + 0x788) = 0;
}
