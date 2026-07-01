set(LIBCUTILS_SOURCES
    third_party/libcutils/config_utils.cpp
    third_party/libcutils/load_file.cpp
    third_party/libcutils/native_handle.cpp
    third_party/libcutils/properties.cpp
    third_party/libcutils/record_stream.cpp
    third_party/libcutils/strlcpy.c

    third_party/libcutils/fs.cpp
    third_party/libcutils/hashmap.cpp
    third_party/libcutils/multiuser.cpp
    third_party/libcutils/str_parms.cpp

    third_party/libcutils/canned_fs_config.cpp
    third_party/libcutils/fs_config.cpp

    third_party/libcutils/trace-host.cpp
    third_party/libcutils/ashmem-host.cpp

    third_party/libcutils/sockets.cpp
    third_party/libcutils/socket_inaddr_any_server_unix.cpp
    third_party/libcutils/socket_local_client_unix.cpp
    third_party/libcutils/socket_local_server_unix.cpp
    third_party/libcutils/socket_network_client_unix.cpp
    third_party/libcutils/sockets_unix.cpp
)

add_library(cutils STATIC ${LIBCUTILS_SOURCES})

target_include_directories(cutils PUBLIC
    third_party/libcutils/include
    third_party/libcutils/include_outside_system

    third_party/liblog/include
    third_party/libutils/include
)

target_link_libraries(cutils PUBLIC
    base
    log
    pthread
)
