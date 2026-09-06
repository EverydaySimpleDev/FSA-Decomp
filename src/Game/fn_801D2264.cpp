typedef int s32;

extern "C" void fn_801D22DC(void* this_, s32 seqIndex, s32 mode, s32 evalNow);

extern "C" s32 fn_801D2264(void* this_, s32 seqIndex, s32 mode) {
    s32 result = 0;
    if (*(s32*)((char*)this_ + 0x8) != seqIndex) {
        fn_801D22DC(this_, seqIndex, mode, 1);
        result = 1;
    }
    return result;
}
