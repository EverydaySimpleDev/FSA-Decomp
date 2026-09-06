#include <types.h>

extern void MWTRACE(int type, ...);
extern int fn_8018D41C(void* data, int length);
extern int lbl_8065B380[2];
extern char lbl_8020D7C8[0x5C];

//8015048C
int ddh_cc_write(u8* data, int length)
{
    char* table = lbl_8020D7C8;
    int n_copy;
    u8* copy;
    int n;

    n_copy = length;
    copy = data;

    if (lbl_8065B380[0] == 0) {
        MWTRACE(8, table + 0x0);
        return -0x2711;
    }

    MWTRACE(8, table + 0x14, data, length);

    while (n_copy > 0) {
        MWTRACE(1, table + 0x40, n_copy);
        n = fn_8018D41C(copy, n_copy);
        if (n == 0) {
            break;
        }
        copy += n;
        n_copy -= n;
    }

    return 0;
}
