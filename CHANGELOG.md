# Changelog

All notable changes to this project will be documented in this file.

---

## [1.0.1] - 2026-07-03

### Changed

- Updated to the latest project HEAD.
- Removed dependency on a separate AOSP checkout.
- Bundled required `libsystem` headers into the repository.
- Repository is now fully self-contained.
- Automatically generates required build version sources during the build process.
- Updated CMake configuration and native build scripts.
- Improved native ARM64 build workflow for Termux.
- Removed unintended attribute debug logging from `ResourceUtils.cpp`.
- Cleaned release binary for normal production use.
- Updated project documentation.

### Validation

Validated on:

- Android 15 (ARM64)
- Native Termux build
- Fresh `git clone`
- Binary rebuilt from source
- Resource compilation (`compile`)
- Resource linking (`link`)
- APK comparison (`diff`)
- AndroidManifest parsing (`dump xmltree`)
- Resource table dumping (`dump resources`)
- APK package information (`dump badging`)
- APK information (`apkinfo`)
- APK optimization (`optimize`)
- APK conversion (`convert`)

---

## [1.0.0] - 2026-07-01

### Added

- Initial public release.
- Native ARM64 build of Android Asset Packaging Tool 2 (AAPT2).
- Built entirely on Android using the Termux environment.
- Compiled with the Clang/LLVM toolchain.
- Verified compatibility with Android 15.
- Public GitHub repository.
- GitHub Release with prebuilt ARM64 binary.

### Supported Commands

- `compile`
- `link`
- `dump`
- `diff`
- `optimize`
- `convert`
- `daemon`
- `version`

### Validation

Validated on:

- Resource compilation (`compile`)
- Resource linking (`link`)
- APK comparison (`diff`)
- AndroidManifest parsing (`dump xmltree`)
- Resource table dumping (`dump resources`)
- APK package information (`dump badging`)
- APK decompile and rebuild workflow using APK
