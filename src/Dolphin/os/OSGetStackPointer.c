#include <types.h>

//801639C8
void* OSGetStackPointer(void)
{
#ifdef __MWERKS__ // clang-format off
    asm {
        mr r3, r1
    }
#endif // clang-format on
}
