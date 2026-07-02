# Changelog

All notable changes to this project will be documented in this file.

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

The initial release has been successfully validated for:

- Resource compilation (`compile`)
- Resource linking (`link`)
- APK comparison (`diff`)
- AndroidManifest parsing (`dump xmltree`)
- Resource table dumping (`dump resources`)
- APK package information (`dump badging`)
- APK decompile and rebuild workflow using APKTool 2.11.x
- APK signing using Android SDK Build Tools (`apksigner`)

---

Initial stable public release.
