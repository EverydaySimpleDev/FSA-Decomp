#include "types.h"

// SENP cluster, part 4/4. setParams-like - extracts 3 bitfields from
// the spawn parameter (this->0x90) into this->0x234/0x238/0x23c, then
// makes a virtual call to this object's own vtable slot 5 (byte
// offset 0x14). See [[reference_fsa_virtual_dispatch_codegen_trick]]
// for why this calls through a real `virtual` member rather than a
// manual cast.
struct ActorSlot5 {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void slot5();
};

extern "C" void fn_802E416C(void* this_) {
    *(u32*)((char*)this_ + 0x234) = *(u32*)((char*)this_ + 0x90) & 0xFFF;
    *(u32*)((char*)this_ + 0x238) = (*(u32*)((char*)this_ + 0x90) >> 24) & 0x7;
    *(u8*)((char*)this_ + 0x23c) = (*(u32*)((char*)this_ + 0x90) >> 23) & 0x1;
    ((ActorSlot5*)this_)->slot5();
}
