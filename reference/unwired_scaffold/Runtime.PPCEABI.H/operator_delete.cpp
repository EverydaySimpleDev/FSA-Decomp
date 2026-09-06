#include <types.h>

extern "C" void free(void* ptr);

//80150EEC
void operator delete(void* ptr)
{
    if (ptr) {
        free(ptr);
    }
}
