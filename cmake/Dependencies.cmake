# System libraries

find_package(Protobuf REQUIRED)

find_library(LIBPNG png REQUIRED)
find_library(LIBZ z REQUIRED)

find_library(ANDROID_BASE android-base REQUIRED)
find_library(ANDROID_UTILS android-utils REQUIRED)
find_library(ANDROID_CUTILS android-cutils REQUIRED)
find_library(ANDROID_ZIPARCHIVE android-ziparchive REQUIRED)

find_package(Threads REQUIRED)
