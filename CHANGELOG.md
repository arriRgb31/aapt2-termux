# Changelog

All notable changes to this project will be documented in this file.

The format is based on Keep a Changelog.

## [1.0.0] - 2026-07-01

### Added

- Native ARM64 build of Android AAPT2
- Built entirely on Termux using Clang/LLVM
- Android 15 compatibility verified
- GitHub Release with prebuilt binary
- Support for:
  - compile
  - link
  - dump
  - optimize
  - convert
  - apkinfo
  - daemon
  - version

### Tested

- Decompiled and rebuilt GameSpace 16.0.4
- APK signing with apksigner
- Resource dumping
- Manifest parsing

### Notes

Initial public release.
