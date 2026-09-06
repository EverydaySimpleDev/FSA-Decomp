typedef int s32;

extern "C" s32 fn_8013D5B0(void* subObj);
extern "C" void fn_802FF548(void* subObj);

// fn_8013B4C0(this) - calls fn_8013D5B0(this->0x28) (a 6th sub-object,
// forward-referenced) then fn_802FF548(this->0x20) (a 7th sub-object,
// external).
extern "C" void fn_8013B4C0(void* this_) {
    fn_8013D5B0(*(void**)((char*)this_ + 0x28));
    fn_802FF548(*(void**)((char*)this_ + 0x20));
}
