#include <types.h>

extern int lbl_8065B380[2];

//80150664
int ddh_cc_shutdown(void) { return 0; }

//80150640
int ddh_cc_open(void)
{
    if (lbl_8065B380[0] != 0) {
        return -0x2715;
    }
    lbl_8065B380[0] = 1;
    return 0;
}

//80150638
int ddh_cc_close(void) { return 0; }
