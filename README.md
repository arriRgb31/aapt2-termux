# AAPT2-Termux

![Platform](https://img.shields.io/badge/Platform-Termux-green)
![Architecture](https://img.shields.io/badge/Architecture-ARM64-blue)
![Android](https://img.shields.io/badge/Validated-Android%2015-success)
![License](https://img.shields.io/badge/License-MIT-yellow)

Native ARM64 build of **Android Asset Packaging Tool 2 (AAPT2)** for **Termux**.

This project adapts the Android Open Source Project (AOSP) implementation of AAPT2 into a self-contained repository that can be built directly on Android using Termux. No separate AOSP checkout is required.

---

## Features

- Native ARM64 executable
- Self-contained repository
- Built entirely inside Termux
- Based on the Android Open Source Project        (AOSP) implementation of AAPT2.
- Clang/LLVM toolchain
- CMake + Ninja build system
- Automatic generation of version sources
- Automatic protobuf code generation

---

## Supported Commands

- `compile`
- `link`
- `dump`
- `diff`
- `optimize`
- `convert`
- `apkinfo`
- `daemon`
- `version`

---

## Validation

The current release has been built and 
Validated with:

- Android 15
- ARM64
- Native Termux
- Apktool CLI 2.11.1

Verified commands:

- `compile`
- `link`
- `dump`
- `diff`
- `optimize`
- `convert`
- `apkinfo`
- `version`

---

## Requirements

### Runtime

- Android 15
- ARM64 device
- Termux

### Build

Install the required packages:

```sh
pkg update

pkg install \
clang \
cmake \
ninja \
git \
protobuf \
fmt \
libpng \
libexpat \
zlib
```

---

## Installation

Download the latest release:

https://github.com/arriRgb31/aapt2-termux/releases

Extract the archive:

```sh
unzip aapt2-termux-*.zip
```

Make the binary executable:

```sh
chmod +x aapt2
```

Install:

```sh
install -m755 aapt2 $PREFIX/bin/
```

Verify:

```sh
which aapt2
aapt2 version
```

---

## Build From Source

Clone the repository:

```sh
git clone https://github.com/arriRgb31/aapt2-termux.git

cd aapt2-termux
```

Install dependencies:

```sh
pkg update

pkg install \
clang \
cmake \
ninja \
git \
protobuf \
fmt \
libpng \
libexpat \
zlib
```

Build:

```sh
./build.sh
```

The generated executable will be located at:

```text
build/aapt2
```

---

## Repository Layout

```text
build.sh          Main build script
clean.sh          Remove build artifacts
CMakeLists.txt    CMake project configuration

cmake/            CMake modules and build configuration
generated/        Auto-generated version sources
patches/          Source patches applied during integration
release/          Release packaging assets
scripts/          Helper build scripts
third_party/      Bundled AOSP libraries and AAPT2 sources
```

---

## Releases

Prebuilt ARM64 binaries are available on GitHub Releases.

https://github.com/arriRgb31/aapt2-termux/releases

---

## Source

This project is based on the Android Open Source Project (AOSP) implementation of Android Asset Packaging Tool 2 (AAPT2) and adapted for native compilation and execution inside Termux.

---

## License

MIT License.

See [LICENSE](LICENSE).

---

## Acknowledgements

- Android Open Source Project (AOSP)
- Google
- Termux
- APKTool

---

## Author

**Arii**

https://github.com/arriRgb31
