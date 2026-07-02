# AAPT2-Termux

![Platform](https://img.shields.io/badge/Platform-Termux-green)
![Architecture](https://img.shields.io/badge/Architecture-ARM64-blue)
![Android](https://img.shields.io/badge/Android-11%2B-success)
![License](https://img.shields.io/badge/License-MIT-yellow)

AAPT2-Termux is a standalone ARM64 build of **Android Asset Packaging Tool 2 (AAPT2)** built natively on Android using the **Termux** environment.

This project adapts the Android Open Source Project (AOSP) AAPT2 source code to produce a native ARM64 executable that runs directly on Android without requiring x86 emulation.

---

## Features

- Native ARM64 executable
- Built entirely on Termux
- Clang/LLVM toolchain
- Android 15 verified
- No x86 emulation required
- Self-contained source tree
- Open source

---

## Supported Commands

- `compile`
- `link`
- `dump`
- `diff`
- `optimize`
- `convert`
- `version`
- `daemon`

### Dump Subcommands

- `apc`
- `badging`
- `chunks`
- `configurations`
- `overlayable`
- `packagename`
- `permissions`
- `resources`
- `strings`
- `styleparents`
- `xmlstrings`
- `xmltree`

---

## Test Environment

Validated on:

- Android 15
- ARM64 (AArch64)
- Termux
- Clang/LLVM
- CMake
- Ninja
- Android SDK (`android.jar`)
- APKTool 2.11.x
- Android SDK Build Tools (`apksigner`)

The following AAPT2 commands have been verified successfully:

- compile
- link
- dump badging
- dump xmltree
- apkinfo
- optimize
- convert
- diff
- version

---

## Requirements

- Android 11 or newer
- ARM64 device
- Termux

---

## Installation

Download the latest release from:

https://github.com/arriRgb31/aapt2-termux/releases

Extract the archive.

```sh
unzip aapt2-termux-*.zip
```

Make the binary executable.

```sh
chmod +x aapt2
```

Install it into your PATH.

```sh
mv aapt2 $PREFIX/bin/
```

Verify the installation.

```sh
aapt2 version
```

Expected output:

```text
Android Asset Packaging Tool (aapt) 2.19-termux
```

---

## Usage

### Show version

```sh
aapt2 version
```

### Compile resources

```sh
aapt2 compile \
    --dir res \
    -o compiled.zip
```

### Link resources

```sh
aapt2 link \
    -I android.jar \
    --manifest AndroidManifest.xml \
    -o app.apk \
    compiled.zip
```

### Compare two APKs

```sh
aapt2 diff old.apk new.apk
```

### Dump package information

```sh
aapt2 dump badging app.apk
```

### Dump resource table

```sh
aapt2 dump resources app.apk
```

### Dump AndroidManifest

```sh
aapt2 dump xmltree app.apk AndroidManifest.xml
```

---

## Build From Source

Clone the repository.

```sh
git clone https://github.com/arriRgb31/aapt2-termux.git
cd aapt2-termux
```

Install the required packages.

```sh
pkg update
pkg install clang cmake ninja git \
protobuf fmt libpng libexpat zlib
```

Build AAPT2.

```sh
./build.sh
```

The resulting executable will be generated at:

```text
build/aapt2
```

## Validation

The current release has been verified for:

- Resource compilation (`compile`)
- Resource linking (`link`)
- APK comparison (`diff`)
- Resource table dumping
- AndroidManifest parsing
- APK package information (`dump badging`)
- APK decompile and rebuild workflow using APKTool 2.11.x
- APK signing using Android SDK Build Tools (`apksigner`)

---

## Project Status

Stable

Version 1.0.0 is the first stable standalone release.

The project no longer depends on an external AOSP source tree and can be built directly from this repository.

---

## Releases

Prebuilt ARM64 binaries are available on the GitHub Releases page:

https://github.com/arriRgb31/aapt2-termux/releases

---

## Upstream

This project is based on the **Android Open Source Project (AOSP)** implementation of **AAPT2**.

The source tree has been adapted into a self-contained project that can be built natively inside **Termux** without requiring a separate AOSP checkout.

---

## License

Licensed under the **MIT License**.

See the [LICENSE](LICENSE) file for details.

---

## Author

**Arii**

GitHub:

https://github.com/arriRgb31

---

## Credits

This project is built upon software and technologies provided by:

- Android Open Source Project (AOSP)
- Google
- Termux
