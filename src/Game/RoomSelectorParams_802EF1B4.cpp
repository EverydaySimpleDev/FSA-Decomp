#include "types.h"

extern "C" void* GetRoomConfigRecord(void);
extern "C" u32 fn_802D7870(void*, u32);

// fn_802EF1B4 - AGBW: setParams. Extracts a 5-bit selector into
// this->0x234 and a 12-bit value into this->0x238 from this->0x90;
// queries the per-room config via GetRoomConfigRecord + fn_802D7870
// (this->0x234); zeroes this->0x230/0x23c; calls own virtual slot 5
// (byte offset 0x14, draw/notify passthrough). See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
struct ActorSlot5 {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void slot5();
};

extern "C" void fn_802EF1B4(void* this_) {
    *(u32*)((char*)this_ + 0x234) = (*(u32*)((char*)this_ + 0x90) >> 22) & 0x1F;
    *(u32*)((char*)this_ + 0x238) = *(u32*)((char*)this_ + 0x90) & 0xFFF;
    void* configRecord = GetRoomConfigRecord();
    fn_802D7870(configRecord, *(u32*)((char*)this_ + 0x234) & 0xFFFF);
    *(u32*)((char*)this_ + 0x230) = 0;
    *(u32*)((char*)this_ + 0x23c) = 0;
    ((ActorSlot5*)this_)->slot5();
}
