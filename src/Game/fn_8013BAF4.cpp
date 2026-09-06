typedef int s32;

extern "C" s32 fn_8013DB2C(void* subObj);

// fn_8013BAF4(this) - another thin forwarder to the this->0x28
// sub-object family: fn_8013DB2C(this->0x28).
extern "C" s32 fn_8013BAF4(void* this_) {
    return fn_8013DB2C(*(void**)((char*)this_ + 0x28));
}
