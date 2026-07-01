add_library(incfs STATIC
    third_party/incfs/util/map_ptr.cpp
)

target_include_directories(incfs
PUBLIC
    third_party/incfs/util/include
    third_party/incfs/include
    third_party/incfs/kernel-headers
)

target_link_libraries(incfs
PUBLIC
    base
    utils
)
