#include "types.h"

extern "C" u8 fn_80388EEC(void* handle);

// fn_802F3BD8 - DMYK: conditional virtual-call wrapper. If
// fn_80388EEC(this->0x238) is truthy, calls own virtual slot 9 (byte
// offset 0x24). See [[reference_fsa_virtual_dispatch_codegen_trick]]
// for why this calls through a real `virtual` member rather than a
// manual cast.
struct ActorSlot9 {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void v3();
    virtual void v4();
    virtual void v5();
    virtual void v6();
    virtual void slot9();
};

extern "C" void fn_802F3BD8(void* this_) {
    void* handle = *(void**)((char*)this_ + 0x238);
    if ((u8)fn_80388EEC(handle) != 0) {
        ((ActorSlot9*)this_)->slot9();
    }
}
