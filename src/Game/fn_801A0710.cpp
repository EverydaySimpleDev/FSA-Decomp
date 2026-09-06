typedef int s32;

extern "C" void fn_801A0910(void* this_);
extern "C" void fn_801A0754(void* this_);

// TENN (vtable lbl_804A2BF4, ctor fn_80201294) cluster, part 1/9.
// draw() dispatcher - calls 2 sub-pieces (fn_801A0754/fn_801A0910).
extern "C" void fn_801A0710(void* this_) {
    s32 state = *(s32*)((char*)this_ + 0x274);
    if (state == 0) {
        goto call0910;
    }
    if (state < 0) {
        goto skip;
    }
    if (state >= 3) {
        goto skip;
    }
    goto call0754;
call0910:
    fn_801A0910(this_);
    goto skip;
call0754:
    fn_801A0754(this_);
skip:
    return;
}
