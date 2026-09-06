typedef int s32;

extern "C" s32 fn_8013D5D4(void* subObj);
extern "C" void fn_800C1EA4(void* subObj);

// fn_8013B4F8(this) - an "update all tracked sub-objects" style method:
// calls fn_8013D5D4(this->0x28) (sibling of fn_8013B4C0's fn_8013D5B0
// call) then fn_800C1EA4 on BOTH this->0x8 AND this->0xc - the same
// camera-pair fn_8013AB2C registers. Confirms this->0x8/0xc get
// touched by more than one method here, consistent with a per-frame
// refresh/update.
extern "C" void fn_8013B4F8(void* this_) {
    fn_8013D5D4(*(void**)((char*)this_ + 0x28));
    fn_800C1EA4(*(void**)((char*)this_ + 0x8));
    fn_800C1EA4(*(void**)((char*)this_ + 0xc));
}
