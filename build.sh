#!/data/data/com.termux/files/usr/bin/bash

set -e

mkdir -p build

cd build

cmake ..

ninja
