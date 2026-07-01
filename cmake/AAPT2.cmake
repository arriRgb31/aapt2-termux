find_package(Protobuf REQUIRED)
find_package(PkgConfig REQUIRED)

pkg_check_modules(FMT REQUIRED fmt)
pkg_check_modules(EXPAT REQUIRED expat)
pkg_check_modules(PROTOBUF_PC REQUIRED protobuf)

set(AAPT2_PROTO_FILES
    third_party/aapt2/ApkInfo.proto
    third_party/aapt2/Configuration.proto
    third_party/aapt2/ResourceMetadata.proto
    third_party/aapt2/Resources.proto
    third_party/aapt2/ResourcesInternal.proto
)

protobuf_generate_cpp(
    AAPT2_PROTO_SRCS
    AAPT2_PROTO_HDRS
    ${AAPT2_PROTO_FILES}
)

file(GLOB_RECURSE AAPT2_SOURCES CONFIGURE_DEPENDS
    third_party/aapt2/*.cpp
)

list(FILTER AAPT2_SOURCES EXCLUDE REGEX ".*_test\\.cpp$")
list(FILTER AAPT2_SOURCES EXCLUDE REGEX ".*/test/.*")
list(FILTER AAPT2_SOURCES EXCLUDE REGEX ".*/Unicode_data\\.cpp$")


add_library(aapt2lib STATIC
    ${AAPT2_SOURCES}
    ${AAPT2_PROTO_SRCS}
)

target_include_directories(aapt2lib PUBLIC
    ${CMAKE_CURRENT_BINARY_DIR}
    third_party
    third_party/aapt2

    third_party/androidfw/include
    third_party/libbase/include
    third_party/libutils/include
    third_party/libutils/binder/include
    third_party/libcutils/include
    third_party/liblog/include
    third_party/ziparchive/include
    third_party/ziparchive/incfs_support/include
    third_party/incfs/include
    third_party/incfs/util/include
    ${FMT_INCLUDE_DIRS}
    ${EXPAT_INCLUDE_DIRS}
    ${PROTOBUF_PC_INCLUDE_DIRS}
    generated
)

target_include_directories(aapt2lib PRIVATE
    third_party/idmap2_policies
)

target_link_libraries(aapt2lib PUBLIC
    androidfw
    base
    utils
    cutils
    log
    ziparchive
    incfs

    protobuf::libprotobuf

    ${FMT_LINK_LIBRARIES}
    ${EXPAT_LINK_LIBRARIES}
    ${PROTOBUF_PC_LINK_LIBRARIES}

    ${LIBPNG}
    ${LIBZ}
    pthread
)

