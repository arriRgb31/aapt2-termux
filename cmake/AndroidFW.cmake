set(ANDROIDFW_SOURCES
    third_party/androidfw/ApkAssets.cpp
    third_party/androidfw/ApkParsing.cpp
    third_party/androidfw/Asset.cpp
    third_party/androidfw/AssetDir.cpp
    third_party/androidfw/AssetManager.cpp
    third_party/androidfw/AssetManager2.cpp
    third_party/androidfw/AssetsProvider.cpp
    third_party/androidfw/AttributeResolution.cpp
    third_party/androidfw/BigBuffer.cpp
    third_party/androidfw/BigBufferStream.cpp
    third_party/androidfw/ChunkIterator.cpp
    third_party/androidfw/ConfigDescription.cpp
    third_party/androidfw/FileStream.cpp
    third_party/androidfw/Idmap.cpp
    third_party/androidfw/LoadedArsc.cpp
    third_party/androidfw/Locale.cpp
    third_party/androidfw/LocaleData.cpp
    third_party/androidfw/LocaleDataLookup.cpp
    third_party/androidfw/misc.cpp
    third_party/androidfw/NinePatch.cpp
    third_party/androidfw/ObbFile.cpp
    third_party/androidfw/PathUtils.cpp
    third_party/androidfw/Png.cpp
    third_party/androidfw/PngChunkFilter.cpp
    third_party/androidfw/PngCrunch.cpp
    third_party/androidfw/PosixUtils.cpp
    third_party/androidfw/ResourceTimer.cpp
    third_party/androidfw/ResourceTypes.cpp
    third_party/androidfw/ResourceUtils.cpp
    third_party/androidfw/StreamingZipInflater.cpp
    third_party/androidfw/StringPool.cpp
    third_party/androidfw/TypeWrappers.cpp
    third_party/androidfw/Util.cpp
    third_party/androidfw/ZipFileRO.cpp
    third_party/androidfw/ZipUtils.cpp

    generated/build/version.cpp
)

add_library(androidfw STATIC ${ANDROIDFW_SOURCES})

target_include_directories(androidfw PUBLIC
    third_party/androidfw/include
    third_party/androidfw/include_pathutils

    third_party
    third_party/incfs/util/include
    third_party/incfs/include
    third_party/incfs/kernel-headers
    third_party/ziparchive/include
    third_party/ziparchive/incfs_support/include

    third_party/libbase/include
    third_party/libutils/include
    third_party/libutils/binder/include
    third_party/libcutils/include
    third_party/liblog/include


    generated
)

target_link_libraries(androidfw PUBLIC
    base
    utils
    cutils
    log
    incfs
    ziparchive

    ${LIBPNG}
    ${LIBZ}
    protobuf::libprotobuf
    pthread
)
