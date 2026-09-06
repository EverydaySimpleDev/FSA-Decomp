typedef int s32;

extern "C" void fn_801D1C18(void* subObj);

extern "C" void fn_801D5338(void* this_) {
    s32 state = *(s32*)((char*)this_ + 0x248);
    if (state == 0xb) {
        goto skip;
    }
    if (state < 0xb) {
        if (state >= 8) {
            goto call;
        }
        if (state >= 6) {
            goto skip;
        }
        goto call;
    } else {
        if (state >= 0x1b) {
            goto call;
        }
        if (state >= 0x17) {
            goto skip;
        }
        goto call;
    }
call:
    fn_801D1C18((char*)this_ + 0x270);
skip:
    return;
}
