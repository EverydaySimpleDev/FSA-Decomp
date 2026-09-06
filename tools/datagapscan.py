import re

SPLITS = r"D:\Archipelago\Dev\Four-Swords-Adventures-Modding\Decomp\fsa_decomp\config\G4SE01\splits.txt"

# (section_name, start, end) - from the retail DOL header, read directly this session
SECTIONS = [
    (".rodata", 0x8045C660, 0x804916A0),
    (".data", 0x804916A0, 0x804B2140),
    (".sdata", 0x80539BC0, 0x8053A280),
    (".sdata2", 0x8053AFA0, 0x80543F00),
    (".bss", 0x804B2140, 0x80543F6C),
]

ranges_by_section = {}
with open(SPLITS, encoding="utf-8") as f:
    for line in f:
        for sec, _, _ in SECTIONS:
            m = re.search(re.escape(sec) + r"\s+start:(0x[0-9A-Fa-f]+) end:(0x[0-9A-Fa-f]+)", line)
            if m:
                ranges_by_section.setdefault(sec, []).append(
                    (int(m.group(1), 16), int(m.group(2), 16))
                )

grand_total_unclaimed = 0
grand_total_size = 0
for sec, sec_start, sec_end in SECTIONS:
    ranges = sorted(ranges_by_section.get(sec, []))
    merged = []
    for s, e in ranges:
        if merged and s <= merged[-1][1]:
            merged[-1] = (merged[-1][0], max(merged[-1][1], e))
        else:
            merged.append((s, e))
    cursor = sec_start
    gaps = []
    for s, e in merged:
        if e <= sec_start or s >= sec_end:
            continue
        s2, e2 = max(s, sec_start), min(e, sec_end)
        if s2 > cursor:
            gaps.append((cursor, s2))
        cursor = max(cursor, e2)
    if cursor < sec_end:
        gaps.append((cursor, sec_end))
    gaps.sort(key=lambda g: -(g[1] - g[0]))
    total_size = sec_end - sec_start
    total_unclaimed = sum(e - s for s, e in gaps)
    grand_total_unclaimed += total_unclaimed
    grand_total_size += total_size
    pct = 100 * (total_size - total_unclaimed) / total_size if total_size else 0
    print(f"{sec}: {total_unclaimed}/{total_size} bytes unclaimed ({pct:.2f}% claimed), {len(gaps)} sub-ranges")
    for s, e in gaps[:15]:
        print(f"  0x{s:08X} 0x{e:08X} {e - s}")
    if len(gaps) > 15:
        print(f"  ... and {len(gaps) - 15} more")
    print()

print(f"TOTAL: {grand_total_unclaimed}/{grand_total_size} bytes unclaimed "
      f"({100*(grand_total_size-grand_total_unclaimed)/grand_total_size:.2f}% claimed)")
