#include "Dolphin/os.h"

//80169F8C
void OSInitThreadQueue(OSThreadQueue* queue)
{
    *(void**)((char*)queue + 4) = 0;
    *(void**)((char*)queue + 0) = 0;
}

//80169F9C
OSThread* OSGetCurrentThread(void)
{
    return *(OSThread**)0x800000E4;
}
