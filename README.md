# AAPT2-Termux

![Platform](https://img.shields.io/badge/Platform-Termux-green)
![Architecture](https://img.shields.io/badge/Architecture-ARM64-blue)
![Android](https://img.shields.io/badge/Android-11%2B-success)
![License](https://img.shields.io/badge/License-MIT-yellow)

Native ARM64 build of **Android Asset Packaging Tool 2 (AAPT2)** for **Termux**.

This project adapts the Android Open Source Project (AOSP) implementation of AAPT2 into a self-contained repository that can be built and executed directly on Android.

---

## Features

- Native ARM64 executable
- Built entirely on Termux
- Self-contained source tree
- Clang/LLVM toolchain
- Android 11+ compatible
- Based on the latest AOSP AAPT2 source

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

## Requirements

- Android 11 or newer
- ARM64 device
- Termux

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
mv aapt2 $PREFIX/bin/
```

Verify:

```sh
aapt2 version
```

---

## Build From Source

```sh
git clone https://github.com/arriRgb31/aapt2-termux.git
cd aapt2-termux

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

./build.sh
```

Output:

```text
build/aapt2
```

---

## Releases

Prebuilt ARM64 binaries are available on GitHub Releases.

https://github.com/arriRgb31/aapt2-termux/releases

---

## Source

This project is built from the **Android Open Source Project (AOSP)** AAPT2 source code and adapted for native compilation inside Termux.

---

## Thanks

- Android Open Source Project (AOSP)
- Google
- Termux
- APKTool
- Android SDK Build Tools

---

## License

MIT License

See [LICENSE](LICENSE).

---

## Author

**Arii**

https://github.com/arriRgb31
