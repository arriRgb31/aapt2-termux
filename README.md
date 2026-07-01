# AAPT2-Termux

![Platform](https://img.shields.io/badge/Platform-Termux-green)
![Architecture](https://img.shields.io/badge/Architecture-ARM64-blue)
![Android](https://img.shields.io/badge/Android-11%2B-success)
![License](https://img.shields.io/badge/License-MIT-yellow)

AAPT2-Termux is a standalone ARM64 build of **Android Asset Packaging Tool 2 (AAPT2)**, compiled natively on Android using the **Termux** environment.

It enables APK resource compilation, linking, optimization, and resource inspection directly on ARM64 Android devices without requiring x86 emulation.

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

## Test Environment

The current release was built and validated using:

- Android 15
- ARM64 device
- Termux
- Clang/LLVM
- APKTool 2.11.1
- Android SDK Build Tools (`apksigner`)

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

Download the latest binary from the [Releases](https://github.com/arriRgb31/aapt2-termux/releases) page.

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

### Example

```sh
aapt2-termux dump badging app.apk
```

Example output:

```text
package: name='com.example.app'
sdkVersion:'24'
targetSdkVersion:'35'
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

The resulting binary will be generated at:

```text
build/aapt2
```

---

## Tested

The current release has been verified for:

- Resource compilation (`compile`)
- Resource linking (`link`)
- AndroidManifest parsing (`dump xmltree`)
- Resource dumping (`dump resources`)
- APK package information (`dump badging`)
- APK decompile and rebuild workflow using APKTool 2.11.1
- APK signing using Android SDK Build Tools (`apksigner`)

---

## Project Status

**Initial Release**

The first public release of AAPT2-Termux.

Core functionality has been successfully built and validated on Android 15. Further improvements, testing, and cleanup are planned for future releases.

---

## Release

Current release:

**v1.0-termux**

Included binary:

- `aapt2-termux-arm64`

Download:

https://github.com/arriRgb31/aapt2-termux/releases

---

## License

This project is licensed under the **MIT License**.

See the [LICENSE](LICENSE) file for details.

---

## Author

**Arii**

GitHub: https://github.com/arriRgb31

---

## Credits

This project is built upon components and technologies provided by:

- Android Open Source Project (AOSP)
- Google
- Termux
