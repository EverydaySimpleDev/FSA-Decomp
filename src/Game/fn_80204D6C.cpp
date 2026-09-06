typedef int s32;

extern void* lbl_8053AB10;

extern "C" void fn_8030C210(void* mgr, void* posPtr);

// NEW ACTOR (vtable lbl_804A5A30, ctor fn_80206758) - not yet
// identified by name. Shares the base-Actor field layout family.
// Unless state 8/9, triggers an effect via the confirmed
// fn_8030C210(manager->0x24, &this->0xc) - the same level-manager
// effect trigger used by TINK, the orbit-attacker, and the
// boss-registrant actors.
extern "C" void fn_80204D6C(void* this_) {
    s32 state = *(s32*)((char*)this_ + 0x248);
    if (state != 9 && state != 8) {
        fn_8030C210(*(void**)((char*)lbl_8053AB10 + 0x24), (char*)this_ + 0xc);
    }
}
