typedef int s32;
typedef unsigned char u8;

extern "C" void* GetRoomConfigRecord(void);
extern "C" void fn_802D766C(void* config, u8 spawnCode, s32 owner);
extern "C" void fn_802D7704(void* config, s32 trackedId, u8 spawnCode, s32 owner);

// fn_801F3668(this) - option B follow-up: NAVI's "special-case" hook
// from her setParams. HIDES this actor (clears this->0x11c, the
// CONFIRMED visibility flag) then either REGISTERS or RE-REGISTERS it
// into a config-record-based tracking system: if this->0x16c is still
// -1 (not yet tracked), calls GetRoomConfigRecord() then
// fn_802D766C(config, this->0x1a8, this->0x4) - register-by-spawn-code
// + owner. If ALREADY tracked (this->0x16c != -1), instead calls
// fn_802D7704(config, this->0x1a8, this->0x16c, this->0x4) - an
// update/re-register variant taking the existing tracked ID too.
extern "C" void fn_801F3668(void* this_) {
    *(u8*)((char*)this_ + 0x11c) = 0;
    s32 trackedId = *(s32*)((char*)this_ + 0x16c);
    if (trackedId != -1) {
        void* config = GetRoomConfigRecord();
        u8 spawnCode = *(u8*)((char*)this_ + 0x1a8);
        s32 owner = *(s32*)((char*)this_ + 0x4);
        fn_802D7704(config, trackedId, spawnCode, owner);
    } else {
        void* config = GetRoomConfigRecord();
        u8 spawnCode = *(u8*)((char*)this_ + 0x1a8);
        s32 owner = *(s32*)((char*)this_ + 0x4);
        fn_802D766C(config, spawnCode, owner);
    }
}
