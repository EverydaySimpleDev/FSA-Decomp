typedef int s32;
typedef unsigned char u8;

extern "C" void fn_8021BD18(void* subObj, s32 arg);

// fn_801D789C(child) - the per-slot INIT for dtor_801D46FC's 4-slot
// 0x18-byte "child" array (this+0x2a8, see extab_801d686c.s): zeroes
// child->0x0/0x4/0x8, then calls fn_8021BD18(child+0xc, 2) - the SAME
// call the fn_801D6A88 placement-construct callback already makes,
// confirming every child record's +0xc sub-object genuinely gets
// double-initialized in the retail binary (called once via
// __construct_array's callback, once via this function's own direct
// per-slot loop in the constructor) - not a decomp artifact.
extern "C" void fn_801D789C(void* child) {
    *(u8*)((char*)child + 0x0) = 0;
    *(s32*)((char*)child + 0x4) = 0;
    *(s32*)((char*)child + 0x8) = 0;
    fn_8021BD18((char*)child + 0xc, 2);
}
