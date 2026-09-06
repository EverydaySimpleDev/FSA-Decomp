#include "types.h"

extern "C" void* GetRoomConfigRecord(void);
extern "C" u8 fn_802D7F40(void*, u32);

// fn_802E8E60 - LCLS: setParams. Calls GetRoomConfigRecord then
// fn_802D7F40 with a bitfield extracted from this->0x90; if the query
// returns true, notifies via own virtual slot 12 (byte offset 0x30)
// with args (0xff, 1). See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
struct ActorSlot12 {
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
    virtual void slot12(u32 a, u32 b);
};

extern "C" void fn_802E8E60(void* this_) {
    void* configRecord = GetRoomConfigRecord();
    u32 field = (*(u32*)((char*)this_ + 0x90) >> 22) & 0x1F;
    if ((u8)fn_802D7F40(configRecord, field) != 0) {
        ((ActorSlot12*)this_)->slot12(0xff, 1);
    }
}
