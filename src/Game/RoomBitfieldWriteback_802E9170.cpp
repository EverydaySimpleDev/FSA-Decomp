#include "types.h"

extern "C" void* GetRoomConfigRecord(void);
extern "C" u8 fn_802D800C(void*, u32);
extern "C" void fn_802D7F84(void*, u32, u32);

// fn_802E9170 - GLBS: setParams. Calls GetRoomConfigRecord then
// fn_802D800C with a bitfield extracted from this->0x90; if the query
// returns true, reads a value via own virtual slot 15 (byte offset
// 0x3c) and writes it back to the room config via GetRoomConfigRecord
// + fn_802D7F84(value, 1). See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
struct ActorSlot15 {
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
    virtual void v11();
    virtual void v12();
    virtual u32 slot15();
};

extern "C" void fn_802E9170(void* this_) {
    void* configRecord = GetRoomConfigRecord();
    u32 field = (*(u32*)((char*)this_ + 0x90) >> 22) & 0x1F;
    if ((u8)fn_802D800C(configRecord, field) != 0) {
        u32 val = ((ActorSlot15*)this_)->slot15();
        void* configRecord2 = GetRoomConfigRecord();
        fn_802D7F84(configRecord2, val, 1);
    }
}
