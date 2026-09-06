//801631E4
void LCStoreBlocks(void* cacheAddr, void* memAddr, unsigned long numBlocks)
{
#ifdef __MWERKS__ // clang-format off
    asm {
        extrwi r6, r5, 5, 25
        clrlwi r3, r3, 4
        or r6, r6, r3
        mtspr DMA_U, r6
        clrlslwi r6, r5, 30, 2
        or r6, r6, r4
        ori r6, r6, 0x2
        mtspr DMA_L, r6
    }
#endif // clang-format on
}
