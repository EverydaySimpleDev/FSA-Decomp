typedef int s32;
typedef unsigned char u8;

extern "C" void* Hrmn_InitSlotStateType3(void* obj);
extern "C" void* Hrmn_ActivateSlotB(void* obj);
extern "C" void* Hrmn_ActivateSlotA(void* obj);

// fn_80216238 - the per-element constructor for HRMN's fn_80216178 array
// (see extab_80216178.s). Initializes an element containing TWO nested
// "cyclic counter" sub-records back to back: this->0x0 (own 2 fields,
// 0/-1) and this->0xc (a Hrmn_InitSlotStateType3-family record,
// redundantly initialized twice - the FIRST init at +0xc is immediately
// followed by a second at +0x18 with a DIFFERENT record type
// (Hrmn_ActivateSlotB, then finally Hrmn_ActivateSlotA) - the last
// write to each address is the one that persists). Also zeroes
// this->0x8/0x9/0xa.
extern "C" void* fn_80216238(char* this_) {
    Hrmn_InitSlotStateType3(this_ + 0xc);
    *(u8*)(this_ + 0x8) = 0;
    *(u8*)(this_ + 0x9) = 0;
    *(u8*)(this_ + 0xa) = 0;
    Hrmn_InitSlotStateType3(this_ + 0xc);
    Hrmn_ActivateSlotB(this_ + 0x18);
    *(s32*)(this_ + 0x0) = 0;
    *(s32*)(this_ + 0x4) = -1;
    *(u8*)(this_ + 0x8) = 0;
    *(u8*)(this_ + 0x9) = 0;
    *(u8*)(this_ + 0xa) = 0;
    Hrmn_InitSlotStateType3(this_ + 0xc);
    Hrmn_ActivateSlotA(this_ + 0x18);
    return this_;
}
