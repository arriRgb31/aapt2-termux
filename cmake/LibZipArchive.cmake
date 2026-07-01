add_library(ziparchive STATIC
    third_party/ziparchive/zip_archive.cc
    third_party/ziparchive/zip_archive_stream_entry.cc
    third_party/ziparchive/zip_cd_entry_map.cc
    third_party/ziparchive/zip_error.cpp
    third_party/ziparchive/zip_writer.cc
    third_party/ziparchive/incfs_support/signal_handling.cpp
)

target_compile_definitions(ziparchive PUBLIC
    ZIPARCHIVE_DISABLE_CALLBACK_API=1
    ZLIB_CONST
)

target_include_directories(ziparchive
PUBLIC
    third_party/ziparchive/include
    third_party/ziparchive/incfs_support/include
    third_party/gtest
)

target_link_libraries(ziparchive
PUBLIC
    base
    log
    utils
    incfs
    ${LIBZ}
)
