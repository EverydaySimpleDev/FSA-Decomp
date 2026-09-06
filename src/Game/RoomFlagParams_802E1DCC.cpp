#include "types.h"

extern "C" void* GetRoomConfigRecord(void);
extern "C" u8 fn_802D800C(void*, u32);

// fn_802E1DCC - OFFS cluster, part 4/4. Extracts 2 bitfields from
// this->0x90 into this->0x234/0x238; queries the per-room config via
// GetRoomConfigRecord + fn_802D800C(this->0x238), storing the boolean
// result into this->0x23c; zeroes this->0x230; calls own virtual
// slot 5 (byte offset 0x14, draw/notify passthrough). See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
struct ActorSlot5 {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void slot5();
};

extern "C" void fn_802E1DCC(void* this_) {
    *(u32*)((char*)this_ + 0x234) = *(u32*)((char*)this_ + 0x90) & 0x1F;
    *(u32*)((char*)this_ + 0x238) = (*(u32*)((char*)this_ + 0x90) >> 22) & 0x1F;
    void* configRecord = GetRoomConfigRecord();
    if (fn_802D800C(configRecord, *(u32*)((char*)this_ + 0x238)) != 0) {
        *(u8*)((char*)this_ + 0x23c) = 1;
    } else {
        *(u8*)((char*)this_ + 0x23c) = 0;
    }
    *(u32*)((char*)this_ + 0x230) = 0;
    ((ActorSlot5*)this_)->slot5();
}
