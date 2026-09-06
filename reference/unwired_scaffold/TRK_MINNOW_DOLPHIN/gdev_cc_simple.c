#include <types.h>

extern int lbl_8065B388;

//80150C18
int gdev_cc_shutdown(void) { return 0; }

//80150BF4
int gdev_cc_open(void)
{
    if (lbl_8065B388 != 0) {
        return -0x2715;
    }
    lbl_8065B388 = 1;
    return 0;
}

//80150BEC
int gdev_cc_close(void) { return 0; }
