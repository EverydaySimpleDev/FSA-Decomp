#include <types.h>

extern void (*__stdio_exit)(void);
extern void __close_all(void);

//80156878
void __stdio_atexit(void)
{
    __stdio_exit = __close_all;
}
