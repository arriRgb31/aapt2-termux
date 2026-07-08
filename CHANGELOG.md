# Changelog

All notable changes to this project will be documented in this file.

The format is based on Keep a Changelog and follows semantic versioning where practical.

---

## [Unreleased]

### Documentation

#### Build System Documentation

- Documented the complete native build pipeline from `build.sh` to the final `build/aapt2` executable.
- Added documentation describing the CMake configuration stage.
- Added documentation describing Ninja build generation.
- Added documentation describing the executable build target.
- Documented repository-generated source files.
- Documented protobuf source generation.
- Documented repository static library relationships.

#### Dependency Documentation

- Documented dependency classifications.
- Distinguished acquisition, build, and link dependencies.
- Documented how each required package participates in the build pipeline.
- Documented repository-local dependency flow.

#### Link Graph Documentation

- Documented the declared executable link graph.
- Documented internal static library relationships.
- Documented external library linkage declared by CMake.
- Documented generated source integration into the build graph.

#### Repository Audit Documentation

- Added repository build graph documentation.
- Added compile graph documentation.
- Added archive graph documentation.
- Added link graph documentation.
- Added repository evidence boundary documentation.

#### Evidence Clarification

Documented what can be proven directly from repository files:

- Build graph
- Compile graph
- Archive graph
- Generated source graph
- Declared link graph
- Source ownership
- Build dependency relationships

Documented what cannot be proven without inspecting a built executable:

- Final ELF symbol table
- Runtime dependencies
- Dynamic linker results
- Static archive member extraction
- Final relocation resolution
- Symbol visibility after linking

No repository behavior was documented beyond repository evidence.

---

## [1.0.1] - 2026-07-03

### Changed

- Updated to the latest project HEAD.
- Removed dependency on a separate AOSP checkout.
- Bundled required `libsystem` headers into the repository.
- Repository is now fully self-contained.
- Automatically generates required build version sources during the build.
- Updated CMake configuration.
- Updated native build scripts.
- Improved native ARM64 build workflow for Termux.
- Removed unintended attribute debug logging from `ResourceUtils.cpp`.
- Cleaned release binary for production use.
- Updated project documentation.

### Build System

- Build is driven by `build.sh`.
- Native build uses CMake with the Ninja generator.
- Required build version sources are generated automatically.
- Protobuf sources are generated during the build process.
- Final executable target is `build/aapt2`.

### Validation

Validated on:

- Android 15 (ARM64)
- Native Termux build
- Fresh `git clone`
- Clean rebuild from source

Verified commands:

- `compile`
- `link`
- `diff`
- `dump xmltree`
- `dump resources`
- `dump badging`
- `apkinfo`
- `optimize`
- `convert`
- `version`

---

## [1.0.0] - 2026-07-01

### Added

- Initial public release.
- Native ARM64 build of Android Asset Packaging Tool 2 (AAPT2).
- Built entirely inside the Termux environment.
- Clang/LLVM-based native toolchain.
- Android 11+ compatibility.
- Public GitHub repository.
- GitHub Releases containing prebuilt ARM64 binaries.

### Supported Commands

- `compile`
- `link`
- `dump`
- `diff`
- `optimize`
- `convert`
- `apkinfo`
- `daemon`
- `version`

### Validation

Validated using:

- Resource compilation (`compile`)
- Resource linking (`link`)
- APK comparison (`diff`)
- AndroidManifest inspection (`dump xmltree`)
- Resource table inspection (`dump resources`)
- APK package inspection (`dump badging`)
- APK rebuild workflow
