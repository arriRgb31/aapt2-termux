# Contributing

Thank you for your interest in contributing to AAPT2-Termux.

This project aims to provide a native ARM64 build of Android Asset Packaging Tool 2 (AAPT2) for Termux while remaining as close as practical to the upstream AOSP implementation.

Please read these guidelines before submitting changes.

---

# Development Principles

Contributions should prioritize:

- Build reproducibility
- Minimal repository-specific modifications
- Compatibility with upstream AOSP sources
- Native ARM64 Termux support
- Clear documentation
- Evidence-based technical changes

Every functional change should be traceable through the repository's build system.

---

# Before Submitting

Please ensure:

- Changes have been tested on ARM64 Termux.
- The project builds successfully using `./build.sh`.
- Commits are focused on a single feature or fix.
- Documentation is updated when necessary.
- Major design changes are discussed before implementation.

---

# Build Verification

Before submitting a pull request, verify that the repository can be built from a clean checkout.

Typical workflow:

```sh
git clone https://github.com/arriRgb31/aapt2-termux.git

cd aapt2-termux

./build.sh
```

Expected output:

```text
build/aapt2
```

---

# Build System

The repository uses the following build pipeline:

```
build.sh
    │
    ├── generates build version sources
    │
    ├── configures CMake
    │
    ├── generates Ninja build files
    │
    ├── compiles sources
    │
    ├── archives static libraries
    │
    └── links build/aapt2
```

Contributions should preserve this build flow unless the change intentionally modifies the build system.

---

# Source Layout

Major directories include:

```
cmake/
third_party/
generated/
docs/
scripts/
release/
patches/
```

New files should follow the existing project structure whenever practical.

---

# Build Dependencies

Current build dependencies include:

- clang
- cmake
- ninja
- git
- protobuf
- fmt
- libpng
- libexpat
- zlib

Do not introduce additional dependencies unless they are required by the build and are documented.

---

# Dependency Changes

When adding or modifying a dependency, contributors should document:

- why it is required
- where it is consumed
- which build target uses it
- whether it is a build dependency or link dependency

Dependencies should be justifiable through repository evidence.

---

# Generated Sources

The repository intentionally generates source files during the build.

Currently generated sources include:

```
generated/build/version.h
generated/build/version.cpp
```

and protobuf-generated sources derived from:

```
third_party/aapt2/*.proto
```

Generated files should remain reproducible from the repository.

Avoid committing generated build artifacts unless the project explicitly requires them.

---

# CMake Changes

When modifying CMake files:

- Keep target relationships clear.
- Keep dependency declarations explicit.
- Avoid unnecessary global configuration.
- Preserve reproducible builds.
- Update documentation if the build graph changes.

---

# Documentation

Documentation should remain consistent with the repository.

If a contribution changes:

- build pipeline
- dependency graph
- build requirements
- supported commands
- generated sources
- repository layout

then the corresponding documentation should also be updated.

---

# Bug Reports

Please include:

- Android version
- Device model
- CPU architecture
- Termux version
- Steps to reproduce
- Expected behavior
- Actual behavior
- Build log or terminal output
- Error messages

---

# Pull Requests

Each pull request should:

- address a single feature or fix
- compile successfully
- avoid unrelated formatting changes
- include documentation updates when appropriate
- describe the technical reason for the change

---

# Repository Evidence

Repository documentation distinguishes between:

Repository-proven information:

- build graph
- compile graph
- archive graph
- declared link graph
- generated source graph
- source ownership

Information requiring a built executable:

- final ELF symbols
- runtime dependency resolution
- linker extraction of archive members
- relocation results
- symbol visibility

Documentation should avoid presenting repository assumptions as proven runtime behavior.

---

# Coding Style

Follow the existing coding style used by the imported AOSP sources whenever possible.

Repository-specific code should remain consistent with the surrounding implementation.

---

# License

By contributing to this project, you agree that your contributions will be distributed under the project's MIT License.

---

Thank you for helping improve AAPT2-Termux.
