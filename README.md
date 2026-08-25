Four Swords Adventure disassembly/decompilation to C++/C
[![alt text](https://img.shields.io/badge/Code-0.00%25-blue) ![alt text](https://img.shields.io/badge/Data-0.00%25-blue)
=============

<!--
Replace with your repository's URL.


[Build Status]: 
[actions]:

Code progress URL:
https://progress.decomp.club/data/[project]/[version]/all/?mode=shield&measure=code
URL encoded then appended to: https://img.shields.io/endpoint?label=Code&url=


[Progress]:


DOL progress URL:
https://progress.decomp.club/data/[project]/[version]/dol/?mode=shield&measure=code
URL encoded then appended to: https://img.shields.io/endpoint?label=DOL&url=


[DOL Progress]: 


REL progress URL:
https://progress.decomp.club/data/[project]/[version]/modules/?mode=shield&measure=code
URL encoded then appended to: https://img.shields.io/endpoint?label=RELs&url=


[RELs Progress]:


Replace with your Discord server's ID and invite URL.


[Discord Badge]: https://img.shields.io/discord/871177712486736013?color=%237289DA&logo=discord&logoColor=%23FFFFFF
[discord]: 

-->

A work-in-progress decomplication of Four Swords Adventure.

This repository does **not** contain any game assets or assembly whatsoever. An existing copy of the game is required.

Supported versions:

- `G4SE01`: Rev 0 (USA)

---

## Goal

The goal of this project is to get a PC port of Four Swords Adventures.

It builds an Matching dol file.

# Dependencies

## Windows:

On Windows, it's **highly recommended** to use native tooling. WSL or msys2 are **not** required.  
When running under WSL, [objdiff](#diffing) is unable to get filesystem notifications for automatic rebuilds.

- Install [Python](https://www.python.org/downloads/) and add it to `%PATH%`.
  - Also available from the [Windows Store](https://apps.microsoft.com/store/detail/python-311/9NRWMJP3717K).
- Download [ninja](https://github.com/ninja-build/ninja/releases) and add it to `%PATH%`.
  - Quick install via pip: `pip install ninja`

## macOS:

- Install [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages):
  ```
  brew install ninja
  ```
- Install [wine-crossover](https://github.com/Gcenx/homebrew-wine):
  ```
  brew install --cask --no-quarantine gcenx/wine/wine-crossover
  ```

After OS upgrades, if macOS complains about `Wine Crossover.app` being unverified, you can unquarantine it using:

```sh
sudo xattr -rd com.apple.quarantine '/Applications/Wine Crossover.app'
```

## Linux:

- Install [ninja](https://github.com/ninja-build/ninja/wiki/Pre-built-Ninja-packages).
- For non-x86(\_64) platforms: Install wine from your package manager.
  - For x86(\_64), [WiBo](https://github.com/decompals/WiBo), a minimal 32-bit Windows binary wrapper, will be automatically downloaded and used.

# Building

- Clone the repository:

- Using [Dolphin Emulator](https://dolphin-emu.org/), extract your game.
- 
- Configure:
  ```
  python configure.py
  ```
  To use a version other than `GAMEID` (USA), specify it with `--version`.
- Build:
  ```
  ninja
  ```

# Diffing

Once the initial build succeeds, an `objdiff.json` should exist in the project root.

Download the latest release from [encounter/objdiff](https://github.com/encounter/objdiff). Under project settings, set `Project directory`. The configuration should be loaded automatically.

Select an object from the left sidebar to begin diffing. Changes to the project will rebuild automatically: changes to source files, headers, `configure.py`, `splits.txt` or `symbols.txt`.

---
