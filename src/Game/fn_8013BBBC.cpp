typedef int s32;

extern "C" s32 fn_8013DC1C(void* subObj);

// fn_8013BBBC(this) - another thin forwarder to the this->0x28 family:
// fn_8013DC1C(this->0x28).
extern "C" s32 fn_8013BBBC(void* this_) {
    return fn_8013DC1C(*(void**)((char*)this_ + 0x28));
}
