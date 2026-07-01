# AAPT2-Termux

![Platform](https://img.shields.io/badge/Platform-Termux-green)
![Architecture](https://img.shields.io/badge/Architecture-ARM64-blue)
![Android](https://img.shields.io/badge/Android-11%2B-success)
![License](https://img.shields.io/badge/License-MIT-yellow)

# AAPT2-Termux

Native ARM64 build of Android Asset Packaging Tool 2 (AAPT2) compiled entirely on Termux.

This project provides a standalone ARM64 AAPT2 binary built natively on Android using the Termux environment.

---

## Features

- Native ARM64 executable
- Built entirely on Termux
- Clang/LLVM toolchain
- Android 15 tested
- No x86 emulation required
- Open source

---

## Supported Commands

- compile
- link
- dump
- optimize
- convert
- apkinfo
- daemon
- version

---

## Requirements

- Android 11+
- ARM64 device
- Termux
- Clang
- CMake
- Ninja

---

## Installation

Download the latest release from the Releases page.

Make the binary executable.

```sh
chmod +x aapt2-termux-arm64
```

Install it into Termux.

```sh
mv aapt2-termux-arm64 $PREFIX/bin/aapt2-termux
```

Verify the installation.

```sh
aapt2-termux version
```

Expected output.

```text
Android Asset Packaging Tool (aapt) 2.19-termux
```

---

## Usage

Show version.

```sh
aapt2-termux version
```

Compile resources.

```sh
aapt2-termux compile \
    --dir res \
    -o compiled
```

Dump AndroidManifest.

```sh
aapt2-termux dump xmltree \
    --file AndroidManifest.xml \
    app.apk
```

Dump package information.

```sh
aapt2-termux dump badging app.apk
```

Dump resources.

```sh
aapt2-termux dump resources app.apk
```

---

## Build From Source

Clone the repository.

```sh
git clone https://github.com/arriRgb31/aapt2-termux.git
cd aapt2-termux
```

Bootstrap dependencies.

```sh
./bootstrap.sh
```

Build AAPT2.

```sh
./build.sh
```

The binary will be generated at:

```text
build/aapt2
```

---

## Tested

Successfully tested on:

- Android 15
- ARM64
- Termux
- APKTool 2.11.x
- APK decompile/rebuild workflow
- APK signing using apksigner
- Resource compilation
- Resource linking
- Manifest parsing
- Resource dumping

---

## Release

Current release:

**v1.0-termux**

Binary:

- aapt2-termux-arm64

---

## License

MIT License

---

## Author

Arii

GitHub:
https://github.com/arriRgb31
