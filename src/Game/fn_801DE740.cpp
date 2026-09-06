typedef int s32;
typedef unsigned char u8;

extern "C" u8 fn_801CD2F8(s32 owner);
extern "C" void* RusaRegistry_GetOrInit(void);
extern "C" void fn_80212AF0(void* registry, void* posPtr);

// TINK (vtable lbl_804A51E4). While this->0x248 (state) is 11 or 12,
// and this->0x4 (owner ID) is NOT in a "high room" (confirmed
// fn_801CD2F8 "room<8" idiom), applies the confirmed RUSA
// proximity-repel utility (RusaRegistry_GetOrInit +
// fn_80212AF0(registry, &this->0xc)) so TINK gets pushed away from
// nearby repel sources while in these states.
extern "C" void fn_801DE740(void* this_) {
    u8 flag = 0;
    s32 state = *(s32*)((char*)this_ + 0x248);
    switch (state) {
    case 0xb:
    case 0xc:
        flag = 1;
        break;
    }
    if (flag == 0) {
        return;
    }
    if (fn_801CD2F8(*(s32*)((char*)this_ + 0x4)) != 0) {
        return;
    }
    {
        void* registry = RusaRegistry_GetOrInit();
        fn_80212AF0(registry, (char*)this_ + 0xc);
    }
}
