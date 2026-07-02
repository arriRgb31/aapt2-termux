#!/data/data/com.termux/files/usr/bin/bash

set -e

mkdir -p build
cd build

cmake .. \
    -G Ninja \
    -DCMAKE_BUILD_TYPE=Release

ninja

echo
echo "Build completed."
echo "Output: build/aapt2"
