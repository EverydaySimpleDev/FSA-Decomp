import re

SPLITS = r"D:\Archipelago\Dev\Four-Swords-Adventures-Modding\Decomp\fsa_decomp\config\G4SE01\splits.txt"
SECTIONS = [(0x80003100, 0x80005600), (0x80021840, 0x8045BD00)]

ranges = []
with open(SPLITS) as f:
    for line in f:
        m = re.search(r'\.text\s+start:(0x[0-9A-Fa-f]+)\s+end:(0x[0-9A-Fa-f]+)', line)
        if m:
            s, e = int(m.group(1), 16), int(m.group(2), 16)
            ranges.append((s, e))

ranges.sort()
merged = []
for s, e in ranges:
    if merged and s <= merged[-1][1]:
        merged[-1] = (merged[-1][0], max(merged[-1][1], e))
    else:
        merged.append((s, e))

all_gaps = []
for GAP_START, GAP_END in SECTIONS:
    cursor = GAP_START
    for s, e in merged:
        if e <= GAP_START or s >= GAP_END:
            continue
        s2 = max(s, GAP_START)
        e2 = min(e, GAP_END)
        if s2 > cursor:
            all_gaps.append((cursor, s2))
        cursor = max(cursor, e2)
    if cursor < GAP_END:
        all_gaps.append((cursor, GAP_END))

all_gaps.sort(key=lambda g: -(g[1]-g[0]))
print(f'{len(all_gaps)} sub-ranges total')
for s, e in all_gaps[:60]:
    print(f'0x{s:08X} 0x{e:08X} {e-s}')
