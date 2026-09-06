#include "Dolphin/card.h"

//80180784
CARDDirectoryBlock* __CARDGetDirBlock(CARDControl* card) { return card->currentDir; }
