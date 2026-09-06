#include <id.h>
#include <string.h>

extern HSD_IDTable default_table;
extern HSD_ObjAllocData hsd_iddata;
extern char lbl_8065AF98[8];
extern char lbl_8065AFA0[8];

static inline u32 hash(u32 id)
{
    return id % 0x65;
}

static inline IDEntry* IDEntryAlloc(void)
{
    IDEntry* entry;

    entry = HSD_ObjAlloc(&hsd_iddata);
    if (entry == NULL) {
        __assert(lbl_8065AF98, 0x43, lbl_8065AFA0);
    }
    memset(entry, 0, sizeof(IDEntry));

    return entry;
}

//801D2CE8
void HSD_IDInsertToTable(HSD_IDTable* table, u32 id, void* data)
{
    IDEntry* entry;

    if (table == NULL) {
        table = &default_table;
    }

    entry = table->table[hash(id)];
    while (entry != NULL) {
        if (entry->id == id) {
            break;
        }
        entry = entry->next;
    }

    if (entry != NULL) {
        entry->id = id;
        entry->data = data;
    } else {
        entry = IDEntryAlloc();
        entry->id = id;
        entry->data = data;
        entry->next = table->table[hash(id)];
        table->table[hash(id)] = entry;
    }
}
