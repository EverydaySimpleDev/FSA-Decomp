#include <types.h>

//80161188
void PPCSync(void)
{
#ifdef __MWERKS__ // clang-format off
    asm {
        sc
    }
#endif // clang-format on
}
