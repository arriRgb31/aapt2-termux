# AAPT2-Termux

![Platform](https://img.shields.io/badge/Platform-Termux-green)
![Architecture](https://img.shields.io/badge/Architecture-ARM64-blue)
![Android](https://img.shields.io/badge/Android-11%2B-success)
![License](https://img.shields.io/badge/License-MIT-yellow)

AAPT2-Termux is a standalone ARM64 build of **Android Asset Packaging Tool 2 (AAPT2)** built natively on Android using the **Termux** environment.

This project adapts the Android Open Source Project (AOSP) AAPT2 source code to produce a native ARM64 executable that runs directly on Android without x86 emulation.

---

## Features

- Native ARM64 executable
- Built entirely on Termux
- Clang/LLVM toolchain
- Android 15 verified
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

Validated using:

- Android 15
- ARM64 device
- Termux
- Clang/LLVM
- APKTool 2.11.x
- Android SDK Build Tools (`apksigner`)

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

Install it into Termux.

```sh
mv aapt2 $PREFIX/bin/
```

Verify installation.

```sh
aapt2 version
```

Expected output:

```text
Android Asset Packaging Tool (aapt) 2.19-termux
```

---

## Usage

Show version

```sh
aapt2 version
```

Compile resources

```sh
aapt2 compile \
    --dir res \
    -o compiled
```

Link compiled resources

```sh
aapt2 link \
    -I android.jar \
    --manifest AndroidManifest.xml \
    -o output.apk \
    compiled/*.flat
```

Dump AndroidManifest

```sh
aapt2 dump xmltree \
    --file AndroidManifest.xml \
    app.apk
```

Dump package information

```sh
aapt2 dump badging app.apk
```

Dump resources

```sh
aapt2 dump resources app.apk
```

---

## Build From Source

Clone the repository.

```sh
git clone https://github.com/arriRgb31/aapt2-termux.git
cd aapt2-termux
```

Build AAPT2.

```sh
./build.sh
```

The resulting executable will be generated at:

```text
build/aapt2
```

---

## Validation

The current project has been verified for:

- Resource compilation (`compile`)
- Resource linking (`link`)
- AndroidManifest parsing (`dump xmltree`)
- Resource table dumping
- APK package information (`dump badging`)
- APK decompile and rebuild workflow using APKTool 2.11.x
- APK signing using Android SDK Build Tools (`apksigner`)
- GameSpace 16.0.4 rebuild verification

---

## Project Status

**Stable**

The initial stable release has been successfully built and validated on Android 15.

Future releases will focus on compatibility improvements, maintenance, and upstream synchronization.

---

## Releases

Download the latest release from:

https://github.com/arriRgb31/aapt2-termux/releases

---

## Upstream

This project is based on the **Android Open Source Project (AOSP)** implementation of **AAPT2** and is adapted for native ARM64 builds on Termux.

---

## License

Licensed under the MIT License.

See the [LICENSE](LICENSE) file for details.

---

## Author

**Arii**

GitHub

https://github.com/arriRgb31

---

## Credits

This project is built upon software and technologies provided by:

- Android Open Source Project (AOSP)
- Google
- Termux

Validation performed using:

- APKTool 2.11.x
- Android SDK Build Tools (`apksigner`)
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
