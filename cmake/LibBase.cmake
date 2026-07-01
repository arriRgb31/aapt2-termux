set(LIBBASE_SOURCES
    third_party/libbase/abi_compatibility.cpp
    third_party/libbase/chrono_utils.cpp
    third_party/libbase/cmsg.cpp
    third_party/libbase/file.cpp
    third_party/libbase/hex.cpp
    third_party/libbase/logging.cpp
    third_party/libbase/mapped_file.cpp
    third_party/libbase/parsebool.cpp
    third_party/libbase/parsenetaddress.cpp
    third_party/libbase/posix_strerror_r.cpp
    third_party/libbase/process.cpp
    third_party/libbase/properties.cpp
    third_party/libbase/result.cpp
    third_party/libbase/stringprintf.cpp
    third_party/libbase/strings.cpp
    third_party/libbase/threads.cpp

    third_party/libbase/errors_unix.cpp
)

add_library(base STATIC ${LIBBASE_SOURCES})

target_include_directories(base PUBLIC
    third_party/libbase/include
    third_party/liblog/include
)

target_link_libraries(base PUBLIC
    log
    pthread
)
