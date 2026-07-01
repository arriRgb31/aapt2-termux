set(LIBLOG_SOURCES
    third_party/liblog/log_event_list.cpp
    third_party/liblog/log_event_write.cpp
    third_party/liblog/logger_name.cpp
    third_party/liblog/logger_read.cpp
    third_party/liblog/logger_write.cpp
    third_party/liblog/logprint.cpp
    third_party/liblog/properties.cpp

    third_party/liblog/event_tag_map.cpp
    third_party/liblog/log_time.cpp
    third_party/liblog/pmsg_reader.cpp
    third_party/liblog/pmsg_writer.cpp
    third_party/liblog/logd_reader.cpp
    third_party/liblog/logd_writer.cpp
)

add_library(log STATIC ${LIBLOG_SOURCES})

target_include_directories(log
BEFORE
PUBLIC
    third_party/liblog/include
    third_party/liblog/include_vndk
    third_party/libbase/include
    third_party/libcutils/include
    third_party/libutils/include
    ${CMAKE_SOURCE_DIR}/../aosp-deps/core/libsystem/include
)

target_compile_definitions(log
PRIVATE
    LIBLOG_LOG_TAG=1006
    SNET_EVENT_LOG_TAG=1397638484
    ANDROID_DEBUGGABLE=0
)

target_link_libraries(log
PUBLIC
    Threads::Threads
    ${ANDROID_BASE}
    ${ANDROID_CUTILS}
)
