typedef int s32;
typedef unsigned int u32;

extern "C" void fn_801CE4BC(void* this_);
extern "C" void fn_801F0E34(void* target, u32 effectId, s32 flag);

extern "C" void fn_801DB560(void* this_) {
    char* p = (char*)this_;
    s32 before = *(s32*)(p + 0x280);
    fn_801CE4BC(this_);
    if (before == 8) {
        if (*(s32*)(p + 0x280) == 7) {
            fn_801F0E34(this_, 0x4005b, 0);
        }
    }
}
