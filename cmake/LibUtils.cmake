set(LIBUTILS_SOURCES
    third_party/libutils/FileMap.cpp
    third_party/libutils/JenkinsHash.cpp
    third_party/libutils/LightRefBase.cpp
    third_party/libutils/Looper.cpp
    third_party/libutils/NativeHandle.cpp
    third_party/libutils/Printer.cpp
    third_party/libutils/StopWatch.cpp
    third_party/libutils/SystemClock.cpp
    third_party/libutils/Threads.cpp
    third_party/libutils/Timers.cpp
    third_party/libutils/Tokenizer.cpp
    third_party/libutils/Trace.cpp
    third_party/libutils/misc.cpp

    third_party/libutils/binder/Errors.cpp
    third_party/libutils/binder/RefBase.cpp
    third_party/libutils/binder/StrongPointer.cpp
    third_party/libutils/binder/SharedBuffer.cpp
    third_party/libutils/binder/String8.cpp
    third_party/libutils/binder/String16.cpp
    third_party/libutils/binder/Unicode.cpp
    third_party/libutils/binder/VectorImpl.cpp
)

add_library(utils STATIC ${LIBUTILS_SOURCES})

target_include_directories(utils
PUBLIC
    third_party/libutils/include
    third_party/libutils/binder/include
    ${CMAKE_SOURCE_DIR}/third_party/libsystem/include
)

target_link_libraries(utils PUBLIC
    base
    cutils
    log
    pthread
)
