#include <id.h>

extern HSD_IDTable default_table;
extern HSD_ObjAllocData hsd_iddata;

static inline u32 hash(u32 id)
{
    return id % 0x65;
}

static inline void IDEntryFree(IDEntry* entry)
{
    HSD_ObjFree(&hsd_iddata, entry);
}

//801D2DD4
void HSD_IDRemoveByIDFromTable(HSD_IDTable* table, u32 id)
{
    IDEntry* entry;
    IDEntry* prev;

    if (table == NULL) {
        table = &default_table;
    }

    prev = NULL;
    for (entry = table->table[hash(id)]; entry != NULL; entry = entry->next) {
        if (entry->id == id) {
            if (prev != NULL) {
                prev->next = entry->next;
            } else {
                table->table[hash(id)] = entry->next;
            }
            IDEntryFree(entry);
            return;
        }
        prev = entry;
    }
}
