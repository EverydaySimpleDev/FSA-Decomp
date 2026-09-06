#include <types.h>

extern int THPSimpleGetCurrentFrame(void);
extern u32 TRKCloseFile(u32 channel, u32 fd);

//8015016C
int __close_console(int fd)
{
    if (THPSimpleGetCurrentFrame() == 0)
    {
        return 1;
    }
    switch ((u8)TRKCloseFile(0xd3, fd))
    {
        case 0:
            return 0;
        case 2:
            return 2;
        default:
            return 1;
    }
}
