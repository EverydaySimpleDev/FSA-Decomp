#include "types.h"

extern void* lbl_8053AB10;
extern "C" void fn_8013B438(void* mgr);
extern "C" void fn_8023F2BC(void);
extern "C" void fn_801F8658(void* actorPool);
extern "C" void fn_801902D0(void* param);
extern "C" void fn_8016DA6C(void* param);

// fn_80139CC4(this) - this class's per-frame update: calls
// fn_8013B438(cutsceneManager) both before AND after a real virtual
// call through this->0xc's own vtable (slot 5), then fn_8023F2BC(),
// fn_801F8658(this->0x8) (a registry-release-family call, matches
// fn_80139BE8's fn_801F857C on the same field), fn_801902D0(this->
// 0x20), and - if the cutscene manager's own byte +0x39 is 0 -
// fn_8016DA6C(this->0x24) (a "start" call). See
// [[reference_fsa_virtual_dispatch_codegen_trick]] for why this calls
// through a real `virtual` member rather than a manual cast.
struct ActorSlot5 {
    virtual void v0();
    virtual void v1();
    virtual void v2();
    virtual void slot5();
};

extern "C" void fn_80139CC4(void* this_) {
    fn_8013B438(lbl_8053AB10);
    ((ActorSlot5*)*(void**)((char*)this_ + 0xc))->slot5();
    fn_8013B438(lbl_8053AB10);
    fn_8023F2BC();
    fn_801F8658(*(void**)((char*)this_ + 8));
    fn_801902D0(*(void**)((char*)this_ + 0x20));
    if (*(u8*)((char*)lbl_8053AB10 + 0x39) == 0) {
        fn_8016DA6C(*(void**)((char*)this_ + 0x24));
    }
}
