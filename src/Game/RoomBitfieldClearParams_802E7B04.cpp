#include "types.h"

extern "C" void* GetRoomConfigRecord(void);
extern "C" u8 fn_802D7544(void*, void*);

// fn_802E7B04 - MJGR: setParams. Extracts 4 bitfields from this->0x90
// into this->0x230/0x234/0x238/0x23c, calls GetRoomConfigRecord then
// fn_802D7544(this->0x16c); if that query returns true, clears
// 0x238/0x23c; finally calls own virtual slot 5 (byte offset 0x14,
// notify/draw call). See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
struct ActorSlot5 {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void slot5();
};

extern "C" void fn_802E7B04(void* this_) {
    *(u32*)((char*)this_ + 0x230) = *(u32*)((char*)this_ + 0x90) & 0xFFF;
    *(u32*)((char*)this_ + 0x234) = (*(u32*)((char*)this_ + 0x90) >> 12) & 0xFFF;
    *(u32*)((char*)this_ + 0x238) = (*(u32*)((char*)this_ + 0x90) >> 24) & 0x1;
    *(u32*)((char*)this_ + 0x23c) = (*(u32*)((char*)this_ + 0x90) >> 25) & 0x1;
    void* configRecord = GetRoomConfigRecord();
    if (fn_802D7544(configRecord, *(void**)((char*)this_ + 0x16c)) != 0) {
        *(u32*)((char*)this_ + 0x23c) = 0;
        *(u32*)((char*)this_ + 0x238) = 0;
    }
    ((ActorSlot5*)this_)->slot5();
}
