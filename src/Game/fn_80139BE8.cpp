typedef int s32;
typedef unsigned char u8;

extern void* lbl_8053AB10;

extern "C" void fn_801F857C(void* actorPoolBase);
extern u8 lbl_8053ACD0;
extern "C" void fn_8030361C(void);
extern "C" void fn_8038D454(void);
extern "C" s32 fn_8011921C(void);
extern "C" void fn_801184F0(s32 arg, s32 flag);

// fn_80139BE8(this) - a "reset/release" method for a new class the
// Scene Manager repeatedly references as this->0x4 (its own field) -
// releases a registry entry via fn_801F857C(this->0x8), clears global
// flag lbl_8053ACD0, calls fn_8030361C/fn_8038D454/fn_8011921C then
// fn_801184F0(result, 1), and clears 4 consecutive bytes (offsets
// 0x235c-0x235f) on the CONFIRMED camera/cutscene manager's own +0x20
// sub-object - a small per-caller state/flags reset on that shared
// component.
extern "C" void fn_80139BE8(void* this_) {
    fn_801F857C(*(void**)((char*)this_ + 0x8));
    lbl_8053ACD0 = 0;
    fn_8030361C();
    fn_8038D454();
    s32 result = fn_8011921C();
    fn_801184F0(result, 1);
    *(u8*)((char*)(*(void**)((char*)lbl_8053AB10 + 0x20)) + 0x235c) = 0;
    *(u8*)((char*)(*(void**)((char*)lbl_8053AB10 + 0x20)) + 0x235d) = 0;
    *(u8*)((char*)(*(void**)((char*)lbl_8053AB10 + 0x20)) + 0x235e) = 0;
    *(u8*)((char*)(*(void**)((char*)lbl_8053AB10 + 0x20)) + 0x235f) = 0;
}
