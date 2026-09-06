import sys, os, glob, re

BASE = r"D:\Archipelago\Dev\Four-Swords-Adventures-Modding\Decomp\fsa_decomp"
ASMDIR = os.path.join(BASE, "build", "G4SE01", "asm")
SYMBOLS = os.path.join(BASE, "config", "G4SE01", "symbols.txt")

_addr_to_name = None
def build_addr_names():
    global _addr_to_name
    _addr_to_name = {}
    pat = re.compile(r'^(\S+) = \.text:0x([0-9A-Fa-f]+); // type:function')
    for l in open(SYMBOLS, encoding="utf-8"):
        m = pat.match(l)
        if m:
            _addr_to_name[int(m.group(2), 16)] = m.group(1)

_index = None
def build_index():
    global _index
    _index = {}
    for f in glob.glob(os.path.join(ASMDIR, "auto_*.s")):
        try:
            with open(f, encoding="utf-8", errors="ignore") as fh:
                content = fh.read()
        except Exception:
            continue
        for m in re.finditer(r'^\.fn (\S+),', content, re.MULTILINE):
            _index[m.group(1)] = f

def resolve_ordered_files(addrs):
    if _index is None:
        build_index()
    if _addr_to_name is None:
        build_addr_names()
    files = []
    seen = set()
    missing = []
    for addr in addrs:
        name = _addr_to_name.get(addr, f"fn_{addr:08X}")
        f = _index.get(name)
        if f is None:
            # dtk sometimes suffixes a dump's .fn label with _ADDR when the
            # bare symbols.txt name collides with an already-landed local
            # C symbol of the same name (e.g. "stateBusy" in dvd.c) - retry
            # with the address-suffixed form before giving up.
            f = _index.get(f"{name}_{addr:08X}")
        if f is None:
            missing.append(name)
            continue
        if f not in seen:
            seen.add(f)
            files.append(f)
    return files, missing

if __name__ == "__main__":
    addrs = [int(x, 16) for x in sys.argv[1:]]
    files, missing = resolve_ordered_files(addrs)
    for f in files:
        print(f)
    if missing:
        print("MISSING:", missing, file=sys.stderr)
