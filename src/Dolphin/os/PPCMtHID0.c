#include <types.h>

//80161150
u32 PPCMfmsr(void)
{
#ifdef __MWERKS__ // clang-format off
    asm {
        mfmsr r3
    }
#endif // clang-format on
}

//80161158
void PPCMtmsr(register u32 value)
{
#ifdef __MWERKS__ // clang-format off
    asm {
        mtmsr value
    }
#endif // clang-format on
}

//80161160
u32 PPCMfhid0(void)
{
#ifdef __MWERKS__ // clang-format off
    asm {
        mfspr r3, HID0
    }
#endif // clang-format on
}

//80161168
void PPCMtHID0(register u32 value)
{
#ifdef __MWERKS__ // clang-format off
    asm {
        mtspr HID0, value
    }
#endif // clang-format on
}

//80161170
u32 PPCMfl2cr(void)
{
#ifdef __MWERKS__ // clang-format off
    asm {
        mfspr r3, L2CR
    }
#endif // clang-format on
}

//80161178
void PPCMtl2cr(register u32 value)
{
#ifdef __MWERKS__ // clang-format off
    asm {
        mtspr L2CR, value
    }
#endif // clang-format on
}

//80161180
void PPCMtdec(register u32 value)
{
#ifdef __MWERKS__ // clang-format off
    asm {
        mtdec value
    }
#endif // clang-format on
}
