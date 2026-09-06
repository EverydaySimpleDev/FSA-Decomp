typedef unsigned char u8;

extern "C" void fn_802FF798(void* subObj);
extern "C" void fn_8030E5BC(void* subObj);
extern "C" void fn_8013DDEC(void* subObj);
extern "C" void fn_8015945C(void* subObj);
extern "C" void fn_801601E0(void* subObj);

// fn_8013BE04(this) - a reset() method: calls a "reset" sibling on 5
// sub-objects (this->0x20 -> fn_802FF798, ->0x24 -> fn_8030E5BC, ->0x28
// -> fn_8013DDEC, ->0x2c -> fn_8015945C, ->0x30 -> fn_801601E0 - each a
// further sibling of that sub-object's already-seen method family),
// then clears both this->0x39 (the transition-active flag) and
// this->0x38 (the frame-counter fn_8013BBE0 checks against 0xff).
extern "C" void fn_8013BE04(void* this_) {
    fn_802FF798(*(void**)((char*)this_ + 0x20));
    fn_8030E5BC(*(void**)((char*)this_ + 0x24));
    fn_8013DDEC(*(void**)((char*)this_ + 0x28));
    fn_8015945C(*(void**)((char*)this_ + 0x2c));
    fn_801601E0(*(void**)((char*)this_ + 0x30));
    *(u8*)((char*)this_ + 0x39) = 0;
    *(u8*)((char*)this_ + 0x38) = 0;
}
