#include "types.h"

// fn_8032D660(this) - RUPY's (Rupee) vtable slot override. Gated on
// this->0x94 (a halfword) being exactly 0x19 or 0x1a - likely a
// rupee-color/value subtype range. When in that range, makes a
// virtual call through its own vtable slot 13 (byte offset 0x34,
// shared with many other actors); if that call returns true, clears
// this->0x280 (a byte flag - plausibly "is still collectible/active",
// given RUPY's role as a pickup). See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
struct ActorSlot13 {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void v3();
    virtual void v4();
    virtual void v5();
    virtual void v6();
    virtual void v7();
    virtual void v8();
    virtual void v9();
    virtual void v10();
    virtual u8 slot13();
};

extern "C" void fn_8032D660(void* this_) {
    u16 subtype = *(u16*)((char*)this_ + 0x94);
    if (subtype == 0x19 || subtype == 0x1a) {
        if (((ActorSlot13*)this_)->slot13() != 0) {
            *(u8*)((char*)this_ + 0x280) = 0;
        }
    }
}
