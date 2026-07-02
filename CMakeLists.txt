cmake_minimum_required(VERSION 3.20)

project(aapt2-termux LANGUAGES C CXX)

include(cmake/CompilerFlags.cmake)
include(cmake/Dependencies.cmake)

include(cmake/LibBase.cmake)
include(cmake/LibCutils.cmake)
include(cmake/LibUtils.cmake)
include(cmake/LibIncfs.cmake)
include(cmake/LibZipArchive.cmake)
include(cmake/AndroidFW.cmake)

include(cmake/AAPT2.cmake)
include(cmake/Executable.cmake)
