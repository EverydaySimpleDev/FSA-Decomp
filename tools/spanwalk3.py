import sys, re, os, bisect

BASE = r"D:\Archipelago\Dev\Four-Swords-Adventures-Modding\Decomp\fsa_decomp"
SYMBOLS = os.path.join(BASE, "config", "G4SE01", "symbols.txt")
SPLITS = os.path.join(BASE, "config", "G4SE01", "splits.txt")

func_size = {}
func_addrs = []
pat = re.compile(r'^(\S+) = \.text:0x([0-9A-Fa-f]+); // type:function size:0x([0-9A-Fa-f]+)')
with open(SYMBOLS, encoding="utf-8") as f:
    for line in f:
        m = pat.match(line)
        if m:
            addr = int(m.group(2), 16)
            size = int(m.group(3), 16)
            func_size[addr] = size
            func_addrs.append(addr)
func_addrs.sort()

claimed_ranges = []
with open(SPLITS, encoding="utf-8") as f:
    for line in f:
        m = re.search(r'\.text\s+start:0x([0-9A-Fa-f]+) end:0x([0-9A-Fa-f]+)', line)
        if m:
            claimed_ranges.append((int(m.group(1), 16), int(m.group(2), 16)))
claimed_ranges.sort()
claimed_starts = [r[0] for r in claimed_ranges]

def is_claimed(addr):
    i = bisect.bisect_right(claimed_starts, addr) - 1
    if i < 0:
        return False
    s, e = claimed_ranges[i]
    return s <= addr < e

def walk(start_addr, max_funcs=5000, max_gap=32):
    """Like spanwalk2 but tolerates small (<=max_gap byte) padding gaps
    between functions by jumping to the next known symbol. Returns
    chain of (addr, size, pad_before) plus stop reason."""
    i = bisect.bisect_left(func_addrs, start_addr)
    if i >= len(func_addrs) or func_addrs[i] != start_addr:
        return [], "no-such-function"
    chain = []
    cur = start_addr
    idx = i
    for _ in range(max_funcs):
        if cur not in func_size:
            # look for next known symbol within max_gap
            j = bisect.bisect_left(func_addrs, cur)
            if j < len(func_addrs) and func_addrs[j] - cur <= max_gap:
                pad = func_addrs[j] - cur
                cur = func_addrs[j]
                if chain:
                    chain.append(("PAD", pad, 0))
                continue
            return chain, f"real-gap@0x{cur:08X}"
        if is_claimed(cur) and chain:
            return chain, f"already-landed@0x{cur:08X}"
        size = func_size[cur]
        chain.append((cur, size, 0))
        cur = cur + size
    return chain, "max-funcs-reached"

if __name__ == "__main__":
    start = int(sys.argv[1], 16)
    max_gap = int(sys.argv[2]) if len(sys.argv) > 2 else 32
    chain, reason = walk(start, max_gap=max_gap)
    funcs = [c for c in chain if c[0] != "PAD"]
    pads = [c for c in chain if c[0] == "PAD"]
    total = sum(sz for a, sz, p in funcs) + sum(sz for a, sz, p in pads)
    last = funcs[-1] if funcs else None
    end = last[0] + last[1] if last else start
    print(f"Walked {len(funcs)} functions ({len(pads)} pad gaps bridged) from 0x{start:08X}, stop: {reason}")
    print(f"Total span: 0x{start:08X} - 0x{end:08X} ({total} bytes)")
