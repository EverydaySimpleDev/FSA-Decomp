typedef int s32;
typedef unsigned int u32;

extern "C" void fn_801F0E34(void* target, u32 effectId, s32 flag);

extern "C" void fn_800F89FC(void* this_) {
    *(s32*)((char*)this_ + 0x234) = 2;
    fn_801F0E34(this_, 0x50084, 0);
}
