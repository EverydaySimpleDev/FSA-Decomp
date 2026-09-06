typedef int s32;
typedef unsigned int u32;

extern "C" void* fn_801C0D70(void* this_);
extern "C" void fn_801C1374(void* subRecord, s32 flag);
extern "C" void fn_801F4F28(void* this_);

extern "C" void fn_801C27F0(void* this_) {
    s32 flag = (*(u32*)((char*)this_ + 0x230) >> 27) & 1;
    void* subRecord = fn_801C0D70(this_);
    fn_801C1374(subRecord, flag);
    fn_801F4F28(this_);
}
