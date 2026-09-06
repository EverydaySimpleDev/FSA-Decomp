typedef int s32;

extern "C" void fn_801CE0A4(void* this_);
extern "C" void fn_8013CB44(s32 handle, void* posPtr, s32 a, s32 b, s32 c);

// fn_801DB51C(this) - calls fn_801CE0A4(this) then
// fn_8013CB44(this->0x2e4, this+0xc, 1, 0, 1) - the CONFIRMED "update
// attached effect handle position" call (see fn_801D7BA0), confirming
// this->0x2e4 is another attached effect handle for this same class
// (uses the 0x2b4-0x2e4 field range this session's fn_801DB2C8/
// fn_801DB3F0 also touch).
extern "C" void fn_801DB51C(void* this_) {
    fn_801CE0A4(this_);
    fn_8013CB44(*(s32*)((char*)this_ + 0x2e4), (char*)this_ + 0xc, 1, 0, 1);
}
