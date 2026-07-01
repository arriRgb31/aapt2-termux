# Changelog

All notable changes to this project will be documented in this file.

The format is based on Keep a Changelog.

## [1.0.0] - 2026-07-01

### Added

- Native ARM64 build of Android AAPT2
- Built entirely on Termux using Clang/LLVM
- Android 15 compatibility verified
- Initial GitHub release
- Prebuilt ARM64 binary
- Supported commands:
  - compile
  - link
  - dump
  - optimize
  - convert
  - apkinfo
  - daemon
  - version

### Tested

- APK decompile using APKTool 2.11.x
- APK rebuild
- APK signing using apksigner
- Resource compilation
- Resource linking
- Resource dumping
- AndroidManifest parsing
- GameSpace 16.0.4 rebuild verification

### Notes

Initial public release.
