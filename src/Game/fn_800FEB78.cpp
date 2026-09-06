typedef int s32;
typedef unsigned char u8;

extern "C" void fn_800FE8C0(void* this_);

// fn_800FEB78(this, opcode): a "SetOpcode" trigger for the same class as
// fn_800FE8C0 (the event-script player generalized from the
// rupee-container's fn_800FA6B0) - sets this->0x0=opcode, this->0x4=0xa
// (a sentinel guaranteed not to equal any real opcode, forcing
// fn_800FE8C0's state-change reset on its next call), and this->0xc=0,
// then calls fn_800FE8C0(this) once immediately.
extern "C" void fn_800FEB78(void* this_, s32 opcode) {
    *(s32*)((char*)this_ + 0x0) = opcode;
    *(s32*)((char*)this_ + 0x4) = 0xa;
    *(u8*)((char*)this_ + 0xc) = 0;
    fn_800FE8C0(this_);
}
