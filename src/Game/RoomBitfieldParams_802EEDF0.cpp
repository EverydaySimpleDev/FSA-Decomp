#include "types.h"

// fn_802EEDF0 - CHSW: setParams. Extracts 6 bitfields from this->0x90
// into this->0x238/0x23c/0x23d/0x23e/0x240/0x242, zeroes this->0x230,
// then calls own virtual slot 13 (byte offset 0x34, room-config gate)
// and stores the result at this->0x234. See
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

extern "C" void fn_802EEDF0(void* this_) {
    u32 sp = *(u32*)((char*)this_ + 0x90);
    *(u32*)((char*)this_ + 0x238) = sp & 0x1FFFF;
    sp = *(u32*)((char*)this_ + 0x90);
    *(u8*)((char*)this_ + 0x23c) = (sp >> 17) & 0x1;
    sp = *(u32*)((char*)this_ + 0x90);
    *(u8*)((char*)this_ + 0x23d) = (sp >> 18) & 0x3;
    sp = *(u32*)((char*)this_ + 0x90);
    *(u8*)((char*)this_ + 0x23e) = (sp >> 20) & 0x3;
    sp = *(u32*)((char*)this_ + 0x90);
    *(u16*)((char*)this_ + 0x240) = (sp >> 22) & 0x1F;
    sp = *(u32*)((char*)this_ + 0x90);
    *(u16*)((char*)this_ + 0x242) = sp >> 27;
    *(u32*)((char*)this_ + 0x230) = 0;
    u8 result = ((ActorSlot13*)this_)->slot13();
    *(u8*)((char*)this_ + 0x234) = result;
}
