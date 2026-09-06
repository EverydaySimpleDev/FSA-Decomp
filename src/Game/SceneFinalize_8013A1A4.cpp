#include "types.h"

// fn_8013A1A4(this) - the "END/finalize" counterpart to fn_80139BE8's
// "reset/start": calls fn_8016EDB0(this->0x24), fn_801F8E4C(this->0x8)
// (registry-release family), a real virtual call through this->0xc's
// own vtable (slot 1, byte offset 0xc), conditionally fn_8023F088()
// if the current scene manager's ->0x7e is 1, fn_8023F78C()/
// fn_8023F728(), and sets the same global flag lbl_8053ACD0 to 1.
// Then runs "finalize" calls on this->0x10/0x14/0x18/0x1c/0x20 and
// fn_8038D870(), zeroes this->0x34, and resets several boot-config
// fields (byte ->0x240, halfwords ->0x1f4/0x1f6/0x1f8/0x1fa), calls
// Table_GetSelfIndexedByte86() storing the result into
// boot-config->0x24f, and zeroes boot-config->0x253. See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why the vtable
// call goes through a real `virtual` member rather than a manual
// cast.
extern "C" void fn_8016EDB0(void* p);
extern "C" void fn_801F8E4C(void* p);
extern void* lbl_8053AAF8[2];
extern "C" void fn_8023F088(void);
extern "C" void fn_8023F78C(void);
extern "C" void fn_8023F728(void);
extern u8 lbl_8053ACD0;
extern "C" void fn_802A3D80(void* p);
extern "C" void fn_8043EDF8(void* p);
extern "C" void fn_80439AB0(void* p);
extern "C" void fn_8037AFC0(void* p);
extern "C" void fn_8019169C(void* p);
extern "C" void fn_8038D870(void);
extern u8 lbl_80529DEC[];
extern "C" u8 Table_GetSelfIndexedByte86(void);

struct Slot1 {
    virtual void v0();
    virtual void slot1();
};

extern "C" void fn_8013A1A4(void* this_) {
    fn_8016EDB0(*(void**)((char*)this_ + 0x24));
    fn_801F8E4C(*(void**)((char*)this_ + 0x8));
    void* obj = *(void**)((char*)this_ + 0xc);
    ((Slot1*)obj)->slot1();
    void* mgr = lbl_8053AAF8[0];
    if (*(u8*)((char*)mgr + 0x7e) == 1) {
        fn_8023F088();
    }
    fn_8023F78C();
    fn_8023F728();
    lbl_8053ACD0 = 1;
    fn_802A3D80(*(void**)((char*)this_ + 0x10));
    fn_8043EDF8(*(void**)((char*)this_ + 0x14));
    fn_80439AB0(*(void**)((char*)this_ + 0x18));
    fn_8037AFC0(*(void**)((char*)this_ + 0x1c));
    fn_8019169C(*(void**)((char*)this_ + 0x20));
    fn_8038D870();
    *(u32*)((char*)this_ + 0x34) = 0;
    lbl_80529DEC[0x240] = 0;
    *(u16*)(lbl_80529DEC + 0x1f4) = 0;
    *(u16*)(lbl_80529DEC + 0x1f6) = 0;
    *(u16*)(lbl_80529DEC + 0x1f8) = 0;
    *(u16*)(lbl_80529DEC + 0x1fa) = 0;
    u8 idx = Table_GetSelfIndexedByte86();
    lbl_80529DEC[0x24f] = idx;
    lbl_80529DEC[0x253] = 0;
}
