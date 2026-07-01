# AAPT2-Termux

Native ARM64 build of Android AAPT2 compiled entirely on Termux.

## Features

- Native ARM64 executable
- Built using Clang/LLVM on Termux
- Android 15 tested
- No x86 emulation required

## Supported Commands

- compile
- link
- dump
- optimize
- convert
- apkinfo
- daemon
- version

## Installation

Download the latest release.

```bash
chmod +x aapt2-termux-arm64
mv aapt2-termux-arm64 $PREFIX/bin/aapt2-termux
```

Verify:

```bash
aapt2-termux version
```

## Build

```bash
git clone https://github.com/arriRgb31/aapt2-termux.git
cd aapt2-termux
./bootstrap.sh
./build.sh
```

## Requirements

- Android 11+
- ARM64
- Termux
- Clang
- CMake
- Ninja

## Release

Current release:

v1.0-termux

## License

MIT
