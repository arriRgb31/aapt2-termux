#!/data/data/com.termux/files/usr/bin/bash

set -e

echo "Copying source..."

cp -r \
~/projects/aosp-base/tools/aapt2 \
third_party/

cp -r \
~/projects/aosp-base/libs/androidfw \
third_party/

mkdir -p third_party/idmap2_policies

cp -r \
~/projects/aosp-base/cmds/idmap2/libidmap2_policies/include \
third_party/idmap2_policies/
