# Global compiler configuration

set(CMAKE_C_STANDARD 17)
set(CMAKE_C_STANDARD_REQUIRED ON)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_compile_options(
    -Wall
    -Wextra
    -Wno-unused-parameter
    -Wno-missing-field-initializers
    -Wno-deprecated-declarations
    -fno-exceptions
    -fno-rtti
    -femulated-tls
)

add_definitions(
    -DSTATIC_ANDROIDFW_FOR_TOOLS
)

set(CMAKE_C_COMPILER_TARGET "aarch64-linux-android35")
set(CMAKE_CXX_COMPILER_TARGET "aarch64-linux-android35")
