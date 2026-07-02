#!/data/data/com.termux/files/usr/bin/bash

set -e

mkdir -p generated/build

cat > generated/build/version.h <<'EOF'
#pragma once

#include <string>

namespace android {
namespace build {

std::string GetBuildNumber();

}  // namespace build
}  // namespace android
EOF

cat > generated/build/version.cpp <<'EOF'
#include "build/version.h"

namespace android {
namespace build {

std::string GetBuildNumber() {
    return "termux";
}

}  // namespace build
}  // namespace android
EOF

mkdir -p build
cd build

cmake .. \
    -G Ninja \
    -DCMAKE_BUILD_TYPE=Release

ninja

echo
echo "Build completed."
echo "Output: build/aapt2"
