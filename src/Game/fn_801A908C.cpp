typedef int s32;

extern "C" void fn_801A90D4(void* this_);
extern "C" void fn_801A9374(void* this_);

// TTAT (vtable lbl_804A2FB0, ctor fn_80200D10, GOMA's direct neighbor -
// see project_fsa_goma_actor_progress.md) cluster, part 1/9. draw()
// dispatcher - calls 2 sub-pieces (fn_801A90D4/fn_801A9374).
extern "C" void fn_801A908C(void* this_) {
    s32 state = *(s32*)((char*)this_ + 0x258);
    if (state == 5) {
        goto piece0;
    }
    if (state >= 5) {
        goto skip;
    }
    if (state == 0) {
        goto piece0;
    }
    if (state >= 0) {
        goto piece1;
    }
    goto skip;
piece0:
    fn_801A90D4(this_);
    goto skip;
piece1:
    fn_801A9374(this_);
skip:
    return;
}
