#include "TRK_MINNOW_DOLPHIN/Os/dolphin/dolphin_trk_glue.h"

extern DBCommTable gDBCommTable;

typedef int (*NoArgFunc)(void);

//8014FDB0
int TRKCommReadDispatch(void)
{
    return ((NoArgFunc)gDBCommTable.read_func)();
}
