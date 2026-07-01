# AAPT2-Termux

![Platform](https://img.shields.io/badge/Platform-Termux-green)
![Architecture](https://img.shields.io/badge/Architecture-ARM64-blue)
![Android](https://img.shields.io/badge/Android-11%2B-success)
![License](https://img.shields.io/badge/License-MIT-yellow)

Native ARM64 build of **Android Asset Packaging Tool 2 (AAPT2)** compiled entirely on **Termux**.

This project provides a standalone ARM64 AAPT2 binary built natively on Android without requiring x86 emulation.

---

Native ARM64 build of Android Asset Packaging Tool 2 (AAPT2) compiled entirely on Termux.

AAPT2-Termux is a standalone ARM64 build of Android Asset Packaging Tool 2 (AAPT2), compiled natively on Android using the Termux environment. It enables APK resource compilation, linking, and inspection directly on ARM64 Android devices without requiring x86 emulation.

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

- `compile`
- `link`
- `dump`
- `optimize`
- `convert`
- `apkinfo`
- `daemon`
- `version`

---

## Requirements

- Android 11 or newer
- ARM64 device
- Termux
- Clang
- CMake
- Ninja

---

## Installation

Download the latest binary from the **Releases** page.

### 1. Make the binary executable

```sh
chmod +x aapt2-termux-arm64
```

### 2. Install into Termux

```sh
mv aapt2-termux-arm64 $PREFIX/bin/aapt2-termux
```

### 3. Verify installation

```sh
aapt2-termux version
```

Expected output:

```text
Android Asset Packaging Tool (aapt) 2.19-termux
```

---

## Usage

### Show version

```sh
aapt2-termux version
```

### Compile resources

```sh
aapt2-termux compile \
    --dir res \
    -o compiled
```

### Link compiled resources

```sh
aapt2-termux link \
    -I android.jar \
    --manifest AndroidManifest.xml \
    -o output.apk \
    compiled/*.flat
```

### Dump AndroidManifest

```sh
aapt2-termux dump xmltree \
    --file AndroidManifest.xml \
    app.apk
```

### Dump package information

```sh
aapt2-termux dump badging app.apk
```

### Dump resources

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

The resulting binary will be located at:

```text
build/aapt2
```

---

## Tested

Verified on the following environment:

- Android 15
- ARM64
- Termux
- APKTool 2.11.x
- APK decompile/rebuild workflow
- APK signing using `apksigner`
- Resource compilation
- Resource linking
- AndroidManifest parsing
- Resource dumping

---

## Release

Current release:

**v1.0-termux**

Included binary:

- `aapt2-termux-arm64`

---

## License

This project is licensed under the **MIT License**.

See the [LICENSE](LICENSE) file for details.

---

## Author

**Arii**

GitHub: https://github.com/arriRgb31

## Credits

This project is based on components from:

- Android Open Source Project (AOSP)
- Google
- Termux

