add_executable(aapt2
    third_party/aapt2/Main.cpp
)

target_link_libraries(aapt2 PRIVATE
    aapt2lib
)
